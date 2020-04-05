import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  final cont = TextEditingController();
  final Function addnew;
  PopUp(this.addnew);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: cont,
            decoration: InputDecoration(labelText: 'Enter the Task'),
            onSubmitted: (str){
              str=cont.text;
              addnew(str);
              print(str);
            },

          )
        ],
      ),
    );
  }
}
