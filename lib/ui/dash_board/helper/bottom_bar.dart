
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';

import '../../utils/theme/app_assets.dart';
import '../../utils/theme/theme.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final dasBoardWatch = ref.watch(dasboardController);
    return Container(
      height: kBottomNavigationBarHeight + 30.h,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade200, spreadRadius: 10, blurRadius: 10)
      ], borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
      child: BottomNavigationBar(
          // currentIndex: dasBoardWatch.index,
          selectedItemColor: context.colorScheme.primary,
          onTap: (value) {
            // dasBoardWatch.setPage(value);
          },
          items: [
            BottomNavigationBarItem(
                icon: icon(AppAssets.homeIcon),
                // activeIcon: icon(AppAssets.homeActive),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: icon(AppAssets.categoryIcon),
                // activeIcon: icon(AppAssets.productActive),
                label: 'Product'),
            BottomNavigationBarItem(
                icon: icon(AppAssets.basketIcon),
                // activeIcon: icon(AppAssets.cartActive),
                label: 'Basket'),
            BottomNavigationBarItem(
                icon: icon(AppAssets.buyIcon),
                // activeIcon: icon(AppAssets.orderActive),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: icon(AppAssets.personIcon),
                // activeIcon: icon(AppAssets.profileActive),
                label: 'Profile'),
          ]),
    );
  }

  icon(String path) {
    return Image.asset(
      path,
      height: 27.h,
      width: 27.w,
    );
  }
}
