import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/view_order/helper/view_order_appbar.dart';
import 'package:digi_vegetable/ui/view_order/helper/view_order_data_table.dart';
import 'package:digi_vegetable/ui/view_order/helper/view_order_list.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class ViewOrder extends StatelessWidget {
  const ViewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
               const ViewOrderAppBar().paddingHorizontal(16.w),
            Expanded(
              child: SingleChildScrollView(
                child:  Column(
                  children: [
                    const ViewOrderList(),
                    SizedBox(height: 10.h,),
                    const ViewOrderDataTable(),
                  ],
                ).paddingVertical(10.h),
              ),
            )
          ],
        ),
      ),
    );
  }
}
