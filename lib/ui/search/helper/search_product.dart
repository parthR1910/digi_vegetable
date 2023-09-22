import 'package:digi_vegetable/frame_work/controller/search_controller/search_controller.dart';
import '../../utils/theme/theme.dart';

class SearchProduct extends ConsumerWidget {
  const SearchProduct({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final searchWatch = ref.watch(searchController);
    return  ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: searchWatch.products.length,
      itemBuilder: (context, index) {
        final product  = searchWatch.products[index];
      return Container(
        margin: EdgeInsets.only(top: 10.h),
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: Colors.black12)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: FittedBox(child: Image.asset(product.img)),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    overflow: TextOverflow.ellipsis,
                    style:
                    TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 7.h),
                  Row(
                    children: [
                      Text(
                        "₹ ${product.price}",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "500",
                        style: TextStyle(
                            fontSize: 11.sp,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    },);
  }
}
