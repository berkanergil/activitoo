import 'dart:convert';

import 'package:activitoo/Models/admin_model.dart';
import 'package:activitoo/Models/api_response_model.dart';
import 'package:activitoo/config.dart';
import 'package:http/http.dart' as http;

class AdminController {
  static const url = Config.apiUrl + "admins";
  static const headers = Config.header;

  static Future<APIResponseModel<List<AdminModel>>> index() {
    print(Uri.parse(url));
    return http.get(Uri.parse(url), headers: headers).then((value) {
      if (value.statusCode == 200) {
        final jsonData = json.decode(value.body);
        print(jsonData["data"]);
        final items = <AdminModel>[];
        for (var item in jsonData["data"]) {
          items.add(AdminModel.fromJson(item));
        }
        return APIResponseModel<List<AdminModel>>(
            data: items, error: jsonData["error"],message:jsonData["message"] );
      }
      return APIResponseModel<List<AdminModel>>(
          error: true,data: [], message: "An error occurred");
    }).catchError((error) {
      print(error.toString());
      return APIResponseModel<List<AdminModel>>(
          error: true,data: [], message: error.toString());
    });
  }

/*  static Future<APIResponseModel<List<AdminModel>>> update(AdminModel admin) {
    return http
        .put(Uri.parse(url+admin.id??="0"), headers: headers, body: admin.toJson())
        .then((value) {
      if (value.statusCode == 200) {
        final jsonData = json.decode(value.body);
        print(jsonData["data"]);
        final items = <AdminModel>[];
        for (var item in jsonData["data"]) {
          items.add(AdminModel.fromJson(item));
        }
        return APIResponseModel<List<AdminModel>>(
            data: items, error: jsonData["error"]);
      }
      return APIResponseModel<List<AdminModel>>(
          error: true, message: "An error occurred");
    }).catchError((error) {
      print(error.toString());
      return APIResponseModel<List<AdminModel>>(
          error: true, message: error.toString());
    });
  }*/
}
