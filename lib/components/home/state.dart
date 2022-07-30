import 'package:flutter/material.dart';
import 'widget.dart';

class HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            SizedBox(width: 14),
            SizedBox(
              height: 24,
              width: 24,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                // TODO: Connect with avatar property from User model.
                backgroundImage: NetworkImage('https://dogecash.net/assets/images/team/infrative.jpg'),
              ),
            )
          ],
        ),
        actions: const <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.settings,
              )
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}