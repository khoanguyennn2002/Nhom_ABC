import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget{
  Profile ({super.key});
  
  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile>{
  @override 
  Widget build (BuildContext context) {
    return Container(  
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover),
      ),//Background
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

          Container(
             width: MediaQuery.of(context).size.width/1.5,
            height: MediaQuery.of(context).size.height/1.5,
            // margin: EdgeInsets.all(5),
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white60,
              border: Border.all(color: Colors.black,width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width/1.6,
                  height: MediaQuery.of(context).size.height/7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // color: Color.fromARGB(255, 11, 120, 36),
             
            ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/4.5,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: Padding(
                          
                          padding: EdgeInsets.all(0),
                          child:
                          Image(image: AssetImage('assets/ABC.png'),
                          
                          ),
                          ),
                      ),//avt

                      Container(
                        
                        child: Row(
                          
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Name:',
                                    style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text(
                                    'Level:',
                                    style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text(
                                    'Rank:',
                                    style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),//NAME LV RANK 
                      Container(
                        child: Row(
                          
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Lmao ',
                                    style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text(
                                    'Gold',
                                    style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ), //PROFILE PLAYER

                
                
                ],
                  ),
                ),//Profile              
                Divider(
              height: 0,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
          ),

            Container(
              width: MediaQuery.of(context).size.width/1.5,
              height: MediaQuery.of(context).size.height/2.5,
              // color: Color.fromARGB(255, 100, 219, 144),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: MediaQuery.of(context).size.width/1.6,
                            height: MediaQuery.of(context).size.height/6,  
                            // color: Colors.white,     
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),

                           Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),

                           Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),
                          ],
                        ),
                      ),//AVT switch

                      Container(
                            margin: EdgeInsets.only(bottom: 15),
                            width: MediaQuery.of(context).size.width/1.6,
                            height: MediaQuery.of(context).size.height/7,       
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),
                        // Container(
                        //         width: MediaQuery.of(context).size.width/7,
                        //         height: MediaQuery.of(context).size.height/8,
                                
                        //         decoration: BoxDecoration(
                        //           // color: Colors.red,
                        //           borderRadius: BorderRadius.circular(100),
                        //           border: Border.all(color: Colors.black,width: 2),
                        //         ),
                        // // decoration: ShapeDecoration(
                        // //   shape: CircleBorder(
                        // //     side: BorderSide(
                        // //       width: 2,
                        // //     color: Color.fromARGB(255, 14, 14, 1), 
                        // //     ),
                        // //   ),
                        // // ),
                        // child: Column(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     TextButton(onPressed: () {},
                        //   child:
                        //   Image(image: AssetImage('assets/ABC.png'),
                        //   height: (MediaQuery.of(context).size.height/10),
                        //   fit: BoxFit.cover,
                        //   ),
                        // ),
                        // ],
                        // ),
                        //     ),

                            Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),

                            Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),
                          ],
                        ),
                      ),//AVT switch

                      Container(
                            margin: EdgeInsets.only(bottom: 15),
                            width: MediaQuery.of(context).size.width/1.6,
                            height: MediaQuery.of(context).size.height/7,       
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),

                            Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),

                            Container(
                            
                        width: MediaQuery.of(context).size.width/5.5,
                        decoration: ShapeDecoration(
                          
                          shape: CircleBorder(
                            
                            side: BorderSide(
                              
                              width: 2,
                            color: Color.fromARGB(255, 14, 14, 1), 
                            ),
                          ),
                        ),
                        child: 
                          
                              FloatingActionButton.large(onPressed:(){},
                              backgroundColor: Colors.white60,
                              child:Image(image: AssetImage('assets/ABC.png'), ),),
                            
                          
                      ),
                          ],
                        ),
                      ),//AVT switch,//AVT switch
                      
                   
                  ],
                ),
              ),
            ),

            Divider(
              height: 0,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
          ),

            Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
            style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(Colors.green[200]?.withOpacity(0.8),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
              ),
            ),
            onPressed: () {

            },
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5),
                child: Text('Save',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
                ),
              ],
            ),
          ),
                  ],
                ),
              ),//Save

            //   Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       TextButton(onPressed: (){},
            //        child: 
            //        Padding(
            //          padding: EdgeInsets.only(top: 10),
            //          child: Text('Exit',
            //          style: TextStyle(  
            //           color: Colors.black,
            //           fontSize: 15,
            //           fontWeight: FontWeight.w300,
            //           decoration: TextDecoration.underline,
            //          ),
            //          ),
            //        ),
            //        ),
            //     ],
            //   ),
            // ),//Exit




              ],
            ),//khung
            
          ),
          
          
        ],
      ),





    );
  }
}



