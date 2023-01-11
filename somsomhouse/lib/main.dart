import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:somsomhouse/views/comment.dart';
import 'package:somsomhouse/views/home.dart';
import 'package:somsomhouse/views/loginpage.dart';
import 'package:somsomhouse/views/splash.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //flutter 코어 엔진 초기화 (비동기방식)
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => StreamBuilder(
            stream: FirebaseAuth.instance
                .authStateChanges(), //사용자가 발급받았던 토큰(인증)을 없애줌.
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                // return Comment(); //값을 지니고 있을경우 댓글 페이지로 이동
                return Home();
              }
              return LoginPage(); //값을 지니고 있지 않을 경우 login페이지로 이동
            })),
      },
    );
  }
}
