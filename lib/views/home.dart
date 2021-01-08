import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterdev/animations/bottomAnimation.dart';
import 'package:flutterdev/social_icon_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: WebLogo(),
        actions: [
          _appBarTextBtn("Docs"),
          _appBarTextBtn("Showcase"),
          _appBarTextBtn("Community"),
          _appBarIconBtn(Icons.search, 10.0),
          _appBarIconBtn(SocialIcon.twitter, 3.0),
          _appBarIconBtn(SocialIcon.youtube, 3.0),
          _appBarIconBtn(SocialIcon.github_circled, 3.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              color: Colors.blueAccent,
              onPressed: () {},
              child: Text(
                "Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopHeader(),
            FirstPage(),
          ],
        ),
      ),
    );
  }

  Widget _appBarIconBtn(IconData btnIcon, double paddingValue) {
    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: IconButton(
        icon: Icon(btnIcon, color: Colors.grey[600]),
        onPressed: () {},
      ),
    );
  }

  Widget _appBarTextBtn(String btnText) {
    return FlatButton(
      onPressed: () {},
      child: Text(
        btnText,
        style: TextStyle(
            fontSize: 16.5,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
            letterSpacing: 1.0),
      ),
    );
  }
}

class WebLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Image.asset('assets/flutter.png', height: height * 0.05),
        Text(
          "Flutter",
          style: TextStyle(
              fontSize: height * 0.04,
              color: Colors.grey[600],
              fontWeight: FontWeight.w100),
        )
      ],
    );
  }
}

class TopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff075b9a),
      width: double.infinity,
      height: 65,
      child: Center(
        child: Text(
          "Migrate your packages to null safety!",
          style: TextStyle(fontSize: 22, color: Colors.lightBlue),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 70.0, 0, 0),
      child: WidgetAnimator(
        Stack(
          children: [
            Positioned(
              top: height * 0.1,
              left: width / 2.5,
              child: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef9a7343692a5f7784d68241a786c57c79d55f0fe37e6b82a653d146b93.jpg',
                height: height * 0.5,
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Image.network(
                  "https://flutter.dev/assets/homepage/carousel/phone_bezel-467ab8d838e5e2d2d3f347f766173ccc365220223692215416e4ce7342f2212f.png",
                  height: height * 0.7,
                )),
            Positioned(
              top: height * 0.25,
              left: width / 5.2,
              child: Row(
                children: [
                  Text(
                    "Design",
                    style: TextStyle(
                      fontSize: height * 0.125,
                      color: Colors.blueAccent,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 8.0,
                          color: Colors.black38,
                        ),
                        // ),
                      ],
                    ),
                  ),
                  Text(
                    " beautiful",
                    style: TextStyle(shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: Colors.black38,
                      ),
                      // ),
                    ], fontSize: height * 0.125, color: Colors.white),
                  ),
                  Text(
                    " apps",
                    style: TextStyle(shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: Colors.black38,
                      ),
                      // ),
                    ], fontSize: height * 0.125, color: Colors.blueAccent),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
