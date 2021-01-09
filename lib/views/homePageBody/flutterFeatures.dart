import 'package:flutter/material.dart';
import 'package:flutterdev/custom/whiteContainer.dart';

class FlutterFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WhiteContainer(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FeatureContainer(
            title: "Fast Development",
            description:
                "Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.",
            networkImage:
                'https://flutter.dev/assets/homepage/icon-development-02b120c5632de8bcfebaa9af8d93938c403217b5be8d40d596af576c4ed85aa6.svg',
          ),
          FeatureContainer(
            title: "Expressive and Flexible UI",
            description:
                "Quickly ship features with a focus on native end-user experiences. Layered architecture allows for full customization, which results in incredibly fast rendering and expressive and flexible designs.",
            networkImage:
                'https://flutter.dev/assets/homepage/icon-ui-5917d09ef0d8f9538615b4281870960b865bba4c8b6926b5adaef91433af0b07.svg',
          ),
          FeatureContainer(
            title: "Native Performance",
            description:
                "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts, and your Flutter code is compiled to native ARM machine code using Dart's native compilers.",
            networkImage:
                'https://flutter.dev/assets/homepage/icon-performance-680fb3687109ba7ea0c22627da3a9fa761944ae7b521468003b932aa9133ca5b.svg',
          ),
        ],
      ),
    );
  }
}

class FeatureContainer extends StatelessWidget {
  final String networkImage;
  final String title;
  final String description;

  FeatureContainer(
      {@required this.networkImage,
      @required this.title,
      @required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
                maxRadius: 30,
                backgroundColor: Colors.blue.withAlpha(50),
                child: Image.network(networkImage)),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }
}
