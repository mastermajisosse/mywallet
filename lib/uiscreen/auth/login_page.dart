import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    // print(Localizations.localeOf(context).languageCode);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        key: _scaffoldKey,
        children: <Widget>[
          myform(context),
        ],
      ),
    );
  }

  Form myform(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: SizeConfig.screenHeight / 8),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.paddingHorizontal * 5,
            ),
            child: Text(
              "welcomtoapp",
              style: Mystyle.titleTextStyle,
            ).tr(),
          ),
          SizedBox(height: SizeConfig.screenHeight / 50),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.paddingHorizontal * 5,
            ),
            child: Text(
              "sign_in",
              style: Mystyle.subTitleTextStyle,
            ).tr(),
          ),
          SizedBox(height: SizeConfig.screenHeight / 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.paddingHorizontal * 5,
              vertical: SizeConfig.paddingVertical,
            ),
            child: TextFormField(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
              decoration: Mystyle.inputDecoration(hint: 'phone'.tr()),
              validator: (String value) {
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.paddingHorizontal * 5,
              vertical: SizeConfig.paddingVertical,
            ),
            child: TextFormField(
              obscureText: obscure,
              keyboardType: TextInputType.text,
              decoration: Mystyle.inputDecoration(
                  hint: 'pin'.tr(),
                  icon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    child: Icon(Icons.remove_red_eye),
                  )),
              validator: (String value) {
                if (value.isEmpty) {
                  return "*forget_password".tr();
                } else if (value.length < 5) {
                  return 'كلمة المرور مكونة من اكتر من 4 احرف';
                }
                return null;
              },
            ),
          ),
          // Container(
          //   alignment: Alignment.topLeft,
          //   padding: EdgeInsets.symmetric(
          //     horizontal: SizeConfig.paddingHorizontal * 5,
          //     vertical: SizeConfig.paddingVertical,
          //   ),
          //   child: Text(
          //     "forget_password",
          //     style: Mystyle.subTextTextStyle,
          //   ).tr(),
          // ),
          SizedBox(height: SizeConfig.screenHeight / 30),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.paddingHorizontal * 5,
            ),
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight / 12,
              color: Mystyle.primarycolo,
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/tabhome'),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Center(
                  child: Text(
                    "sign_in",
                    style: Mystyle.regularTextStyleW,
                  ).tr(),
                ),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight / 20),
          //   Container(
          //     alignment: Alignment.bottomCenter,
          //     padding: EdgeInsets.symmetric(
          //       vertical: SizeConfig.paddingVertical / 2,
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[
          //         Text(
          //           "sign_up",
          //           style: TextStyle(
          //             color: Mystyle.primarycolo,
          //             fontFamily: Mystyle.primaryfont,
          //             fontSize: 18,
          //           ),
          //         ).tr(),
          //         SizedBox(width: 10),
          //         Text(
          //           "مستخدم جديد ؟",
          //           style: Mystyle.subTextTextStyle,
          //         ),
          //       ],
          //     ),
          //   ),
        ],
      ),
    );
  }
}
