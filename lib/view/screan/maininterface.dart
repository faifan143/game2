import 'package:flutter/material.dart';
import 'package:game2/controller/main_controller.dart';
import 'package:game2/core/constants/color.dart';
import 'package:game2/view/widget/auth/custombuttonauth.dart';
import 'package:game2/view/widget/boxtext.dart';
import 'package:get/get.dart';
import 'package:game2/view/widget/auth/customtextbodyauth.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text('Main',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.gray)),
      ),
      body: GetBuilder<MainControllerimp>(
        init: MainControllerimp(),
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              const CustomTextBodyAuth(text: "Player of the week"),
              const SizedBox(
                height: 15,
              ),
              BoxText(
                text: 'User name : ',
                text2: 'Score :',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButtonAuth(
                text: "Start Game",
                onPush: () {
                  //controller.SigUp();
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButtonAuth(
                text: "Resume",
                onPush: () {
                  //controller.SigUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
