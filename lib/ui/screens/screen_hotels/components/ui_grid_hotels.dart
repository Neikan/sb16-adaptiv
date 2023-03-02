part of '../screen_hotels.dart';

class GridHotels extends StatelessWidget {
  final List<ApiHotel> hotels;

  const GridHotels({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: const PageStorageKey(keyHotelsGrid),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
      ),
      itemCount: hotels.length,
      itemBuilder: (_, index) => _GridCardHotel(
        hotel: hotels[index],
      ),
    );
  }
}

class _GridCardHotel extends StatelessWidget {
  final ApiHotel hotel;

  const _GridCardHotel({
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return UiCard(
      onTap: () => _handleTap(context),
      widget: Stack(
        children: [
          UiImageAsset(
            image: hotel.poster,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.green.withOpacity(0.9),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: UiText(
              text: hotel.name,
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  void _handleTap(BuildContext context) {
    showPopover(
      context: context,
      bodyBuilder: (_) => const UiActionsHotel(),
      direction: PopoverDirection.top,
      width: MediaQuery.of(context).size.width / 3,
    );
  }
}
