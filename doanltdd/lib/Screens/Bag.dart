import 'package:flutter/material.dart'; 

class Bag extends StatefulWidget {
  Bag({ super.key});
  @override
  State<Bag> createState() => _Bag();
}
class _Bag extends State<Bag> {

  

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
          
         
          // width: MediaQuery.of(context).size.width/5,
        //    Container(
        //   width: MediaQuery.of(context).size.width/4,
        //   padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        //   child: Padding(
        //     padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
        //     child: Image(image: AssetImage('assets/ABC.png'),
        //     fit: BoxFit.cover,
        //     ),
            
        //   ),
        //  ),
         

         Column(
          children: [
            Text('Bag',
            style:TextStyle(color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold),),
          ],
         ),



          Container(
            width: MediaQuery.of(context).size.width/1.5,
            height: MediaQuery.of(context).size.height/1.8,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white60,
              border: Border.all(color: Colors.black,width: 1),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
                Container(
                  
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black,width: 1),
                        ),
                        
                        child:Padding(
                          
                          padding: EdgeInsets.all(5),
                          child:
                      
                      Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                      height: (MediaQuery.of(context).size.height/15),
                      
                      fit: BoxFit.cover,
                      ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Text('Số lượng còn lại:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),

                          Container(
                            padding: EdgeInsets.fromLTRB(20, 5, 20,5),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black,width: 1),
                            ),
                            child: Column(
                              children: [
                                Text('129',
                                style: TextStyle(
                                  color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                

                Container(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black,width: 1),
                        ),
                        child:Padding(
                          padding: EdgeInsets.all(5),
                          child:
                      
                      Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                       height: (MediaQuery.of(context).size.height/15),
                      
                      fit: BoxFit.cover,
                      ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Số lượng còn lại:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),

                          Container(
                            padding: EdgeInsets.fromLTRB(20, 5, 20,5),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black,width: 1),
                            ),
                            child: Column(
                              children: [
                                Text('129',
                                style: TextStyle(
                                  color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                                ),
                                ),

                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),




                Container(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black,width: 1),
                        ),
                        child:Padding(
                          padding: EdgeInsets.all(5),
                          child:
                      
                      Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3330/3330442.png'),
                      height: (MediaQuery.of(context).size.height/15),                    
                      fit: BoxFit.cover,
                      ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Text('Số lượng còn lại:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),

                          Container(
                           padding: EdgeInsets.fromLTRB(20, 5, 20,5),
                           margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: Colors.black,width: 1),
                            ),
                            child: Column(
                              children: [
                                Text('129',
                                style: TextStyle(
                                  color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),



                ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green[200]?.withOpacity(0.8),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
            onPressed: () {

            },
            child: Text('Mua thêm',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
          ),


              ],
            ),
          ),

          

        ],
      ),
    );
  }
}