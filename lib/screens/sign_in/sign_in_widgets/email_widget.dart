import 'package:flutter/material.dart';
import 'package:pixelfield_test/screens/sign_in/sing_in_provider.dart';

class EmailSignIn extends StatelessWidget {
  const EmailSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: SignInProvider.of(context)!.singInBloc.loginEmail,
      builder: (context, AsyncSnapshot email) {
        return TextFormField(
                 onChanged: SignInProvider.of(context)!.singInBloc.addEmail,
                    onTapOutside: (PointerDownEvent event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  cursorColor: Theme.of(context).colorScheme.onPrimary,
                  style: Theme.of(context).textTheme.bodyLarge!.apply(
                     color: Theme.of(context).colorScheme.onPrimary
                    ),
                  decoration: InputDecoration(
                    errorText: email.error?.toString(),
                    labelText: 'Email ',
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: Theme.of(context).textTheme.bodyLarge!.apply(
                     color: Theme.of(context).colorScheme.primaryContainer
                    ),
                    errorStyle:const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    errorMaxLines: 3,
                    contentPadding: const EdgeInsets.symmetric(vertical: 6),
                    hintText: 'Your email',
                    hintStyle:  const TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),  
                    prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                    enabledBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer),   
                      ),  
                    focusedBorder:   UnderlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer),
                      ),
                    errorBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer),
                      ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer),
                      ),
                          
                    ),
                );
      }
    );
  }
}