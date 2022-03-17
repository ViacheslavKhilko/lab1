import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Список степеней числа 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}







class _MyHomePageState extends State<MyHomePage> {
  List<String> arr = [];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title, style: const TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),

        body: ListView.builder(/*itemCount: 63, */itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                  title: Text('2',
                      style:
                      TextStyle(fontStyle: FontStyle.italic, fontSize: 18)),
                  subtitle: Text('^$index',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  trailing: Text(pow(2, index).toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.red)),
                  visualDensity: VisualDensity.compact),
              Divider(),
            ],
          );
        }));
  }
}
