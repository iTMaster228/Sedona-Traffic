import 'package:flutter/material.dart';
import 'package:sedo/nav.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';


class webview_page extends StatefulWidget {
  final title;
  final url;
  const webview_page({super.key, this.title, this.url});

  @override
  State<webview_page> createState() => _webview_pageState();
}

class _webview_pageState extends State<webview_page> {

  late bool isloading;
   

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isloading=true;
  
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.orangeAccent,
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title:  Text(widget.title),
        ),
    body: 
    SafeArea(
      child: Column(
        children: [
          Center(
            child: Offstage(
              offstage: (isloading == true)? false:true,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Center(child: CircularProgressIndicator(color: Colors.white,))),
            ),
          ),
          Expanded(
           // width: MediaQuery.of(context).size.width*1,
            
            child: Offstage(
              offstage: isloading,
              child: WebViewPlus(
                        javascriptMode: JavascriptMode.unrestricted,
                        onWebViewCreated: (controller) {
                          controller.loadUrl(widget.url);
                          
                        },
                        onPageStarted: (url){
                         print("loading");
                            isloading =true;
                        
                        },
                      onProgress: (url){
                         print("$url");
                          isloading=true;
                       
                      },
                    onPageFinished: (url){
                        print("Loaded");
                        isloading=false;
                        setState(() {
                          isloading=false;
                        });
                     
                    },
                      ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}