import 'package:doanltdd/Screens/Shop.dart';
import 'package:doanltdd/main.dart';
import 'package:doanltdd/Screens/Home.dart';
import 'package:doanltdd/Screens/Setting.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _Footer();
}

class _Footer extends State<Footer> with TickerProviderStateMixin {
  int value = 1;
  List lstscreen = [Shop(), Home(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height / 10,
          child: BottomNavigationBar(
              selectedItemColor: Colors.black87,
              backgroundColor: Colors.green,
              unselectedItemColor: Colors.black87,
              currentIndex: value,
              onTap: (int value1) {
                setState(() {
                  value = value1;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shop,
                      size: 50,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 50,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 50,
                    ),
                    label: '')
              ]),
        ),
        body: lstscreen[value]);
  }
}
