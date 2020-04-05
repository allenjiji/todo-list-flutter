//ERROR THROWN AS LIST INSIDE LIST OR SOMETHING!!!

import 'package:flutter/material.dart';
import 'package:todolist/block.dart';
import 'package:todolist/done_list.dart';
import 'package:todolist/todolist.dart';

class Lists extends StatelessWidget {
  final Function removeone;
  final List<String> donelist;
  final List<String> todolist;
  Lists(this.todolist, this.donelist, this.removeone);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.09,
      child: ListView(
        children: <Widget>[
          Container(child: TodoList(todolist, removeone)),
          Container(
            //height: MediaQuery.of(context).size.height * 0.09,
            child: Card(
              child: Block('Done LIST'),
              color: Colors.amber,
            ),
          ),
          Container(child: DoneList(donelist)),
        ],
      ),
    );
  }
}
