import 'package:game2/view/screan/addround.dart';
import 'package:game2/view/screan/deleteround.dart';
import 'package:game2/view/screan/exitround.dart';
import 'package:get/get.dart';

abstract class RoundsManageController extends GetxController {
  Add();
  Exit();
  Delete();
}

class RoundsManageControllerimp extends RoundsManageController {
  @override
  Add() {
    Get.offAll(() => AddRound());
  }

  @override
  Exit() {
    Get.offAll(() => ExitRound());
  }

  @override
  Delete() {
    Get.offAll(() => DeleteRound());
  }
}
