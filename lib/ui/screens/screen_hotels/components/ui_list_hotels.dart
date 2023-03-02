part of '../screen_hotels.dart';

class ListHotels extends StatelessWidget {
  final List<ApiHotel> hotels;

  const ListHotels({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const PageStorageKey(keyHotelsList),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: hotels.length,
      itemBuilder: (_, index) => _ListCardHotel(
        hotel: hotels[index],
      ),
    );
  }
}

class _ListCardHotel extends StatelessWidget {
  final ApiHotel hotel;

  const _ListCardHotel({
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return UiCard(
      onTap: () => _handleTap(context),
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiImageAsset(
            image: hotel.poster,
            height: 200,
          ),
          UiText(
            text: hotel.name,
            withOverflow: true,
            padding: const EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }

  void _handleTap(BuildContext context) {
    showModalBottomSheet<dynamic>(
      context: context,
      builder: (_) => const UiActionsHotel(),
    );
  }
}
