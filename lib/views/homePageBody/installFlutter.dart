import 'package:flutter/material.dart';
import 'package:flutterdev/custom/whiteContainer.dart';
import 'package:url_launcher/url_launcher.dart';

class InstallFlutter extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return WhiteContainer(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Install Flutter Today.",
            style: TextStyle(
                fontSize: 40,
                color: Colors.grey[800],
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "It's free and open source.",
            style: TextStyle(fontSize: 22, color: Colors.grey[800]),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 300,
            height: 70,
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                _launchURL("https://flutter.dev/docs/get-started/install");
              },
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 20, letterSpacing: 1.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
