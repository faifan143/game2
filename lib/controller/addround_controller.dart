import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AddRoundController extends GetxController {}

class AddRoundControllerimp extends AddRoundController {
  TextEditingController roundname = TextEditingController();
  TextEditingController words = TextEditingController();
}
