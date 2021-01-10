import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TopHeader extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff075b9a),
      width: double.infinity,
      height: 65,
      child: Center(
        child: FlatButton(
          onPressed: () {
            _launchURL(
                "https://medium.com/flutter/announcing-dart-null-safety-beta-4491da22077a");
          },
          child: Text(
            "Migrate your packages to null safety!",
            style: TextStyle(
                fontSize: 22,
                color: Colors.lightBlue[400],
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
