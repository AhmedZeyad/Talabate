import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.notifications_none_sharp,
              size: 30,
              color: mainElementColor(),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 1.2,
        leading: Icon(
          Icons.search,
          color: mainElementColor(),
          size: 30,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.keyboard_arrow_down,
              color: mainElementColor(),
              size: 40,
            ),
            Text(
              loc,
              style: TextStyle(color: mainElementColor()),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 170,
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        types(0),
                        types(1),
                        types(2),
                        types(3),
                        types(4),
                        types(5),
                        types(6),
                        types(7),
                        types(8),
                        types(9),
                        types(10),
                        types(11),
                        types(12),
                        types(13),
                        types(14),
                        types(15),
                        types(16),
                        types(17),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 250,
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              event(),
                              Container(
                                height: 200,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          PopulerShops(),
                                          PopulerShops(),
                                          PopulerShops(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Topics(0),
                            Topics(1),
                            Topics(2),
                            Topics(3),
                            Topics(4),
                            Topics(5),
                            Topics(6),
                          ],
                        ))
                      ],
                    ),
                  ),
                  Container(

                    child: Column(
                      children: [
                        post(1,1, 3, true, true),
                                     post(4,3, 5, true, false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column types(
    int index,
  ) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(9),
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: mainColor(),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: mainElementColor(),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(3, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(typeImage[index])),
                ),
              )
            ],
          ),
        ),
        Text(
          typeName[index],
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }

  Row PopulerShops() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(9),
              height: 130,
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(typeImage[0])),
                  color: mainElementColor(),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.topRight,
                children: [dlv(true)],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                "زرزور",
                style: TextStyle(color: mainColor(), fontSize: 25),
              ),
            ),

          ],
        ),
      ],
    );
  }

  Container Topics(int index) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(30)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              Text(
                TopicsName[index],
                style: TextStyle(fontSize: 15),
              ),
              TopicsIcon[index]
            ],
          )
        ],
      ),
    );
  }
}

// ###################
TextButton event() {
  return TextButton(
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Text(
              "Popular Shpps",
              style: TextStyle(color: mainColor(), fontSize: 18),
            ),
          ),
          Container(
            color: mainColor(),
            width: 135,
            height: 2,
          )
        ],
      ));
}

Container post(int indexResN, int indexPost,int Rank, bool dlevry, bool bromocod) {
  return Container(
    height: 190,

    margin: EdgeInsets.all(20),
    child: Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(postImage[indexPost]))),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [dlv(dlevry), bromoCode(bromocod)],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child:

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ResN[indexResN],
                style: TextStyle(fontSize: 20, color: mainColor()),
              ),
              Text(
                Costorder[indexPost],
                style: TextStyle(fontSize: 11, color: mainElementColor()),
              ),
            ],
          )
          ,
        ),
        RestorentInfo(indexPost,Rank),

      ],
    ),
  );
}
