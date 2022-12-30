import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doanltdd/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../model/user_object.dart';
import '../provider/user_provider.dart';

class SignUpFrame extends StatefulWidget {
  SignUpFrame({super.key});

  @override
  State<SignUpFrame> createState() => _SignUpFrame();
}

class _SignUpFrame extends State<SignUpFrame> {
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPass = new TextEditingController();
  TextEditingController txtPass1 = new TextEditingController();
  TextEditingController txtUsername = new TextEditingController();

  Future signUp() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        });

    if (txtPass1.text == txtPass.text) {
      try {
        final newUser = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: txtEmail.text, password: txtPass.text)
            .then((value) {
          final user = UserObject(
              username: txtUsername.text,
              email: txtEmail.text,
              lv: 1,
              rank: "Đồng I");
          addUserDetails(user, value.user!.uid);
        });
        Navigator.of(context).pop();

        final snackBar = SnackBar(content: Text('Đăng kí thành công'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        txtUsername.clear();
        txtEmail.clear();
        txtPass.clear();
        txtPass1.clear();
      } catch (e) {
        Navigator.pop(context);
        final snackBar = SnackBar(content: Text('Tài khoản đã tồn tại'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      Navigator.of(context).pop();
      final snackBar = SnackBar(content: Text('Mật khẩu không trùng'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    // FirebaseAuth.instance.signOut();
    //Navigator.pop(context);
  }

  @override
  void dispose() {
    txtEmail.dispose();
    txtPass.dispose();
    txtPass1.dispose();
    txtUsername.dispose();

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15,
                              10,
                              15,
                              0,
                            ),
                            child: Text("Username:"),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15,
                              0,
                              15,
                              0,
                            ),
                            child: TextFormField(
                              controller: txtUsername,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(),
                                  hintText: "Username",
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15,
                              10,
                              15,
                              0,
                            ),
                            child: Text("Email:"),
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
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.black)),
                            ),
                          ),
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              15,
                              0,
                              15,
                              0,
                            ),
                            child: Text("Xác nhận mật khẩu:"),
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
                                    onPressed: () {
                                      FirebaseAuth.instance.signOut();
                                      Navigator.of(context).pop();
                                    },
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
                                    if (txtUsername.text.isEmpty) {
                                      final snackBar = SnackBar(
                                          content: Text(
                                              'vui lòng điền đầy đủ thông tin'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    } else if (txtEmail.text.isEmpty) {
                                      final snackBar = SnackBar(
                                          content: Text(
                                              'Vui lòng điền đầy đủ thông tin'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    } else if (txtPass.text.length < 6) {
                                      final snackBar = SnackBar(
                                          content: Text(
                                              'Mật khẩu phải có ít nhất 6 kí tự'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    } else {
                                      signUp();
                                    }
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
