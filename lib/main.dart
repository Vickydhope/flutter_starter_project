import 'dart:async';

// import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_project/app.dart';
import 'package:flutter_starter_project/config/base_url_config.dart';
import 'package:flutter_starter_project/config/flavor_config.dart';
import 'package:flutter_starter_project/core/util/constant_value.dart';
import 'package:flutter_starter_project/core/di/injection.dart';

// import 'package:flutter_starter_project/firebase_options.dart';
// import 'package:flutter_starter_project/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();


  final constantColor = ConstantColor();
  final baseUrlConfig = BaseUrlConfig();
/*  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  // await di.init();
  FlavorConfig(
    flavor: Flavor.production,
    colorPrimary: constantColor.primaryColor500,
    colorAccent: constantColor.accentColor,
    colorPrimaryDark: constantColor.primaryColor900,
    colorPrimaryLight: constantColor.primaryColor50,
    values: FlavorValues(
      baseUrlNewsEndpoint: baseUrlConfig.baseUrlNewsProduction +
          baseUrlConfig.prefixNewsEndpointV2,
    ),
  );
  configureDependencies();
  runZonedGuarded(
    () {
      runApp(
          /*EasyLocalization(
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('id', 'ID'),
          ],
          path: 'assets/translations',
          child: const App(),
        ),*/
          const App());
    },
    (error, stacktrace) {
      debugPrint('runZonedGuarded: Caught error in my root zone.');
      debugPrint('stacktrace: $stacktrace');
    },
  );
}
