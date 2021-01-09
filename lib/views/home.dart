import 'package:flutter/material.dart';
import 'package:flutterdev/custom/webLogo.dart';
import 'package:flutterdev/social_icon_icons.dart';
import 'package:flutterdev/views/homePageBody/frameContainer.dart';
import 'package:flutterdev/views/homePageBody/topHeader.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _appBarActions = [
    AppBarTextBtn(btnText: "Docs"),
    AppBarTextBtn(btnText: "Showcase"),
    AppBarTextBtn(btnText: "Community"),
    AppBarIconBtn(btnIcon: Icons.search, paddingValue: 10.0),
    AppBarIconBtn(btnIcon: SocialIcon.twitter, paddingValue: 3.0),
    AppBarIconBtn(btnIcon: SocialIcon.youtube, paddingValue: 3.0),
    AppBarIconBtn(btnIcon: SocialIcon.github_circled, paddingValue: 3.0),
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: WebLogo(),
        actions: _appBarActions,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopHeader(),
            FrameContainer(),
          ],
        ),
      ),
    );
  }
}

class AppBarTextBtn extends StatelessWidget {
  final String btnText;
  AppBarTextBtn({@required this.btnText});
  @override
  Widget build(BuildContext context) {
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

class AppBarIconBtn extends StatelessWidget {
  final IconData btnIcon;
  final double paddingValue;
  AppBarIconBtn({@required this.btnIcon, @required this.paddingValue});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: IconButton(
        icon: Icon(btnIcon, color: Colors.grey[600]),
        onPressed: () {},
      ),
    );
  }
}
