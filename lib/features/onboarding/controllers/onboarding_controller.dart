import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  CarouselController controller = CarouselController();
  RxDouble carouselIndex = 0.0.obs;
}
