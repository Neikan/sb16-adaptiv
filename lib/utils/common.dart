// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/consts/common.dart';

bool checkIsMobileView(BuildContext context) =>
    MediaQuery.of(context).size.width <= widthMobileMax;
