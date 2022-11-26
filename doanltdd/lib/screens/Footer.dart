import 'package:doanltdd/Screens/Shop.dart';
import 'package:doanltdd/main.dart';
import 'package:doanltdd/screens/Home.dart';
import 'package:doanltdd/screens/Setting.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _Footer();
}

class _Footer extends State<Footer> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            child: Container(
                decoration: BoxDecoration(color: Colors.green),
                height: MediaQuery.of(context).size.height / 10,
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Icon(
                      Icons.store,
                      size: 50,
                      color: Colors.black87,
                    ),
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.black87,
                    ),
                    Icon(
                      Icons.settings,
                      size: 50,
                      color: Colors.black87,
                    )
                  ],
                ))),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Shop()),
            Center(
              child: Home(),
            ),
            Center(child: Setting())
          ],
        ));
  }
}
