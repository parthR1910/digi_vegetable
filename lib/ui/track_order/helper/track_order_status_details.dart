import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class TrackOrderStatusDetails extends StatelessWidget {
  const TrackOrderStatusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) => const TrackerStatus()),
    ).paddingHorizontal(16.w);
  }
}




class TrackerStatus extends StatelessWidget {
  const TrackerStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              padding: EdgeInsets.all(6.r),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                      color: AppColors.primary, width: 2.w)),
              child: Container(
                height: 14.h,
                width: 14.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
              ),
            ),
            CustomPaint(
              size: const Size(2.0,
                  40.0), // Width and height of the vertical dotted border
              painter: VerticalDottedBorderPainter(),
            ).marginVertical(2.h),
          ],
        ),
        SizedBox(width: 10.w,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order In Transit - Dec 17",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
              Text("32 Manchester Ave. Ringgold, GA 30736",style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.textGreyColor),),
            ],
          ),
        ),
        Text("15:20 PM",style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.textGreyColor),)
      ],
    );
  }
}


class VerticalDottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey.shade300 // Color of the dotted line
      ..strokeWidth = 2.0 // Width of the dotted line
      ..style = PaintingStyle.stroke;

    const double dashSpacing = 5.0; // Space between each dash
    const double startY = 0.0;
    final double endY = size.height;

    double currentY = startY;
    while (currentY < endY) {
      canvas.drawLine(
        Offset(size.width / 2, currentY),
        Offset(size.width / 2, currentY + dashSpacing),
        paint,
      );
      currentY += dashSpacing * 2; // Adjust the spacing as needed
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}