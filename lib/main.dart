import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:sedo/about.dart';
import 'package:sedo/homepage.dart';
import 'package:sedo/nav.dart';
import 'package:sedo/view_map.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

void main() {
  runApp(loading());
}

class loading extends StatelessWidget {
  const loading({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sedo Traffic",
      home: splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  late Timer _timer;

  timer(){
    _timer = Timer.periodic(Duration(seconds: 3), (timer) { 
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
        return Screen1();
       
       })); timer.cancel();
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD76F),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/splash.png", fit: BoxFit.contain,),
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

   int _currentIndex = 0;
   final List<Widget> _pages =[
    MyApp(),
    AboutPage()

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(233, 255, 172, 64),
        drawer: NavBar(),
        appBar: AppBar(
         
          backgroundColor: Colors.orangeAccent,
          title: const Text('Sedona Traffic'),
        ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        elevation: 10,
        backgroundColor: Colors.orangeAccent,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
    );
  }
}

