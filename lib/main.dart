import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Controllers/admin_controller.dart';
import 'package:activitoo/Models/admin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Models/api_response_model.dart';
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

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isLoading= false;
  late APIResponseModel<List<AdminModel>> _apiResponse;

  _getAdmins() async {
    setState(() {
      _isLoading = true;
    });
    _apiResponse = await AdminController.index();
    setState(() {
      _isLoading = false;
    });
  }


  int pageIndex = 0;

  static List<Widget> _screenOptions = <Widget>[
    HomeView(),
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
      body:
      _screenOptions[pageIndex],
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
        onTap: (index) async{
          await _getAdmins();
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
