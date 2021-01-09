import 'package:flutter/material.dart';

class WhiteContainer extends StatelessWidget {
  final double height;
  final Widget child;

  WhiteContainer({this.height, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: height,
      padding: EdgeInsets.all(40.0),
      margin: EdgeInsets.fromLTRB(
          0, MediaQuery.of(context).size.height * 0.08, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black38)]),
      child: child,
    );
  }
}
