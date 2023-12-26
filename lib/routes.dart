import 'package:e_learning/features/auth/screens/password_screen.dart';
import 'package:e_learning/features/auth/screens/profile_screen.dart';
import 'package:e_learning/features/auth/screens/signin_screen.dart';
import 'package:e_learning/features/auth/screens/signup_screen.dart';
import 'package:e_learning/features/auth/screens/verification_screen.dart';
import 'package:e_learning/screens/welcome/screens/welcome_screen.dart';
import 'package:e_learning/screens/welcome/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case WelcomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const WelcomeScreen(),
      );

    case OnBoardingScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const OnBoardingScreen(),
      );

    case SignInScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignInScreen(),
      );

    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignUpScreen(),
      );

    case ProfileEditingScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const ProfileEditingScreen(),
      );

    case PasswordScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const PasswordScreen(),
      );

    case VerificationScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const VerificationScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist'),
          ),
        ),
      );
  }
}
