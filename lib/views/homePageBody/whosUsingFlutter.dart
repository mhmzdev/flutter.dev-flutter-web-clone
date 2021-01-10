import 'package:flutter/material.dart';
import 'package:flutterdev/custom/whiteContainer.dart';
import 'package:url_launcher/url_launcher.dart';

class WhosUsingFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return WhiteContainer(
      height: height * 0.5,
      child: Center(
        child: Row(
          children: [
            Expanded(child: TextualInfo()),
            Expanded(child: OrganizationImages())
          ],
        ),
      ),
    );
  }
}

class TextualInfo extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Who's using Flutter?",
            style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.0,
                color: Colors.grey[700]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Organizations around the world are building apps with Flutter.",
            style: TextStyle(fontSize: 18, color: Colors.grey[700]),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {
              _launchURL("https://flutter.dev/showcase");
            },
            child: Text("See what’s being created"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

class OrganizationImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://flutter.dev/assets/homepage/garden-logos-color/google-5c9ef2841dda5d0247e53d56a91a70a1b961a08f1d2f0898d14441c3bc943586.png',
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                'https://flutter.dev/assets/homepage/garden-logos-color/ebay-f4a49fe64c5b6aedae0e8569f73e9162ae874c9d273464e5047cee3eb9388cff.png',
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                'https://flutter.dev/assets/homepage/garden-logos-color/bmw-e4981c2b2e2232677ae21defd00772860216b16e5c1e3fd96feb000e4f661f0c.jpg',
                height: MediaQuery.of(context).size.height * 0.1,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://flutter.dev/assets/homepage/garden-logos-color/square-1ad0f8048aac312d74648ce0bdc3b1bfd35725d8aa03822d5142e0eeec0353e7.png',
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                'https://flutter.dev/assets/homepage/garden-logos-color/alibaba-97b7139685585cb9201f2b7b52bbef9f5b5df33349dd374738fad86a99a2ef01.png',
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              SizedBox(
                width: 30,
              ),
              Image.network(
                'https://flutter.dev/assets/homepage/garden-logos-color/capital-one-30b02ad6d4e45ddfc4401498f12e40d8575c06eb2a0109d62cd4ab55386af0d3.png',
                height: MediaQuery.of(context).size.height * 0.12,
              )
            ],
          )
        ],
      ),
    );
  }
}
