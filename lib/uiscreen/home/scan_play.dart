import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mywallet/utils/mystyle.dart';
import 'package:mywallet/utils/size_config.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanPlayPage extends StatefulWidget {
  @override
  _ScanPlayPageState createState() => _ScanPlayPageState();
}

class _ScanPlayPageState extends State<ScanPlayPage> {
  String _scanBarcode = 'Unknown';
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var data = EasyLocalizationProvider.of(context).data;
    var height = MediaQuery.of(context).size.height;
    String _scanBarcode = 'Unknown';
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(.93),
        appBar: AppBar(
          backgroundColor: Mystyle.secondrycolo,
          title: Text("pay").tr(),
          centerTitle: true,
        ),
        body: Builder(builder: (BuildContext context) {
          return Container(
              alignment: Alignment.center,
              child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    RaisedButton(
                        onPressed: () => scanBarcodeNormal(),
                        child: Text("Start barcode scan")),
                    SizedBox(height: 20),
                    Text('Scan result : $_scanBarcode\n',
                        style: TextStyle(fontSize: 20))
                  ]));
        }));
  }
}
