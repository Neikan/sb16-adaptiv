part of '../screen_hotels.dart';

class UiViewHotels extends StatefulWidget {
  final List<ApiHotel> hotels;

  const UiViewHotels({
    super.key,
    required this.hotels,
  });

  @override
  State<UiViewHotels> createState() => _UiViewHotelsState();
}

class _UiViewHotelsState extends State<UiViewHotels> {
  @override
  Widget build(BuildContext context) {
    if (checkIsMobileView(context)) {
      return ListHotels(hotels: widget.hotels);
    }

    return GridHotels(hotels: widget.hotels);
  }
}
