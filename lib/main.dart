import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Views/PostDetailView/post_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Views/HomeView/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('tr', ''), // Spanish, no country code
      ],
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: CustomColor.red)),
        buttonColor: Colors.blue,
        primaryColor: Colors.black,
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'DENEME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  static List<Widget> _screenOptions = <Widget>[
    PostDetailView(),
    HomeView(),
    HomeView(),
    HomeView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
        centerTitle: true,
      ),
      body: _screenOptions[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'deneme',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: AppLocalizations.of(context)!.helloWorld,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Started',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Finished',
          ),
        ],
        selectedItemColor: CustomColor.red,
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
