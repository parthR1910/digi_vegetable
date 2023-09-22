import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/search/helper/search_product.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_text_form_field.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/app_string.dart';
import '../utils/theme/text_styles.dart';
import '../utils/theme/theme.dart';

class Search extends ConsumerStatefulWidget {
  final bool isFormFilterKet;
  const Search({super.key,this.isFormFilterKet= false});

  @override
  ConsumerState<Search> createState() => _SearchState();
}

class _SearchState extends ConsumerState<Search> {
  late FocusNode searchNode;
  @override
  void initState() {
    super.initState();
   searchNode = FocusNode();
   if(!widget.isFormFilterKet){
     searchNode.requestFocus();
   }
  }
  @override
  void dispose() {
    super.dispose();
    searchNode.dispose();
  }
  @override
  Widget build(BuildContext context,) {
    final appStringWatch = ref.watch(appStringController);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          children: [
            SizedBox(height: 10.h,),
            CommonTextFormField(
                focusNode: searchNode,
                hintText: appStringWatch.searchKey,
                onChanged: (value){},
                prefixIcon: Image.asset(AppAssets.searchIcon,scale: 22,),
                suffixIcon: IconButton(
                  onPressed: (){
                    context.pushNamed(AppRoute.filter,arg: {"isFromSearchKey":true});
                  },icon:Image.asset(AppAssets.filterIcon,height: 20.h,width: 20.w) ,)
            ).paddingHorizontal(24.w),
            SizedBox(height: 8.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child:  Text("Recent",style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.black),)),
                TextButton(onPressed: (){}, child:  Text("Clear All",style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.black),))
              ],
            ).paddingHorizontal(10.w),
            const Expanded(child: SearchProduct()),
          ],
        ),
      ),
    );
  }
}
