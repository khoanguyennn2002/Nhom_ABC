import 'package:doanltdd/screens/Home.dart';
import 'package:doanltdd/screens/SignUpFrame.dart';
import 'package:flutter/material.dart';

class SignInFrame extends StatefulWidget {
  SignInFrame({super.key});
  @override
  State<SignInFrame> createState() => _SignInFrame();
}

class _SignInFrame extends State<SignInFrame> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
          margin: EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/ABC.png",
            fit: BoxFit.cover,
          )),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Text("Đăng Nhập Để Bắt Đầu!!!",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.black87)),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
            color: Colors.white60,
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(15)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Text("Tên đăng nhập:"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  border: OutlineInputBorder(),
                  hintText: "Tên đăng nhập",
                  hintStyle: TextStyle(color: Colors.black)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
            child: Text("Mật khẩu:"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  border: OutlineInputBorder(),
                  hintText: "Mật khẩu",
                  hintStyle: TextStyle(color: Colors.black)),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    });
                  },
                  child: Text("Đăng nhập"),
                ))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    // Navigator.push(
                    //  context,
                    // MaterialPageRoute(
                    // builder: (context) => SignUpFrame()));
                  });

                  ;
                },
                child: Text(
                  "Đăng kí",
                  style: TextStyle(
                      color: Colors.black87,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: Image(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png")),
              ),
              IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: Image(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/768px-Google_%22G%22_Logo.svg.png")),
              ),
            ],
          )
        ]),
      ),
    ]));
  }
}
