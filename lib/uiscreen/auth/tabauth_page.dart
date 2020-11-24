import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/uiscreen/auth/login_page.dart';
import 'package:mywallet/uiscreen/auth/signup_page.dart';
import 'package:mywallet/utils/mystyle.dart';

class TabAuthPage extends StatefulWidget {
  @override
  _TabAuthPageState createState() => _TabAuthPageState();
}

class _TabAuthPageState extends State<TabAuthPage> {
  bool callApi = true;
  int numb = 30;
  @override
  void initState() {
    super.initState();
  }

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    return SafeArea(
      child: DefaultTabController(
        length: 2,
        // initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "app_name",
                style: Mystyle.titleTextStyle,
              ).tr(),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              indicatorColor: Mystyle.primarycolo,
              labelColor: Mystyle.primarycolo,
              indicatorWeight: 4,
              unselectedLabelColor: Mystyle.secondrycolo.withOpacity(.5),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Mystyle.secondrycolo,
              ),
              tabs: [Tab(text: 'sign_up'.tr()), Tab(text: 'sign_in'.tr())],
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Icon(Icons.language, color: Mystyle.secondrycolo),
                  onTap: () {
                    Navigator.pushNamed(context, '/lang');
                  },
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              SignupPage(),
              LoginPage(),
            ],
          ),
        ),
      ),
    );
  }
}
