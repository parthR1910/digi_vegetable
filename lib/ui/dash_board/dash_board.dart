

import '../utils/theme/theme.dart';

class DashBoard extends ConsumerWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final dasBoardWatch = ref.watch(dasboardController);

    return const Scaffold(
      // key: dasBoardWatch.key,
      body: IndexedStack(
        // index: dasBoardWatch.index,
        children: [
          FlutterLogo(),
           FlutterLogo(),
          FlutterLogo(),
          FlutterLogo(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
