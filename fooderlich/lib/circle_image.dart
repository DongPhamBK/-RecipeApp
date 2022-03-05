import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double imageRadius;
  final ImageProvider? imageProvider;

  const CircleImage({Key? key, this.imageRadius = 20, this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Avatar
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      //Vòng tròn trong
      child: CircleAvatar(
        radius: imageRadius - 5.0,
        backgroundImage: imageProvider, //ảnh
      ),
    );
  }
}
