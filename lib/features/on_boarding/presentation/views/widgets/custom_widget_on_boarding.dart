import 'package:app_fruit/constants.dart';
import 'package:app_fruit/core/services/shared_preferences_singleton.dart';
import 'package:app_fruit/core/utils/styles.dart';
import 'package:app_fruit/features/auth/login/presentation/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomWidgetOnBoarding extends StatelessWidget {
  const CustomWidgetOnBoarding(
      {Key? key,required this.title, required this.subTitle,
      required this.assetName,
      required this.backgroundImage, required this.isVisible})
      : super(key: key);
final Widget title;
final String subTitle;
  final String assetName, backgroundImage;
  final bool  isVisible;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                )),
                Positioned(
                    right: 0,
                    left: 0,
                    bottom:-2,
                    child: SvgPicture.asset(
                      assetName,
                      fit: BoxFit.fill,
                    )),
                Visibility(
                  visible: isVisible,
                  child: GestureDetector(
                    onTap: () {
                      SharedPreferencesSingleton.setBool(kIsOnBoardingViewSeen, true);
                      Navigator.of( context)
                          .pushReplacementNamed(LoginView.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:  Text('تخط',style: Styles.textStyle13.copyWith(fontWeight: FontWeight.w400),),
                    ),
                  ),
                ),
              ],
            ),
          
          ),
       const SizedBox(height: 60,),
        title,
       const SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(subTitle,textAlign: TextAlign.center,style: Styles.textStyle13,)),
        ],
      ),
    );
  }
}
