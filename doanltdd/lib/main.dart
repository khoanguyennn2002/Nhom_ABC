import 'package:doanltdd/Screens/Footer.dart';
import 'package:doanltdd/Screens/Home.dart';
import 'package:doanltdd/Screens/SignInFrame.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'Screens/SignInFrame.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return SnackBar(content: Text('Có Lỗi Xảy Ra!'));
              } else if (snapshot.hasData) {
                return Footer();
              } else {
                return SignInFrame();
              }
            }));
  }
}
