import 'package:app_fruit/core/helper_functions/on_generate_route.dart';
import 'package:app_fruit/core/services/shared_preferences_singleton.dart';
import 'package:app_fruit/core/utils/app_colors.dart';
import 'package:app_fruit/features/splash/presenttion/views/splash_view.dart';
import 'package:app_fruit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await  SharedPreferencesSingleton.init();
  runApp(const AppFruit());
}

class AppFruit extends StatelessWidget {
const AppFruit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
    
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        fontFamily: 'Cairo',
      ),
      localizationsDelegates:const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
