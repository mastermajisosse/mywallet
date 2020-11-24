import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class MobileBillCardPage extends StatefulWidget {
  @override
  _MobileBillCardPageState createState() => _MobileBillCardPageState();
}

class _MobileBillCardPageState extends State<MobileBillCardPage> {
  int _radioValue1;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("mobileb").tr(),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: SizeConfig.paddingHorizontal * 2),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'operator',
                  style: Mystyle.regularTextStyle,
                ).tr(),
                Radio(
                  value: 0,
                  groupValue: _radioValue1,
                  onChanged: (value) {
                    setState(() {
                      _radioValue1 = value;
                    });
                  },
                ),
                Text(
                  'zain',
                  style: Mystyle.regularTextStyle,
                ).tr(),
                Radio(
                  value: 1,
                  groupValue: _radioValue1,
                  onChanged: (value) {
                    setState(() {
                      _radioValue1 = value;
                    });
                  },
                ),
                Text(
                  'mtn',
                  style: Mystyle.regularTextStyle,
                ).tr(),
                Radio(
                  value: 2,
                  groupValue: _radioValue1,
                  onChanged: (value) {
                    setState(() {
                      _radioValue1 = value;
                    });
                  },
                ),
                Text(
                  'soudani',
                  style: Mystyle.regularTextStyle,
                ).tr(),
              ],
            ),
          ),
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
                  "+249",
                  style: Mystyle.subTitleTextStyle,
                  textAlign: TextAlign.center,
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
                    Icon(Icons.person, color: Mystyle.primarycolo),
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
                    "check",
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
