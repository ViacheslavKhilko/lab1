import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IncremDecrem',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Инкремент'),
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
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ElevatedButton(style: ElevatedButton.styleFrom(onPrimary: Colors.white, primary: Colors.red, textStyle: TextStyle(fontSize: 30)), onPressed: _decrementCounter, child: Text('-')),
              Text(' '),
              ElevatedButton(style: ElevatedButton.styleFrom(onPrimary: Colors.white, primary: Colors.green, textStyle: TextStyle(fontSize: 30)),onPressed: _incrementCounter, child: Text('+')),
              ]),
              TextButton(style: TextButton.styleFrom(primary: Colors.grey, textStyle: TextStyle(fontSize: 18)), onPressed:()
              {
                setState(() {
                  _counter = 0;
                });
              },
              child: Text('Сбросить'),
              ),
            ],
        ),
      ),
    );
  }
}
