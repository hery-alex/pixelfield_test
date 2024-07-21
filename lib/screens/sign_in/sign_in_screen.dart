import 'package:flutter/material.dart';
import 'package:pixelfield_test/layout/layout.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutForBackground(
      showBackButton: true,
      showBackgroundImage: false,
      child: Container(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Text.rich(
              TextSpan(
                text: 'Sign In',
                style:Theme.of(context).textTheme.headlineMedium?.apply(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeightDelta: 400
                )
             )),
             const SizedBox(height: 40)
           ],
        ),
      ),
    );
  }
}