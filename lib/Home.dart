import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void launchURL(Uri uri, bool inApp) async {
    try {
      if (await canLaunchUrl(uri)) {
        if (inApp) {
          await launchUrl(uri, mode: LaunchMode.inAppWebView);
        } else {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () =>
                  launchURL(Uri.parse('https:browser link........'), false),
              child: Container(
                width: 300,
                height: 50,
                decoration: ShapeDecoration(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),),),
                child: Center(
                    child: Text(
                  " Open Url In Browser",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () => launchURL(Uri.parse('https:whatsapp chat link......)') ,false),
            child: Container(
              width: 300,
              height: 50,
              decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Center(
                  child: Text(
                "Open Url In App",
                style: TextStyle(color: Colors.white,fontSize: 18),
              )),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () => launchURL(Uri.parse('tel:+1234567890'), false),
            child: Container(
              width: 300,
              height: 50,
              decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Center(
                  child: Text(
                "Call Phone Number",
                style: TextStyle(color: Colors.white,fontSize: 18),
              )),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () => launchURL(
                Uri.parse('mailto:examplemail@gmail.com'), false),
            child: Container(
              width: 300,
              height: 50,
              decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Center(
                  child: Text(
                "Send Mail",
                style: TextStyle(color: Colors.white,fontSize: 18),
              )),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () => launchURL(Uri.parse('https:youtube link .......'), false),
            child: Container(
              width: 300,
              height: 50,
              decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Center(
                  child: Text(
                "Open Youtube Video",
                style: TextStyle(color: Colors.white,fontSize: 18),
              )),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
