import 'package:flutter/material.dart';
import 'package:flutterdev/custom/whiteContainer.dart';

class InstallFlutter extends StatelessWidget {
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
              onPressed: () {},
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
