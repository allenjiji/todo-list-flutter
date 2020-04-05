import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final String str;
  Block(this.str);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 10,
          ),
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height * 0.095,
          child: Text(
            str,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
