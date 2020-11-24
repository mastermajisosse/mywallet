import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    // print(data.locale.languageCode);
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mystyle.secondrycolo,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: <Widget>[
              Text(
                "wallet",
                style: Mystyle.regularTextStyleW,
              ).tr(),
              SizedBox(height: 4),
              Text(
                "account",
                style: Mystyle.regularTextStyleW,
              ).tr(),
            ],
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(2),
              child: ListTile(
                leading: Icon(
                  Icons.select_all,
                  color: Colors.black,
                ),
                title: Text("getbalance").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/getbalance");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(2),
              child: ListTile(
                leading: Icon(
                  Icons.insert_link,
                  color: Colors.orange[800],
                ),
                title: Text("LBC").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/lbc");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(2),
              child: ListTile(
                leading: Icon(
                  Icons.screen_lock_landscape,
                  color: Colors.blueAccent,
                ),
                title: Text("GCI").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/gci");
                },
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(2),
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
                title: Text("favourite").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/favourite");
                },
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(2),
              child: ListTile(
                leading: Icon(
                  Icons.credit_card,
                  color: Colors.black,
                ),
                title: Text("mycard").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/mycard");
                },
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(2),
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text("setting").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/setting");
                },
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
