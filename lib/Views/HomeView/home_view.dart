import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Controllers/widget_controller.dart';
import 'package:activitoo/Models/Views/home_view_drawer_model.dart';
import 'package:activitoo/Models/Views/home_view_post_model.dart';
import 'package:activitoo/Models/api_response_model.dart';
// import 'package:activitoo/Views/HomeView/HomeViewWidgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Widgets/post_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late APIResponseModel<List<HomeViewPostWidgetModel>> homeViewPostWidgetModel;
  late bool isLoadingHomeViewPostWidgetModel;
  late APIResponseModel<HomeViewDrawerWidgetModel> homeViewDrawerWidgetModel;
  late bool isLoadingHomeViewDrawerWidgetModel;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callHomeViewDrawerWidgetModel();
    callHomeViewPostWidgetModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: isLoadingHomeViewDrawerWidgetModel?CircularProgressIndicator():
      getHomeViewDrawerWidgetModel(homeViewDrawerWidgetModel),
      body: isLoadingHomeViewPostWidgetModel?CircularProgressIndicator():
      getHomeViewPostWidgetModel(homeViewPostWidgetModel),
    );
  }

  void callHomeViewPostWidgetModel() async {
    setState(() {
      isLoadingHomeViewPostWidgetModel=true;
    });
    homeViewPostWidgetModel = await WidgetController.homeViewPostWidgets();
    setState(() {
      isLoadingHomeViewPostWidgetModel=false;
    });
  }

  Widget getHomeViewPostWidgetModel(APIResponseModel<List<HomeViewPostWidgetModel>> homeViewPostWidgetModel) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: homeViewPostWidgetModel.data!.map((e) => Text(e.placeModel.name)).toList(),
    );
  }

  void callHomeViewDrawerWidgetModel() async {
    setState(() {
      isLoadingHomeViewDrawerWidgetModel=true;
    });
    homeViewDrawerWidgetModel = await WidgetController.homeViewDrawerWidget();
    setState(() {
      isLoadingHomeViewDrawerWidgetModel=false;
    });
  }

  Widget getHomeViewDrawerWidgetModel(APIResponseModel<HomeViewDrawerWidgetModel> homeViewDrawerWidgetModel) {
    return Drawer(
      child: Text(homeViewDrawerWidgetModel.data!.regions[0].name),
    );
  }
}
