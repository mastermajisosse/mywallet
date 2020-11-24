import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class ReceiveMoneyPage extends StatefulWidget {
  @override
  _ReceiveMoneyPageState createState() => _ReceiveMoneyPageState();
}

class _ReceiveMoneyPageState extends State<ReceiveMoneyPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.93),
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("receivem").tr(),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: SizeConfig.paddingHorizontal * 2),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: height / 1.7,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // color: Colors.pink,
                elevation: 0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: height / 15,
                      alignment: Alignment.center,
                      child: Text(
                        "stpm",
                        style: Mystyle.regularTextStyle,
                      ).tr(),
                    ),
                    Container(
                      height: height / 20,
                      alignment: Alignment.center,
                      child: Text(
                        "249858904849",
                        style: Mystyle.subTitleTextStyle,
                      ),
                    ),
                    Divider(
                      thickness: .8,
                      color: Colors.black,
                    ),
                    // Spacer(),
                    Image.asset(
                      "assets/icons/qr.png",
                      height: height / 2.5,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
