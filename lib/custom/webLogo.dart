import 'package:flutter/material.dart';

class WebLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Image.asset('assets/flutter.png', height: height * 0.05),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.006
        ),
        Text(
          "Flutter",
          style: TextStyle(
              fontSize: height * 0.04,
              color: Colors.grey[600],
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
