import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';

class profilePage extends StatefulWidget {
  @override
  State<profilePage> createState() => _profilePageState();
}

var initial = 0;
bool see = false;

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/logo.png"))),
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      // color: shadoColor(),
                      // borderRadius: BorderRadius.circular(20)
                      ),
                ),
                TextFromFieldCostom(15, "name"),
                TextFromFieldCostom(11, "Number Phone"),
                TextButton(
                  child: Row(
                    children: [
                      Text(
                        "if you have a referral code, clik here",
                        style: TextStyle(fontSize: 15, color: mainColor()),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                          see == false
                              ? Icons.arrow_right
                              : Icons.arrow_drop_down,
                          size: 20,
                          color: mainColor())
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      if (see == false) {
                        see = true;
                      } else {
                        see = false;
                      }
                      print("$see");
                    });
                  },
                ),
                Container(
                    child: see == true ? SimpleTextFromField("") : Container()),
                GestureDetector(
                  child: Container(
                      clipBehavior: Clip.none,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: mainColor()),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )),
                  onTap: () {
                    print("notactive");
                  },
                )
              ],
            ),
          )

    )
    ;
  }

  Container SimpleTextFromField(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        cursorColor: mainColor(),
        decoration: InputDecoration(
          counterStyle: TextStyle(
            color: mainColor(),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: title,
          hintStyle: TextStyle(color: Colors.black54),
          filled: true,
        ),
      ),
    );
  }

  Container TextFromFieldCostom(
    int Max,
    String title, {
    Color CounterColor = Colors.black,
    Color TextColor = Colors.black,
    backRoundColor = Colors.white12,
  }) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            TextFormField(
              maxLength: Max,
              cursorColor: mainColor(),
              decoration: InputDecoration(
                counterText: "",
                counterStyle: TextStyle(height: -2, color: mainColor()),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: title,
                hintStyle: TextStyle(color: Colors.black54),
                filled: true,
              ),
              onChanged: (vall) {
                setState(() {
                  initial = 0;

                  initial = vall.length;
                  print("$initial/$Max");
                });
              },
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  "$initial/$Max",
                  style: TextStyle(color: mainColor(), fontSize: 12),
                ))
          ],
        ));
  }
}
