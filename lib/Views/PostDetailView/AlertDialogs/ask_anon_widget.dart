import 'package:flutter/material.dart';

class AskAnonWidget extends StatefulWidget {
  @override
  _AskAnonWidgetState createState() => _AskAnonWidgetState();
}

class _AskAnonWidgetState extends State<AskAnonWidget> {
  @override
  Widget build(BuildContext context) {
    String _anonCalled;
    var widget;
    return AlertDialog(
      titlePadding: EdgeInsets.all(0),
      title: Container(
        height: MediaQuery.of(context).size.height*0.2,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://media.discordapp.net/attachments/808068628230045760/815923397292457994/Adsz_3.jpg?width=1034&height=582'),
              fit: BoxFit.cover,
            )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16,0,0,0),
              child: Text(widget.user.userAnonStatus=="1"?"Show Me":"Hide Me",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600,),),
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.all(0),
      content:Container(
        height: MediaQuery.of(context).size.height*0.15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(widget.user.userAnonStatus=="1"?"View my name for this event.":
              'I would like to join anonymous',
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffe34646),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text('Cancel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()async{
                    setState(() {
                      widget.user.userAnonStatus=="1"?_anonCalled="0":_anonCalled="1";
                    });
                    //await _incrementCount();
                    //_anonCalled=null;
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffe34646),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text('Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      elevation: 24,
    );
  }
}
