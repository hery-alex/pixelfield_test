import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/screens/sign_in/sign_in_widgets/button_widget.dart';
import 'package:pixelfield_test/screens/sign_in/sign_in_widgets/email_widget.dart';
import 'package:pixelfield_test/screens/sign_in/sign_in_widgets/password_widget.dart';

class LoginBox extends StatefulWidget {
  const LoginBox({super.key});

  @override
  State<LoginBox> createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {

   final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: 352,
      child: Form(
        key: _formKey,
        child:  Column(
          children: [
           const EmailSignIn(),
           const SizedBox(height: 20),
           const PasswordSignIn(),
           const SizedBox(height: 40),
           const SubmitButtonSignIn(),
           const SizedBox(height: 40),
            SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text.rich(
                      TextSpan(
                        text: 'Can\'t sign in?',
                        style:Theme.of(context).textTheme.bodyLarge?.apply(
                            color: Theme.of(context).colorScheme.onPrimary,
                        )
                    )),
                    const  SizedBox(width: 50),
                    Text.rich(
                        TextSpan(
                          text: 'Recover Password',
                          style:Theme.of(context).textTheme.bodyLarge?.apply(
                              color: Theme.of(context).colorScheme.primaryContainer,
                              fontWeightDelta: 600
                          )
                      )),
              ],
            ),
           )
          ],
        ),
      ),
    );
  }
}