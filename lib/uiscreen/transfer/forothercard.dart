import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class ForOtherCart extends StatefulWidget {
  @override
  _ForOtherCartState createState() => _ForOtherCartState();
}

class _ForOtherCartState extends State<ForOtherCart> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("tr4").tr(),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: SizeConfig.paddingHorizontal * 2),
          SizedBox(height: SizeConfig.paddingHorizontal),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "amount",
                    style: Mystyle.subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ).tr(),
                ),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "amount".tr(),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {}, // => phoneNumber = value,
                ),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.paddingHorizontal),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      "cardno",
                      style: Mystyle.subTitleTextStyle,
                      textAlign: TextAlign.center,
                    ).tr(),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "cardno".tr(),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {}, // => phoneNumber = value,
                  ),
                  trailing: Icon(Icons.credit_card)),
            ),
          ),
          SizedBox(height: SizeConfig.paddingHorizontal),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "carded",
                    style: Mystyle.regularTextStyle,
                    textAlign: TextAlign.center,
                  ).tr(),
                ),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "y/m".tr(),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {}, // => phoneNumber = value,
                ),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.paddingHorizontal),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      "cardIP",
                      style: Mystyle.regularTextStyle,
                      textAlign: TextAlign.center,
                    ).tr(),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "ipin".tr(),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {}, // => phoneNumber = value,
                  ),
                  trailing: Icon(Icons.remove_red_eye)),
            ),
          ),
          SizedBox(height: SizeConfig.paddingHorizontal),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "tocard",
                    style: Mystyle.subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ).tr(),
                ),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "receivdcard".tr(),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {}, // => phoneNumber = value,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.favorite, color: Mystyle.primarycolo),
                    Icon(Icons.credit_card, color: Mystyle.primarycolo),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.paddingHorizontal * 3),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight / 12,
              color: Mystyle.primarycolo,
              child: InkWell(
                onTap: () =>
                    Navigator.pushReplacementNamed(context, '/mobilebill'),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Center(
                  child: Text(
                    "transfer",
                    style: Mystyle.regularTextStyleW,
                  ).tr(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
