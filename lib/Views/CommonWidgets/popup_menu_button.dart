import 'package:flutter/material.dart';

//Todo: localization
class PopupMenuWidgetPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.white,
          size: 30.0,
        ),
        onSelected: (value) {
          switch (value) {
            case 1:
              {
                print('share bastirildi');
              }
              break;
            case 2:
              {
                print('report bastirildi');
              }
              break;
            case 3:
              {
                print('hide bastirildi');
              }
              break;
            default:
              {
                print('d bastirildi');
              }
              break;
          }
        },
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 1,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                    child: Icon(Icons.share_rounded),
                  ),
                  Text('Share')
                ],
              )),
          PopupMenuItem(
              value: 2,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                    child: Icon(Icons.report_gmailerrorred_rounded),
                  ),
                  Text('Report')
                ],
              )),
          PopupMenuItem(
              value: 3,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                    child: Icon(Icons.visibility_off_rounded),
                  ),
                  Text('Hide')
                ],
              )),
        ]);
  }
}
