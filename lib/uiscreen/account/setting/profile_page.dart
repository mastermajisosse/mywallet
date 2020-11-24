import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("profile").tr(),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.share),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: SizeConfig.paddingHorizontal * 2),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              // color: Colors.white,
              width: double.infinity,
              height: height / 1.7,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.edit),
                      Container(
                        height: height / 15,
                        alignment: Alignment.center,
                        child: Text(
                          "addname",
                          style: Mystyle.regularTextStyle,
                        ).tr(),
                      ),
                      Container(),
                    ],
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
          )
        ],
      ),
    );
  }
}
