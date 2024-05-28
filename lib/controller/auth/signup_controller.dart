import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game2/core/classes/api_client.dart';
import 'package:game2/view/screan/auth/login.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp({required BuildContext context});
  goToSigIn();
}

class SignUpControllerimp extends SignUpController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController checkPassword = TextEditingController();
  bool isObsecure = true;

  bool checkPassMatch() {
    return password.text.trim() == checkPassword.text.trim();
  }

  @override
  signUp({required context}) async {
    bool isMatch = checkPassMatch();
    ApiClient apiClient = ApiClient();
    if (isMatch) {
      try {
        ApiResponse<dynamic> postResponse = await apiClient.postData(
          url: '$serverLink/signup',
          data: {
            'name': username.text.trim(),
            'password': password.text.trim()
          },
        );
        if (postResponse.statusCode == 200 || postResponse.statusCode == 201) {
          Get.offAll(() => const Login());
        }
      } catch (error) {
        print('Error while making POST request: $error');
      }
    } else {
      showSnackBar(
        context: context,
        contentType: ContentType.warning,
        title: 'Warning',
        body: "Password Confirmation Failed",
      );
    }
  }

  @override
  goToSigIn() {
    Get.offAll(() => const Login());
  }
}
