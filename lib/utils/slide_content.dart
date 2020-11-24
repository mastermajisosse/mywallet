import 'package:flutter/material.dart';
import 'package:mywallet/utils/size_config.dart';
import 'package:mywallet/utils/style.dart';

class SlideContent extends StatelessWidget {
  String title, subtitle, img;
  SlideContent(this.img, this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.paddingVertical,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 250.0,
            width: 250.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  img,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.paddingHorizontal * 4.5,
            ),
            child: Text(
              title,
              style: Style.slideTitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight / 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.paddingHorizontal * 7.5,
            ),
            child: Text(
              subtitle,
              style: Style.slideSubtitleStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
