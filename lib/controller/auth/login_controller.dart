import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game2/core/classes/api_client.dart';
import 'package:game2/model/user_model.dart';
import 'package:game2/view/screan/auth/signup.dart';
import 'package:game2/view/screan/maininterface.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login({required BuildContext context});
  goToSigUp();
  showPassword();
}

class LoginControllerimp extends LoginController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isObsecure = true;

  @override
  login({required BuildContext context}) async {
    ApiClient apiClient = ApiClient();
    try {
      ApiResponse<dynamic> response = await apiClient.postData(
        url: "$serverLink/login",
        data: {
          "username": username.text.trim(),
          "password": password.text.trim(),
        },
      );

      if (response.statusCode == 200) {
        // Deserialize the response data into a User object
        UserModel user = UserModel.fromJson(response.data);

        // Example of accessing user properties
        print("Logged in user ID: ${user.id}");
        print("Logged in user name: ${user.name}");

        // Navigate to the main screen
        Get.offAll(() => const Main());
      }
    } catch (e) {
      showSnackBar(
        context: context,
        contentType: ContentType.failure,
        title: "Failure",
        body: "Wrong email or password",
      );
    }
  }

  @override
  goToSigUp() {
    Get.offAll(() => const SignUp());
  }

  @override
  showPassword() {
    isObsecure = !isObsecure;
    update();
  }
}
