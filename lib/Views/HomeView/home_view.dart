import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Models/category_model.dart';
import 'package:activitoo/Views/CommonWidgets/custom_tooltip_widget.dart';
import 'package:activitoo/Views/HomeView/Widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'AlertDialogs/participant_widget.dart';
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
              child: Column(
                children: [
                  Material(
                    child: InkWell(
                      onTap: () async {

                      },
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
                                        'https://picsum.photos/id/237/200/300'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 18.0,
                                  backgroundColor:
                                  Colors.red,
                                  child: CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage: NetworkImage(
                                          'https://picsum.photos/id/237/200/300'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 50,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'post.categoryName',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'post.categoryEventNumber' + ' events',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Column(
                              children: <Widget>[

                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 10,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    'post.placeName',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 32,
                            left: 10,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    'post.eventTitle',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 10,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'post.eventStartDate',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 26,
                            right: 10,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'post.eventStartTime',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4.0, 6, 4.0, 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 26.0,
                          ),
                          Text(
                            'post.regionName',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                true
                                    ? Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                  child: CustomTooltip(
                                      color: Colors.red,
                                      message: "EMU Activity",
                                      child: FaIcon(
                                        FontAwesomeIcons.graduationCap,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                )
                                    : Text(""),
                                true != "0"
                                    ? Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                  child: CustomTooltip(
                                    color: Colors.red,
                                    message: "Paid Event",
                                    child: FaIcon(
                                      FontAwesomeIcons.liraSign,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),
                                )
                                    : Text(""),
                                Text(
                                  '12',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                InkWell(
                                  onTap: () async {
                                    showDialog(
                                        context: context,
                                        builder: (context) => ParticipantWidget(

                                        ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.users,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
       // children: //getUserWidgets(APIResponse<List<User>> users),
      ),
    );
  }
}
// getUserWidgets(APIResponse<List<User>> users)
// {
//   return new Column(children: users.data.map((item) =>
//       PostWidget(
//         categoryModel:  ,
//         barChildrenLeft: [
//           PostBarTile(icon: Icon(
//             Icons.location_on_outlined,
//             color: Colors.white,
//             size: 26.0,
//           ),
//               text: Text(
//                 'regionName',
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.white),
//               ),
//               onTap: (){}),
//         ],
//         barChildrenRight: [],
//        )).toList());
// }