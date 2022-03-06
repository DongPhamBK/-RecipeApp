import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooderlich/components/circle_image.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
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
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
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
                    widget.authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              )
            ],
          ),
          //icon button
          IconButton(
            icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400], //Phông màu
            onPressed: () {
              //Chúng ta sẽ hiển thị SnackBar lên!
              //Chính là thanh message bên dưới cùng.
              const snackBar = SnackBar(content: Text('Favorite'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              setState(() {
                _isFavorite = !_isFavorite; //Hoán đổi trạng thái nút bấm
              });
            },
          ),
        ],
      ),
    );
  }
}
