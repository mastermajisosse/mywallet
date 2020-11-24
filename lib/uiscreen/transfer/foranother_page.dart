import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class ForAnother extends StatefulWidget {
  @override
  _ForAnotherState createState() => _ForAnotherState();
}

class _ForAnotherState extends State<ForAnother> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("tr1").tr(),
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
                    "+249",
                    style: Mystyle.subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "phonenum".tr(),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {}, // => phoneNumber = value,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.favorite, color: Mystyle.primarycolo),
                  ],
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
                      "pin",
                      style: Mystyle.regularTextStyle,
                      textAlign: TextAlign.center,
                    ).tr(),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: "pin".tr(),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {}, // => phoneNumber = value,
                  ),
                  trailing: Icon(Icons.remove_red_eye)),
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
