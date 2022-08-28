import 'package:flutter/material.dart';
import 'package:toters/screns/TapPage/AcoundPage/acountPage.dart';
import 'package:toters/screns/TapPage/homePage/home.dart';
import 'package:toters/screns/TapPage/ordersPage/orderpage.dart';
import 'package:toters/screns/TapPage/walletPage/wallatpage.dart';

int indexPage = 0;
List sicren = [
  homepage(),
  wallat(),
  order(),
  profilePage(),
];

String loc = "المنصور";
List image = [
  "images/img.png",
  "",
];
List typeImage = [
  "images/type1food.jpeg",
  "images/type2.jpeg",
  "images/bloshe.jpeg",
  "images/type5.jpeg",
  "images/type4.jpeg",
  "images/type3.webp",
  "images/type6.png",
  "images/type7.jpeg",
  "images/type8.jpeg",
  "images/type9.webp",
  "images/type10.jpeg",
  "images/type11.jpeg",
  "images/type12.jpeg",
  "images/type13.jpeg",
  "images/type14.jpeg",
  "images/type15.jpeg",
  "images/type16.png",
  "images/type17.jpeg",
];
List typeName = [
  "المطاعم",
  "فطور صباحي",
  "بلوشي",
  "حلويات ومعجنات",
  "الفواكه والخضروات",
  "الحوم",
  "ماركت",
  "بحرية",
  "التجهيزات الغذائية",
  "دايت فود",
  "بطاقات التعبئة",
  "البن والقهوة",
  "الزهور",
  "الكرزات",
  "مكملت غذئية",
  "المرطبات",
  "المكتبات",
  "المعجنات",
];

Color mainColor() {
  return Color(0xFFff163e);
}

Color mainElementColor() {
  return Colors.black54;
}

//dlv deleviry icon
Container dlv(dlevry) {
  if (dlevry == true) {
    return Container(
      margin: EdgeInsets.only(right: 7, top: 7),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Icon(
        Icons.delivery_dining_outlined,
        size: 35,
        color: mainColor(),
      ),
    );
  } else
    return Container();
}

Container bromoCode(bromo) {
  if (bromo == true) {
    return Container(
      margin: EdgeInsets.only(right: 7, top: 7),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Text(
        "بروموكود",
        style: TextStyle(fontSize: 20, color: mainColor()),
      ),
    );
  } else
    return Container();
}

List<Icon> TopicsIcon = [
  Icon(
    Icons.home_outlined,
    size: 20,
  ),
  Icon(Icons.discount),
  Icon(Icons.account_balance_wallet_outlined),
  Icon(Icons.delivery_dining_sharp),
  Icon(Icons.card_giftcard_rounded),
  Icon(Icons.star_border_outlined),
  Icon(
    Icons.storefront,
  ),
];
List<String> TopicsName = [
  "الكل",
  "خصومات",
  "يدعم  المحفضة",
  "توصيل طلباتي",
  "توصيل مجاني",
  "حصري",
  "جديد",
];
List postImage = [
  "images/type1food.jpeg",
  "images/type2.jpeg",
  "images/bloshe.jpeg",
  "images/type5.jpeg",
  "images/type4.jpeg",
  "images/type3.webp",
  "images/type6.png",
  "images/type7.jpeg",
  "images/type8.jpeg",
  "images/type9.webp",
  "images/type10.jpeg",
  "images/type11.jpeg",
  "images/type12.jpeg",
  "images/type13.jpeg",
  "images/type14.jpeg",
  "images/type15.jpeg",
  "images/type16.png",
  "images/type17.jpeg",
];
//restaurant  Name
List<String> CostOrder = [
  "Minimum order: 5,000 IQD",
  "Minimum order: 5,000 IQD",
  "Minimum order: 14,000 IQD",
  "Minimum order: 20,000 IQD",
  "Minimum order: 6,000 IQD",
  "Minimum order: 10,000 IQD",
  "Minimum order: 18,000 IQD",
];
List<int> IntfoodCost = [
  5000,
  5000,
  14000,
  20000,
  6000,
  10000,
  18000,
];
List<String> ResN = [
  "رويل كالكسي",
  "ملك المشويات",
  "برجرات",
  "فايكنك",
  "فولكينو",
  "خان مندي",
];
//location restaurant
List<String> locR = [
  "Mansour",
  "Mansour",
  "amrea",
  "hae al Hussain",
  "hae al Hussain",
];
//delivery cost
List<String> DlvC = [
  "Delivery order: 5,000 IQD",
  "Delivery order: 4,000 IQD",
  "Delivery order: Free  IQd",
  "Delivery order: Free  IQD",
  "Delivery order: 1,000 IQD",
];

int Rank = 0;

Row RestorentInfo(indexPost, Rank) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        locR[indexPost],
        style: TextStyle(fontSize: 11, color: mainElementColor()),
      ),
      ranke(Rank),
      Text(
        DlvC[indexPost],
        style: TextStyle(fontSize: 11, color: mainElementColor()),
      ),
    ],
  );
}


Row ranke(Rank) {
  if (Rank == 5) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Text(
          "Excellent",
          style: TextStyle(fontSize: 11, color: mainElementColor()),
        ),
        Icon(Icons.emoji_emotions)
      ],
    );
  }
  if (Rank == 4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Very Goog",
          style: TextStyle(fontSize: 11, color: mainElementColor()),
        ),
        Icon(Icons.emoji_emotions)
      ],
    );
  }
  if (Rank == 3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Text(
          "Good",
          style: TextStyle(fontSize: 11, color: mainElementColor()),
        ),
        Icon(Icons.emoji_emotions)
      ],
    );
  }
  if (Rank == 2 || Rank == 1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Text(
          "Zbala",
          style: TextStyle(fontSize: 11, color: mainElementColor()),
        ),
        Icon(Icons.restore_from_trash)
      ],
    );
  }
  else
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Text(
          "Null",
          style: TextStyle(fontSize: 11, color: mainElementColor()),
        ),
        Icon(Icons.not_interested_rounded)
      ],
    );
}

List food = [
  "burger",
  "finger fiery",
  "dolma",
  "dolma",
  "bagla",
];