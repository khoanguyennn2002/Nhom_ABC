import 'package:flutter/material.dart';

class Guilde extends StatefulWidget {
  Guilde ({
super.key
  });
  @override
  State<Guilde> createState() => _Guilde();
}
class _Guilde extends State<Guilde> {



  @override 
  Widget build (BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover),
      ),
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Container(
            width: MediaQuery.of(context).size.width/1.5,
            height: MediaQuery.of(context).size.height/2,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white60,
              border: Border.all(color: Colors.black,width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding:EdgeInsets.fromLTRB(15, 10, 15, 5),
                  child:
                Text('Bắt đầu xem hướng dẫn:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                ),

                Container(
                  width: MediaQuery.of(context).size.width/5,
                  height: MediaQuery.of(context).size.height/7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(85),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      TextButton(onPressed: (){}, 
                      child:
                      Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/702/702132.png'),
                      height: (MediaQuery.of(context).size.height/10),
                      
                      fit: BoxFit.cover,
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                   padding: EdgeInsets.fromLTRB(15,15,15,45),
                   child:
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
            child: Text('Quay lại',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
          ),
              
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}