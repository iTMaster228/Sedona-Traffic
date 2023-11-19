import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';


class viewer_map extends StatefulWidget {

  final title;
  final map;
  const viewer_map({super.key, this.map, this.title});

  @override
  State<viewer_map> createState() => _viewer_mapState();
}

class _viewer_mapState extends State<viewer_map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
           backgroundColor: Colors.orangeAccent,
        title: Text(widget.title),
        
      ),body: WebViewPlus(
        zoomEnabled: false,
        gestureNavigationEnabled: true,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) {
                controller.loadUrl('assets/maps/${widget.map}.html');
              },
            ),
    );
  }
}