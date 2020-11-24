import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    // print(data.locale.languageCode);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Mystyle.secondrycolo,
        leading: BackButton(),
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
                "transfer",
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
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: Container(
                  color: Colors.blue[700],
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.repeat,
                    color: Colors.white,
                  ),
                ),
                title: Text("tr1").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/foranother");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: Container(
                  color: Colors.yellow[700],
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.folder,
                    color: Colors.white,
                  ),
                ),
                title: Text("tr2").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/formine");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: Container(
                  color: Colors.red[700],
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
                title: Text("tr3").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/forbankcard");
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: Container(
                  color: Colors.green[700],
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.card_membership,
                    color: Colors.white,
                  ),
                ),
                title: Text("tr4").tr(),
                onTap: () {
                  Navigator.pushNamed(context, "/forothercard");
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
