import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class AddToStores extends StatefulWidget {
  @override
  _AddToStoresState createState() => _AddToStoresState();
}

class _AddToStoresState extends State<AddToStores> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("addtostore").tr(),
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
                  "storesname",
                  style: Mystyle.subTitleTextStyle,
                  textAlign: TextAlign.center,
                ).tr(),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "storesname".tr(),
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
                  "ownername",
                  style: Mystyle.subTitleTextStyle,
                  textAlign: TextAlign.center,
                ).tr(),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "ownername".tr(),
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
                  "adresse",
                  style: Mystyle.subTitleTextStyle,
                  textAlign: TextAlign.center,
                ).tr(),
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "adresse".tr(),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: double.infinity,
              color: Colors.black.withOpacity(.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Mystyle.primarycolo,
                    size: 28,
                  ),
                  Text(
                    "اختر الموقع",
                    style: TextStyle(
                      color: Mystyle.primarycolo,
                      fontSize: 24,
                    ),
                  ),
                ],
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
                    "addtostore",
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
