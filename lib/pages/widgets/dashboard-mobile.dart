import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../utils/dashboard.dart';

class Mob implements Dashboard {
  returnDashboard() {
    return new Container(
        width: 320,
        height: 300,
        child: WebView(
          initialUrl: Uri.dataFromString('''<html>
 <style>
 .wrap
{
    width: 320px;
    height: 192px;
    padding: 0;
    overflow: hidden;
}

.frame
{
    width: 1280px;
    height: 786px;
    border: 0;

    -ms-transform: scale(0.25);
    -moz-transform: scale(0.25);
    -o-transform: scale(0.25);
    -webkit-transform: scale(0.25);
    transform: scale(0.25);

    -ms-transform-origin: 0 0;
    -moz-transform-origin: 0 0;
    -o-transform-origin: 0 0;
    -webkit-transform-origin: 0 0;
    transform-origin: 0 0;
}
</style>
<body><div class="wrap"><iframe class="frame" src="https://agrotechlab.lages.ifsc.edu.br:8080/dashboard/06ba1eb0-7d3d-11eb-8968-31bbd555ab9f">
</iframe></div></body></html>''', mimeType: 'text/html').toString(),
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}

Dashboard getDash() => Mob();
