part of '../screen_hotels.dart';

// Widgets
class UiActionsHotel extends StatelessWidget {
  const UiActionsHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: _hotelActions.length,
      itemBuilder: (_, index) => _UiHotelAction(
        actionKey: _hotelActions[index],
        onTap: () {},
      ),
    );
  }
}

class _UiHotelAction extends StatelessWidget {
  final String actionKey;
  final VoidCallback onTap;

  const _UiHotelAction({
    required this.actionKey,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(_hotelActionsIcons[actionKey], color: Colors.green),
          UiText(
            padding: const EdgeInsets.only(left: 16.0),
            text: labelsHotelActions[actionKey]!,
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}

// Consts
const _hotelActions = <String>[
  keyActionGoTo,
  keyActionAddToFavorite,
  keyActionRate,
];

const _hotelActionsIcons = <String, IconData>{
  keyActionGoTo: Icons.arrow_forward_ios,
  keyActionAddToFavorite: Icons.favorite_outlined,
  keyActionRate: Icons.star,
};
