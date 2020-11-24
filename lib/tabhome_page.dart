import 'package:easy_localization/easy_localization.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywallet/uiscreen/account/LastT.dart';
import 'package:mywallet/uiscreen/account/account_page.dart';
import 'package:mywallet/uiscreen/account/agents.dart';
import 'package:mywallet/uiscreen/auth/login_page.dart';
import 'package:mywallet/uiscreen/auth/signup_page.dart';
import 'package:mywallet/uiscreen/home/home_page.dart';
import 'package:mywallet/uiscreen/home/scan_play.dart';
import 'package:mywallet/uiscreen/transfer/transfer_page.dart';
import 'package:mywallet/utils/mystyle.dart';

class TabHomePage extends StatefulWidget {
  @override
  _TabHomePageState createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage> {
  bool callApi = true;
  int numb = 30;
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List _widgetOptions = [
    HomePage(),
    LastTPage(),
    ScanPlayPage(),
    AgentsP(),
    AccountPage(),
  ];

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            // showSelectedItemShadow: true,
            barBackgroundColor: Mystyle.secondrycolo,
            selectedItemBorderColor: Mystyle.secondrycolo,
            selectedItemBackgroundColor: Colors.white,
            selectedItemIconColor: Mystyle.secondrycolo,
            selectedItemLabelColor: Colors.transparent,
            unselectedItemIconColor: Colors.white.withOpacity(.5),
            unselectedItemLabelColor: Colors.white.withOpacity(.5),
          ),
          selectedIndex: _selectedIndex,
          onSelectTab: _onItemTapped,
          items: [
            FFNavigationBarItem(
              iconData: Icons.home,
              label: 'app_name'.tr(),
            ),
            FFNavigationBarItem(
              iconData: FontAwesomeIcons.exchangeAlt,
              label: 'transaction'.tr(),
            ),
            FFNavigationBarItem(
              iconData: FontAwesomeIcons.qrcode,
              label: 'scan'.tr(),
            ),
            FFNavigationBarItem(
              iconData: Icons.place,
              label: 'loc'.tr(),
            ),
            FFNavigationBarItem(
              iconData: Icons.people,
              label: 'account'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
