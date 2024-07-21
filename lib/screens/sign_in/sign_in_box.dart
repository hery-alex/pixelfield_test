import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';

class LoginBox extends StatefulWidget {
  const LoginBox({super.key});

  @override
  State<LoginBox> createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {

   final _formKey = GlobalKey<FormState>();

   final TextEditingController _textControllerEmailAddress = TextEditingController();
   final TextEditingController _textControllerPassword = TextEditingController();


  @override
  void dispose() {
    _textControllerPassword.dispose();
    _textControllerEmailAddress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: 352,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}