import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class WImages extends StatefulWidget {
  const WImages({super.key});

  @override
  State<WImages> createState() => _WImagesState();
}

class _WImagesState extends State<WImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: "assets/images/place_holder.png",
          image: "assets/images/road.jpg",
        ),
      ),


      // body: Stack(
      //   children: <Widget>[
      //     const Center(
      //       child: CircularProgressIndicator(),
      //     ),
      //     Center(
      //       child: FadeInImage.memoryNetwork(
      //           placeholder: kTransparentImage,
      //           image: "assets/images/road.jpg"),
      //     )
      //   ],
      // ),

      // body: Center(
      //     child: SizedBox(
      //         width: 250,
      //         height: 250,
      //         child: Image.asset("assets/images/road.jpg"))),
    );
  }
}
