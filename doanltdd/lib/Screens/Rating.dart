import 'package:doanltdd/Screens/Footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  Rating({super.key});
  @override
  State<Rating> createState() => _Rating();
}

class _Rating extends State<Rating> {
  TextEditingController txt_rt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
          //     Text('Rating',
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     ),
          //   ],
          // ),//Rating

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
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 13,
                  // color: Colors.blue,
                  child: Row(
                    children: [
                      Text(
                        'Số sao đánh giá:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ), //ssdg

                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: MediaQuery.of(context).size.height / 15,
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        direction: Axis.horizontal,
                        // allowHalfRating: true,
                        itemSize: 35,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ), //Star

                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: TextField(
                    controller: txt_rt,
                    keyboardType: TextInputType.multiline,
                    maxLines: 20,
                    maxLength: 500,
                    decoration: InputDecoration(
                      hintText: 'Bình luận:',
                    ),
                  ),
                ), //Textfield

                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 14,
                  // color: Colors.green,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.green[200]?.withOpacity(0.8),
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55))),
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
                                             Text('đánh giá của bạn đã được gửi!')                                   
                                      ]
                                       
                                    )
                                  ),
                                  actions: [TextButton(onPressed: (){
                                    Navigator.pop(context);
                                    txt_rt.clear();
                                  
                                  
                                  }, child: Text('Chấp nhận'))],
                                );    
                               },
                               );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Text(
                        'Gửi  ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ), //ButtonSend

                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 17,
                  // color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Thoát',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ), //Exit
              ],
            ),
          ), //Khung
        ],
      ),
    ));
  }
}
