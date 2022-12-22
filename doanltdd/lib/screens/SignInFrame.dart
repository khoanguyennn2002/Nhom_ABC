import 'package:doanltdd/screens/Footer.dart';
import 'package:doanltdd/screens/Home.dart';
import 'package:doanltdd/screens/SignUpFrame.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignInFrame extends StatefulWidget {
  SignInFrame({super.key});
  @override
  State<SignInFrame> createState() => _SignInFrame();
}

class _SignInFrame extends State<SignInFrame> {
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPass = new TextEditingController();
  Future signIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: txtEmail.text, password: txtPass.text);

      Navigator.of(context).pop();
    } catch (e) {
      Navigator.of(context).pop();
      final snackBar = SnackBar(content: Text('Sai tài khoản hoặc mật khẩu'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void dispose() {
    txtEmail.dispose();
    txtPass.dispose();
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 10, 15, 10),
                                      child: Text("Tên đăng nhập:"),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 15, 10),
                                      child: TextField(
                                        controller: txtEmail,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            border: OutlineInputBorder(),
                                            hintText: "Tên đăng nhập",
                                            hintStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 10, 0, 10),
                                      child: Text("Mật khẩu:"),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 15, 10),
                                      child: TextField(
                                        controller: txtPass,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            border: OutlineInputBorder(),
                                            hintText: "Mật khẩu",
                                            hintStyle:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: 150,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    )),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors
                                                                .green[200]
                                                                ?.withOpacity(
                                                                    0.8))),
                                                onPressed: () {
                                                  signIn();
                                                },
                                                child: Text(
                                                  "Đăng nhập",
                                                  style: TextStyle(
                                                      color: Colors.black87),
                                                ),
                                              ))
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SignUpFrame()));
                                            });

                                            ;
                                          },
                                          child: Text(
                                            "Đăng kí",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        )
                                      ],
                                    ),
                                  ]),
                            ),
                          ]))
                    ]))));
  }
}
