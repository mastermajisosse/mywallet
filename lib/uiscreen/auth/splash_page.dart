import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1)).then((_) {
      Navigator.pushReplacementNamed(context, '/splash');
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
        backgroundColor: Mystyle.primarycolo,
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "مرحبا بكم في ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "app_name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 54,
                fontFamily: Mystyle.secondryfont,
              ),
            ).tr(),
          ],
        )));
  }
}
