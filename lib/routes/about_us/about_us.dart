import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:shopy/drawer.dart';
import 'package:shopy/model/mybottom.dart';
import 'package:shopy/routes/about_us/functions/info.dart';
import 'package:shopy/routes/product/functions/colors.dart';
import 'package:url_launcher/url_launcher.dart';

String twitter = "https://twitter.com/kaser39678172";
String whats = "https://wa.me/966552183832?text= Hello Mr.Muhammad";

class ZoomAbout extends StatefulWidget {
  @override
  _ZoomAboutState createState() => _ZoomAboutState();
}

class _ZoomAboutState extends State<ZoomAbout> {
  Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(darkColor);

    return CustomZoom(
      child: AboutUs(),
    );
  }
}

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            drawerC.toggle();
          },
        ),
        backgroundColor: s1bg,
        toolbarHeight: 40,
        elevation: 0,
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Info(
            name: 'Muhammad Kurdia',
            email: 'kaser9725@gmail.com',
            image: "assets/images/my.jpg",
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.apps_sharp,
              color: s1bg,
            ),
            title: Text('Flutter Devoloper'),
            subtitle: Text('Junior front end devoloper'),
            trailing: Text('Exp: 1 Year'),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              leading: Text(
                'Social : ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              title: Row(
                children: [
                  TextButton(
                    onPressed: () async {
                      await launch(twitter);
                    },
                    child: Image.asset('assets/images/twi.png',
                        width: 45, height: 45),
                  ),
                   TextButton(
                    onPressed: () async {
                      await launch(whats);
                    },
                    child: Image.asset('assets/images/whatsapp.png',
                        width: 45, height: 45),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: MyBAP2(
        title: "About us",
      ),
    );
  }
}
