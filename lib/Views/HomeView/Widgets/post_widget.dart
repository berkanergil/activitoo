import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Models/admin_model.dart';
import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:activitoo/Views/CommonWidgets/popup_menu_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWidget extends StatefulWidget {

  EventModel eventModel;
  CategoryModel categoryModel;
  PlaceModel placeModel;
  List<Widget> barChildrenLeft;
  List<Widget> barChildrenRight;
  PostWidget({
    required this.barChildrenLeft,
    required this.barChildrenRight,
    required this.eventModel,
    required this.categoryModel,
    required this.placeModel,
}
);
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
        child: Column(
          children: [
            Material(
              child: InkWell(
                onTap: (){},
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(0.0)),
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
                                  widget.eventModel.image),
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
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(int.parse("0xFF" + widget.categoryModel.color))
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 6, 4.0, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: widget.barChildrenLeft,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: widget.barChildrenRight,
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

class PostBarTile extends StatefulWidget {
  Icon icon;
  Text text;
  VoidCallback onTap;
  PostBarTile({
    required this.icon,
    this.text=const Text(""),
    required this.onTap,
});
  @override
  _BarTileState createState() => _BarTileState();
}

class _BarTileState extends State<PostBarTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        widget.icon,
        widget.text,
      ],
    );
  }
}