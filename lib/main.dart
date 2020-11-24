import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/route_genetator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(EasyLocalization(child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Tajawal'),
        supportedLocales: [
          Locale('ar', 'MA'),
          Locale('en', 'US'),
        ],
        localizationsDelegates: [
          EasyLocalizationDelegate(locale: data.locale, path: 'i18n'),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: data.locale,
        initialRoute: '/',
        onGenerateRoute: RoutGenerator.generateRout,
        // home: TabHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
