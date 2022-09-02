import 'package:flutter/material.dart';
import 'package:toters/data/allData.dart';
import 'package:toters/screns/TapPage/homePage/pruduct%20page.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    SliverGridDelegate _gridDelegate;
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
                    child: ListView.builder(
                      itemCount: typeImage.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return types(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomScrollView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,

                slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Container(
                      height: 200,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (BuildContext contetext, int index) {
                                return PopulerShops();
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),

                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.white,
                    flexibleSpace: Container(
                      height: 30,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: TopicsName.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Topics(index);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    pinned: true, //stop bar
                  ),
                  SliverList(
                    delegate:
                        SliverChildBuilderDelegate(childCount: ResN.length ,
                            (BuildContext context, index) {
                      print(index);
                      return Container(
                        height: 200,
                        child: post(index, index, index, true, true),
                      );
                    }),
                  ),
                  // PageView.builder(
                  //     itemCount: 2,
                  //     itemBuilder: (BuildContext context , int index){
                  //   return
                  //       post(1, 1, 1, true, true);
                  // })
                  // SliverList(
                  //   delegate: SliverChildListDelegate([
                  //     Container(
                  //       height: 400,
                  //       child:
                  //     Column(
                  //       children: [
                  //         Expanded(child: ListView.builder(
                  //             itemCount: 2,
                  //             itemBuilder: (BuildContext context, int index) {
                  //               return
                  //             }))
                  //
                  //         // Container(
                  //         //   height: 200,
                  //         //   child: Expanded(
                  //         //       child: PageView(scrollDirection: Axis.vertical,
                  //         //     children: [                          post(5, 3, 2, true, false),
                  //         //
                  //         //       post(5, 3, 2, true, true),
                  //         //     ],
                  //         //   )),
                  //         // )
                  //       ],
                  //     ),
                  //     )
                  //   ]),
                  // )
                ],
                // children:
                // [
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

  Container post(
      int indexResN, int indexPost, int Rank, bool dlevry, bool bromocod) {
    return Container(
        height: 200,
        margin: EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {
            print("go");

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PruductPage(
                      foodintConst: IntfoodCost[indexPost],
                      foodn: food[indexPost],
                      postImage: postImage[indexPost],
                      bromoCode: bromoCode(bromocod),
                      ResN: ResN[indexResN],
                      CostOrder: CostOrder[indexPost],
                      DlvC: DlvC[indexPost],
                      locR: locR[indexPost],
                      ranke: ranke(Rank)),
                ));
          },
          // onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(context) => PruductPage()));},

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ResN[indexResN],
                      style: TextStyle(fontSize: 20, color: mainColor()),
                    ),
                    Text(
                      CostOrder[indexPost],
                      style: TextStyle(fontSize: 11, color: mainElementColor()),
                    ),
                  ],
                ),
              ),
              RestorentInfo(indexPost, Rank),
            ],
          ),
        ));
  }
}
