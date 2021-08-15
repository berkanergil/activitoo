import 'package:activitoo/Constants/custom_colors.dart';
import 'package:activitoo/Controllers/widget_controller.dart';
import 'package:activitoo/Models/Views/home_view_drawer_model.dart';
import 'package:activitoo/Models/Views/home_view_post_model.dart';
import 'package:activitoo/Models/api_response_model.dart';
// import 'package:activitoo/Views/HomeView/HomeViewWidgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Widgets/post_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late APIResponseModel<List<HomeViewPostWidgetModel>> apiResponseModel;
  //  late APIResponseModel<HomeViewDrawerWidgetModel> apiResponseModel;

  @override
  void initState() {
    // TODO: implement initState
    callWidgets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            //     PostWidget(onTap: (){},
            //         categoryImage: 'https://picsum.photos/200/300',
            //         categoryName: 'categoryName',
            //         categoryEventNumber: '12',
            //         categoryColor: CustomColor.red,
            //         eventImage: 'https://picsum.photos/200/300',
            //         eventTitle: 'eventTitle',
            //         eventStartTime: 'eventStartTime',
            //         eventStartDate: 'eventStartDate',
            //         placeName: 'placeName',
            //         regionName: 'regionName',
            //         barChildren: [
            //           PostBarTile(icon: Icon(
            //               Icons.location_on_outlined,
            //               color: Colors.white,
            //               size: 26.0,
            //               ),
            //               text: Text(
            //                 'regionName',
            //                 style: TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.w500,
            //                     color: Colors.white),
            //               ),
            //               onTap: (){}),
            //         ]
            // ),
            ElevatedButton(
                onPressed: () {},
                child: Text(AppLocalizations.of(context)!.helloWorld)),
            ElevatedButton(onPressed: () {}, child: Text('data')),
            ElevatedButton(onPressed: () {}, child: Text('data')),
            ElevatedButton(onPressed: () {}, child: Text('data'))
          ],
        ));
  }

  void callWidgets() async {
    apiResponseModel = await WidgetController.homeViewPostWidgets();
    print(apiResponseModel.error);
    print(apiResponseModel.message);
    apiResponseModel.data?.forEach((element) {
      print(element.categoryModel.eventCount);
    });

    // apiResponseModel = await WidgetController.homeViewDrawerWidget();
    // apiResponseModel.data?.regions.forEach((element) {print(element.name);});
  }
}
