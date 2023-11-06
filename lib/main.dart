import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_page/auth/main_page.dart';

Future<void>? main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCp3sLbE5wFgzd4gqB8Y4KtGjf03OOlkQw",
        appId: "1:432612262691:android:c0be0b86ba6821586b4296",
        messagingSenderId: "432612262691",
        projectId: "exam-ee5d2"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainPage(),
      
    );
  }
}
