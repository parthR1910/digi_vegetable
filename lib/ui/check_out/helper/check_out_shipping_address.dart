import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_tiles/common_app_tile.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class CheckOutShippingAddress extends StatelessWidget {
  const CheckOutShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Shipping Address",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
        CommonAppTile(leadingImg: AppAssets.locationIcon, title: "Home",subtitle: "61480 Sunbrook Park, PC 5679",onTap: (){
          context.pushNamed(AppRoute.shippingAddress);
        },trailing: IconButton(onPressed:(){},icon: const Icon(Icons.edit),),)
      ],
    );
  }
}
