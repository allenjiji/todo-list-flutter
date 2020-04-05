//CURRENTLY NOT ACTIVATED

import 'package:flutter/material.dart';
import './block.dart';

class DoneList extends StatelessWidget {
  final List<String> donelist;
  DoneList(this.donelist);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: donelist.length,
      itemBuilder: (context, index) {
        final String item = donelist[index];
        return Dismissible(
          background: Container(
            color: Colors.red,
          ),
          key: Key(item),
          onDismissed: (_) {
            donelist.removeAt(index);
          },
          child: Container(
            child: Block(donelist[index]),
          ),
        );
      },
    );
  }
}
