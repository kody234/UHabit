import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  RxBool obscurePassword = true.obs;
  RxBool keepSignedIn = false.obs;
  RxBool emailAboutPricing = false.obs;
}
