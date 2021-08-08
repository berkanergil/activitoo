import 'package:flutter/material.dart';

class PlaceModuleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.2,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white54,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 12, 8.0, 12),
          child: InkWell(
            onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlaceScreen(place: place,user: widget.user,)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.deepOrange,
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundImage: new NetworkImage(
                          "https://picsum.photos/id/237/200/300"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 0, 0.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'widget.post.placeName',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        'widget.post.placeEventNumber' + ' events',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
