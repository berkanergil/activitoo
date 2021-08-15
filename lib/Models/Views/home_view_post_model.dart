import 'package:activitoo/Models/admin_model.dart';
import 'package:activitoo/Models/artist_model.dart';
import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:activitoo/Models/region_model.dart';
import 'package:activitoo/Models/user_model.dart';

class HomeViewPostWidgetModel {
  late EventModel eventModel;
  late CategoryModel categoryModel;
  late PlaceModel placeModel;
  late RegionModel regionModel;
  late List<UserModel> users;
  late List<ArtistModel> artists;

  HomeViewPostWidgetModel({required this.eventModel,required this.categoryModel,required this.placeModel,required this.regionModel,required this.users,required this.artists});
}