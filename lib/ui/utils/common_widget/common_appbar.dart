import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/text_styles.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class CommonAppbar extends StatelessWidget {
  final String title;
  final List<Widget>? actionButton;
  final Color? color;
  const CommonAppbar({super.key, this.title="",this.actionButton, this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color:color ?? Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton.filledTonal(
              onPressed: () {
                context.pop();
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.resolveWith(
                          (states) => EdgeInsets.all(20.r)),
                  backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.grey.shade200)),
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 28.sp,
              )),
          Text(title,textAlign: TextAlign.center,style: TextStyles.w600.copyWith(fontSize: 20.sp, color: AppColors.black),),
          if(actionButton == null)
            SizedBox(
            width: 31.w,
          ),
          if(actionButton != null)
            ...actionButton!,
        ],
      ),
    );
  }
}
