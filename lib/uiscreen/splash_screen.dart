import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  static const int _totalPages = 3;
  int pagenum = 0;
  SplashScreen({this.pagenum});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController controller = PageController(initialPage: 0);

  int _pageNum = 0;

  List _pageIndicator() {
    List<Widget> indicator = List();
    for (int i = 0; i < SplashScreen._totalPages; i++) {
      indicator.add(i == _pageNum ? _indicator(true) : _indicator(false));
    }
    return indicator;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : Colors.white.withOpacity(.5),
      ),
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.paddingHorizontal),
      height: 16.0,
      width: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      backgroundColor: Color(0xFF000843),
      body: Stack(
        children: <Widget>[
          PageView(
            controller: controller,
            onPageChanged: (int page) {
              setState(() {
                _pageNum = page;
              });
            },
            children: <Widget>[
              Container(
                color: Mystyle.primarycolo,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/icons/payment.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "spltitle1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ).tr(),
                          SizedBox(height: 10),
                          Text(
                            "spldesc1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ).tr(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 6.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, '/tabauth');
                            },
                            child: Text(
                              "skip",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ).tr(),
                          ),
                          InkWell(
                            onTap: () {
                              controller.nextPage(
                                curve: Curves.ease,
                                duration: Duration(microseconds: 500),
                              );
                            },
                            child: Text(
                              "next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ).tr(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // -----------
              // -----------
              // -----------
              Container(
                color: Mystyle.primarycolo,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/icons/savemoney.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "spltitle2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ).tr(),
                          SizedBox(height: 10),
                          Text(
                            "spldesc2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ).tr(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 6.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, '/tabauth');
                            },
                            child: Text(
                              "skip",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ).tr(),
                          ),
                          InkWell(
                            onTap: () {
                              controller.nextPage(
                                curve: Curves.ease,
                                duration: Duration(microseconds: 500),
                              );
                            },
                            child: Text(
                              "next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ).tr(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // -----------
              // -----------
              // -----------
              Container(
                color: Mystyle.primarycolo,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/icons/fingerprint.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "spltitle3",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ).tr(),
                          SizedBox(height: 10),
                          Text(
                            "spldesc3",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ).tr(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 6.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(),
                          InkWell(
                            onTap: () {
                              if (true) {
                                Navigator.pushReplacementNamed(
                                    context, '/tabauth');
                              } else {}
                            },
                            child: Text(
                              "next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ).tr(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: _pageIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
