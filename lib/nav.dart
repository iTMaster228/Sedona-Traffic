import 'package:flutter/material.dart';
import 'package:sedo/main.dart';
import 'package:sedo/webview.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.asset("assets/ic_launcher.png", width:150, height:150),
            accountName: Text('Sedona Real Time Traffic', style: TextStyle(fontSize: 22),),
            accountEmail: Text(''),
           
            decoration: BoxDecoration(
              color: Colors.orange,
              
              image: DecorationImage(
                
                opacity: 0.7,
                  fit: BoxFit.fill,
                  image: AssetImage(
                    
                      'assets/bg.jpeg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.orange,),
            title: Text('Home'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                 return loading(); }));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.orange,),
            title: Text('Sedona Official Website'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                 return webview_page(url: "https://visitsedona.com/", title: "Sedona Official Website",); }));
            },
          ),
          ListTile(
            leading: Icon(Icons.web_stories, color: Colors.orange,),
            title: Text('Buy Parking Pass for the Forest'),
           onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                 return webview_page(url: "https://www.recreation.gov/sitepass/74387", title: "Buy Parking Pass for the Forest",); }));
            },
          ),
          ListTile(
            leading: Icon(Icons.camera, color: Colors.orange,),
            title: Text('Sedona Live Webcam'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                 return webview_page(url: "http://sedonawebcam.com/", title: "Sedona Live Webcam",); }));
            },
          ),
          ListTile(
            leading: Icon(Icons.location_city, color: Colors.orange,),
            title: Text('Maps of Sedona and Verde Valley'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                 return webview_page(url: "https://svvmaps.com/", title: "Maps of Sedona and Verde Valley",); }));
            },
          ),
         
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app, color: Colors.orange,),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
