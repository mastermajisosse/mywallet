import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class MyCardP extends StatefulWidget {
  @override
  _MyCardPState createState() => _MyCardPState();
}

class _MyCardPState extends State<MyCardP> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.96),
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("mycard").tr(),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/addcard');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.add_circle_outline, size: 28),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.credit_card),
                SizedBox(width: SizeConfig.paddingVertical),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("394484984", style: Mystyle.regularTextStyle),
                    Text("dadjdjdta"),
                  ],
                ),
                Spacer(),
                Container(
                  width: 25,
                  height: 25,
                  child: Image.asset("assets/icons/img.jpg"),
                ),
                SizedBox(width: SizeConfig.paddingVertical),
                Icon(Icons.edit),
                SizedBox(width: SizeConfig.paddingVertical),
                Icon(Icons.delete, color: Colors.red),
              ],
            ),
          );
        },
      ),
    );
  }
}
