import 'package:activitoo/Constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWidget extends StatefulWidget {

  VoidCallback onTap;
  var categoryImage;
  var categoryName;
  var categoryEventNumber;
  Color categoryColor;
  var eventImage;
  var eventTitle;
  var eventStartTime;
  var eventStartDate;
  var placeName;
  var regionName;
  List<Widget> barChildren;
  PostWidget({
    required this.onTap,
    required this.categoryImage,
    required this.categoryName,
    required this.categoryEventNumber,
    required this.categoryColor,
    required this.eventImage,
    required this.eventTitle,
    required this.eventStartTime,
    required this.eventStartDate,
    required this.placeName,
    required this.regionName,
    required this.barChildren,
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
                onTap: widget.onTap,
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
                                  widget.eventImage),
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
                                CircleAvatar(
                                  radius: 18.0,
                                  backgroundColor:
                                  widget.categoryColor,
                                  child: CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: NetworkImage(
                                          widget.categoryImage),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.categoryName,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      widget.categoryEventNumber + ' events',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor:
                              widget.categoryColor,
                              child: CircleAvatar(
                                radius: 16.0,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 15.0,
                                  backgroundImage: NetworkImage(
                                      widget.categoryImage),
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
                              widget.eventTitle,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Text(
                              widget.placeName,
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
                              widget.eventStartTime,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              widget.eventStartDate,
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
                color: widget.categoryColor
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 6, 4.0, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:widget.barChildren,
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


class MyTooltip extends StatelessWidget {
  final Widget child;
  final String message;
  final Color color;

  MyTooltip(
      {required this.message, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<State<Tooltip>>();
    return Tooltip(
      key: key,
      message: message,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _onTap(key),
        child: child,
      ),
    );
  }

  void _onTap(GlobalKey key) {
    final dynamic tooltip = key.currentState;
    tooltip?.ensureTooltipVisible();
  }
}