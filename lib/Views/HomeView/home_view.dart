import 'dart:ui';

import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Controllers/widget_controller.dart';
import 'package:activitoo/Models/Views/home_view_drawer_model.dart';
import 'package:activitoo/Models/Views/home_view_post_model.dart';
import 'package:activitoo/Models/api_response_model.dart';
import 'package:activitoo/config.dart';
// import 'package:activitoo/Views/HomeView/HomeViewWidgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'Widgets/post_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late APIResponseModel<List<HomeViewPostWidgetModel>> homeViewPostWidgetModel;
  List<HomeViewPostWidgetModel> listHomeViewPostWidgets = [];
  late int totalPage;

  late APIResponseModel<HomeViewDrawerWidgetModel> homeViewDrawerWidgetModel;
  late bool isLoadingHomeViewDrawerWidgetModel;

  int currentPage = 1;

  final RefreshController refreshController =
      RefreshController(initialRefresh: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getHomeViewPostWidgetModel()
    );
  }

  Future<bool> callHomeViewPostWidgetModel({bool firstCall = false}) async {
    if(firstCall){
      currentPage=1;
    }else{
      if(currentPage>totalPage){
        refreshController.loadNoData();
        return false;
      }
    }
    homeViewPostWidgetModel=await WidgetController.homeViewPostWidgets(page: currentPage);
    if(homeViewPostWidgetModel.error){
      return false;
    }else{
      if (firstCall){
        listHomeViewPostWidgets=homeViewPostWidgetModel.data!;
      }else{
        listHomeViewPostWidgets.addAll(homeViewPostWidgetModel.data!);
      }
      currentPage++;
      print(currentPage);
      totalPage=homeViewPostWidgetModel.data![0].totalPage;
      setState(() {
      });
      return true;
    }
  }

  Widget getHomeViewPostWidgetModel() {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      onRefresh: ()async{
        final result = await callHomeViewPostWidgetModel(firstCall: true);
        if(result){
            refreshController.refreshCompleted();
        }else{
            refreshController.refreshFailed();
        }
      },
      onLoading: ()async{
        final result = await callHomeViewPostWidgetModel();
        if(result){
          refreshController.loadComplete();
        }else{
          refreshController.loadNoData();
        }
      },
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: listHomeViewPostWidgets
              .map((e) => PostWidget(
              barChildrenLeft: [],
              barChildrenRight: [],
              eventModel: e.eventModel,
              categoryModel: e.categoryModel,
              placeModel: e.placeModel
          ))
              .toList(),
        ),
      ),
    );
  }

  // void callHomeViewDrawerWidgetModel() async {
  //   if (mounted) {
  //     setState(() {
  //       isLoadingHomeViewDrawerWidgetModel = true;
  //     });
  //   }
  //   homeViewDrawerWidgetModel = await WidgetController.homeViewDrawerWidget();
  //   if (mounted) {
  //     setState(() {
  //       isLoadingHomeViewDrawerWidgetModel = false;
  //     });
  //   }
  // }
  //
  // Widget getHomeViewDrawerWidgetModel(
  //     APIResponseModel<HomeViewDrawerWidgetModel> homeViewDrawerWidgetModel) {
  //   return Drawer(
  //     child: Text(homeViewDrawerWidgetModel.data!.regions[0].name),
  //   );
  // }
}
