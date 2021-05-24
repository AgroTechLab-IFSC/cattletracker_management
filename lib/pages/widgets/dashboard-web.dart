// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import '../../utils/dashboard.dart';

class Web implements Dashboard {
  returnDashboard() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'hello-html',
        (int viewId) => IFrameElement()
          ..width = '640'
          ..height = '360'
          ..src =
              'https://agrotechlab.lages.ifsc.edu.br:8080/dashboard/06ba1eb0-7d3d-11eb-8968-31bbd555ab9f'
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

Dashboard getDash() => Web();
