import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/region_model.dart';
import 'package:activitoo/Models/sort_model.dart';

class HomeViewDrawerWidgetModel {
  late List<CategoryModel> categories;
  late List<RegionModel> regions;
  late List<SortModel> sorts;

  HomeViewDrawerWidgetModel({required this.categories,required this.regions,required this.sorts});
}