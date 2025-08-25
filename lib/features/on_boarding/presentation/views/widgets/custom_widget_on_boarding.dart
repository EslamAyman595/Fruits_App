import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomWidgetOnBoarding extends StatelessWidget {
  const CustomWidgetOnBoarding(
      {Key? key,required this.title, required this.subTitle,
      required this.assetName,
      required this.backgroundImage})
      : super(key: key);
final Widget title;
final String subTitle;
  final String assetName, backgroundImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
                color: Colors.amber,
              )),
              Positioned(
                  right: 0,
                  left: 0,
                  bottom:-2,
                  child: SvgPicture.asset(
                    assetName,
                    fit: BoxFit.fill,
                  )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text('تخط'),
              ),
            ],
          ),
        
        ),
     const SizedBox(height: 60,),
      title,
     const SizedBox(height: 24,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(subTitle,textAlign: TextAlign.center)),
      ],
    );
  }
}
