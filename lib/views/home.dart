import 'package:flutter/material.dart';
import 'package:flutterdev/custom/webLogo.dart';
import 'package:flutterdev/custom/whiteContainer.dart';
import 'package:flutterdev/social_icon_icons.dart';
import 'package:flutterdev/views/homePageBody/featureDetail.dart';
import 'package:flutterdev/views/homePageBody/flutterFeatures.dart';
import 'package:flutterdev/views/homePageBody/footer.dart';
import 'package:flutterdev/views/homePageBody/frameContainer.dart';
import 'package:flutterdev/views/homePageBody/installFlutter.dart';
import 'package:flutterdev/views/homePageBody/madeByGoogle.dart';
import 'package:flutterdev/views/homePageBody/news.dart';
import 'package:flutterdev/views/homePageBody/topHeader.dart';
import 'package:flutterdev/views/homePageBody/tryFlutter.dart';
import 'package:flutterdev/views/homePageBody/whosUsingFlutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
        onPressed: () async {
          if (await canLaunch(
              "https://flutter.dev/docs/get-started/install/")) {
            await launch("https://flutter.dev/docs/get-started/install/");
          } else {
            throw 'Could not launch ';
          }
        },
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
      body: Scrollbar(
        thickness: 10.0,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopHeader(),
              FrameContainer(),
              MadeByGoogle(),
              FlutterFeatures(),
              TryFlutter(),
              WhiteContainer(
                child: Center(
                  child: FeatureDetail(
                    bottomWidget: FlatButton(
                      onPressed: () {
                        _launchURL(
                            "https://flutter.dev/docs/development/tools/hot-reload");
                      },
                      child: Text(
                        "Learn More",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    isWidgetLeft: true,
                    title: "Fast\nDevelopment",
                    description:
                        "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times without losing state on emulators, simulators, and hardware.",
                    bodyWidget: Image.asset(
                      'assets/fast.gif',
                      height: MediaQuery.of(context).size.height * 0.8,
                    ),
                    featureIcon:
                        'https://flutter.dev/assets/homepage/icon-development-02b120c5632de8bcfebaa9af8d93938c403217b5be8d40d596af576c4ed85aa6.svg',
                  ),
                ),
              ),
              WhiteContainer(
                child: Center(
                  child: FeatureDetail(
                    bottomWidget: FlatButton(
                      onPressed: () {
                        _launchURL(
                            "https://flutter.dev/docs/development/ui/widgets");
                      },
                      child: Text(
                        "Browse the widget catalog",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    isWidgetLeft: false,
                    title: "Expressive,\nbeautiful UIs",
                    description:
                        "Delight your users with Flutter's built-in beautiful Material Design and Cupertino (iOS-flavor) widgets, rich motion APIs, smooth natural scrolling, and platform awareness.",
                    bodyWidget: Image.asset(
                      'assets/filter.gif',
                      height: MediaQuery.of(context).size.height * 0.8,
                    ),
                    featureIcon:
                        'https://flutter.dev/assets/homepage/icon-ui-5917d09ef0d8f9538615b4281870960b865bba4c8b6926b5adaef91433af0b07.svg',
                  ),
                ),
              ),
              WhiteContainer(
                child: Center(
                  child: FeatureDetail(
                    bottomWidget: FlatButton(
                      onPressed: () {
                        _launchURL("https://flutter.dev/showcase");
                      },
                      child: Text(
                        "Examples of apps built with Flutter",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    isWidgetLeft: true,
                    title: "Native\nPerformance",
                    description:
                        "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts to provide full native performance on both iOS and Android.",
                    bodyWidget: Image.asset(
                      'assets/native.gif',
                      height: MediaQuery.of(context).size.height * 0.8,
                    ),
                    featureIcon:
                        'https://flutter.dev/assets/homepage/icon-performance-680fb3687109ba7ea0c22627da3a9fa761944ae7b521468003b932aa9133ca5b.svg',
                  ),
                ),
              ),
              WhiteContainer(
                child: Center(
                  child: FeatureDetail(
                    bottomWidget: FlatButton(
                      onPressed: () {
                        _launchURL("https://www.youtube.com/flutterdev");
                      },
                      child: Text(
                        "Visit our YouTube playlist",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    isWidgetLeft: false,
                    title: "Learn from\ndevelopers",
                    description:
                        "Watch these videos to learn from Google and developers as you build with Flutter.",
                    bodyWidget: Image.asset(
                      'assets/YT_learn.png',
                      height: MediaQuery.of(context).size.height * 0.6,
                    ),
                  ),
                ),
              ),
              WhosUsingFlutter(),
              News(),
              InstallFlutter(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarTextBtn extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final String btnText;
  AppBarTextBtn({@required this.btnText});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if (btnText == "Docs") {
          _launchURL("https://flutter.dev/docs");
        } else if (btnText == "Showcase") {
          _launchURL("https://flutter.dev/showcase");
        } else {
          _launchURL("https://flutter.dev/community");
        }
      },
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

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: IconButton(
        icon: Icon(btnIcon, color: Colors.grey[600]),
        onPressed: () {
          if (btnIcon == SocialIcon.twitter) {
            _launchURL("https://twitter.com/flutterdev");
          } else if (btnIcon == SocialIcon.youtube) {
            _launchURL("https://www.youtube.com/flutterdev");
          } else if (btnIcon == SocialIcon.github_circled) {
            _launchURL("https://github.com/flutter");
          }
        },
      ),
    );
  }
}
