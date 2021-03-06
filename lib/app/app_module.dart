import 'package:quemcontrato_clone/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:quemcontrato_clone/app/app_widget.dart';
import 'package:quemcontrato_clone/app/modules/home/home_module.dart';
import 'package:quemcontrato_clone/app/modules/login/login_module.dart';
import 'package:quemcontrato_clone/app/modules/splash_screen/splash_screen_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/SplashScreen', module: SplashScreenModule()),
        Router('/Home', module: HomeModule()),
        Router('/Login', module: LoginModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
