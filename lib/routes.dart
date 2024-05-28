import 'package:game2/core/constants/routes.dart';
import 'package:game2/view/screan/addround.dart';
import 'package:game2/view/screan/auth/login.dart';
import 'package:game2/view/screan/auth/signup.dart';
import 'package:game2/view/screan/deleteround.dart';
import 'package:game2/view/screan/exitround.dart';
import 'package:game2/view/screan/maininterface.dart';
import 'package:game2/view/screan/roundsmanage.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const RoundsManage()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.deleteround, page: () => const DeleteRound()),
  GetPage(name: AppRoute.exitround, page: () => const ExitRound()),
  GetPage(name: AppRoute.addround, page: () => const AddRound()),
];
