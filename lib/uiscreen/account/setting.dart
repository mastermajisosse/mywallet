import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class SettingP extends StatefulWidget {
  @override
  _SettingPState createState() => _SettingPState();
}

class _SettingPState extends State<SettingP> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    // print(data.locale.languageCode);
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mystyle.secondrycolo,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "setting",
            style: Mystyle.regularTextStyleW,
          ).tr(),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(4),
              child: ListTile(
                title: Text("profile").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                },
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(4),
              child: ListTile(
                title: Text("pinch").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/pinch");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(4),
              child: ListTile(
                title: Text("ipinch").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/ipinch");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(4),
              child: ListTile(
                title: Text("language").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/lang");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(4),
              child: ListTile(
                title: Text("about").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/about");
                },
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(4),
              child: ListTile(
                title: Text("logout").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/signup");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
