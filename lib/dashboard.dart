import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import 'login.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(20),
                child: new MaterialButton(
                  height: 100,
                    minWidth: 150,
                    color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: new Text("CAT"),
                  onPressed: ()=>{
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>details()),
                    )
                  },
                  splashColor: Colors.redAccent,
                ),)
              ],)
            ],
          ),
        )



      );

  }
}
