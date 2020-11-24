import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/models/dummydata.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class EpinDetailsScreen extends StatefulWidget {
  String urls;
  String names;
  EpinDetailsScreen(this.urls, this.names);
  @override
  _EpinDetailsScreenState createState() => _EpinDetailsScreenState();
}

class _EpinDetailsScreenState extends State<EpinDetailsScreen> {
  List types = [
    "USD Razer 100 Gold",
    "USD Razer 50 Gold",
    "USD Razer 50 Gold",
    "USD Razer 10 Gold",
    "USD Razer 5 Gold",
  ];
  List money = ["100.69", "50.35", "20.14", "10.07", "5.03"];
  List numb = [0, 0, 0, 0, 0];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(.98),
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("epin").tr(),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: SizeConfig.screenHeight / 5,
              width: double.infinity,
              child: Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.grey[300],
                      height: SizeConfig.screenHeight / 7,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 120,
                          child: Text(
                            widget.names,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Container(
                          height: SizeConfig.screenHeight / 6,
                          width: SizeConfig.screenWidth / 1.8,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                image: NetworkImage(
                                  widget.urls,
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight / 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.account_balance),
                            SizedBox(width: 5),
                            Text(types[i]),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.attach_money),
                            SizedBox(width: 5),
                            Text(money[i]),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    numb[i]++;
                                  });
                                },
                                child: SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(numb[i].toString()),
                            SizedBox(width: 20),
                            Material(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                              child: InkWell(
                                onTap: () {
                                  if (numb[i] > 0) {
                                    setState(() {
                                      numb[i]--;
                                    });
                                  }
                                },
                                child: SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight / 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                    color: Colors.black,
                    alignment: Alignment.center,
                    width: 80,
                    height: 40,
                    child: Text(
                      "Proceed",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    width: 80,
                    height: 40,
                    child: Text("Cancel"),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight / 20),
          ],
        ));
  }
}
