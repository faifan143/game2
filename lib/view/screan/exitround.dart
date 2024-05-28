import 'package:flutter/material.dart';
import 'package:game2/controller/addround_controller.dart';
import 'package:game2/controller/exitround_controller.dart';
import 'package:game2/core/constants/color.dart';
import 'package:game2/core/functions/validinput.dart';
import 'package:game2/view/widget/auth/custombuttonauth.dart';
import 'package:game2/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class ExitRound extends StatelessWidget {
  const ExitRound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text('ExitRound',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.gray)),
        ),
        body: GetBuilder<ExitRoundControllerimp>(
            builder: (controller) => Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(children: [
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 1, 100, "Round name");
                    },
                    mycontoller: controller.roundname2,
                    hintText: "Enter Round Name",
                    labeltext: "round name",
                    //iconData: Icons.lock_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 1, 100, "round word");
                    },
                    mycontoller: controller.roundwords,
                    hintText: "Enter Round Words",
                    labeltext: "Round words",
                    // iconData: Icons.lock_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButtonAuth(
                    text: "Exit",
                    onPush: () {
                      // controller.Delete();
                    },
                  ),
                ]))));
  }
}
