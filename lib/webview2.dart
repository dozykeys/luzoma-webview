import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class webview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar:AppBar(
//        title:Text('webview'),
//      ),
      appBar: PreferredSize(
        child: Container(),
        preferredSize: Size.fromHeight(0.0),
      ),
      body: WebviewScaffold(url: "http://www.luzoma.com"),
    );
  }
}
