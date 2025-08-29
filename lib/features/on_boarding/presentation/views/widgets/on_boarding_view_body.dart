import 'package:app_fruit/constants.dart';
import 'package:app_fruit/core/services/shared_preferences_singleton.dart';
import 'package:app_fruit/core/utils/app_colors.dart';
import 'package:app_fruit/core/utils/styles.dart';
import 'package:app_fruit/core/widgets/custom_button.dart';
import 'package:app_fruit/features/auth/login/presentation/view/login_view.dart';
import 'package:app_fruit/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
   pageController = PageController();
   pageController.addListener(() { 
    // if (pageController.hasClients && pageController.page != null) {
    // setState(() {
    //   currentPage = pageController.page!.round();
    // });
      setState(() {
        currentPage = pageController.page!.round();
      });
   } );
    super.initState();
  }
  dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Expanded(child: OnBoardingPageView(
        
          pageController: pageController,
        )),
        DotsIndicator(
          position: currentPage.toDouble(),
          dotsCount: 2,
        // position: 0,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage==1?AppColors.primaryColor:
            AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
       const   SizedBox(
          height: 10,
        ),
        Visibility(
          maintainAnimation:true ,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorzontalPadding),
            child: CustomButton(
              text: 'ابدأ الآن',
              onPressed: () {
                      SharedPreferencesSingleton.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of( context)
                          .pushReplacementNamed(LoginView.routeName);
              },
              style: Styles.textStyle16,
            ),
          ),
        ),
       const  SizedBox(
          height: 20,
        )
      ],
    );
  }
}
