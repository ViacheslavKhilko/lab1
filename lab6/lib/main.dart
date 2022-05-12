import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) =>
        const HomePage1(title: 'Возвращение значения'),
        '/2': (BuildContext context) =>
        const HomePage2(title: 'Выбор ответа'),
      },
    );
  }
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage1> createState() => Page1();
}

class Page1 extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    //var formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title:
          Text(widget.title, style: const TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/2');
            },
            style: ElevatedButton.styleFrom(primary: Colors.black),
            child: const Text('Приступить к выбору'),
          ),
        ));
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage2> createState() => Page2();
}

class Page2 extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    //var formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Да', style: TextStyle(fontSize: 32)),
                              padding: EdgeInsets.only(left: 100))));
                },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: const Text('Да')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Нет', style: TextStyle(fontSize: 32)),
                              padding: EdgeInsets.only(left: 100))));
                },
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: const Text('Нет')),
          ],
        ),
      ),
    );
  }
}
