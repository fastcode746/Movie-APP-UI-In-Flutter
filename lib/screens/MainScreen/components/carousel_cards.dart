import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_movie_app_ui/screens/MainScreen/components/container_card.dart';

class CarouselCards extends StatefulWidget {
  const CarouselCards({super.key});

  @override
  State<CarouselCards> createState() => _CarouselCardsState();
}

class _CarouselCardsState extends State<CarouselCards> {
  final CardSwiperController controller = CardSwiperController();
  List<Widget> cards = const [
    ContainerCard(
      image: "assets/images/movie1.jpg",
    ),
    ContainerCard(
      image: "assets/images/movie2.jpg",
    ),
    ContainerCard(
      image: "assets/images/movie3.jpg",
    ),
    ContainerCard(
      image: "assets/images/movie4.jpg",
    ),
    ContainerCard(
      image: "assets/images/movie5.jpg",
    ),
  ];
  // final cards = candidates.map((candidate) => CarouselCards(candidate)).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: CardSwiper(
                controller: controller,
                cardsCount: cards.length,
                numberOfCardsDisplayed: 3,
                onSwipe: _onSwipe,
                onUndo: _onUndo,
                padding: const EdgeInsets.all(8.0),
                cardBuilder: (context, index) => cards[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(width: 1.2, color: Colors.black45)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.black,
                        size: 28,
                      ),
                      onPressed: controller.swipeTop,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(width: 1.2, color: Colors.black45)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 28,
                      ),
                      onPressed: controller.swipeBottom,
                    ),
                  ),
                  // FloatingActionButton(
                  //   heroTag: "up_swipe_button",
                  //   backgroundColor: Colors.yellow[300],
                  //   elevation: 0,
                  //   onPressed: controller.swipeTop,
                  //   child: const Icon(
                  //     Icons.keyboard_arrow_up,
                  //     color: Colors.black,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 20,
                  // ),
                  // FloatingActionButton(
                  //   heroTag: "bottom_swipe_button",
                  //   backgroundColor: Colors.yellow[300],
                  //   elevation: 0,
                  //   onPressed: controller.swipeBottom,
                  //   child: const Icon(
                  //     Icons.keyboard_arrow_down,
                  //     color: Colors.black,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}
