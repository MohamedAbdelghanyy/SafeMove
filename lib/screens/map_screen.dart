import 'dart:async';

import 'package:SafeMove/screens/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapView extends StatefulWidget {
  static const routeName = '/map-view';
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              initialUrl:
                  'https://maps.mapwize.io/#/v/misr_international_university/3?u=default_universe&l=en&z=18.634',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController controller) {
                _controller.complete(controller);
              },
            ),
          ],
        ),
      ),
    );
  }
}
