// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:popover/popover.dart';

// Project imports:
import 'package:app_adaptiv/consts/keys.dart';
import 'package:app_adaptiv/consts/translations.dart';
import 'package:app_adaptiv/consts/urls.dart';
import 'package:app_adaptiv/models/api_hotel.dart';
import 'package:app_adaptiv/services/service_http.dart';
import 'package:app_adaptiv/ui/components/ui_card.dart';
import 'package:app_adaptiv/ui/components/ui_error_data.dart';
import 'package:app_adaptiv/ui/components/ui_image_asset.dart';
import 'package:app_adaptiv/ui/components/ui_loader.dart';
import 'package:app_adaptiv/ui/components/ui_text.dart';
import 'package:app_adaptiv/ui/components/ui_wrapper.dart';
import 'package:app_adaptiv/utils/common.dart';

part 'components/ui_view_hotels.dart';
part 'components/ui_actions_hotel.dart';
part 'components/ui_grid_hotels.dart';
part 'components/ui_list_hotels.dart';

class ScreenHotels extends StatelessWidget {
  const ScreenHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return UiWrapper(
      title: labelHotels,
      child: FutureBuilder(
        future: ServiceHttp.instance.get(urlHotels),
        builder: (BuildContext _, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              String message = (snapshot.error as DioError).message;

              return UiErrorData(text: message);
            }

            final Response<dynamic> response = snapshot.data;

            List<ApiHotel> hotels = List<dynamic>.from(response.data)
                .map((hotel) => ApiHotel.fromJson(hotel))
                .toList();

            return UiViewHotels(hotels: hotels);
          }

          return const UiLoader();
        },
      ),
    );
  }
}
