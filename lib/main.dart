import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const MyHomePage(title: 'Calculator'),
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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  final List<String> buttons = [
    'AC',
    '+/-',
    '%',
    '÷',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
                child: const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '999',
                style: TextStyle(fontSize: 80, color: Colors.white),
              ),
            )),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 19,
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 1) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 2) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 3) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 7) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 11) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 15) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 18) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 30)),
                );
              } else if (index == 16) {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF303030),
                  ),
                  child: Text(buttons[index],
                      style:
                          const TextStyle(fontSize: 30, color: Colors.white)),
                );
              } else {
                return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF303030),
                  ),
                  child: Text(buttons[index],
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
