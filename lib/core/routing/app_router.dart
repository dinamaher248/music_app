import 'package:go_router/go_router.dart';
import 'package:music_app/feature/onboarding/presentation/view/onboarding_view.dart';

class AppRouter {
  static String onBoardingPath = '/onBoardingPath';
  static String loginPath = '/loginPath';
  static String registerPath = '/registerPath';


  static final router = GoRouter(
    initialLocation: onBoardingPath,
    routes: [
      
      GoRoute(
        path: onBoardingPath,
        builder: (context, state) => const OnboardingView(),
      ),  
    ],
  );
}
