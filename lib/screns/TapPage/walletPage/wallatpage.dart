import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';

class wallat extends StatefulWidget {
  const wallat({Key? key}) : super(key: key);

  @override
  State<wallat> createState() => _wallatState();
}

class _wallatState extends State<wallat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor(),
      body: Center(
        child: Text("Soon",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
