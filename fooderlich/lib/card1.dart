import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = ' Editor choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to perfect bread';
  final String chef = ' Lorem it sum';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          //stack giúp thiết kế layout kiểu khác
          children: [
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline5,
              ),
              top: 20, //Cách lề trên 20
            ),
            Positioned(
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0, //toạ độ
            ),
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: EdgeInsets.all(16), //lề
        constraints: BoxConstraints.expand(width: 350, height: 350), //kích cỡ
        decoration: BoxDecoration(
          image: DecorationImage(
            //Hộp thoại vẽ ảnh
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover, //Bao phủ
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10), //bo tròn 10 độ
          ),
        ),
      ),
    );
  }
}
