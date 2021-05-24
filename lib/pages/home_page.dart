import 'package:flutter/material.dart';
import '../utils/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Dashboard"),
          actions: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                  child: Icon(Icons.power_settings_new),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            )
          ]),
      body: Dashboard().returnDashboard(),
    );
  }
}
