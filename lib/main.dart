import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State createState() => new _State();
}

class _State extends State<MyApp>{
  String _value = '';

  void _onChanged(String value){
    setState(() => _value = 'Change: ${value}');
  }

  void _onSubmit(String value){
    setState(() => _value = "Submit: ${value}");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('M. Fadli Zein'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(_value),
            new TextField(
              decoration: new InputDecoration(
                labelText: 'Hello, i am',
                hintText: 'Name',
                icon: new Icon(Icons.people)
              ),
              autocorrect: true,
              //cursor lansung di edittext
              autofocus: true,
              // keyboardType: TextInputType.number,
              keyboardType: TextInputType.text,
              //param digantikan oleh keyboar type, jadi tidak perlu param
              onChanged: _onChanged,
              onSubmitted: _onSubmit,
            )
          ],
        ),
      ),
    );
  }
}