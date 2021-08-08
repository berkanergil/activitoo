import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// TODO: Localization

class ReportAlertDialog extends StatefulWidget {
  @override
  _ReportAlertDialogState createState() => new _ReportAlertDialogState();
}
class _ReportAlertDialogState extends State<ReportAlertDialog> {

  bool checkedValue1 = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;
  bool checkedValue4 = false;
  bool checkedValue5 = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all(0),
      title: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/id/237/200/300'),
              fit: BoxFit.cover,
            )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                FractionalTranslation(
                  translation: Offset(0.0, -0.3),
                  child: Align(
                    child: CircleAvatar(
                      radius: 26.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 24.0,
                        backgroundColor: Color(0xffe34646),
                        child: FaIcon(FontAwesomeIcons.userSecret,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                    alignment: FractionalOffset(0.0, 0.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.all(2),
      content:Padding(
        padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
        child: Wrap(
          children: [
            ConstrainedBox(
              constraints: new BoxConstraints(
                maxHeight:MediaQuery.of(context).size.height*0.5,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('PLease specify your complaint',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5,color: Colors.black45,),
                    SizedBox(
                      height: 30,
                      child: CheckboxListTile(
                        activeColor: Color(0xffe34646),
                        title: Text("Inappropriate Photo"),
                        value: checkedValue1,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue1 = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: CheckboxListTile(
                        activeColor: Color(0xffe34646),
                        title: Text("Inappropriate Info"),
                        value: checkedValue2,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue2 = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: CheckboxListTile(
                        activeColor: Color(0xffe34646),
                        title: Text("Spam"),
                        value: checkedValue3,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue3 = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: CheckboxListTile(
                        activeColor: Color(0xffe34646),
                        title: Text("Wrong category"),
                        value: checkedValue4,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue4 = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: CheckboxListTile(
                        activeColor: Color(0xffe34646),
                        title: Text("Misleading Price"),
                        value: checkedValue5,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue5 = newValue!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,16,8,16),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10,0,10,0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Color(0xffe34646))
                        ),
                        child: TextField(
                          controller: description,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Any other complaint..'
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AbsorbPointer(
                        absorbing: false,
                        child: InkWell(
                          onTap:(){
                            Navigator.pop(context);
                            Scaffold.of(context).showSnackBar(SnackBar(
                              duration: Duration(seconds: 3),
                              content: Text("Youre report has been submitted !"),
                            ));
                          },
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xffe34646),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: (){
                                String report="Report Type: ";
                                if(checkedValue1){
                                  report=report+"Inappropriate Photo,";
                                }if(checkedValue2){
                                  report=report+"Inappropriate Info,";
                                }if(checkedValue3){
                                  report=report+"Spam,";
                                }if(checkedValue4){
                                  report=report+"Wrong category,";
                                }if(checkedValue5){
                                  report=report+"Misleading Price,";
                                }
                                report=report+"_________POST ID: "+'widget.postID';
                                report=report+"_________AÇIKLAMA: "+'description.text';
                                // service.sendBugReport(widget.user.userUsername, report).then((value) {
                                //   if(value.error){
                                //     showAlertDialog(context, "Error", value.errorMessage);
                                //   }else {
                                //     showAlertDialog(context, "Message", "Youre report has successfully been submitted. Thank you");
                                //   }
                                // } );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:16.0),
                                child: Center(
                                  child: Text('Submit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [

      ],
      elevation: 24,
    );
  }

  showAlertDialog(BuildContext context, String title, String message) {
    // set up the button
    Widget OKButton = TextButton(
      child: Text("Tamam"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        OKButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}