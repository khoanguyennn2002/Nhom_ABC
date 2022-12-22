import 'package:audioplayers/audioplayers.dart';
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

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final audioPlayer = AudioPlayer();

  void playLocal() async {
    await audioPlayer.play(AssetSource("audio/1.mp3"));
  }

  void loop() {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  @override
  void initState() {
    super.initState();
    playLocal();
    loop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Footer();
              } else {
                return SignInFrame();
              }
            }));
  }
}
