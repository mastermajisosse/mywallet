import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class HigherEducationPage extends StatefulWidget {
  @override
  _HigherEducationPageState createState() => _HigherEducationPageState();
}

class _HigherEducationPageState extends State<HigherEducationPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("Highere").tr(),
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
            tabs: [Tab(text: 'sudanes'.tr()), Tab(text: 'arab'.tr())],
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
                "seatn",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: TextField(
                decoration: InputDecoration(
                  labelText: "seatn".tr(),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {}, // => phoneNumber = value,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                "courseid",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: DropdownButton(
                icon: Icon(null),
                items: [
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                ],
                onChanged: (value) {}, // => phoneNumber = value,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                "admissiont",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: DropdownButton(
                icon: Icon(null),
                items: [
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                ],
                onChanged: (value) {}, // => phoneNumber = value,
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
    );
  }

  body2(BuildContext context) {
    return ListView(
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
                "name",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: TextField(
                decoration: InputDecoration(
                  labelText: "name".tr(),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.text,
                onChanged: (value) {}, // => phoneNumber = value,
              ),
            ),
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
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                "courseid",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: DropdownButton(
                icon: Icon(null),
                items: [
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                ],
                onChanged: (value) {}, // => phoneNumber = value,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                "admissiont",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: DropdownButton(
                icon: Icon(null),
                items: [
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                  DropdownMenuItem(
                    child: Text("data"),
                  ),
                ],
                onChanged: (value) {}, // => phoneNumber = value,
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
    );
  }
}
