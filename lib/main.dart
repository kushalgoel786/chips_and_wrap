import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> chips = [
    Container(width: double.infinity),
    Chip(label: Text('Chip')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chips'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Wrap(
          spacing: 8.0,
          alignment: WrapAlignment.center,
          runSpacing: 4.0,
          children: chips,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            chips.add(Chip(label: Text('New Chip')));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
