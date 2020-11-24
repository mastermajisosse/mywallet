import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class AddCards extends StatefulWidget {
  @override
  _AddCardsState createState() => _AddCardsState();
}

class _AddCardsState extends State<AddCards> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("addmycard").tr(),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: SizeConfig.paddingHorizontal * 2),
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
                  leading: Text(
                    "cardname",
                    style: Mystyle.subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ).tr(),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "cardname".tr(),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
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
                  leading: Text(
                    "cardno",
                    style: Mystyle.subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ).tr(),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "cardno".tr(),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
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
                  leading: Text(
                    "conferm".tr() + " " + "cardno".tr(),
                    style: Mystyle.subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "conferm".tr() + " " + "cardno".tr(),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
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
                  leading: Text(
                    "carded",
                    style: Mystyle.subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ).tr(),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "y/m".tr(),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
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
                      "addmycard",
                      style: Mystyle.regularTextStyleW,
                    ).tr(),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
