import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../utils/common_widget/common_button.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/theme.dart';

class FilterButtons extends StatelessWidget {
  final bool isFormSearch;
  const FilterButtons({super.key, required this.isFormSearch,});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(child: CommonButton(onTap: (){}, btnText: "Reset",border: Border.all(color: AppColors.primary,width: 1.5),backgroundColor: AppColors.white,txtColor: AppColors.primary,)),
        SizedBox(width: 4.w,),
        Expanded(child: CommonButton(onTap: (){
          if(isFormSearch){
            context.pop();
          }
          context.pop();
          context.pushNamed(AppRoute.search,arg: {"isFromFilterKey":true});
        }, btnText: "Apply")),
      ],
    ).paddingOnly(bottom: 10.h,left: 16.w,right: 16.w)
    ;
  }
}
