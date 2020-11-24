import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String _radioValue;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    setState(() {
      _radioValue = Localizations.localeOf(context).languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
        data: data,
        child: Scaffold(
          // backgroundColor: Colors.,
          appBar: AppBar(
            backgroundColor: Mystyle.secondrycolo,
            title: Text('language').tr(),
            centerTitle: true,
            actions: <Widget>[
              FlatButton(
                child: Text("save", style: Mystyle.regularTextStyleW).tr(),
                color: Colors.white10,
                onPressed: () {
                  this.setState(() {
                    if (_radioValue == 'ar') {
                      data.changeLocale(locale: Locale("ar", "MA"));
                    } else {
                      data.changeLocale(locale: Locale('en', 'US'));
                    }
                  });
                },
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.paddingHorizontal * 2,
                    right: SizeConfig.paddingHorizontal * 2,
                    top: 5,
                  ),
                  child: ListTile(
                    title: Text(
                      'arabic',
                      style: Mystyle.subTitleTextStyle,
                    ).tr(),
                    trailing: Radio(
                      value: 'ar',
                      groupValue: _radioValue,
                      onChanged: (val) {
                        print(val);
                        this.setState(() {
                          _radioValue = val;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 0,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.paddingHorizontal * 2,
                    right: SizeConfig.paddingHorizontal * 2,
                  ),
                  child: ListTile(
                    title: Text(
                      'english',
                      style: Mystyle.subTitleTextStyle,
                    ).tr(),
                    trailing: Radio(
                      value: 'en',
                      groupValue: _radioValue,
                      onChanged: (val) {
                        print(val);
                        this.setState(() {
                          _radioValue = val;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 50),
            ],
          ),
        ));
  }
}
