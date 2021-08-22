import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:activitoo/config.dart';
import 'package:flutter/material.dart';

import 'popup_menu_button.dart';

class PostImageModule extends StatefulWidget {

  EventModel eventModel;
  CategoryModel categoryModel;
  PlaceModel placeModel;
  var height;
  List<Widget> stackChildren;
  bool isGoing=false;

  PostImageModule({
    required this.categoryModel,
    required this.eventModel,
    required this.placeModel,
    required this.height,
    required this.stackChildren,
  });

  @override
  _PostImageModuleState createState() => _PostImageModuleState();
}

class _PostImageModuleState extends State<PostImageModule> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Stack(
        children:[]
            ..add(ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.6),
                      Colors.transparent,
                      Color.fromRGBO(0, 0, 0, 0.8)
                    ],
                    stops: [
                      0.1,
                      0.5,
                      0.9
                    ]).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height - 5));
              },
              blendMode: BlendMode.darken,
              child: Container(
                height: widget.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0.0),
                  ),
                  image: DecorationImage(
                    image: new NetworkImage(
                        Config.eventImageUrl+widget.eventModel.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ))
            ..addAll(widget.stackChildren),
      ),
    );
  }
}
