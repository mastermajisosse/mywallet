import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class LastTPage extends StatefulWidget {
  @override
  _LastTPageState createState() => _LastTPageState();
}

class _LastTPageState extends State<LastTPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("LastT").tr(),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                index == 0 ? SizedBox(height: 10) : SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("الكهرباء"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("12 ابريل ، 15 مارس"),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 5),
                        Text("wallet").tr(),
                        SizedBox(width: 5),
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(""),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}
