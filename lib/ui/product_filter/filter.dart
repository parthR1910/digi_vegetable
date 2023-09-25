import 'package:digi_vegetable/ui/product_filter/helper/category_filter/category_filter.dart';
import 'package:digi_vegetable/ui/product_filter/helper/filter_buttons.dart';
import 'package:digi_vegetable/ui/product_filter/helper/price_range_filter.dart';
import 'package:digi_vegetable/ui/product_filter/helper/rating_by.dart';
import 'package:digi_vegetable/ui/product_filter/helper/sort_by.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';

import '../../frame_work/controller/product_filter_controller/product_filter_controller.dart';
import '../utils/theme/theme.dart';

class Filter extends ConsumerStatefulWidget {
  final bool isFromSearch;
  const Filter({super.key,this.isFromSearch = false});

  @override
  ConsumerState<Filter> createState() => _FilterState();
}

class _FilterState extends ConsumerState<Filter> {
  @override
  void initState() {
    super.initState();
    ref.read(productFilterController).inti();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonAppbar(title: "Sort & Filter"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CategoryFilter(),
                    SizedBox(height: 10.h,),
                    const PriceRangeFilter(),
                    SizedBox(height: 10.h,),
                    const SortBy(),
                    SizedBox(height: 10.h,),
                    const RatingBY(),
                  ],
                ),
              ),
            ),
             FilterButtons(isFormSearch: widget.isFromSearch,)
          ],
        ),
      ),
    );
  }
}
