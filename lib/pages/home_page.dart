// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/shared_service.dart';

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
            GestureDetector(
              onTap: () {
                SharedService.logout().then(
                  (_) => Navigator.of(context).pushReplacementNamed('/login'),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                    child: Icon(Icons.power_settings_new),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                    child: Text(
                      "Logout",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ]),
      body: _uiSetup(),
    );
  }

  Widget _uiSetup() {
// ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
      'hello-html',
      (int viewId) => IFrameElement()
        ..width = '640'
        ..height = '360'
        ..src = 'https://demo.thingsboard.io/dashboard/6e9f7550-4c2f-11eb-85f1-89bdf3965cf4?publicId=cd275350-ab97-11eb-83ac-bf5e0e990b9e'
        ..style.border = 'none');

    return new Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(25),
        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: HtmlElementView(viewType: 'hello-html'),
      ),
    ),
  );
                        }
                      }
                      
