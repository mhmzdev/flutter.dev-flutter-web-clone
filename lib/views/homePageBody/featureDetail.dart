import 'package:flutter/material.dart';

class FeatureDetail extends StatelessWidget {
  final Widget bodyWidget;
  final String featureIcon;
  final String title;
  final String description;
  final Widget bottomWidget;
  final bool isWidgetLeft;
  FeatureDetail(
      {this.bodyWidget,
      this.featureIcon,
      this.title,
      this.description,
      this.isWidgetLeft,
      this.bottomWidget});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        isWidgetLeft ? bodyWidget : Container(),
        SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              featureIcon != null
                  ? CircleAvatar(
                      maxRadius: 34,
                      backgroundColor: Colors.blue.withAlpha(50),
                      child: Image.network(featureIcon))
                  : Text(""),
              SizedBox(
                height: 20,
              ),
              Text(
                title,
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
                description,
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(
                height: 30,
              ),
              bottomWidget == null ? Container() : bottomWidget
            ],
          ),
        ),
        !isWidgetLeft ? bodyWidget : Container(),
      ],
    );
  }
}
