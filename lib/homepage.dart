import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:sedo/nav.dart';
import 'package:sedo/view_map.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int _currentIndex = 0;


  @override
  void initState() {
    super.initState();

  }

_launchCaller() async {
    const url = "tel:9288620210";   
    if (await canLaunch(url)) {
       await launch(url);
    } else {
      throw 'Could not launch $url';
    }   
}
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child:  Column(
              children: [
                Container(
                  height: 200,
                  child: Carousel(
                    animationPageCurve: Curves.linear,
                    indicatorBarColor: Colors.transparent,
                     autoScroll: true,
                      // widgets
                      items: [
                        Container(
                          child:Image.asset("assets/bg.jpeg", fit: BoxFit.cover,)
                        ),
                        Container(
                           child:Image.asset("assets/img.webp", fit: BoxFit.cover,)
                        ),
                        
                      ],
                    ),
                ),
Container(
  margin:EdgeInsets.all(10),
  child: Text(
    style:TextStyle(fontSize: 18, color: Colors.white),
    '"Sedona “Real-Time” Traffic is a quick way of reviewing traffic volume when driving in Sedona and into Sedona. The windows you see here are pre-loaded with Google Map data to show actual traffic in “real-time'
    ,textAlign: TextAlign.center,)
  ),
                Container(
                  child: GFCard(
 boxFit: BoxFit.cover,
 image: Image.asset("assets/oak.PNG" ,),
showImage: true,

content: Text("VILLAGE OF OAK CREEK TO SEDONA",
textAlign: TextAlign.center,
 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
buttonBar: GFButtonBar(
 children: <Widget>[
   Container(
    width: MediaQuery.of(context).size.width*0.7,
    height: 40,
     child: GFButton(
      color: Colors.deepOrangeAccent,
      onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
          return viewer_map(title: "VILLAGE OF OAK CREEK TO SEDONA", map: "map1",);
         }));
      },
      text: 'OPEN MAP',
     ),
   ),
 
 ],
 ),
),
                ),
   Container(
                  child: GFCard(
 boxFit: BoxFit.cover,
 image: Image.asset("assets/west.PNG" ,),
showImage: true,

content: Text("WEST SEDONA TO TLAQUEPAQUE ON SR179",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
buttonBar: GFButtonBar(
 children: <Widget>[
   Container(
    width: MediaQuery.of(context).size.width*0.7,
    height: 40,
     child: GFButton(
      color: Colors.deepOrangeAccent,
      onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
          return viewer_map(title: "WEST SEDONA TO TLAQUEPAQUE ON SR179", map: "map2",);
         }));
      },
      text: 'OPEN MAP',
     ),
   ),
 
 ],
 ),
),
                ),
                 Container(
                  child: GFCard(
 boxFit: BoxFit.cover,
 image: Image.asset("assets/indian.PNG" ,),
showImage: true,

content: Text("INDIAN GARDENS TO SEDONA AT 89A/SR 179",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
buttonBar: GFButtonBar(
 children: <Widget>[
   Container(
    width: MediaQuery.of(context).size.width*0.7,
    height: 40,
     child: GFButton(
      color: Colors.deepOrangeAccent,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
          return viewer_map(title: "WEST SEDONA TO TLAQUEPAQUE ON SR179", map: "map3",);
         }));
      },
      text: 'OPEN MAP',
     ),
   ),
   
 
 ],
 ),
),
                ),

                    Container(
                  child: GFCard(
 boxFit: BoxFit.cover,
 image: Image.asset("assets/anthem.PNG" ,),
showImage: true,

content: Text("ANTHEM TO SEDONA (THE Y) VIA I-17 TO SR 179",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
buttonBar: GFButtonBar(
 children: <Widget>[
   Container(
    width: MediaQuery.of(context).size.width*0.7,
    height: 40,
     child: GFButton(
      color: Colors.deepOrangeAccent,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
          return viewer_map(title: "ANTHEM TO SEDONA (THE Y) VIA I-17 TO SR 179", map: "map4",);
         }));
      },
      text: 'OPEN MAP',
     ),
   ),
   
 
 ],
 ),
),
                ),
      
                          Container(
                  child: GFCard(
 boxFit: BoxFit.cover,
 image: Image.asset("assets/phoenix.PNG" ,),
showImage: true,

content: Text("ANTHEM TO SEDONA VIA I-17 TO SR 260 THRU COTTONWOOD",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
buttonBar: GFButtonBar(
 children: <Widget>[
   Container(
    width: MediaQuery.of(context).size.width*0.7,
    height: 40,
     child: GFButton(
      color: Colors.deepOrangeAccent,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
          return viewer_map(title: "ANTHEM TO SEDONA VIA I-17 TO SR 260 THRU COTTONWOOD", map: "map5",);
         }));
      },
      text: 'OPEN MAP',
     ),
   ),
   
 
 ],
 ),
),
                ),
                                    Container(
                  child: GFCard(
 boxFit: BoxFit.cover,
 image: Image.asset("assets/fort.PNG" ,),
showImage: true,

content: Text("FLAGSTAFF I-17/89A TO SEDONA THRU OAK CREEK CANYON",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),),
buttonBar: GFButtonBar(
 children: <Widget>[
   Container(
    width: MediaQuery.of(context).size.width*0.7,
    height: 40,
     child: GFButton(
      color: Colors.deepOrangeAccent,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
          return viewer_map(title: "FLAGSTAFF I-17/89A TO SEDONA THRU OAK CREEK CANYON", map: "map6",);
         }));
      },
      text: 'OPEN MAP',
     ),
   ),
   
 
 ],
 ),
),
                ),
              ],
            )
          
    
   
    );
  }
}



BuildContext _currentContext() => _navigatorKey.currentContext!;
final _navigatorKey = GlobalKey<NavigatorState>();