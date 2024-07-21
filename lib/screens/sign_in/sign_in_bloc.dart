import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pixelfield_test/screens/sign_in/sign_in_email_password_validators.dart';
import 'package:rxdart/rxdart.dart';

class SingInBloc with SignInValidators{



final _emailController = PublishSubject<String>();
final _passwordController = PublishSubject<String>();

Stream<String> get loginEmail => _emailController.stream.transform(validateEmail);
Stream<String> get loginPassword => _passwordController.stream.transform(validatePassword);

void get submitValues => Rx.combineLatest2(loginEmail,loginPassword,(loginEm,loginPas) async{
    await checkCredentials(loginEm,loginPas); 
});


Future<void> checkCredentials(String email, String password) async{
   final String response = await rootBundle.loadString('assets/jsonData.json');
   final data = await json.decode(response);
}


 
dispose(){
  _emailController.close();
  _passwordController.close();
}


}