import 'package:flutter/material.dart';
import 'package:twitter/common/common.dart';

import '../../../constants/ui_constants.dart';
import '../../../theme/theme.dart';
import '../widgets/auth_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {




  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hinttext: 'Email',
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthField(
                  controller: passwordController,
                  hinttext: 'Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: 'Done',
                    // backGroundColor: Pallete.whiteColor,
                    // textColor: Pallete.backgroundColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: const TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                            text: ' Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Pallete.blueColor,
                            ))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}