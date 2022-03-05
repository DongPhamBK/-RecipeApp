import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'dart:developer';

import 'card2.dart';
import 'card3.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    // Home widget
    log("data: ${theme.textTheme}");
    return MaterialApp(
      theme: theme,
      //Chủ đề giao diện
      title: 'Fooderlich - tiêu đề mô tả chi tiết thôi!',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; //chọn tab

  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _onItemTapped(int index) {
    //Hiển nhiên là hàm setState() huyền thoại
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //style title
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      //style body
      //show slewected tab
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        //Màu khi chọn tab
        //Select tab bảr
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard), //Icon hiển thị
            label: 'Card', //Tên  của tab phía dưới
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],

        currentIndex: _selectedIndex, //Ví trí
        onTap: (position) => _onItemTapped(position), //chuyển đổi khi nhấn
      ),
    );
  }
}
