import 'package:activitoo/Models/artist_model.dart';
import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:activitoo/Models/region_model.dart';
import 'package:activitoo/Models/sort_model.dart';
import 'package:activitoo/Models/user_model.dart';

class PostDetailViewPostModel {
  late EventModel eventModel;
  late PlaceModel placeModel;
  late CategoryModel categoryModel;
  late List<UserModel> users;
  late List<ArtistModel> artists;

  PostDetailViewPostModel({required this.eventModel,required this.placeModel,required this.categoryModel,required this.users,required this.artists});
}