
import 'package:flutter/material.dart';
import 'package:pixelfield_test/screens/sign_in/sign_in_bloc.dart';



class SignInProvider extends InheritedWidget{


  final SingInBloc singInBloc;

  SignInProvider({super.key,Widget? child})
  : singInBloc =  SingInBloc(),
    super(child: child!);

  @override
  bool updateShouldNotify(SignInProvider oldWidget){
    return true;
  }

  static SignInProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<SignInProvider>();
  }
}