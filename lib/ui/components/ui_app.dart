// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/consts/routes.dart';
import 'package:app_adaptiv/utils/routes.dart';

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: routeHotels,
    );
  }
}
