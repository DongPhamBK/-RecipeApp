import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28.0,
              ),
              SizedBox(
                width: 8.0, //Cách 8dp ảnh và chữ
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //từ trái sang phải
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //giãn hết cỡ sang 2 bên
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lighTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lighTextTheme.headline3,
                  )
                ],
              )
            ],
          ),
          //icon button
          IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400], //Phông màu
            onPressed: () {
              //Chúng ta sẽ hiển thị SnackBar lên!
              //Chính là thanh message bên dưới cùng.
              const snackBar = SnackBar(content: Text('Favorite'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
