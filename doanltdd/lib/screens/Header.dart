import 'package:doanltdd/Screens/Profile.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({super.key});

  @override
  State<Header> createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 9,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 100,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        height: (MediaQuery.of(context).size.height / 9) / 2,
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("50/100"),
                            ]),
                      ),
                      Positioned(
                          left: -10,
                          top: 30,
                          child: Image(
                            image: AssetImage("assets/mana-icon.jpg"),
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          )),
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width / 4,
                child: Column(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          },
                          child: Image.asset(
                            'assets/avata.jpg',
                            height:
                                (MediaQuery.of(context).size.height / 7) / 2,
                            fit: BoxFit.cover,
                          ))),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text("Lv"),
                  )
                ]),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 100,
                    height: (MediaQuery.of(context).size.height / 9) / 2,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("2400"),
                        ]),
                  ),
                  Positioned(
                      left: -10,
                      top: 30,
                      child: Image(
                        image: AssetImage("assets/gold.png"),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
