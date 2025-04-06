import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/widgets', builder: (context, state) => WidgetsScreen()),
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/buttons', builder: (context, state) => ButtonsScreen()),
    GoRoute(path: '/cards', builder: (context, state) => CardsScreen()),
    GoRoute(path: '/dialogs', builder: (context, state) => DialogsScreen()),
  ],
);
