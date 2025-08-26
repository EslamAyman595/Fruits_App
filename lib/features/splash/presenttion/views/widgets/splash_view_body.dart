import 'package:app_fruit/constants.dart';
import 'package:app_fruit/core/services/shared_preferences_singleton.dart';
import 'package:app_fruit/core/utils/app_images.dart';
import 'package:app_fruit/features/auth/presentation/views/login_view.dart';
import 'package:app_fruit/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashButton,
        fit: BoxFit.fill,
        ),
      ],
    );
  }
  
  void excuteNavigation() {
    bool isOnBoardingViewSeen = SharedPreferencesSingleton.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3),(){
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
}else{
  Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
}
    });
  }
}
