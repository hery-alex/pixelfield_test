import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pixelfield_test/screens/sign_in/sing_in_provider.dart';

class SubmitButtonSignIn extends StatelessWidget {
  const SubmitButtonSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: SignInProvider.of(context)!.singInBloc.submitValues,
      builder: (context, AsyncSnapshot validButton) {
           log('validButton:  ${validButton.data}');
        return  ElevatedButton(
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all<double>(0.0),
                    shape: WidgetStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black87),
                        borderRadius:
                            BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    shadowColor: WidgetStateProperty.all<Color>(
                        Colors.black54,
                    ),
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                  onPressed: ()=> validButton.hasData  ? SignInProvider.of(context)!.singInBloc.submitLogin(context,validButton.data['email'],validButton.data['password']) : null,
                  child: SizedBox(
                    height: 54,
                    width: double.infinity,
                    child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text.rich(
                      TextSpan(
                        text: 'Continue',
                        style:Theme.of(context).textTheme.bodyLarge?.apply(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeightDelta: 600
                        )
                    )),
                ],
              ) 
            ));
      }
    );
  }
}


