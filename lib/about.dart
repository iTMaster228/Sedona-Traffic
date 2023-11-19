import 'package:flutter/material.dart';
import 'package:sedo/nav.dart';
import 'package:sedo/webview.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*0.7,
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    itemCount: aboutCards.length,
                    itemBuilder: (BuildContext context, int index) {
                      return aboutCards[index];
                    },
                  ),
                ),
                ContactCard(
                title: 'CONTACT US',
                phoneNumber: '928-862-0210',
                email: 'al@comellomedia.com',
              ),
              ],
            ),
          ),
        
      
    );
  }
}

class AboutCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String link;

  const AboutCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle card click
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => webview_page(url: link, title: title),
          ),
        );
      },
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50.0,
                color: Colors.orange,
              ),
              SizedBox(height: 10.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

final List<AboutCard> aboutCards = [
   AboutCard(
    title: 'VISIT SEDONA WEBSITE',
    icon: Icons.public,
    link: 'https://visitsedona.com/',
  ),
  AboutCard(
    title: 'MAPS SEDONA/VERDE VALLEY',
    icon: Icons.public,
    link: 'https://svvmaps.com/',
  ),
  AboutCard(
    title: 'BUY PARKING PASS',
    icon: Icons.shopping_cart,
    link: 'https://www.recreation.gov/sitepass/74387',
  ),
  AboutCard(
    title: 'SEE SEDONA LIVE - WEBCAMS',
    icon: Icons.videocam,
    link: 'http://sedonawebcam.com/',
  ),
 
];

class ContactCard extends StatelessWidget {
  final String title;
  final String phoneNumber;
  final String email;

  const ContactCard({
    Key? key,
    required this.title,
    required this.phoneNumber,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Icon(
              Icons.contact_phone,
              size: 48.0,
              color: Colors.orange,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            // Phone Number
            InkWell(
              onTap: () => _launchPhoneCall(phoneNumber),
              child: Text(
                phoneNumber,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // Email
            InkWell(
              onTap: () => _launchEmail(email),
              child: Text(
                email,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchPhoneCall(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchEmail(String email) async {
    String url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}