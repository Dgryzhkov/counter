import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterWidgetsState();
}

class _CounterWidgetsState extends State<CounterWidget> {
  int _count = 50;

  @override
  void initState() {
    _count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.indigo[200], borderRadius: BorderRadius.circular(20)),
        //width: 150,
        //padding: EdgeInsets.all(50),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  setState(() {
                    _count--;
                  });
                },
                icon: const Icon(Icons.remove)),
            Text('$_count'),
            IconButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                icon: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
