import 'package:go_router/go_router.dart';
import 'package:task_app/features/tasks/presentation/ui/screens/main_screen.dart';

class AppRouter {
  static final appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/',
        redirect: (_, __) => '/',
      ),
    ],
  );
}
