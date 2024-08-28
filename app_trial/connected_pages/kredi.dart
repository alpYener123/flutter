import 'package:flutter/material.dart';


class kredi extends StatefulWidget {
  const kredi({Key? key}) : super(key: key);

  @override
  State<kredi> createState() => _krediState();
}

class _krediState extends State<kredi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("kredi kartı", style: TextStyle(fontSize: 69)));
  }
}