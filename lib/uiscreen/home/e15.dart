import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class E15Page extends StatefulWidget {
  @override
  _E15PageState createState() => _E15PageState();
}

class _E15PageState extends State<E15Page> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("e15").tr(),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/scanplay');
              },
              child: SvgPicture.asset(
                'assets/icons/scan.svg',
                color: Colors.white,
                width: 30,
              ),
            ),
          )
        ],
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
                  "invoice",
                  style: Mystyle.subTitleTextStyle,
                  textAlign: TextAlign.center,
                ).tr(),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "invoice".tr(),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {}, // => phoneNumber = value,
                ),
                // trailing: Row(
                //   mainAxisSize: MainAxisSize.min,
                //   children: <Widget>[
                //     Icon(Icons.favorite, color: Mystyle.primarycolo),
                //     Icon(Icons.person, color: Mystyle.primarycolo),
                //   ],
                // ),
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
