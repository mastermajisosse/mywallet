import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class GetBalancePage extends StatefulWidget {
  @override
  _GetBalancePageState createState() => _GetBalancePageState();
}

class _GetBalancePageState extends State<GetBalancePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("getbalance").tr(),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.white.withOpacity(.5),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            tabs: [
              Tab(text: 'walletbalance'.tr()),
              Tab(text: 'cardbalance'.tr())
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            body1(context),
            body2(context),
          ],
        ),
      ),
    );
  }

  body1(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: SizeConfig.paddingHorizontal * 7),
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
                    style: Mystyle.subTitleTextStyle,
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
                  "getbalance",
                  style: Mystyle.regularTextStyleW,
                ).tr(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  body2(BuildContext context) {
    return ListView(
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
                  "getbalance",
                  style: Mystyle.regularTextStyleW,
                ).tr(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
