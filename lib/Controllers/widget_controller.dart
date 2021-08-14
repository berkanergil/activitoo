import 'dart:convert';

import 'package:activitoo/Models/Views/home_view_drawer_model.dart';
import 'package:activitoo/Models/Views/home_view_post_model.dart';
import 'package:activitoo/Models/admin_model.dart';
import 'package:activitoo/Models/api_response_model.dart';
import 'package:activitoo/Models/artist_model.dart';
import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:activitoo/Models/region_model.dart';
import 'package:activitoo/Models/sort_model.dart';
import 'package:activitoo/Models/user_model.dart';
import 'package:activitoo/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class WidgetController {
  static const homeViewPostsUrl = Config.apiUrl + "home-view-posts";
  static const homeViewDrawerUrl = Config.apiUrl + "home-view-drawer";

  static const headers = Config.header;

  static Future<APIResponseModel<List<HomeViewPostWidgetModel>>>
      homeViewPostWidgets(
          {String categories = "1,2,3,4,5,6,7,8,9",
          String regions = "1,2,3,4,5,6",
          String sort = "1",
          String offset = "0",
          String limit = "10"}) {
    var data = {
      "categories": categories,
      "regions": regions,
      "sort": sort,
      "offset": offset,
      "limit": limit
    };
    return http
        .post(Uri.parse(homeViewPostsUrl),
            headers: headers, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        final jsonData = json.decode(value.body);
        final items = <HomeViewPostWidgetModel>[];
        var users = <UserModel>[];
        var artists = <ArtistModel>[];
        for (var item in jsonData["data"]) {
          for (var user in item["users"]) {
            users.add(UserModel.fromJson(user));
          }
          for (var user in item["artists"]) {
            artists.add(ArtistModel.fromJson(user));
          }
          items.add(HomeViewPostWidgetModel(
              eventModel: EventModel.fromJson(item["event"]),
              categoryModel: CategoryModel.fromJson(item["category"]),
              placeModel: PlaceModel.fromJson(item["place"]),
              regionModel: RegionModel.fromJson(item["region"]),
              users: users,
              artists: artists));
        }
        return APIResponseModel<List<HomeViewPostWidgetModel>>(
            data: items,
            error: jsonData["error"],
            message: jsonData["message"]);
      }
      return APIResponseModel<List<HomeViewPostWidgetModel>>(
          error: true, message: "An error occurred");
    }).catchError((error) {
      print(error.toString());
      return APIResponseModel<List<HomeViewPostWidgetModel>>(
          error: true, message: error.toString());
    });
  }

  static Future<APIResponseModel<HomeViewDrawerWidgetModel>>
      homeViewDrawerWidget() {
    return http
        .get(Uri.parse(homeViewDrawerUrl), headers: headers)
        .then((value) {
      if (value.statusCode == 200) {
        final jsonData = json.decode(value.body);
        var categories = <CategoryModel>[];
        var regions = <RegionModel>[];
        var sorts = <SortModel>[];
        var homeViewDrawerWidgetModel;
        for (var category in jsonData["data"]["categories"]) {
          categories.add(CategoryModel.fromJson(category));
        }
        for (var region in jsonData["data"]["regions"]) {
          regions.add(RegionModel.fromJson(region));
        }
        for (var sort in jsonData["data"]["sorts"]) {
          sorts.add(SortModel.fromJson(sort));
        }
        homeViewDrawerWidgetModel = HomeViewDrawerWidgetModel(
            categories: categories, regions: regions, sorts: sorts);

        return APIResponseModel<HomeViewDrawerWidgetModel>(
            data: homeViewDrawerWidgetModel,
            error: jsonData["error"],
            message: jsonData["message"]);
      }
      return APIResponseModel<HomeViewDrawerWidgetModel>(
          error: true, message: "An error occurred");
    }).catchError((error) {
      print(error.toString());
      return APIResponseModel<HomeViewDrawerWidgetModel>(
          error: true, message: error.toString());
    });
  }
}
