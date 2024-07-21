import 'dart:async';

abstract class RegexValidators{
   RegExp? regex;
}

mixin class SignInValidators{

  static const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
          r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
          r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
          r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
          r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
          r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
          r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';

  final RegExp regex = RegExp(pattern);        

  final validateEmail = StreamTransformer<String,String>.fromHandlers(handleData: (email,sink){
     if(email.isEmpty || SignInValidators().regex.hasMatch(email)){
      sink.addError('Enter a valid email');
     }else{
      sink.add(email);
     }
  });


  final validatePassword =  StreamTransformer<String, String>.fromHandlers(
      handleData: (device, sink) {
    if (device.length > 3) {
      sink.add(device);
    } else {
      return sink.addError('Password must be more than 3 characters!');
    }
  });


}