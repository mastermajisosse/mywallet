import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/models/dummydata.dart';
import 'package:mywallet/uiscreen/home/epindetails_screen.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class EpinScreen extends StatefulWidget {
  @override
  _EpinScreenState createState() => _EpinScreenState();
}

class _EpinScreenState extends State<EpinScreen> {
  List urls = DummyData().urls;
  List names = DummyData().names;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // print(name[0].values);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mystyle.secondrycolo,
        title: Text("epin").tr(),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2.5,
        mainAxisSpacing: 0,
        // shrinkWrap: true,
        children: List.generate(
          urls.length,
          (i) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EpinDetailsScreen(urls[i], names[i])),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: SizeConfig.screenHeight / 7,
                    width: SizeConfig.screenWidth / 2.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                            urls[i],
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(height: 10),
                  Text(
                    names[i],
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
