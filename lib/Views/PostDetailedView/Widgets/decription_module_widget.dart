import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class DescriptionModuleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white54,
            border: Border.all(
              color: Colors.grey,
              width: 0.2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(0))),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16.0, 8, 16.0, 8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                ),
              ),
              child: Flexible(
                child: Text(
                  'widget.post.eventTitleasdasdasdasdasdasdasdasd',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 8, 18.0, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'widget.post.eventDescriptionasdasdasdaaaaaaaaaaaaaaaaaaaaaa',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              'Tel: ',
                              style:
                              TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            InkWell(
                              child: Text(
                                'widget.post.placePhoneNumber',
                                style: TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blue),
                              ),
                              onTap: () => launch(
                                  "tel: " + 'widget.post.placePhoneNumber'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              'E-mail: ',
                              style:
                              TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            InkWell(
                              child: Text(
                                "widget.post.placeEmail",
                                style: TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blue),
                              ),
                              onTap: () {
                                final Uri _emailLaunchUri = Uri(
                                  scheme: 'mailto',
                                  path: "widget.post.placeEmail",
                                );
                                launch(_emailLaunchUri.toString());
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Text(
                              'Address: ',
                              style:
                              TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            InkWell(
                              child: Text(
                                "widget.post.placeAddress",
                                style: TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blue),
                              ),
                              onTap: () {
                                //_callMaps();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// _callMaps() async {
//   List mapAddress = widget.post.placeMapAddress.split(",");
//   final availableMaps = await MapLauncher.installedMaps;
//
//   if (await MapLauncher.isMapAvailable(MapType.google)) {
//     await MapLauncher.showMarker(
//       mapType: MapType.google,
//       coords:
//       Coords(double.parse(mapAddress[0]), double.parse(mapAddress[1])),
//       title: widget.post.placeName,
//     );
//   }
// }