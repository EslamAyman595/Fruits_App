import 'package:app_fruit/core/utils/app_images.dart';
import 'package:app_fruit/core/utils/styles.dart';
import 'package:app_fruit/features/on_boarding/presentation/views/widgets/custom_widget_on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children:const [
        CustomWidgetOnBoarding(
           isVisible: true,
          // isVisible: pageController.hasClients
          //     ? pageController.page!.round() == 0
          //     : true,
          assetName: Assets.imagesOnboarding1,
          backgroundImage: Assets.imagesPageView1Backgroundimage,
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'مرحبًا بك في ',
                  style: Styles.textStyle23,
                ),
                TextSpan(
                  text: 'Fruit',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
                TextSpan(
                  text: 'HUB',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.yellow),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),

          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        CustomWidgetOnBoarding(
          isVisible: false,
          
          // isVisible: pageController.hasClients
          //     ? pageController.page!.round() == 0
          //     : false,

          assetName: Assets.imagesOnboarding2,
          backgroundImage: Assets.imagesPageView2Backgroundimage,
          title:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'ابحث وتسوق',
              style: Styles.textStyle23,
            ),
         
          ]),
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        )
      ],
    );
  }
}
