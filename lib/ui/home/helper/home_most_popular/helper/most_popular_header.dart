import 'package:digi_vegetable/frame_work/controller/home_controller/filter_controller/most_pupular_filter_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../../../utils/theme/theme.dart';

class MostPopularHeader extends ConsumerWidget {
  const MostPopularHeader({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final mostPopularFilterWatch = ref.watch(mostPopularFilterController);
    List<String> filterNames=[
      "All",
      "Fruits",
      "Roots",
      "Leaves",
      "Fungi",
      "Stem",
      "Pods",
      "Flower",
      "Bulbs",
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(filterNames.length, (index) {
            final filterName = filterNames[index];
            // final isSelected = mostPopularFilterWatch.isFilterSelected == filterName;
            final isSelected = mostPopularFilterWatch.selectFilterName == filterName;
            return Theme(
              data: ThemeData(useMaterial3: false),
              child: FilterChip(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    side: BorderSide(
                        color: isSelected ? Colors.white : Colors.grey)),
                label: Text(filterName,
                    style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black)),
                backgroundColor:
                isSelected ? context.colorScheme.primary : Colors.white,
                onSelected: (value) {
                  mostPopularFilterWatch.selectFilterName = filterName;
                  mostPopularFilterWatch.notifyListeners();
                },
              ).marginOnly(right: 5.w),
            );
          }).toList()),
    );
  }
}
