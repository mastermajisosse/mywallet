import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';
import 'package:mywallet/utils/style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    // print(data.locale.languageCode);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Style.darkColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16),
          child: Column(
            children: <Widget>[
              Text(
                "wallet",
                style: Mystyle.regularTextStyleW,
              ).tr(),
              SizedBox(height: 4),
              Text(
                "24985076899",
                style: Mystyle.regularTextStyleW,
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Style.darkColor,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      caro1(
                        txt: "pay",
                        img: 'payment',
                        goto: '/scanplay',
                      ),
                      caro1(
                        txt: "receivem",
                        img: 'payments',
                        goto: '/receivemoney',
                      ),
                      caro1(
                        txt: "transfer",
                        img: 'money-transfer',
                        goto: '/transferpage',
                      ),
                      caro1(
                        txt: "cashout2",
                        img: 'atm',
                        goto: '/cashout',
                      ),
                    ],
                  ),
                ),
                playandother(
                  data,
                  "assets/icons/img.jpg",
                  "trf".tr(),
                  "dicu".tr(),
                  "instl".tr(),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: SizeConfig.screenHeight * 0.6,
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: <Widget>[
                caro(
                  txt: "mobileb",
                  img: Icons.phonelink_ring,
                  colo: Colors.redAccent,
                  goto1: '/mobilebillw',
                  goto2: '/mobilebillc',
                ),
                caro(
                  txt: "mobiletop",
                  img: Icons.mobile_screen_share,
                  colo: Colors.blueAccent,
                  goto1: '/mobiletopupw',
                  goto2: '/mobiletopupc',
                ),
                caro(
                  txt: "electricity",
                  img: Icons.offline_bolt,
                  colo: Colors.orange,
                  goto1: '/electrecityw',
                  goto2: '/electrecityc',
                ),
                caro(
                  txt: "e15",
                  img: Icons.code,
                  colo: Colors.green,
                  goto1: '/e15',
                  goto2: null,
                ),
                caro2(
                  txt: "customs",
                  img: Icons.cast_connected,
                  colo: Colors.lightGreen,
                  goto: '/customs',
                ),
                caro(
                  txt: "Highere",
                  img: FontAwesomeIcons.graduationCap,
                  colo: Colors.blueGrey,
                  goto1: '/highere',
                  goto2: '/highere',
                ),
                caro2(
                  txt: "epin",
                  img: Icons.shopping_basket,
                  colo: Colors.black87,
                  goto: '/epin',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  playandother(data, img, txt1, txt2, txt3) {
    return Container(
      width: double.infinity,
      height: 120,
      color: Style.darkColor,
      child: Row(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: data.locale.languageCode == "en"
                      ? Radius.circular(0.0)
                      : Radius.circular(100.0),
                  bottomRight: data.locale.languageCode == "en"
                      ? Radius.circular(100.0)
                      : Radius.circular(0.0),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    img,
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(width: SizeConfig.paddingVertical),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                txt1,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: Mystyle.primaryfont,
                  fontSize: 18,
                ),
              ).tr(),
              Text(
                txt2,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: Mystyle.primaryfont,
                  fontSize: 24,
                ),
              ).tr(),
              Row(
                children: <Widget>[
                  Container(
                    color: Mystyle.primarycolo,
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(context, '/tabhome'),
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "apply",
                            style: Mystyle.regularTextStyleW,
                          ).tr(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: SizeConfig.paddingVertical),
                  Text(
                    txt3,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Mystyle.primaryfont,
                      fontSize: 16,
                    ),
                  ).tr(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  caro1({txt, img, goto}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, goto);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Mystyle.primarycolo,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                "assets/icons/${img}.svg",
                color: Colors.white,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: SizeConfig.paddingHorizontal),
          Text(
            txt,
            style: TextStyle(
              color: Colors.white,
              fontFamily: Mystyle.primaryfont,
              fontSize: 16,
            ),
          ).tr(),
        ],
      ),
    );
  }

  caro({
    txt,
    img,
    text2 = 'wallet',
    text1 = 'card',
    colo,
    goto1,
    goto2,
  }) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(.1),
          width: 1.0,
        ),
      ),
      child: PopupMenuButton<int>(
        offset: Offset(0, 100 + 10.0),
        onSelected: (int result) {
          if (result == 1) {
            Navigator.pushNamed(context, goto1);
          } else {
            Navigator.pushNamed(context, goto2);
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
          PopupMenuItem<int>(
            value: 1,
            child: Text(text2).tr(),
          ),
          goto2 != null
              ? PopupMenuItem<int>(
                  value: 2,
                  child: Text(text1).tr(),
                )
              : null,
        ],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              img,
              color: colo,
              size: 36,
            ),
            SizedBox(height: SizeConfig.paddingHorizontal),
            Text(
              txt,
              style: TextStyle(
                color: Mystyle.secondrycolo,
                fontFamily: Mystyle.primaryfont,
                fontSize: 18,
              ),
            ).tr(),
          ],
        ),
      ),
    );
  }

  caro2({txt, img, colo, goto}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, goto);
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(.1),
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              img,
              color: colo,
              size: 36,
            ),
            SizedBox(height: SizeConfig.paddingHorizontal),
            Text(
              txt,
              style: TextStyle(
                color: Mystyle.secondrycolo,
                fontFamily: Mystyle.primaryfont,
                fontSize: 18,
              ),
            ).tr(),
          ],
        ),
      ),
    );
  }
}
