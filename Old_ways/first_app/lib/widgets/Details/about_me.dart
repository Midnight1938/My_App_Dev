import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class InfoMe extends StatelessWidget {
  const InfoMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlign =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;

        double descSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;
        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is Something About me',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: titleSize),
                textAlign: textAlign,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'I am Human!!\nI can do things\nThis is the first \'thing\' I built with flutter',
                style: TextStyle(fontSize: descSize, height: 1.7),
                textAlign: textAlign,
              )
            ],
          ),
        );
      },
    );
  }
}
