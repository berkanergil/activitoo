import 'package:activitoo/Models/event_model.dart';
import 'package:activitoo/Models/place_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ParticipantWidget extends StatefulWidget {
  late var coverImage; //https://media.discordapp.net/attachments/738009944422613015/812710333386326026/Adsz_1.jpg?width=1034&height=582
  late PlaceModel placeModel;
  late EventModel eventModel;

  // ParticipantWidget(){
  //
  // }

  @override
  _ParticipantWidgetState createState() => _ParticipantWidgetState();
}

class _ParticipantWidgetState extends State<ParticipantWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all(0),
      title: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              "https://media.discordapp.net/attachments/738009944422613015/812710333386326026/Adsz_1.jpg?width=1034&height=582"),
          fit: BoxFit.cover,
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FractionalTranslation(
              translation: Offset(0.0, -0.3),
              child: Align(
                alignment: FractionalOffset(0.0, 0.0),
                child: CircleAvatar(
                  radius: 52.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 49.0,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/237/200/300'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.all(2),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ConstrainedBox(
          constraints: new BoxConstraints(
            maxHeight: (int.parse('2') < 3) //participant count
                ? MediaQuery.of(context).size.height * 0.3
                : MediaQuery.of(context).size.height * 0.5,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: true
                ? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Color(0xffe34646),
                                  child: CircleAvatar(
                                    radius: 18.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 16.0,
                                      backgroundColor: Color(0xffe34646),
                                      child: FaIcon(
                                        FontAwesomeIcons.userSecret,
                                        color: Colors.white,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                                  child: Text(
                                    '1000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xffe34646)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                                  child: Text(
                                    AppLocalizations.of(context)!.anonymousSentenceOne,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: () {
                          if (int.parse('2') < 3) {
                            return MediaQuery.of(context).size.height * 0.3;
                          } else
                            return MediaQuery.of(context).size.height * 0.5;
                        }(),
                        child: Builder(builder: (context) {
                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () async {
                                // _apiResponseArtist =
                                // await service.getArtistsWithID(
                                //     _apiResponseUsers.data[index].userID);
                                // Navigator.of(context)
                                //     .push(MaterialPageRoute(builder: (context) {
                                //   if (_apiResponseUsers
                                //       .data[index].userArtistStatus ==
                                //       "0") {
                                //     if (_apiResponseUsers.data[index].userID ==
                                //         widget.user.userID) {
                                //       return OwnUserScreen(
                                //         user: widget.user,
                                //       );
                                //     } else {
                                //       return UserScreen(
                                //         user: _apiResponseUsers.data[index],
                                //         ownUser: widget.user,
                                //       );
                                //     }
                                //   } else {
                                //     if(_apiResponseUsers.data[index].userID==widget.user.userID){
                                //       return OwnUserScreen(user:widget.user);
                                //     }else{
                                //       return ArtistScreen(
                                //         artist: _apiResponseArtist.data[0],
                                //         user: widget.user,
                                //       );
                                //     }
                                //   }
                                // }));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20.0,
                                          backgroundColor: Color(0xffe34646),
                                          child: CircleAvatar(
                                            radius: 18.0,
                                            backgroundColor: Colors.white,
                                            child: CircleAvatar(
                                              radius: 16.0,
                                              backgroundImage: NetworkImage(
                                                  widget.placeModel.image),
                                              backgroundColor:
                                                  Colors.transparent,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 0, 0, 0),
                                          child: Text(
                                            'username',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      )
                    ],
                  )
                : Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Center(
                        child: Text(
                      '1000 ' +
                          AppLocalizations.of(context)!.anonymousSentenceTwo,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w400),
                    ))),
          ),
        ),
      ),
      elevation: 24,
    );
  }
}
