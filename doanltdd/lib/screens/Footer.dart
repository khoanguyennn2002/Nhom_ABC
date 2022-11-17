import 'package:doanltdd/main.dart';
import 'package:doanltdd/screens/Home.dart';
import 'package:doanltdd/screens/Setting.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _Footer();
}

class _Footer extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomAppBar(
          color: Colors.green[200]?.withOpacity(0.8),
          child: Container(
              height: MediaQuery.of(context).size.height / 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.store,
                      color: Colors.black87,
                      size: 50,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.black87,
                      size: 50,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    },
                    child: Icon(
                      Icons.settings,
                      color: Colors.black87,
                      size: 50,
                    ),
                  )
                ],
              )),
        ));
  }
}
