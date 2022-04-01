//import 'dart:math';
import 'dart:convert';

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
      home: MyHomePage(title: 'Площадь прямоугольника'),
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
  double len = 0;
  double wid = 0;
  Text txt = Text("");

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Длинна, мм:"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: TextFormField(validator: (value) {
                        if (value!.isEmpty || double.tryParse(value) == null)
                          return 'Введите корректную величину';
                        else {
                          len = double.parse(value);
                          return null;
                        }
                      },
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Ширина, мм:"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: TextFormField(validator: (value) {
                        if (value!.isEmpty || double.tryParse(value) == null)
                          return 'Введите корректную величину';
                        else {
                          wid = double.parse(value);
                          return null;
                        }
                      },
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    double S = len * wid / 2;
                      txt = Text("S = $len*$wid = $S мм^2",
                          style: const TextStyle(color: Colors.blueAccent, fontSize: 32));
                  });
                }
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: const Text(
                "Вычислить",
              ),
            ),
            txt,
          ],
        ),
      ),
    );
  }
}
