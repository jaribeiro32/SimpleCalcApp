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
        style: TextStyle(color: Colors.deepOrange),
        decoration: InputDecoration(
            labelText: '1º Valor',
            labelStyle: TextStyle(color: Colors.deepOrange),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange, width: 1.0))));

    TextField num2 = TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.deepOrange),
        decoration: InputDecoration(
            labelText: '2º Valor',
            labelStyle: TextStyle(color: Colors.deepOrange),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange, width: 1.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange, width: 1.0))));

    RaisedButton button = RaisedButton(
      onPressed: () {},
      child: Text('Calcular'),
      color: Colors.deepOrange,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.9)),
    );

    Padding separator = Padding(padding: EdgeInsets.all(4.0));

    Column columns = Column(
      children: [
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          child: button,
          width: double.infinity,
        )
      ],
    );
    return MaterialApp(
      title: 'Simple Calc App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Calc App'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: EdgeInsets.all(14.0),
          child: columns,
        ),
      ),
    );
  }
}
