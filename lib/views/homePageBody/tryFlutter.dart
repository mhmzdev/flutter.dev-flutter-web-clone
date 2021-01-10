import 'package:flutter/material.dart';
import 'package:flutterdev/custom/whiteContainer.dart';
import 'package:url_launcher/url_launcher.dart';

class TryFlutter extends StatelessWidget {
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
      height: MediaQuery.of(context).size.height * 1,
      child: Center(
        child: Column(
          children: [
            Text(
              "Try Flutter in your browser",
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(
              height: 30,
            ),
            Editor(),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Want more practice? ",
                  style: TextStyle(fontSize: 30),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://flutter.dev/codelabs");
                  },
                  child: Text(
                    "Try a codelab.",
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Editor extends StatelessWidget {
  final editorAppBarActions = [
    EditorAppBarTextBtn(
      btnText: "Install SDK",
    ),
    EditorAppBarTextBtn(
      btnText: "Format",
    ),
    EditorAppBarTextBtn(
      btnText: "Reset",
    ),
    ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.play_arrow, size: 15),
            SizedBox(
              width: 8,
            ),
            Text("Run")
          ],
        )),
    IconButton(
      icon: Icon(
        Icons.more_vert,
        color: Colors.grey[600],
      ),
      onPressed: () {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width * 0.56,
      height: MediaQuery.of(context).size.height * 0.65,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Dart",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w100, fontSize: 16),
          ),
          actions: editorAppBarActions,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [EditorTextField(), CodeOutput()],
          ),
        ),
      ),
    );
  }
}

class EditorAppBarTextBtn extends StatelessWidget {
  final String btnText;
  EditorAppBarTextBtn({this.btnText});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      hoverColor: Colors.blue.withAlpha(15),
      textColor: Colors.blue,
      onPressed: () {},
      child: Text(btnText),
    );
  }
}

final codeFieldController = TextEditingController();

class EditorTextField extends StatefulWidget {
  @override
  _EditorTextFieldState createState() => _EditorTextFieldState();
}

class _EditorTextFieldState extends State<EditorTextField> {
  @override
  Widget build(BuildContext context) {
    codeFieldController.text = initCode;
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height * 0.6,
      width: 600,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black38)]),
      child: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: TextFormField(
            controller: codeFieldController,
            cursorWidth: 1.0,
            keyboardType: TextInputType.multiline,
            maxLines: 20,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
      ),
    );
  }

  var initCode = '''
import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCubic,
    ).drive(Tween(begin: 0, end: 2));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller
          ..reset()
          ..forward();
      },
      child: RotationTransition(
        turns: animation,
        child: Stack(
          children: [
            Positioned.fill(
              child: FlutterLogo(),
            ),
            Center(
              child: Text(
                'Click me!',
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  ''';
}

class CodeOutput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black38)]),
      height: MediaQuery.of(context).size.height * 0.6,
      width: 250,
      child: Text(
        "UI Ouput",
        style: TextStyle(
            color: Colors.black54, fontSize: 12.0, letterSpacing: 2.0),
      ),
    );
  }
}
