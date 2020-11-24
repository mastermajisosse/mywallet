import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class FavoriteP extends StatefulWidget {
  @override
  _FavoritePState createState() => _FavoritePState();
}

class _FavoritePState extends State<FavoriteP> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.96),
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("favourite").tr(),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/addfav');
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
