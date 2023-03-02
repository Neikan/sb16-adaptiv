// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/consts/routes.dart';
import 'package:app_adaptiv/consts/translations.dart';
import 'package:app_adaptiv/ui/styles/text.dart';

// Widgets
class UiMenu extends StatelessWidget {
  const UiMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _widthMenu,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: _menuItems.length,
        itemBuilder: (_, index) => _UiMenuListTile(
          item: _menuItems[index],
        ),
      ),
    );
  }
}

class _UiMenuListTile extends StatelessWidget {
  final String item;

  const _UiMenuListTile({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;

    return ListTile(
      leading: Icon(_menuIcons[item], color: Colors.green),
      title: Text(
        _labels[item]!,
        style: getBaseTextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      tileColor: currentRoute == item ? Colors.green.shade50 : null,
    );
  }
}

// Consts
const double _widthMenu = 250.0;

const _menuItems = <String>[
  routeHotels,
  routeHouses,
];

const _menuIcons = <String, IconData>{
  routeHotels: Icons.hotel,
  routeHouses: Icons.home,
};

const _labels = <String, String>{
  routeHotels: labelHotels,
  routeHouses: labelHouses,
};
