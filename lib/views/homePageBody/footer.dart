import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      color: Color(0xff303c42),
      width: double.infinity,
      child: Row(
        children: [
          Image.network('https://flutter.dev/images/flutter-mono-81x100.png'),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "flutter-dev@ terms brand usage security privacy español 社区中文资源 한국어 We stand in solidarity with the Black community. Black Lives Matter.",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Except as otherwise noted, this work is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the BSD License.",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
