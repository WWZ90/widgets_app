import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', name: HomeScreen.name, builder: (context, state) => HomeScreen()),
    GoRoute(path: '/widgets', name: WidgetsScreen.name, builder: (context, state) => WidgetsScreen()),
    GoRoute(path: '/buttons', name: ButtonsScreen.name, builder: (context, state) => ButtonsScreen()),
    GoRoute(path: '/cards', name: CardsScreen.name, builder: (context, state) => CardsScreen()),
    GoRoute(path: '/dialogs', name: DialogsScreen.name, builder: (context, state) => DialogsScreen()),
    GoRoute(path: '/progress', name: ProgressScreen.name, builder: (context, state) => ProgressScreen()),
    GoRoute(path: '/snackbars', name: SnackbarScreen.name, builder: (context, state) => SnackbarScreen()),
    GoRoute(path: '/animated', name: AnimatedScreen.name, builder: (context, state) => AnimatedScreen()),
    GoRoute(path: '/ui-controls', name: UIControlsScreen.name, builder: (context, state) => UIControlsScreen()),
  ],
);
