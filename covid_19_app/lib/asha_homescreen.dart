import 'package:covid_19_app/asha_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './covid_19.dart';
import 'asha_complaint_list.dart';
import 'covid_cases.dart';

class AshaHomeScreen extends StatefulWidget {
  @override
  _SampleState createState() => new _SampleState();
}

class _SampleState extends State<AshaHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Covid_19.themecolor,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
          actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/backgrounds/mc7.jpg"),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 70.0, right: 70.0, top: 10.0, bottom: 10.0),
              child: Image.asset("assets/logos/logo.png"),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 250.0, left: 10.0, right: 10.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      print('Profile Button Pressed');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Asha_Profile();
                      }));
                    },
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/icons/profile.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                        Center(
                          child: Text("Profile"),
                        )
                      ],
                    )),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('Covid cases Button Pressed');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Covid_cases();
                          }));
                    },
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/icons/covid.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                        Center(
                          child: Text("Covid Cases"),
                        )
                      ],
                    )),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('View Complaint Button Pressed');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Complaint_view();
                          }));
                    },
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/icons/complaint.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                        Center(
                          child: Text("View Complaint"),
                        )
                      ],
                    )),
                  ),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          "assets/icons/logout.png",
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                      Center(
                        child: Text("Logout"),
                      )
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
