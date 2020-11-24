import 'package:flutter/material.dart';
import 'package:mywallet/tabhome_page.dart';
import 'package:mywallet/uiscreen/account/GCI.dart';
import 'package:mywallet/uiscreen/account/LBC.dart';
import 'package:mywallet/uiscreen/account/LastT.dart';
import 'package:mywallet/uiscreen/account/addcards.dart';
import 'package:mywallet/uiscreen/account/addfav.dart';
import 'package:mywallet/uiscreen/account/addstores.dart';
import 'package:mywallet/uiscreen/account/agents.dart';
import 'package:mywallet/uiscreen/account/cashout.dart';
import 'package:mywallet/uiscreen/account/favourite.dart';
import 'package:mywallet/uiscreen/account/getbalance.dart';
import 'package:mywallet/uiscreen/account/mycard.dart';
import 'package:mywallet/uiscreen/account/setting.dart';
import 'package:mywallet/uiscreen/account/setting/about.dart';
import 'package:mywallet/uiscreen/account/setting/changeIPIN.dart';
import 'package:mywallet/uiscreen/account/setting/changePIN.dart';
import 'package:mywallet/uiscreen/account/setting/profile_page.dart';
import 'package:mywallet/uiscreen/account/stores.dart';
import 'package:mywallet/uiscreen/auth/language_page.dart';
import 'package:mywallet/uiscreen/auth/login_page.dart';
import 'package:mywallet/uiscreen/auth/signup_page.dart';
import 'package:mywallet/uiscreen/auth/splash_page.dart';
import 'package:mywallet/uiscreen/auth/tabauth_page.dart';
import 'package:mywallet/uiscreen/home/customs.dart';
import 'package:mywallet/uiscreen/home/e15.dart';
import 'package:mywallet/uiscreen/home/electrecitycard.dart';
import 'package:mywallet/uiscreen/home/electrecitywallet.dart';
import 'package:mywallet/uiscreen/home/epin_screen.dart';
import 'package:mywallet/uiscreen/home/epindetails_screen.dart';
import 'package:mywallet/uiscreen/home/higher_education.dart';
import 'package:mywallet/uiscreen/home/home_page.dart';
import 'package:mywallet/uiscreen/home/mobile_billcard.dart';
import 'package:mywallet/uiscreen/home/mobile_billwallet.dart';
import 'package:mywallet/uiscreen/home/mobile_topupcard.dart';
import 'package:mywallet/uiscreen/home/mobile_topupwallet.dart';
import 'package:mywallet/uiscreen/home/receive_money.dart';
import 'package:mywallet/uiscreen/home/scan_play.dart';
import 'package:mywallet/uiscreen/splash_screen.dart';
import 'package:mywallet/uiscreen/transfer/foranother_page.dart';
import 'package:mywallet/uiscreen/transfer/forbankcard.dart';
import 'package:mywallet/uiscreen/transfer/formine.dart';
import 'package:mywallet/uiscreen/transfer/forothercard.dart';
import 'package:mywallet/uiscreen/transfer/transfer_page.dart';

class RoutGenerator {
  static Route<dynamic> generateRout(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupPage());
      case '/':
        return MaterialPageRoute(builder: (_) => Splash());
      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/tabauth':
        return MaterialPageRoute(builder: (_) => TabAuthPage());
      case '/tabhome':
        return MaterialPageRoute(builder: (_) => TabHomePage());
      case '/lang':
        return MaterialPageRoute(builder: (_) => LanguagePage());
      //home pages
      //home pages
      //home pages
      case '/homepage':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/customs':
        return MaterialPageRoute(builder: (_) => CustomsPage());
      case '/e15':
        return MaterialPageRoute(builder: (_) => E15Page());
      case '/highere':
        return MaterialPageRoute(builder: (_) => HigherEducationPage());
      case '/electrecityw':
        return MaterialPageRoute(builder: (_) => ElectrecityPage());
      case '/mobilebillw':
        return MaterialPageRoute(builder: (_) => MobileBillPage());
      case '/mobiletopupw':
        return MaterialPageRoute(builder: (_) => MobileTopPage());
      case '/electrecityc':
        return MaterialPageRoute(builder: (_) => ElectrrcityCard());
      case '/mobilebillc':
        return MaterialPageRoute(builder: (_) => MobileBillCardPage());
      case '/mobiletopupc':
        return MaterialPageRoute(builder: (_) => MobileTopCardPage());
      case '/receivemoney':
        return MaterialPageRoute(builder: (_) => ReceiveMoneyPage());
      case '/scanplay':
        return MaterialPageRoute(builder: (_) => ScanPlayPage());
      case '/epin':
        return MaterialPageRoute(builder: (_) => EpinScreen());
      //Transfer
      //Transfer
      //Transfer
      case '/transferpage':
        return MaterialPageRoute(builder: (_) => TransferPage());
      case '/forothercard':
        return MaterialPageRoute(builder: (_) => ForOtherCart());
      case '/formine':
        return MaterialPageRoute(builder: (_) => ForMine());
      case '/forbankcard':
        return MaterialPageRoute(builder: (_) => ForBankCard());
      case '/foranother':
        return MaterialPageRoute(builder: (_) => ForAnother());
      //account
      //account AddToStores
      //account
      case '/addstores':
        return MaterialPageRoute(builder: (_) => AddToStores());
      case '/addfav':
        return MaterialPageRoute(builder: (_) => AddFav());
      case '/addcard':
        return MaterialPageRoute(builder: (_) => AddCards());
      case '/agents':
        return MaterialPageRoute(builder: (_) => AgentsP());
      case '/cashout':
        return MaterialPageRoute(builder: (_) => CashOutP());
      case '/favourite':
        return MaterialPageRoute(builder: (_) => FavoriteP());
      case '/gci':
        return MaterialPageRoute(builder: (_) => GCIPage());
      case '/getbalance':
        return MaterialPageRoute(builder: (_) => GetBalancePage());
      case '/lastt':
        return MaterialPageRoute(builder: (_) => LastTPage());
      case '/lbc':
        return MaterialPageRoute(builder: (_) => LBCPage());
      case '/mycard':
        return MaterialPageRoute(builder: (_) => MyCardP());
      case '/setting':
        return MaterialPageRoute(builder: (_) => SettingP());
      case '/stores':
        return MaterialPageRoute(builder: (_) => StoresP());
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());
      case '/ipinch':
        return MaterialPageRoute(builder: (_) => ChangeIPIN());
      case '/pinch':
        return MaterialPageRoute(builder: (_) => ChangePIN());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ErrorRoute'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
