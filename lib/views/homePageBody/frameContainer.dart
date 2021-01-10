import 'package:flutter/material.dart';
import 'package:flutterdev/animations/bottomAnimation.dart';

class FrameContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 70.0, 0, 0),
      child: Stack(
        children: [
          Positioned(
            top: height * 0.1,
            left: width / 2.5,
            child: WidgetAnimator(
              microTimeDelay: 150,
              milliTimeDelay: 150,
              child: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef9a7343692a5f7784d68241a786c57c79d55f0fe37e6b82a653d146b93.jpg',
                height: height * 0.5,
              ),
            ),
          ),
          Positioned(
            top: height * 0.05,
            left: width / 5.5,
            child: WidgetAnimator(
              microTimeDelay: 500,
              milliTimeDelay: 500,
              child: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-layer_1-d5abecee7978584303d3e0c8060e79eca6265779eadac5929c651ee0c4ec6a96.png',
                height: height * 0.7,
              ),
            ),
          ),
          Positioned(
            top: height * 0.1,
            left: width / 3,
            child: WidgetAnimator(
              microTimeDelay: 550,
              milliTimeDelay: 550,
              child: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-layer_2-4e252476d8713b772da37f16261bb6d82ac1f4701ce121fab4c33d9c8fa9b17a.png',
                height: height * 0.5,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.network(
              "https://flutter.dev/assets/homepage/carousel/phone_bezel-467ab8d838e5e2d2d3f347f766173ccc365220223692215416e4ce7342f2212f.png",
              height: height * 0.7,
            ),
          ),
          Positioned(
            top: height * 0.25,
            left: width / 5.2,
            child: WidgetAnimator(
              microTimeDelay: 700,
              milliTimeDelay: 700,
              child: Row(
                children: [
                  Text(
                    "Design",
                    style: TextStyle(
                      fontSize: height * 0.125,
                      color: Colors.blueAccent,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 8.0,
                          color: Colors.black38,
                        ),
                        // ),
                      ],
                    ),
                  ),
                  Text(
                    " beautiful",
                    style: TextStyle(shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: Colors.black38,
                      ),
                      // ),
                    ], fontSize: height * 0.125, color: Colors.white),
                  ),
                  Text(
                    " apps",
                    style: TextStyle(shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 4.0,
                        color: Colors.black38,
                      ),
                      // ),
                    ], fontSize: height * 0.125, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
