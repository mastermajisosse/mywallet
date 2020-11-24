import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;

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
        children: <Widget>[
          SizedBox(height: SizeConfig.screenHeight / 20),
          textinput(txt: 'name'.tr()),
          textinput(txt: 'phone'.tr()),
          // pass(txt: 'password'.tr()),
          // pass(txt: 'repassword'.tr()),
          SizedBox(height: SizeConfig.paddingHorizontal * 5),
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
                    "sign_up",
                    style: Mystyle.regularTextStyleW,
                  ).tr(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding pass({txt}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.paddingHorizontal * 5,
        vertical: SizeConfig.paddingVertical,
      ),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: TextInputType.text,
        decoration: Mystyle.inputDecoration(
            hint: txt,
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
            return "*المرجو ادخال كلمة المرور";
          } else if (value.length < 5) {
            return 'كلمة المرور مكونة من اكتر من 4 احرف';
          }
          return null;
        },
      ),
    );
  }

  Padding textinput({txt}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.paddingHorizontal * 5,
        vertical: SizeConfig.paddingVertical,
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
        decoration: Mystyle.inputDecoration(hint: txt),
        validator: (String value) {
          return null;
        },
      ),
    );
  }
}
