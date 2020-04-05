import 'package:flutter/material.dart';
class Nothing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    child: Text(
                      'Nothing TODO !!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 250,
                      child: Image.asset('nothing.png', fit: BoxFit.fill)),
                ],
              ),
      
    );
  }
}