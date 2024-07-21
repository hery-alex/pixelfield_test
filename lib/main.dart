
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixelfield_test/config/app_theme.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/routes/routes_configuration.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  runApp(const PixelfieldTest());
}

class PixelfieldTest extends StatelessWidget {
  const PixelfieldTest({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'PixelfieldTest',
      theme: PixelFieldTheme.primaryThemeData,
      initialRoute: '/',
      onGenerateRoute: (settings) => RoutesConfiguration.onGenerateRoute(settings),
    );
  }
}


