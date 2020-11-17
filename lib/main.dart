import 'package:flutter/material.dart';

void main() => runApp(SimpleCalcApp());

class SimpleCalcApp extends StatefulWidget {
  SimpleCalcApp({Key key}) : super(key: key);

  @override
  _SimpleCalcAppState createState() => _SimpleCalcAppState();
}

class _SimpleCalcAppState extends State<SimpleCalcApp> {
  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
    );

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
    );

    RaisedButton button = RaisedButton(
      onPressed: () {},
      child: Text('Calcular'),
    );

    Column columns = Column(
      children: [num1, num2, button],
    );
    return MaterialApp(
      title: 'Simple Calc App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Calc App'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(14.0),
          child: columns,
        ),
      ),
    );
  }
}
