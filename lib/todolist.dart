import 'package:flutter/material.dart';
import './block.dart';

class TodoList extends StatelessWidget {
  final Function removeone;
  final List <String> todolist;
  TodoList(this.todolist,this.removeone);
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemBuilder: (context, index) {
        final String item=todolist[index];
        return Dismissible(
          background: Container(color: Colors.green,),
          key: Key(item),
          onDismissed: (_){
            removeone(index);
          },
                  child: Container(
              padding: EdgeInsets.all(5),
              child: Block(todolist[index])
              ),
        );
      },
      itemCount: todolist.length,
    );
  }
}
