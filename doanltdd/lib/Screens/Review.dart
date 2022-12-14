import 'package:doanltdd/Screens/singlemode.dart';
import 'package:flutter/material.dart'; 
import 'dart:math' as math;
class Review extends StatefulWidget {
  @override
  State<Review> createState() => _Review();
}

class _Review extends State<Review> with TickerProviderStateMixin {
  late AnimationController _controller;
  void initState() {
      super.initState();
      _controller = AnimationController(
        duration: const Duration(seconds: 5),
        vsync: this,
      )..repeat();
    }
    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
       decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

              Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>SingleModeFrame()));
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.black87,
                              size: 35,
                            ))),
                              ],
            ),
            ),
          Container(
            width:250,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white60,
              border: Border.all(color: Colors.black,width: 1),
            ),
            child: Column(
              children: [
               Container(
                margin: EdgeInsets.only(top: 10),
                child: AnimatedBuilder(
                  animation: _controller,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      
                    ),
                    width: 100,
                    height: 100,
                    child:
                          Image(image: AssetImage('assets/MT.png'),
                          
                          ),
                  ),
                    builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle: _controller.value * 2 * math.pi,
                child: child,
              );
            },

                ),
               ),//H1

              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text('Ch??? ????? m??n ch??i:',
                style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 5),
                child: Text('Ch??? ????? m??n ch??i bao g???m c??c c??u h???i li??n quan ?????n ????? t??i v??? c??c h??nh tinh gi??p ng?????i ch??i n??ng cao tr??nh ????? ti???ng anh ?????ng th???i c?? th??m ki???n th???c v??? thi??n v??n',
                style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


