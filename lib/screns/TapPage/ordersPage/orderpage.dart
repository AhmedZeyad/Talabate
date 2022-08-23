import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
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
