import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class StoresP extends StatefulWidget {
  @override
  _StoresPState createState() => _StoresPState();
}

class _StoresPState extends State<StoresP> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("stores").tr(),
          centerTitle: true,
          actions: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/addstores');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(Icons.add_circle_outline, size: 28),
              ),
            ),
          ],
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
            tabs: [Tab(text: 'allstores'.tr()), Tab(text: 'nearstores'.tr())],
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
    return Column(
      children: <Widget>[
        Text("this page require programing"),
      ],
    );
  }

  body2(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("this page require programing"),
      ],
    );
  }
}
