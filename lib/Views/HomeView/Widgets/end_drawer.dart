import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Todo localization ve logic

class EndDrawerHomeView extends StatefulWidget {

  @override
  _EndDrawerHomeViewState createState() => _EndDrawerHomeViewState();
}

class _EndDrawerHomeViewState extends State<EndDrawerHomeView> {

  List _selectedCategoriesID = [];
  List _selectedRegionsID = [];
  late String _selectedType;
  late String selectedCategoriesID;
  late String selectedRegionsID;
  late int randomNumber;

  bool Flefkosa = true;
  bool Fgirne = true;
  bool Fmagusa = true;
  bool Fguzelyurt = true;
  bool Fiskele = true;
  bool Flefke = true;
  bool FallSehirler = true;
  bool Fcanlimuzik = true;
  bool Fdiger = true;
  bool Ffestivaller = true;
  bool Fkonser = true;
  bool Fozelgunler = true;
  bool Fseminer = true;
  bool Fsinema = true;
  bool Fspor = true;
  bool Ftiyatro = true;
  bool FallKategoriler = true;
  var FSicon = FontAwesomeIcons.hatWizard;
  String FSname = 'Newest';

  late AnimationController _controller;
  late Animation<Color> _colorAnim;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 2),
                child: Row(
                  children: [
                    Text(
                      'Filters',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Cities :',
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 2),
                            child: FilterChip(
                                avatar: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.grey,
                                ),
                                selected: FallSehirler,
                                label: Text('All'),
                                onSelected: (bool selected) {
                                  if (FallSehirler == false) {
                                    setState(() {
                                      Flefkosa = true;
                                      Fgirne = true;
                                      Fmagusa = true;
                                      Fguzelyurt = true;
                                      Fiskele = true;
                                      Flefke = true;
                                      FallSehirler = true;
                                    });
                                  } else {
                                    setState(() {
                                      Flefkosa = false;
                                      Fgirne = false;
                                      Fmagusa = false;
                                      Fguzelyurt = false;
                                      Fiskele = false;
                                      Flefke = false;
                                      FallSehirler = false;
                                    });
                                  }
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 2, 8, 2),
                            child: FilterChip(
                                showCheckmark: false,
                                label: Text('Clear'),
                                onSelected: (bool selected) {
                                  setState(() {
                                    Flefkosa = false;
                                    Fgirne = false;
                                    Fmagusa = false;
                                    Fguzelyurt = false;
                                    Fiskele = false;
                                    Flefke = false;
                                    FallSehirler = false;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fgirne ? Color(0xffe34646) : Colors.grey,
                        ),
                        selected: Fgirne,
                        label: Text('Girne'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fgirne = !Fgirne;
                            if ((Fgirne == true) &&
                                (Fguzelyurt == true) &&
                                (Fiskele == true) &&
                                (Flefke == true) &&
                                (Flefkosa == true) &&
                                (Fmagusa == true)) {
                              FallSehirler = true;
                            } else {
                              FallSehirler = false;
                            }
                          });
                        }),
                  ), //girne
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fguzelyurt ? Color(0xffe34646) : Colors.grey,
                        ),
                        selected: Fguzelyurt,
                        label: Text('Güzelyurt'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fguzelyurt = !Fguzelyurt;
                            if ((Fgirne == true) &&
                                (Fguzelyurt == true) &&
                                (Fiskele == true) &&
                                (Flefke == true) &&
                                (Flefkosa == true) &&
                                (Fmagusa == true)) {
                              FallSehirler = true;
                            } else {
                              FallSehirler = false;
                            }
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fiskele ? Color(0xffe34646) : Colors.grey,
                        ),
                        selected: Fiskele,
                        label: Text('İskele'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fiskele = !Fiskele;
                            if ((Fgirne == true) &&
                                (Fguzelyurt == true) &&
                                (Fiskele == true) &&
                                (Flefke == true) &&
                                (Flefkosa == true) &&
                                (Fmagusa == true)) {
                              FallSehirler = true;
                            } else {
                              FallSehirler = false;
                            }
                          });
                        }),
                  ), //iskele
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Flefke ? Color(0xffe34646) : Colors.grey,
                        ),
                        selected: Flefke,
                        label: Text('Lefke'),
                        onSelected: (bool selected) {
                          setState(() {
                            Flefke = !Flefke;
                            if ((Fgirne == true) &&
                                (Fguzelyurt == true) &&
                                (Fiskele == true) &&
                                (Flefke == true) &&
                                (Flefkosa == true) &&
                                (Fmagusa == true)) {
                              FallSehirler = true;
                            } else {
                              FallSehirler = false;
                            }
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Flefkosa ? Color(0xffe34646) : Colors.grey,
                        ),
                        selected: Flefkosa,
                        label: Text('Lefkoşa'),
                        onSelected: (bool selected) {
                          setState(() {
                            Flefkosa = !Flefkosa;
                            if ((Fgirne == true) &&
                                (Fguzelyurt == true) &&
                                (Fiskele == true) &&
                                (Flefke == true) &&
                                (Flefkosa == true) &&
                                (Fmagusa == true)) {
                              FallSehirler = true;
                            } else {
                              FallSehirler = false;
                            }
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fmagusa ? Color(0xffe34646) : Colors.grey,
                        ),
                        selected: Fmagusa,
                        label: Text('Mağusa'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fmagusa = !Fmagusa;
                            if ((Fgirne == true) &&
                                (Fguzelyurt == true) &&
                                (Fiskele == true) &&
                                (Flefke == true) &&
                                (Flefkosa == true) &&
                                (Fmagusa == true)) {
                              FallSehirler = true;
                            } else {
                              FallSehirler = false;
                            }
                          });
                        }),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Categories :',
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 2),
                            child: FilterChip(
                                avatar: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.grey,
                                ),
                                selected: FallKategoriler,
                                label: Text('All'),
                                onSelected: (bool selected) {
                                  if (FallKategoriler == false) {
                                    setState(() {
                                      Fcanlimuzik = true;
                                      Fdiger = true;
                                      Ffestivaller = true;
                                      Fkonser = true;
                                      Fozelgunler = true;
                                      Fseminer = true;
                                      Fsinema = true;
                                      Fspor = true;
                                      Ftiyatro = true;
                                      FallKategoriler = true;
                                    });
                                  } else {
                                    setState(() {
                                      Fcanlimuzik = false;
                                      Fdiger = false;
                                      Ffestivaller = false;
                                      Fkonser = false;
                                      Fozelgunler = false;
                                      Fseminer = false;
                                      Fsinema = false;
                                      Fspor = false;
                                      Ftiyatro = false;
                                      FallKategoriler = false;
                                    });
                                  }
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 2, 8, 2),
                            child: FilterChip(
                                showCheckmark: false,
                                label: Text('Clear'),
                                onSelected: (bool selected) {
                                  setState(() {
                                    Fcanlimuzik = false;
                                    Fdiger = false;
                                    Ffestivaller = false;
                                    Fkonser = false;
                                    Fozelgunler = false;
                                    Fseminer = false;
                                    Fsinema = false;
                                    Fspor = false;
                                    Ftiyatro = false;
                                    FallKategoriler = false;
                                  });
                                }),
                          ), //hepsi
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fcanlimuzik ? Color(0xff9e4201) : Colors.grey,
                        ),
                        selected: Fcanlimuzik,
                        label: Text('Live Music'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fcanlimuzik = !Fcanlimuzik;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ), //canlı müzik
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fdiger ? Color(0xff5A5E68) : Colors.grey,
                        ),
                        selected: Fdiger,
                        label: Text('Other'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fdiger = !Fdiger;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ), //diğer
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fspor ? Color(0xff2b5329) : Colors.grey,
                        ),
                        selected: Fspor,
                        label: Text(''
                            'Sports'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fspor = !Fspor;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fsinema == true) &&
                                (Fkonser == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ), //spor
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Ffestivaller ? Color(0xff522A53) : Colors.grey,
                        ),
                        selected: Ffestivaller,
                        label: Text('Festivals'),
                        onSelected: (bool selected) {
                          setState(() {
                            Ffestivaller = !Ffestivaller;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ), //festıvaller
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fozelgunler ? Color(0xff06928f) : Colors.grey,
                        ),
                        selected: Fozelgunler,
                        label: Text('Special Days'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fozelgunler = !Fozelgunler;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ), //ozel gunler
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fseminer ? Color(0xff46676a) : Colors.grey,
                        ),
                        selected: Fseminer,
                        label: Text('Seminars'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fseminer = !Fseminer;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ), //semıner
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fkonser ? Color(0xffB58D3D) : Colors.grey,
                        ),
                        selected: Fkonser,
                        label: Text('Concerts'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fkonser = !Fkonser;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ), //konser
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Ftiyatro ? Color(0xffcc0033) : Colors.grey,
                        ),
                        selected: Ftiyatro,
                        label: Text('Theatre'),
                        onSelected: (bool selected) {
                          setState(() {
                            Ftiyatro = !Ftiyatro;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FilterChip(
                        avatar: CircleAvatar(
                          radius: 20.0,
                          backgroundColor:
                          Fsinema ? Color(0xffa30f0f) : Colors.grey,
                        ),
                        selected: Fsinema,
                        label: Text('Cinema'),
                        onSelected: (bool selected) {
                          setState(() {
                            Fsinema = !Fsinema;
                            if ((Fcanlimuzik == true) &&
                                (Fdiger == true) &&
                                (Ffestivaller == true) &&
                                (Fspor == true) &&
                                (Fozelgunler == true) &&
                                (Fseminer == true) &&
                                (Fkonser == true) &&
                                (Fsinema == true) &&
                                (Ftiyatro == true)) {
                              FallKategoriler = true;
                            } else {
                              FallKategoriler = false;
                            }
                          });
                        }),
                  ),//sinema
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Filter options :',
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 2, 8, 2),
                    child: FilterChip(
                        showCheckmark: false,
                        label: Row(
                          children: [
                            Container(
                                width: 10,
                                child: Center(
                                    child: FaIcon(
                                      FSicon,
                                      color: Colors.black45,
                                      size: 18,
                                    ))),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                              child: Text(
                                FSname,
                              ),
                            ),
                          ],
                        ),
                        onSelected: (bool selected) {}),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            FSicon = FontAwesomeIcons.hatWizard;
                            FSname = 'Newest';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 25,
                                      child: Center(
                                          child: FaIcon(
                                            FontAwesomeIcons.hatWizard,
                                            color: (FSname == 'Newest')
                                                ? Color(0xFFe34646)
                                                : Colors.black45,
                                            size: 20,
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16.0, 0, 0, 0),
                                    child: Text('Newest'),
                                  ),
                                ],
                              ),
                              Visibility(
                                  visible: (FSname == 'Newest'),
                                  child: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Color(0xFFe34646),
                                    size: 20,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            FSicon = FontAwesomeIcons.hatCowboy;
                            FSname = 'Oldest';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 25,
                                      child: Center(
                                          child: FaIcon(
                                            FontAwesomeIcons.hatCowboy,
                                            color: (FSname == 'Oldest')
                                                ? Color(0xFFe34646)
                                                : Colors.black45,
                                            size: 20,
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16.0, 0, 0, 0),
                                    child: Text('Oldest'),
                                  ),
                                ],
                              ),
                              Visibility(
                                  visible: (FSname == 'Oldest'),
                                  child: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Color(0xFFe34646),
                                    size: 20,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            FSicon = FontAwesomeIcons.fire;
                            FSname = 'Popular';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 25,
                                      child: Center(
                                          child: FaIcon(
                                            FontAwesomeIcons.fire,
                                            color: (FSname == 'Popular')
                                                ? Color(0xFFe34646)
                                                : Colors.black45,
                                            size: 20,
                                          ))),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16.0, 0, 0, 0),
                                    child: Text('Popular'),
                                  ),
                                ],
                              ),
                              Visibility(
                                  visible: (FSname == 'Popular'),
                                  child: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Color(0xFFe34646),
                                    size: 20,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: FilterChip(
                        backgroundColor: Color(0xffe34646),
                        showCheckmark: false,
                        label: Text(
                          'Apply',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (bool selected) {
                          setState(() {
                            if (Fkonser) {
                              _selectedCategoriesID.add("1");
                            }
                            if (Fcanlimuzik) {
                              _selectedCategoriesID.add("2");
                            }
                            if (Fsinema) {
                              _selectedCategoriesID.add("3");
                            }
                            if (Fseminer) {
                              _selectedCategoriesID.add("4");
                            }
                            if (Fdiger) {
                              _selectedCategoriesID.add("5");
                            }
                            if (Fozelgunler) {
                              _selectedCategoriesID.add("6");
                            }
                            if (Ftiyatro) {
                              _selectedCategoriesID.add("7");
                            }
                            if (Fspor) {
                              _selectedCategoriesID.add("8");
                            }
                            if (Ffestivaller) {
                              _selectedCategoriesID.add("9");
                            }
                            if (Fmagusa) {
                              _selectedRegionsID.add("1");
                            }
                            if (Flefkosa) {
                              _selectedRegionsID.add("2");
                            }
                            if (Flefke) {
                              _selectedRegionsID.add("6");
                            }
                            if (Fiskele) {
                              _selectedRegionsID.add("4");
                            }
                            if (Fguzelyurt) {
                              _selectedRegionsID.add("5");
                            }
                            if (Fgirne) {
                              _selectedRegionsID.add("3");
                            }
                            if (FSname == "Newest") {
                              _selectedType = "new";
                            }
                            if (FSname == "Oldest") {
                              _selectedType = "old";
                            }
                            if (FSname == "Popular") {
                              _selectedType = "popular";
                            }

                            selectedCategoriesID =
                                _selectedCategoriesID.join(",");
                            selectedRegionsID = _selectedRegionsID.join(",");
                            if (_selectedCategoriesID.length == 0) {
                              selectedCategoriesID = "1,2,3,4,5,6,7,8,9";
                            }
                            if (_selectedRegionsID.length == 0) {
                              selectedRegionsID = "1,2,3,4,5,6";
                            }
                            // _setFilteredPosts(selectedCategoriesID,
                            //     selectedRegionsID, _selectedType, context);
                            Navigator.of(context).pop();
                            // selectedCategoriesID = null;
                            // selectedRegionsID = null;
                            // _selectedType = null;
                            _selectedCategoriesID.clear();
                            _selectedRegionsID.clear();
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: FilterChip(
                        showCheckmark: false,
                        avatar: AnimatedBuilder(
                            animation: _controller,
                            builder: (context, child) {
                              return CircleAvatar(
                                radius: 16.0,
                                backgroundColor: _colorAnim.value,
                                child: FaIcon(
                                  FontAwesomeIcons.diceD20,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              );
                            }),
                        label: Row(
                          children: [
                            Text(
                              'Sit back and relax',
                            ),
                          ],
                        ),
                        onSelected: (bool selected) {
                          // setState(() {
                          //   Navigator.of(context).pop();
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //       builder: (context) => PostDetailScreen(
                          //         posts: _apiResponseNeverChanged,
                          //         user: widget.user,
                          //         post: _apiResponseNeverChanged
                          //             .data[randomNumber],
                          //       )));
                          //   randomNumber = Random().nextInt(
                          //       _apiResponseNeverChanged.data.length - 1);
                          // });
                        }
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
