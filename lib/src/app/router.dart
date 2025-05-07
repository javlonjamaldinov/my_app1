import 'package:flutter_application_1/src/presentations/my_coins/view/my_coins_view.dart';
import 'package:go_router/go_router.dart';

import '../presentations/presentation.dart';


class RouterConst {
  static const String splash = 'splash';
  static const String splashNext = 'splashNext';
  static const String home = 'home';
  static const String breathing = 'breathing';

  static const String eventselection = 'eventselection';
  static const String choiseofdishes = 'choiseofdishes';
  static const String questions = 'questions';
  static const String result = 'result';
  static const String settings = 'settings';
  static const String shop = 'shop';
  static const String shoplink = 'shoplink';
  static const String ingredientquestions = 'ingredientquestions';
  static const String mycoins = 'my_coins';

}

class RouterConf {
  static final GoRouter goRouter = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        name: RouterConst.splash,
        path: '/splash',
        builder: (context, state) => const SplashView(),
      ),

      GoRoute(
        name: RouterConst.home,
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        name: RouterConst.eventselection,
        path: '/eventselection',
        builder: (context, state) => const EventSelectionView(),
      ),
      GoRoute(
        name: RouterConst.choiseofdishes,
        path: '/choiseofdishes',
        builder: (context, state) => const ChoiseOfDishesView(),
      ),
      GoRoute(
        name: RouterConst.questions,
        path: '/questions',
        builder: (context, state) => const QuestionsView(),
      ),
      GoRoute(
        name: RouterConst.result,
        path: '/result',
        builder: (context, state) => const ResultView(),
      ),
      GoRoute(
        name: RouterConst.settings,
        path: '/settings',
        builder: (context, state) => const SettingsView(),
      ),
      GoRoute(
        name: RouterConst.shop,
        path: '/shop',
        builder: (context, state) => const ShopView(),
      ),
      GoRoute(
        name: RouterConst.shoplink,
        path: '/shoplink',
        builder: (context, state) => const ShopLinkView(),
      ),
      GoRoute(
        name: RouterConst.ingredientquestions,
        path: '/ingredientquestions',
        builder: (context, state) => const IngredientQuestionsView(),
      ),
       GoRoute(
        name: RouterConst.mycoins,
        path: '/mycoins',
        builder: (context, state) => const MyCoinsView(),
      ),

    ],
  );
}
