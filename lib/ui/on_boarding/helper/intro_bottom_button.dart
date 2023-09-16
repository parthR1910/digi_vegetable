import 'package:digi_vegetable/ui/on_boarding/controller/on_boarding_controller.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class IntroBottomButton extends ConsumerWidget {
  const IntroBottomButton({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final onBoardWatch = ref.watch(onBoardingController);
    return  SizedBox(
      height: 145.h,
      width: double.infinity.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 14,
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (index) {
               if (onBoardWatch.index == index) {
                 return Container(
                  width:35,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100.r)
                  ),
                );
               } else {
                 return GestureDetector(
                   onTap: (){
                     onBoardWatch.setPage(index);
                   },
                  child: Container(
                    width:14,
                    height: 14,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.textGreyColor,width: 2.w),
                        borderRadius: BorderRadius.circular(100.r)
                    ),
                  ),
                );
               }
              })
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300.w, 50.h)
            ),
              onPressed: (){
              onBoardWatch.nextButton(context);
          }, child: Text("Next",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.white),))
        ],
      ),
    );
  }
}