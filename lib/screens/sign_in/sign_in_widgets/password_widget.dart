import 'package:flutter/material.dart';
import 'package:pixelfield_test/screens/sign_in/sing_in_provider.dart';

class PasswordSignIn extends StatefulWidget {
  const PasswordSignIn({super.key});

  @override
  State<PasswordSignIn> createState() => _PasswordSignInState();
}

class _PasswordSignInState extends State<PasswordSignIn> {

  bool obscureText = true;

  void chageVisibility(){
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: SignInProvider.of(context)!.singInBloc.loginPassword,
      builder: (context, AsyncSnapshot password) {
        return TextFormField(
                 obscureText: obscureText,
                  onChanged: SignInProvider.of(context)!.singInBloc.addPassword,
                    onTapOutside: (PointerDownEvent event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                  cursorColor: Theme.of(context).colorScheme.onPrimary,
                  style: Theme.of(context).textTheme.bodyLarge!.apply(
                     color: Theme.of(context).colorScheme.onPrimary
                    ),
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding:const EdgeInsetsDirectional.only(end: 12),
                      child: InkWell(
                        onTap: chageVisibility,
                        child: Icon(
                          Icons.remove_red_eye,
                          size: 24,
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ),
                    ),
                    errorText: password.error?.toString(),
                    labelText: 'Password ',
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