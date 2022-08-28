import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';

class PruductPage extends StatefulWidget {
  final String postImage;
  final int foodintConst;
  final Container bromoCode;
  final String ResN;
  final String CostOrder;
  final String DlvC;
  final String locR;
  final Row ranke;
  final String foodn;

  PruductPage(
      {required this.postImage,
      required this.bromoCode,
      required this.foodintConst,
      required this.ResN,
      required this.CostOrder,
      required this.DlvC,
      required this.locR,
      required this.ranke,
      required this.foodn});

  @override
  State<PruductPage> createState() => _PruductPageState();
}

class _PruductPageState extends State<PruductPage> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: ()=>
      FocusScope.of(context).unfocus(),
      child:
    Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  banerRest(),
                  Positioned(left: 20, top: 20, child: backbuton()),
                  Positioned(
                      bottom: -4,
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                      ))
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      PageInfo(),
                      ItemCount(widget.foodintConst),
                      Container(
                          clipBehavior: Clip.none,
                          margin: EdgeInsets.all(20),
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: mainColor()),
                          child: Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )),
                    ],
                  )),
            ),


          ],
        ),
      ),
    ) ,)
      ;
  }

  Container PageInfo() {
    return Container(
        clipBehavior: Clip.none,

        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.only(right: 20, left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.ResN,
                style: TextStyle(fontSize: 25, color: mainColor()),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.DlvC,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  widget.ranke
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.locR,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Minimum order :5000 IQD",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Expected delivery time from half an hour to an hour",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.foodn,
                style: TextStyle(fontSize: 25, color: mainColor()),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      print("adddd");
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                                            color: Colors.black12,
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Additions",
                                  style: TextStyle(
                                      fontSize: 18, color: mainColor()),
                                ),
                                Text(
                                  "optional",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Center(
                              child: Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              Text(
                "Special Lnstruction",
                style: TextStyle(fontSize: 18, color: mainColor()),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      print("comment");
                    });
                  },
                  child: Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(23)),
                    child: Center(
                        child: TextField(
                      decoration: InputDecoration(hintStyle: TextStyle(fontSize: 17),
                          hintText: "you can tyap  what you went"),
                    )
                        ),
                  )),
            ],
          ),
        ));
  }

  Container banerRest() {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(widget.postImage))),
    );
  }

  Container backbuton() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 3)],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
      ),
    );
  }

  Container ItemCount(int totle) {
    int sum = num * widget.foodintConst;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("$num");
                    num++;
                    print("$sum");
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  child: Center(
                    child: Text(
                      "$num",
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (num > 1) {
                          print("$num");
                          print(sum);
                          num--;
                          print(sum);
                          print("$num");
                        }
                      });
                    },
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                        size: 30,
                      ),
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${sum} IQD",
                style: TextStyle(fontSize: 18, color: mainColor()),
              )
            ],
          )
        ],
      ),
    );
  }
}
