import 'package:app_fruit/core/helper_functions/on_generate_route.dart';
import 'package:app_fruit/features/splash/presenttion/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppFruit());
}

class AppFruit extends StatelessWidget {
const AppFruit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
