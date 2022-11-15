import 'package:flutter/material.dart';

class SignUpFrame extends StatefulWidget {
  SignUpFrame({super.key});

  @override
  State<SignUpFrame> createState() => _SignUpFrame();
}

class _SignUpFrame extends State<SignUpFrame> {
  @override
  Widget build(BuildContext context) {
    return //Scaffold(
        //body:
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/ABC.png"),
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  padding: EdgeInsets.all(20),
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
                  width: MediaQuery.of(context).size.width / 2,
                  //height: MediaQuery.of(context).size.height / 2,
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
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
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
                              style: TextStyle(fontFamily: "Aptima"),
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
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
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
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                              border: OutlineInputBorder(),
                              hintText: "Xác nhận mật khẩu",
                              hintStyle: TextStyle(color: Colors.black)),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Text("Email:"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(15)),
                            border: OutlineInputBorder(),
                            hintText: "Nhập địa chỉ email",
                            hintStyle: TextStyle(color: Colors.black),
                          ),
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
                                        decoration: TextDecoration.underline,
                                        color: Colors.black87))),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.black.withOpacity(0.5)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)))),
                              onPressed: () {
                                setState(() {});
                              },
                              child: Text("Hoàn tất"),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )); //);
  }
}
