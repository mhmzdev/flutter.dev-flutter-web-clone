import 'package:flutter/material.dart';
import 'package:flutterdev/custom/whiteContainer.dart';
import 'package:url_launcher/url_launcher.dart';

class MadeByGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WhiteContainer(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.13),
        child: Column(
          children: [
            MadeByGoogleText(),
            SizedBox(
              height: 20.0,
            ),
            FlutterAbout(),
            SizedBox(
              height: 20.0,
            ),
            GetStartedAndVideoBtns(),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Coming from another platform? Docs: iOS, Android, Web, React Native, Xamarin.",
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

class MadeByGoogleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _googleLetter("Made ", Colors.grey[800]),
        _googleLetter("by ", Colors.grey[800]),
        _googleLetter("G", Color(0xff1389fd)),
        _googleLetter("o", Color(0xffea4335)),
        _googleLetter("o", Color(0xfffbbc05)),
        _googleLetter("g", Color(0xff1389fd)),
        _googleLetter("l", Color(0xff46b062)),
        _googleLetter("e", Color(0xffea4335)),
      ],
    );
  }

  _googleLetter(String letter, Color color) {
    return Text(letter,
        style:
            TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w500));
  }
}

class FlutterAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 28, color: Colors.grey[800]),
    );
  }
}

class GetStartedAndVideoBtns extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 270,
          height: 60,
          child: FlatButton(
            padding: EdgeInsets.all(20.0),
            color: Colors.blue,
            onPressed: () {
              _launchURL("https://flutter.dev/docs/get-started/install");
            },
            child: Text(
              "Get Started",
              style: TextStyle(
                  color: Colors.white, fontSize: 18.5, letterSpacing: 1.0),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        FlatButton(
          hoverColor: Colors.transparent,
          padding: EdgeInsets.all(20.0),
          onPressed: () {
            _launchURL(
                "https://www.youtube.com/watch?v=5VbAwhBBHsg&feature=youtu.be&ab_channel=GoogleDevelopers");
          },
          child: Row(
            children: [
              Icon(
                Icons.play_circle_fill_sharp,
                color: Colors.blue,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Get Started",
                style: TextStyle(
                    color: Colors.blue, fontSize: 18.5, letterSpacing: 1.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
