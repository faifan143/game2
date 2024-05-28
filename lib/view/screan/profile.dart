import 'package:flutter/material.dart';
import 'package:game2/controller/profile_controller.dart';
import 'package:game2/view/widget/auth/custombuttonauth.dart';
import 'package:game2/view/widget/highscoreswidget.dart';
import 'package:get/get.dart';
import 'package:game2/core/constants/color.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text('Profile',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.gray)),
        ),
        body: GetBuilder<ProfileControllerimp>(
            builder: (controller) => Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(
                  children: [
                    HighScoresWidget(text: 'High Score'),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonAuth(
                      text: "Signout",
                      onPush: () {
                        controller.signout();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonAuth(
                      text: "Delete User",
                      onPush: () {
                        controller.deleteuser();
                      },
                    ),
                  ],
                ))));
  }
}
