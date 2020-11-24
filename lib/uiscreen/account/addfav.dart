import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class AddFav extends StatefulWidget {
  @override
  _AddFavState createState() => _AddFavState();
}

class _AddFavState extends State<AddFav> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("addtofav").tr(),
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
              Tab(text: 'phone'.tr()),
              Tab(text: 'card'.tr()),
              Tab(text: 'meterNo'.tr())
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            body1(context),
            body2(context),
            body3(context),
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
              trailing: Icon(Icons.person, color: Mystyle.primarycolo),
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
                  "addtofav",
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
                "card",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: TextField(
                decoration: InputDecoration(
                  labelText: "card".tr(),
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
                  labelText: "conferm".tr() + " " + "cardno".tr(),
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
                  "addtofav",
                  style: Mystyle.regularTextStyleW,
                ).tr(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  body3(BuildContext context) {
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
                "meterNo",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: TextField(
                decoration: InputDecoration(
                  labelText: "meterNo".tr(),
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
                "meterNo",
                style: Mystyle.subTitleTextStyle,
                textAlign: TextAlign.center,
              ).tr(),
              title: TextField(
                decoration: InputDecoration(
                  labelText: "conferm".tr() + " " + "meterNo".tr(),
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
                  "addtofav",
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
