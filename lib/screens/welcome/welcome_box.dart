import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';

class WelcomeBox extends StatelessWidget {
  const WelcomeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 24,bottom: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      width:SizeConfig.screenWidth! - 30,
      height: 264,
      child: Column(
        children: [
          // Title and subtitle of the welcome page
          //-----------------------------------------------------------
           Text.rich(
            TextSpan(
              text: 'Welcome!',
              style:Theme.of(context).textTheme.headlineLarge?.apply(
                  color: Theme.of(context).colorScheme.onPrimary
              )
           )),
           const SizedBox(height: 10),
           Text.rich(
            TextSpan(
              text: 'Text text text',
              style:Theme.of(context).textTheme.bodyLarge?.apply(
                  color: Theme.of(context).colorScheme.onPrimary
              )
           )),
            //-----------------------------------------------------------
           const SizedBox(height: 20),

          //Scan bottle button 
          //-----------------------------------------------------------
           InkWell(
            onTap: null,
            child: Container(
              width: SizeConfig.screenWidth! - 30,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.primaryContainer,
                boxShadow:  [
                   BoxShadow(
                    offset:const Offset(0, 4),
                    blurRadius:4.0,
                    color:const Color(0xff000000).withOpacity(0.25),
                  ),
                ]
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text.rich(
                      TextSpan(
                        text: 'Scan bottle',
                        style:Theme.of(context).textTheme.bodyLarge?.apply(
                            color: Theme.of(context).colorScheme.surface,
                            fontWeightDelta: 600
                        )
                    )),
                ],
              ) ,
            ),
           ),
          //-----------------------------------------------------------
           const SizedBox(height: 30),
          //2 lines of text with one that can be clicked to proceed 
          //-----------------------------------------------------------
           SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text.rich(
                      TextSpan(
                        text: 'Have an account?',
                        style:Theme.of(context).textTheme.bodyLarge?.apply(
                            color: Theme.of(context).colorScheme.onPrimary,
                        )
                    )),
                    const  SizedBox(width: 50),
                    InkWell(
                      onTap: () => Navigator.of(context).pushNamed('/signIn'),
                      child: Text.rich(
                        TextSpan(
                          text: 'Sign in first',
                          style:Theme.of(context).textTheme.bodyLarge?.apply(
                              color: Theme.of(context).colorScheme.primaryContainer,
                              fontWeightDelta: 600
                          )
                      )),
                    ),
              ],
            ),
           )
          //-----------------------------------------------------------
        ],
      ),
    );
  }
}
