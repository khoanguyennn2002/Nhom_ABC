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
          color: Colors.green[500]?.withOpacity(0.5),
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
                        width: 130,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        height: (MediaQuery.of(context).size.height / 9) / 2,
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("50/100"),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.add, color: Colors.black),
                                  label: Text(""))
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
                      borderRadius: BorderRadius.circular(10), // Image border
                      child: GestureDetector(
                          onTap: () {},
                          child: Image.network(
                            'https://images.unsplash.com/photo-1668164077013-0e7dddb0c110?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
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
                    width: 130,
                    height: (MediaQuery.of(context).size.height / 9) / 2,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("2400"),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              label: Text(""))
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
