import 'package:flutter/material.dart';
import 'package:game2/controller/Record_controller.dart';
import 'package:game2/view/widget/boxtext.dart';
import 'package:game2/view/widget/roundswidget.dart';
import 'package:get/get.dart';
import 'package:game2/core/constants/color.dart';

class Rounds extends StatelessWidget {
  const Rounds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text('Rounds',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.gray)),
        ),
        body: GetBuilder<RecordControllerimp>(
            builder: (controller) => Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(children: [
                  RoundsWidget(
                    text: '1',
                    text2: 'Score :',
                    text3: 'mistake :',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundsWidget(
                    text: '2',
                    text2: 'Score :',
                    text3: 'mistake :',
                    onTap: () {},
                  ),
                ]))));
  }
}
