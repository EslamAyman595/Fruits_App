import 'package:app_fruit/core/utils/app_images.dart';
import 'package:app_fruit/features/on_boarding/presentation/views/widgets/custom_widget_on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
const OnBoardingPageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return PageView(
      children: [
        CustomWidgetOnBoarding(
          assetName: Assets.imagesOnboarding1,
           backgroundImage: Assets.imagesPageView1Backgroundimage,
           title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('مرحبًا بك في '),
            Text('Fruit'),
            Text('HUB'),
            ]),
            subTitle:'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
           ),
             CustomWidgetOnBoarding(
          assetName: Assets.imagesOnboarding2,
           backgroundImage: Assets.imagesPageView2Backgroundimage,
           title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('ابحث وتسوق'),
            // Text('Fruit'),
            // Text('HUB'),
            ]),
            subTitle:'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
           )
      ],
    );
    
  }
}