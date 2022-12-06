import 'package:doanltdd/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpFrame extends StatefulWidget {
  SignUpFrame({super.key});

  @override
  State<SignUpFrame> createState() => _SignUpFrame();
}

class _SignUpFrame extends State<SignUpFrame> {
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPass = new TextEditingController();
  TextEditingController txtPass1 = new TextEditingController();
  Future signUp() async {
   // showDialog(
     //   context: context,
       // barrierDismissible: false,
        //builder: (context) {
          //return Center(child: CircularProgressIndicator());
        //});
    try {
      if (txtPass1.text == txtPass.text) {
        final newUser = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: txtEmail.text, password: txtPass.text);
        if (newUser != null) {
         // Navigator.pop(context);
          final snackBar = SnackBar(content: Text('Đăng kí thành công'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.pop(context);
        }
      } else {
        final snackBar = SnackBar(content: Text('Tài Khoản Này Không Hợp Lệ'));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
     // Navigator.pop(context);
      final snackBar = SnackBar(content: Text('Có Lỗi Xảy Ra!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void dispose() {
    txtEmail.dispose();
    txtPass.dispose();
    txtPass1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: (AssetImage("assets/background.jpg")),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Image(
                        image: AssetImage("assets/ABC.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        "Đăng kí tài khoản",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                  15,
                                  10,
                                  15,
                                  10,
                                ),
                                child: Text("Tên đăng nhập:"),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15,
                              0,
                              15,
                              10,
                            ),
                            child: TextField(
                              controller: txtEmail,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: "Tên đăng nhập",
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                  15,
                                  0,
                                  15,
                                  0,
                                ),
                                child: Text(
                                  "Mật khẩu:",
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15,
                              0,
                              15,
                              10,
                            ),
                            child: TextField(
                              controller: txtPass,
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: "Mật khẩu",
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                  15,
                                  0,
                                  15,
                                  0,
                                ),
                                child: Text("Xác nhận mật khẩu:"),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15,
                              0,
                              15,
                              10,
                            ),
                            child: TextField(
                              controller: txtPass1,
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: "Xác nhận mật khẩu",
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text("Thoát",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.black87))),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors
                                              .green[200]
                                              ?.withOpacity(0.8)),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30.0)))),
                                  onPressed: () {
                                    signUp();
                                  },
                                  child: Text(
                                    "Hoàn tất",
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
