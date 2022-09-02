import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';

class chosePage extends StatefulWidget {

  @override
  State<chosePage> createState() => _chosePageState();
}

class _chosePageState extends State<chosePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:
      BottomNavigationBar(onTap: (int indexss) {
        setState(() {
          indexPage = indexss;

        });
      },
selectedLabelStyle: TextStyle(color: mainColor()),
        unselectedItemColor: mainElementColor(),
        selectedItemColor: mainColor(),
        backgroundColor: Colors.white,
        currentIndex: indexPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home_filled,size: 40,),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined,size: 40,),
            label: 'المحفظة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt,size: 40,),
            label: 'الطلبات',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,size: 40,),
            label: 'الحساب',
          ),
        ],
      ),
      body: sicren[indexPage],
    );
  }
}
