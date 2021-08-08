import 'package:activitoo/Views/PostDetailedView/Widgets/artist_module_widget.dart';
import 'package:activitoo/Views/PostDetailedView/Widgets/carousel_module_widget.dart';
import 'package:activitoo/Views/PostDetailedView/Widgets/decription_module_widget.dart';
import 'package:activitoo/Views/PostDetailedView/Widgets/image_module_widget.dart';
import 'package:activitoo/Views/PostDetailedView/Widgets/place_module_widget.dart';
import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
        child: ListView(shrinkWrap: true, children: [
          ImageModuleWidget(),
          DescriptionModuleWidget(),
          PlaceModuleWidget(),
          ArtistModuleWidget(),
          CarouselModuleWidget()
        ]),
    );
  }
}
