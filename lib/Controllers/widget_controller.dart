import 'dart:convert';

import 'package:activitoo/Models/Views/home_view_drawer_model.dart';
import 'package:activitoo/Models/Views/home_view_post_model.dart';
import 'package:activitoo/Models/Views/post_detail_view_carousel_model.dart';
import 'package:activitoo/Models/Views/post_detail_view_post_model.dart';
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
  static const postDetailViewPostUrl = Config.apiUrl + "post-detail-view-post";
  static const postDetailViewCarouselsUrl = Config.apiUrl + "post-detail-view-carousels";

  static const headers = Config.header;

  static Future<APIResponseModel<List<HomeViewPostWidgetModel>>>
      homeViewPostWidgets(
          {String categories = "1,2,3,4,5,6,7,8,9",
          String regions = "1,2,3,4,5,6",
          String sort = "1",
            int page = 1
          }) {
    var data = {
      "categories": categories,
      "regions": regions,
      "sort": sort,
      "page": page
    };
    return http
        .post(Uri.parse(homeViewPostsUrl),
            headers: headers, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        print(value.body);
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
              totalPage: item["total_page"],
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
      return APIResponseModel<HomeViewDrawerWidgetModel>(
          error: true, message: error.toString());
    });
  }

  static Future<APIResponseModel<PostDetailViewPostModel>>
  postDetailViewPostWidget(
      {required int eventId,
       }) {
    var data = {
      "event_id": eventId
    };
    return http
        .post(Uri.parse(postDetailViewPostUrl),
        headers: headers, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        final jsonData = json.decode(value.body);
        var postDetailViewPostModel;
        var performers = <ArtistModel>[];
        var users = <UserModel>[];
        var artists = <ArtistModel>[];
          for (var performer in jsonData["data"]["performers"]) {
            performers.add(ArtistModel.fromJson(performer));
          }
          for (var user in jsonData["data"]["users"]) {
            users.add(UserModel.fromJson(user));
          }
          for (var user in jsonData["data"]["artists"]) {
            artists.add(ArtistModel.fromJson(user));
          }
          postDetailViewPostModel=PostDetailViewPostModel(
              eventModel: EventModel.fromJson(jsonData["data"]["event"]),
              categoryModel: CategoryModel.fromJson(jsonData["data"]["category"]),
              placeModel: PlaceModel.fromJson(jsonData["data"]["place"]),
              performers: performers,
              users: users,
              artists: artists);
        return APIResponseModel<PostDetailViewPostModel>(
            data: postDetailViewPostModel,
            error: jsonData["error"],
            message: jsonData["message"]);
      }
      return APIResponseModel<PostDetailViewPostModel>(
          error: true, message: "An error occurred");
    }).catchError((error) {
      return APIResponseModel<PostDetailViewPostModel>(
          error: true, message: error.toString());
    });
  }

  static Future<APIResponseModel<List<PostDetailViewCarouselModel>>>
  postDetailViewCarouselWidgets(
      {required int eventId}) {
    var data = {
      "event_id": eventId
    };
    return http
        .post(Uri.parse(postDetailViewCarouselsUrl),
        headers: headers, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        final jsonData = json.decode(value.body);
        final items = <PostDetailViewCarouselModel>[];
        var users = <UserModel>[];
        var artists = <ArtistModel>[];
        for (var item in jsonData["data"]) {
          for (var user in item["users"]) {
            users.add(UserModel.fromJson(user));
          }
          for (var user in item["artists"]) {
            artists.add(ArtistModel.fromJson(user));
          }
          items.add(PostDetailViewCarouselModel(
              eventModel: EventModel.fromJson(item["event"]),
              categoryModel: CategoryModel.fromJson(item["category"]),
              placeModel: PlaceModel.fromJson(item["place"]),
              regionModel: RegionModel.fromJson(item["region"]),
              users: users,
              artists: artists));
        }
        return APIResponseModel<List<PostDetailViewCarouselModel>>(
            data: items,
            error: jsonData["error"],
            message: jsonData["message"]);
      }
      return APIResponseModel<List<PostDetailViewCarouselModel>>(
          error: true, message: "An error occurred");
    }).catchError((error) {
      return APIResponseModel<List<PostDetailViewCarouselModel>>(
          error: true, message: error.toString());
    });
  }

}
