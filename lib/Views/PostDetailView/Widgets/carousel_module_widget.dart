import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarouselModuleWidget extends StatefulWidget {
  @override
  _CarouselModuleWidgetState createState() => _CarouselModuleWidgetState();
}

class _CarouselModuleWidgetState extends State<CarouselModuleWidget> {
  @override
  Widget build(BuildContext context) {
    List carouselLength=[3]; // todo set with api
    return CarouselSlider(
      options: CarouselOptions(
        height: 220.0,
        enableInfiniteScroll: false,
        viewportFraction: 0.95,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 10),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
      ),
      items: carouselLength.map((i) {
        return Builder( // todo check this builder method when api is implemented
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 0.0),
                decoration: BoxDecoration(
                  // color: Colors.amber
                ),
                child: Builder(builder: (context) {
                  if (i == 3 && carouselLength.length == 3) {
                    return InkWell(
                      // onTap: () => _navigator(
                      //     _apiResponseCarouselPosts.data[i - 1]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselModuleTile(),
                        ],
                      ),
                    );
                  } else if (i == 2 && carouselLength.length == 2) {
                    return InkWell(
                      // onTap: () => _navigator(
                      //     _apiResponseCarouselPosts.data[i - 1]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselModuleTile(),
                        ],
                      ),
                    );
                  } else {
                    return InkWell(
                      // onTap: () => _navigator(
                      //     _apiResponseCarouselPosts.data[i - 1]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselModuleTile(),
                        ],
                      ),
                    );
                  }
                }));
          },
        );
      }).toList(),
    );
  }
}

class CarouselModuleTile extends StatelessWidget {
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
        child: Column(
          children: [
            Material(
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
                        height: 200,
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                            child: FaIcon(
                              FontAwesomeIcons.users,
                              color: Colors.white,
                              size: 22.0,
                            ),
                          ),
                          Text(
                            '12',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'placeRegion',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 26.0,
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'eventTitle',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            'placeName',
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
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'eventStartTime',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
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
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

