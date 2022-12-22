import 'package:doanltdd/Screens/Footer.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  Report({super.key});
  @override
  State<Report> createState() => _Report();
}

class _Report extends State<Report> {
  TextEditingController txt_rp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
      ), //Background

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Column(
          //   children: [
          //     Text('Report',
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //     ),)
          //     ,
          //   ],
          // ),//Text

          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 1.5,
            margin: EdgeInsets.all(5),
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white60,
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.blue,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: MediaQuery.of(context).size.width / 1.5,

                  child: Row(
                    children: [
                      Text(
                        'Nội dung phản hồi:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ), //NDPH

                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: TextField(
                    controller: txt_rp,
                    keyboardType: TextInputType.multiline,
                    maxLines: 20,
                    maxLength: 500,
                    decoration: InputDecoration(
                      hintText: 'Mô tả sự cố:',
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 12,
                  // color: Colors.red,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.green[200]?.withOpacity(0.8),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(35))),
                              ),
                              onPressed: () {
                                showDialog(
                                context: context,
                               builder: (context){
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                  title: Text('Gửi thành công',textAlign: TextAlign.center,),
                                  content: Container(
                                    height: 25,
                                    
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                             Text('phản hồi của bạn đã được gửi!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  txt_rp.clear();
                                  
                                  }, child: Text('Chấp nhận'))],
                                );    
                               },
                               );
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Gửi',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), //Button

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.green[200]?.withOpacity(0.8),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(35))),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Trở về',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), //Button
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
