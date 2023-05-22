import 'package:driver_ok_delivery/screens/auth/otp_screen.dart';
import 'package:driver_ok_delivery/utils/widgets/default_button.dart';
import 'package:driver_ok_delivery/utils/widgets/default_input_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:driver_ok_delivery/utils/custom_color.dart';
import 'package:driver_ok_delivery/utils/custom_style.dart';

class SigninWithPhoneScreen extends StatelessWidget {
  SigninWithPhoneScreen({Key? key}) : super(key: key);
  final TextEditingController phoneNumberController = TextEditingController();

  static const String route = '/signinwithphone';

  Widget acceptTerms() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By tapping continue, you agree to',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(0.5),
        ),
        children: <TextSpan>[
          TextSpan(
            text: '\nTerms and Conditions ',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Get.toNamed(Routes.signupScreen);
              },
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(
            text: 'and ',
          ),
          TextSpan(
            text: 'Privacy Policy ',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Get.toNamed(Routes.signupScreen);
              },
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(
            text: 'of Ok delivery ',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: CustomColor.screenBGColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 99),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Text(
                    "Sign in with phone number",
                    style: CustomStyle.defaultFontMediumBlackStyle,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: SizedBox(
                    width: 343,
                    height: 55,
                    child: DefaultTextInputField(
                      controller: phoneNumberController,
                      hintText: "1XXXXXXXXXX",
                      keyboardType: TextInputType.number,
                      icon: const Icon(
                        FontAwesomeIcons.phoneAlt,
                        color: CustomColor.customIconColorTwo,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 33),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 35.2),
                  child: SizedBox(
                    width: 342.76,
                    height: 55,
                    child: DefaultButton(
                      title: 'Continue',
                      onPresssed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                OtpScreen(phoneNumberController.text)));
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: SizedBox(
                    width: 366,
                    height: 100,
                    child: acceptTerms(),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
