import 'package:flutter/material.dart';
import 'package:todolist/nothing.dart';
import 'package:todolist/popup.dart';
import './lists.dart';
import './todolist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'To Do List',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.amber,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//VARIABLE DECLARATIONS

  final cont = TextEditingController();
  String str;
  final List<String> todolist = [];
  final List<String> donelist = [];

//FUNCTIONS

  void addnew(String str) {
    setState(() {
      todolist.add(str);
    });
    cont.clear();
    Navigator.of(context).pop();
  }

  void removeone(index) {
    setState(() {
      todolist.removeAt(index);
      donelist.add(todolist[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO LIST'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.event_note,
          ),
          onPressed: () => showModalBottomSheet(
              context: context, builder: (context) => PopUp(addnew)),
        ),
        body: todolist.isEmpty
            ? Nothing()
            : TodoList(todolist,removeone,));
  }
}
