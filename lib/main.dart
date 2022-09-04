import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth1 =
      firebase_auth.FirebaseAuth.instance;

  void signUp() async {
    try {
      await firebaseAuth1.createUserWithEmailAndPassword(
          email: 'devstack22@gmail.com', password: '123456');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firebase'),
        ),
        body: Center(
          child: TextButton(
            child: Text('SignUp'),
            onPressed: () {
              signUp();
            },
          ),
        ),
      ),
    );
  }
}
