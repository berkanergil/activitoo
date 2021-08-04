import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
          ElevatedButton(onPressed: (){}, child: Text(AppLocalizations.of(context)!.helloWorld)),
          ElevatedButton(onPressed: (){}, child: Text('data')),
          ElevatedButton(onPressed: (){}, child: Text('data')),
          ElevatedButton(onPressed: (){}, child: Text('data'))
        ],
      )
    );
  }
}
