import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixelfield_test/screens/sign_in/sign_in_email_password_validators.dart';
import 'package:rxdart/rxdart.dart';

class SingInBloc with SignInValidators{



final _emailController = PublishSubject<String>();
final _passwordController = PublishSubject<String>();

Stream<String> get loginEmail => _emailController.stream.transform(validateEmail);
Stream<String> get loginPassword => _passwordController.stream.transform(validatePassword);



Future<void> submitLogin(BuildContext context,String buttonemail,String buttonpass) => checkCredentials(context,buttonemail,buttonpass);
Function(String) get addEmail => _emailController.sink.add;
Function(String) get addPassword => _passwordController.sink.add;

Stream<Map<String,String>> get submitValues => Rx.combineLatest([loginEmail,loginPassword],(values){
  log('value $values');
    return {
      "email" :values[0],
      "password":values[1]
    };
});


Future<void> checkCredentials(BuildContext context,String userName , String password) async{
   final String response = await rootBundle.loadString('assets/jsonData/jsonDataCredentials.json');
   final data = await json.decode(response);
   for(var user in data['users']){
    if(user['userName'] == userName && user['password'] == password){
       Navigator.of(context).pushNamed('/myCollection');
    }
  }
}


 
dispose(){
  _emailController.close();
  _passwordController.close();
}


}