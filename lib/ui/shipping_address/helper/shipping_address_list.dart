
import 'package:digi_vegetable/frame_work/controller/shipping_address_controller/shipping_address_controller.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_tiles/common_app_tile.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class ShippingAddressList extends ConsumerStatefulWidget {
  const ShippingAddressList({super.key});

  @override
  ConsumerState<ShippingAddressList> createState() => _ShippingAddressListState();
}

class _ShippingAddressListState extends ConsumerState<ShippingAddressList> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(shippingAddressController).init();
  }
  @override
  Widget build(BuildContext context) {
    final shippingAddressWatch = ref.watch(shippingAddressController);

    return Column(
      children: [
        Column(
          children: shippingAddressWatch.dummyAddresses.map((e) {
            return Padding(
             padding:  EdgeInsets.only(top: 10.h),
              child: CommonAppTile(
                onTap: (){
                  shippingAddressWatch.updateSelectAddress(e);
                },
                leadingImg: AppAssets.locationIcon,
                title: e['title'].toString(),
                subtitle: e['data'],
                trailing: Container(
                  height: 20.h,
                  width: 20.w,
                  padding: EdgeInsets.all(1.r),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          color: context.colorScheme.primary, width: 2.w)),
                  child: Container(
                    height: 16.h,
                    width: 16.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: shippingAddressWatch.selectedAddress == e
                          ? context.colorScheme.primary
                          : Colors.white,
                    ),
                  ),
                ),),
            );
          }).toList()
        ),
        SizedBox(height: 10.h,),
        CommonButton(onTap: (){
        }, btnText: "Add New Address",backgroundColor: Colors.grey.shade300,txtColor: Colors.black54,fontSize: 16.sp,)
      ],
    );
  }
}
