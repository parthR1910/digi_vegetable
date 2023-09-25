import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../frame_work/controller/product_filter_controller/product_filter_controller.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class PriceRangeFilter extends ConsumerWidget {
  const PriceRangeFilter({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final productFilterWatch = ref.watch(productFilterController);
    return
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Price Range",style: TextStyles.w600.copyWith(fontSize: 16.sp,color:AppColors.black),).paddingHorizontal(8.w),
        SfRangeSlider(
          min: 0.0,
          max: 100.0,
          values:  productFilterWatch.rangeValues,
          interval: 20,
          // enableTooltip: true,
          // shouldAlwaysShowTooltip: true,
          startThumbIcon: Container(
            height: 25.h,
            width: 25.w,
            decoration: BoxDecoration(
                color: context.colorScheme.primary, shape: BoxShape.circle),
            padding: EdgeInsets.all(7.r),
            child: Container(
              height: 15.h,
              width: 15.w,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
            ),
          ),
          endThumbIcon: Container(
            height: 25.h,
            width: 25.w,
            decoration: BoxDecoration(
                color: context.colorScheme.primary, shape: BoxShape.circle),
            padding: EdgeInsets.all(7.r),
            child: Container(
              height: 15.h,
              width: 15.w,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
            ),
          ),
          onChanged: (SfRangeValues values) {
            productFilterWatch.updateSliderValue(values);
          },
        ),
      ],
    );
  }
}

