import 'package:flutter/material.dart';
import 'package:fooderlich/author_card.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450, //Kích cỡ khung
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover, //Bao phủ ảnh
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            AuthorCard(
              authorName: 'Violet Ever',
              title: ' My waifu',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            //Vị trí các chữ
            Expanded(
              //Mở rộng kích thước toàn bộ
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lighTextTheme.headline1,
                    ),
                    bottom: 16,
                    right: 16,
                  ),
                  Positioned(
                      bottom: 70,
                      left: 16,
                      //Để xoay chữ, chúng ta cần RotatedBox
                      child: RotatedBox(
                        quarterTurns: 3, //Xoay chiều thứ 3
                        child: Text(
                          'Smoothies',
                          style: FooderlichTheme.lighTextTheme.headline1,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
