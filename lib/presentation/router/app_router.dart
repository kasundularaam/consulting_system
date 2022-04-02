import 'package:consulting_system/presentation/screens/chat_screen/chat_page.dart';
import 'package:flutter/material.dart';

import '../../core/exceptions/route_exception.dart';
import '../screens/auth/landing_screen/landing_page.dart';
import '../screens/auth/login_screen/login_page.dart';
import '../screens/auth/sign_up_screen/sign_up_page.dart';
import '../screens/home_screen/home_page.dart';

class AppRouter {
  static const String landingPage = '/';
  static const String homePage = '/homePage';
  static const String signUpPage = '/signUpPage';
  static const String logInPage = '/logInPage';
  static const String chatPage = '/chatPage';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingPage:
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case logInPage:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case signUpPage:
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );
      case chatPage:
        return MaterialPageRoute(
          builder: (_) => const ChatPage(),
        );

      default:
        throw const RouteException('Route not found!');
    }
  }
}
