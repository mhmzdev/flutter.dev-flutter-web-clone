import 'package:flutter/material.dart';
import 'package:flutterdev/custom/whiteContainer.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: width * 0.4,
          child: WhiteContainer(
              height: height * 0.8,
              child: NewsContainer(
                networkImageURL:
                    'https://flutter.dev/assets/homepage/news-1-3002408f55d58b2218beca305c4979db662c47c0384981672556f325b853e79e.png',
                newsTitle: 'Announcing Flutter 1.22',
              )),
        ),
        SizedBox(
          width: width * 0.01,
        ),
        SizedBox(
          width: width * 0.4,
          child: WhiteContainer(
              height: height * 0.8,
              child: NewsContainer(
                networkImageURL:
                    "https://flutter.dev/assets/homepage/news-2-55920c8fe7c120ea0fdf4b7647c0abf59abb37948af7cc9f24fca818cb039f7d.png",
                newsTitle: "Announcing Flutter Windows Alpha",
              )),
        ),
      ],
    );
  }
}

class NewsContainer extends StatelessWidget {
  final String networkImageURL;
  final String newsTitle;

  NewsContainer({this.networkImageURL, this.newsTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          networkImageURL,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        SizedBox(
          height: 20,
        ),
        Text("News"),
        SizedBox(
          height: 20,
        ),
        Text(
          newsTitle,
          style: TextStyle(fontSize: 28, color: Colors.grey[800]),
        ),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            "Read More",
            style: TextStyle(fontSize: 17),
          ),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
