import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:game2/main.dart';
import 'package:game2/view/widget/auth/custombuttonauth.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Column(children: [
      Scaffold(
        body: SizedBox(
          width: 200,
          height: 200,
          child: CameraPreview(controller),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      CustomButtonAuth(
        text: "take",
        onPush: () {
          //  controller.Login();
        },
      ),
    ]);
  }
}
