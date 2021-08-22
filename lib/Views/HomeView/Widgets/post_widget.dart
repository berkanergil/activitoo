import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Models/admin_model.dart';
import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:activitoo/Views/CommonWidgets/custom_material_widget.dart';
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
            CustomMaterial(eventModel: widget.eventModel,categoryModel: widget.categoryModel, placeModel: widget.placeModel,),
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