import 'package:activitoo/Controllers/widget_controller.dart';
import 'package:activitoo/Models/Views/post_detail_view_carousel_model.dart';
import 'package:activitoo/Models/Views/post_detail_view_post_model.dart';
import 'package:activitoo/Models/api_response_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Views/PostDetailView/Widgets/artist_module_widget.dart';
import 'package:activitoo/Views/PostDetailView/Widgets/carousel_module_widget.dart';
import 'package:activitoo/Views/PostDetailView/Widgets/decription_module_widget.dart';
import 'package:activitoo/Views/PostDetailView/Widgets/image_module_widget.dart';
import 'package:activitoo/Views/PostDetailView/Widgets/place_module_widget.dart';
import 'package:flutter/material.dart';

class PostDetailView extends StatefulWidget {
  // late final int eventId;
  // PostDetailView({required this.eventId});
  @override
  _PostDetailViewState createState() => _PostDetailViewState();
}

class _PostDetailViewState extends State<PostDetailView> {
  late APIResponseModel<PostDetailViewPostModel> postDetailViewPostModel;
  late bool isLoadingPostDetailViewPostModel;

  late APIResponseModel<List<PostDetailViewCarouselModel>> postDetailViewCarouselModel;
  late bool isLoadingPostDetailViewCarouselModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callPostDetailViewPostModel();
    callPostDetailViewCarouselModel();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("hey"),);
    // return Container(
    //   height: MediaQuery.of(context).size.height,
    //     child: ListView(shrinkWrap: true, children: [
    //       ImageModuleWidget(),
    //       DescriptionModuleWidget(),
    //       PlaceModuleWidget(),
    //       ArtistModuleWidget(),
    //       CarouselModuleWidget()
    //     ]),
    // );
  }

  void callPostDetailViewPostModel() async{
    setState(() {
      isLoadingPostDetailViewPostModel=true;
    });
    // postDetailViewPostModel = await WidgetController.postDetailViewPost(eventId: widget.eventId);
    postDetailViewPostModel = await WidgetController.postDetailViewPostWidget(eventId: 4);
    setState(() {
      isLoadingPostDetailViewPostModel=false;
    });
  }

  void callPostDetailViewCarouselModel() async{
    setState(() {
      isLoadingPostDetailViewCarouselModel=true;
    });
    // postDetailViewCarouselModel = await WidgetController.postDetailViewCarouselWidgets(eventId: widget.eventId);
    postDetailViewCarouselModel = await WidgetController.postDetailViewCarouselWidgets(eventId: 4);
    setState(() {
      isLoadingPostDetailViewCarouselModel=false;
    });
  }
}
