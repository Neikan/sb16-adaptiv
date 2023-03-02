// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/consts/routes.dart';
import 'package:app_adaptiv/ui/screens/screen_hotels/screen_hotels.dart';
import 'package:app_adaptiv/ui/screens/screen_not_found.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeHotels:
            return const ScreenHotels();

          case routeHouses:
            return const SizedBox();

          default:
            return const ScreenNotFound();
        }
      },
    );
