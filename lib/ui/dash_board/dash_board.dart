import 'package:digi_vegetable/ui/dash_board/helper/dashboard_bottom_nav_bar.dart';
import '../utils/theme/theme.dart';
import 'controller/dash_board_controller.dart';

class DashBoard extends ConsumerWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashBoardWatch = ref.watch(dashBoardController);
    return  Scaffold(
      // key: dasBoardWatch.key,
      body: dashBoardWatch.pages[dashBoardWatch.selectedIndex],
      bottomNavigationBar: const DashBoardBottomNavBar(),
    );
  }
}
