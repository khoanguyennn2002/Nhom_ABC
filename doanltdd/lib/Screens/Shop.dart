import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  Shop({super.key});
  @override
  State<Shop> createState() => _Shop();
}

class _Shop extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Shop',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.2,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20, top: 20),
                                  padding: EdgeInsets.all(5),
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(197, 176, 32, 100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        //   decoration: ShapeDecoration(

                                        //   shape: CircleBorder(
                                        //     side: BorderSide(
                                        //       width: 5,
                                        //       color: Color.fromARGB(255, 172, 172, 23),
                                        //     ),
                                        //   ),
                                        // ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image(
                                            image: NetworkImage(
                                                'https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                                            fit: BoxFit.cover,
                                            width: 70,
                                          ),
                                        ),
                                      ), // Item

                                      Container(
                                        //   decoration: ShapeDecoration(

                                        //   shape: CircleBorder(
                                        //     side: BorderSide(
                                        //       width: 5,
                                        //       color: Color.fromARGB(255, 172, 172, 23),
                                        //     ),
                                        //   ),
                                        // ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image(
                                            image: NetworkImage(
                                                'https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                                            fit: BoxFit.cover,
                                            width: 70,
                                          ),
                                        ),
                                      ), // Item

                                      Container(
                                        //   decoration: ShapeDecoration(

                                        //   shape: CircleBorder(
                                        //     side: BorderSide(
                                        //       width: 5,
                                        //     color: Color.fromARGB(255, 172, 172, 23),
                                        //     ),
                                        //   ),
                                        // ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image(
                                            image: NetworkImage(
                                                'https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                                            fit: BoxFit.cover,
                                            width: 70,
                                          ),
                                        ),
                                      ), // Item

                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 10, 5),
                                        child: Text(
                                          'X1 Mỗi Loại',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ), //C1

                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Colors.pink[400]?.withOpacity(1),
                                            ),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25))),
                                          ),
                                          onPressed: () {
                                            showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thành công',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn đã mua vật phẩm thành công')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){    
                                    Navigator.pop(context);                             
                                  }, child: Text('Hoàn thành'))],
                                );    
                               },
                               );
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            padding: EdgeInsets.all(1),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Text(
                                                    '50',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5, 0, 0, 0),
                                                  child: Image.asset(
                                                    'assets/gold.png',
                                                    height:
                                                        (MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            23),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  padding: EdgeInsets.all(5),
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Color.fromRGBO(50, 195, 212, 100),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        //   decoration: ShapeDecoration(

                                        //   shape: CircleBorder(
                                        //     side: BorderSide(
                                        //       width: 5,
                                        //       color: Color.fromRGBO(50, 195, 212, 100) ,
                                        //     ),
                                        //   ),
                                        // ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image(
                                            image: NetworkImage(
                                                'https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                                            fit: BoxFit.cover,
                                            width: 70,
                                          ),
                                        ),
                                      ), // Item

                                      Container(
                                        //   decoration: ShapeDecoration(

                                        //   shape: CircleBorder(
                                        //     side: BorderSide(
                                        //       width: 5,
                                        //       color: Color.fromRGBO(50, 195, 212, 100) ,
                                        //     ),
                                        //   ),
                                        // ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image(
                                            image: NetworkImage(
                                                'https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                                            fit: BoxFit.cover,
                                            width: 70,
                                          ),
                                        ),
                                      ), // Item

                                      Container(
                                        //   decoration: ShapeDecoration(

                                        //   shape: CircleBorder(
                                        //     side: BorderSide(
                                        //       width: 0,
                                        //     color: Color.fromRGBO(50, 195, 212, 100) ,
                                        //     ),
                                        //   ),
                                        // ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Image(
                                            image: NetworkImage(
                                                'https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                                            fit: BoxFit.cover,
                                            width: 70,
                                          ),
                                        ),
                                      ), // Item

                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 10, 5),
                                        child: Text(
                                          'X5 Mỗi Loại',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ), //C1

                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Colors.pink[400]?.withOpacity(1),
                                            ),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25))),
                                          ),
                                          onPressed: () {
                                            showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thất bại',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn không đủ xu!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text('Thoát'))],
                                );    
                               },
                               );
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            padding: EdgeInsets.all(1),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Text(
                                                    '250',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Image.asset(
                                                    'assets/gold.png',
                                                    height:
                                                        (MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            23),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1,
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white60,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    //iconx1
                                    margin: EdgeInsets.all(2),
                                    padding: EdgeInsets.all(1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Image.asset(
                                            'assets/mana-icon.jpg',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Text(
                                            'X5',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    //iconx2
                                    margin: EdgeInsets.all(2),
                                    padding: EdgeInsets.all(1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Image.asset(
                                            'assets/mana-icon.jpg',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Text(
                                            'X10',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), //Iconx100
                                ],
                              ),
                            ), //2Iconx100

                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    //buton1
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.pink[400]?.withOpacity(1),
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thành công',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn đã mua vật phẩm thành công')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){    
                                    Navigator.pop(context);                             
                                  }, child: Text('Hoàn thành'))],
                                );    
                               },
                               );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 5, 0),
                                            child: Text(
                                              '10',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Image.asset(
                                              'assets/gold.png',
                                              height: (MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  25),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    //button2

                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.pink[400]?.withOpacity(1),
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thất bại',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn không đủ xu!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text('Thoát'))],
                                );    
                               },
                               );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(1),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 5, 0),
                                            child: Text(
                                              '20',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Image.asset(
                                              'assets/gold.png',
                                              height: (MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  25),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ), //IconButton

                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    //iconx3
                                    margin: EdgeInsets.fromLTRB(2, 15, 2, 2),
                                    padding: EdgeInsets.all(1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Image.asset(
                                            'assets/mana-icon.jpg',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Text(
                                            'X25',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    //iconx4
                                    margin: EdgeInsets.fromLTRB(2, 15, 2, 2),
                                    padding: EdgeInsets.all(1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Image.asset(
                                            'assets/mana-icon.jpg',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Text(
                                            'X50',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), //Iconx100
                                ],
                              ),
                            ), //2Iconx100

                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    //button3
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.pink[400]?.withOpacity(1),
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thất bại',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn không đủ xu!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text('Thoát'))],
                                );    
                               },
                               );

                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 5, 0),
                                            child: Text(
                                              '40',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Image.asset(
                                              'assets/gold.png',
                                              height: (MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  25),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    //button4
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.pink[400]?.withOpacity(1),
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thất bại',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn không đủ xu!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text('Thoát'))],
                                );    
                               },
                               );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(1),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 5, 0),
                                            child: Text(
                                              '99',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Image.asset(
                                              'assets/gold.png',
                                              height: (MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  25),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ), //IconButton

                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    //iconx5
                                    margin: EdgeInsets.fromLTRB(2, 15, 2, 2),
                                    padding: EdgeInsets.all(1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Image.asset(
                                            'assets/mana-icon.jpg',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Text(
                                            'X75',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    //iconx6
                                    margin: EdgeInsets.fromLTRB(2, 15, 2, 2),
                                    padding: EdgeInsets.all(1),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 5, 0),
                                          child: Image.asset(
                                            'assets/mana-icon.jpg',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Text(
                                            'X99',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), //Iconx100
                                ],
                              ),
                            ), //2Iconx100

                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    //button5
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.pink[400]?.withOpacity(1),
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thất bại',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn không đủ xu!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text('Thoát'))],
                                );    
                               },
                               );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          // Padding(padding: EdgeInsets.fromLTRB(0,0,5,0),
                                          // child:
                                          Text(
                                            '125',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          // ),
                                          // Padding(padding: EdgeInsets.fromLTRB(5,0,0,0),
                                          // child:
                                          Image.asset(
                                            'assets/gold.png',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25),
                                            fit: BoxFit.cover,
                                          ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    //button6
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.pink[400]?.withOpacity(1),
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Mua thất bại',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('Bạn không đủ xu!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text('Thoát'))],
                                );    
                               },
                               );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(1),
                                      child: Row(
                                        children: [
                                          // Padding(padding: EdgeInsets.fromLTRB(0,0,5,0),
                                          // child:
                                          Text(
                                            '180',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          // ),
                                          // Padding(padding: EdgeInsets.fromLTRB(5,0,0,0),
                                          // child:
                                          Image.asset(
                                            'assets/gold.png',
                                            height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25),
                                            fit: BoxFit.cover,
                                          ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ), //IconButton
                          ], //9
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), //Vien
        ],
      ),
    );
  }
}
