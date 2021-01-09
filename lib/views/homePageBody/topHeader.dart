import 'package:flutter/material.dart';

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
