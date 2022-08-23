import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';

class profilePage extends StatefulWidget {

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
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
