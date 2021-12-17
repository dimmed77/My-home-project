import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }



  @override
  Widget build(BuildContext context) {
    initFirebase();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange[400],
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[400],
          title: Text(
            'My home project',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 25),
          ),
        ),

      ),
    );
  }
}