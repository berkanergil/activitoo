import 'package:activitoo/Views/CommonWidgets/custom_tooltip_widget.dart';
import 'package:activitoo/Views/PostDetailView/AlertDialogs/ask_anon_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// used models : EventModel , ArtistModel , PlaceModel

class ImageModuleWidget extends StatefulWidget {
  @override
  _ImageModuleWidgetState createState() => _ImageModuleWidgetState();
}

class _ImageModuleWidgetState extends State<ImageModuleWidget> {
  bool isGoing =false ; // todo set it before entering the view
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                  ).createShader(
                      Rect.fromLTRB(0, 40, rect.width, rect.height - 1));
                },
                blendMode: BlendMode.darken,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                    image: DecorationImage(
                      image: new NetworkImage(
                          'https://picsum.photos/id/237/200/300'),
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
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back,color: Colors.white,
                        size: 30.0,),
                      onPressed: () {
                        // Navigator.pop(
                        //     context,
                        //     ChangePostAndUserInfo(
                        //         widget.posts, widget.post, widget.user));
                      },
                    ),
                    'widget.post.placeIsSchool'!="0"?Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8,0,8,0),
                          child: CustomTooltip(color: Colors.red,message: "EMU Activity",child: FaIcon(FontAwesomeIcons.graduationCap,color: Colors.white,size: 24,)),
                        ),
                        // myPopMenuPostScreen(),
                      ],
                    ):Text(""),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        true //widget.post.eventPrice != "0"
                            ? 'widget.post.eventPrice' + ' ₺'
                            : "",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        true? //widget?.post?.eventEndTime!=null?
                        'widget.post.eventStartTime':'widget.post.eventStartTime'+" - "+'widget?.post?.eventEndTime',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(true? //widget?.post?.eventEndDate!=null?
                        'widget.post.eventStartDate':'widget.post.eventStartDate'+" - "+'widget?.post?.eventEndDate',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
            ),
            Positioned(
              bottom: 10.5,
              left: 15,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: 52,
                width: isGoing? 50 : 120,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32.0, 0, 0, 0),
                      child: Center(
                          child: Text(
                            'widget.post.eventParticipationNumber',
                            style: TextStyle(
                                color: Colors.white, fontSize: !isGoing ? 0 : 20),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              bottom: 10,
              left: 15,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 26.0,
                    backgroundColor: Colors.deepOrange,
                    child: InkWell(
                      child: !isGoing
                          ? Icon(
                        Icons.directions_walk_rounded,
                        color: Colors.white,
                        size: 30.0,
                      )
                          : FaIcon(
                        FontAwesomeIcons.users,
                        color: Colors.white,
                      ),
                      onLongPress: (){
                        if(!isGoing){
                          showDialog(
                              builder: (context){
                                return AskAnonWidget();
                              }, context: context
                          );
                        }
                      },
                      onTap: () {
                        setState(() {
                          if (isGoing == false) {
                           // _incrementCount();
                          } else {
                            //_decrementCount();
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //stat bar
      ],
    );
  }
}
