import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:flutter/material.dart';

import 'popup_menu_button.dart';

class CustomMaterial extends StatefulWidget {

  EventModel eventModel;
  CategoryModel categoryModel;
  PlaceModel placeModel;

  CustomMaterial({
    required this.categoryModel,
    required this.eventModel,
    required this.placeModel,

  });

  @override
  _CustomMaterialState createState() => _CustomMaterialState();
}

class _CustomMaterialState extends State<CustomMaterial> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: (){},
        child: Stack(
          children: <Widget>[
            ClipRRect(
              child: ShaderMask(
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
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                    image: DecorationImage(
                      image: new NetworkImage(
                          'https://picsum.photos/200/300'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Color(int.parse("0xFF" +
                                  widget.categoryModel.color)),
                              child: CircleAvatar(
                                radius: 16.0,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 15.0,
                                  backgroundImage: NetworkImage(
                                      widget.categoryModel.image),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.categoryModel.name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  'widget.categoryEventNumber' + ' events',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        PopupMenuWidgetPost(),
                      ],
                    ),
                    CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Color(int.parse("0xFF" +
                          widget.categoryModel.color)),
                      child: CircleAvatar(
                        radius: 16.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 15.0,
                          backgroundImage: NetworkImage(
                              widget.categoryModel.image),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),// _getPopMenuWidget(post.eventID),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.eventModel.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      widget.placeModel.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.eventModel.startDateTime,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      widget.eventModel.endDateTime,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
