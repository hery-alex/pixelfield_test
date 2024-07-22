import 'package:flutter/material.dart';
import 'package:pixelfield_test/layout/layout_with_bottom_navigation.dart';
import 'package:pixelfield_test/screens/sign_in/sign_in_screen.dart';
import 'package:pixelfield_test/screens/sign_in/sing_in_provider.dart';
import 'package:pixelfield_test/screens/welcome/welcome_screen.dart';


abstract class RouteConfig{
   Widget checkRoutePath(RouteSettings settings);
}

class RoutesConfiguration implements RouteConfig{

  @override
  Widget checkRoutePath(RouteSettings settings){
     switch(settings.name!){
      case '/':
        return  const WelcomeScreen();
      case '/signIn':
        return  SignInProvider(child:const SignInScreen());
      case '/myCollection':
        return const LayoutWithBottomNavigation();
      default : 
        return const SizedBox();    
    }

  }

  
 static Route<dynamic>? onGenerateRoute(
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
       pageBuilder: (context,animation1, animation2){
         return RoutesConfiguration().checkRoutePath(settings);
       },
       transitionsBuilder: (_,anim,__,child){
           const begin = Offset(1.0, 0.0);
           const end = Offset.zero;
           const curve = Curves.ease;
  
           var tween =  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  
           return SlideTransition(
             position: anim.drive(tween),
             child: child,
           );
       }
    );
  }
}