import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtistModuleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white54,
              border: Border.all(
                color: Colors.grey,
                width: 0.2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(0))),
          child: Builder(builder: (context) {
            // if (_apiResponseArtists == null) {
            //   return Center(
            //     child: Text(_apiResponseArtists.errorMessage),
            //   );
            // }
            return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   if (_apiResponseArtists.data[index].artistID ==
                      //       widget.user.userID) {
                      //     return OwnUserScreen(
                      //       user: widget.user,
                      //     );
                      //   } else {
                      //     return ArtistScreen(
                      //       artist: _apiResponseArtists.data[index],
                      //       user: widget.user,
                      //     );
                      //   }
                      // }));
                    },
                    child: ArtistModuleTile()),
                itemCount: 2); //_apiResponseArtists.data.length
          }),
        ),
      ),
    );
  }
}

class ArtistModuleTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 8, 16.0, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/profileScreen');
                },
                child: CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.deepOrange,
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundImage:
                          NetworkImage('_urlImagesUsers+artistImage'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'artistName' + " " + 'artistSurname',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      'artistEventNumber' + ' events',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FaIcon(FontAwesomeIcons.users, color: Colors.red, size: 20),
                Text(
                  " " + 'artistParticipationNumber' + ' Participants',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
