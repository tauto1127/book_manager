import 'package:auto_route/auto_route.dart';
import 'package:book_manager/presentation/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: AddBookRoute.page), AutoRoute(page: MyHomeRoute.page, initial: true)];
}
