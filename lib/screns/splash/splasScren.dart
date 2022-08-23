import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';
import 'package:toters/screns/chosePpage/chosePage.dart';

import '../TapPage/homePage/home.dart';

class splasPage extends StatefulWidget {
  const splasPage({Key? key}) : super(key: key);

  @override
  State<splasPage> createState() => _splasPageState();
}

class _splasPageState extends State<splasPage>
    with SingleTickerProviderStateMixin {
  @override
  void FutreDela() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => chosePage()));
    });
  }

  void initState() {
    FutreDela();
    super.initState();
  }

  @override
  void future() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor(),
      body: Center(
          child: Container(
        width: 500,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image[0],
            ),
          ),
        ),
      )),
    );
  }
}
