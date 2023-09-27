import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class TrackOrderTracker extends StatelessWidget {
  const TrackOrderTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ProductTracker(
          selectedIndex: 1,
        )
      ],
    );
  }
}

class ProductTracker extends StatelessWidget {
  final int selectedIndex;

  const ProductTracker({super.key, this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: FittedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            stepper(
                isSelected: (0 <= selectedIndex), img: AppAssets.shippingBoxIcon),
            CustomPaint(
              size: Size(50.w, 1.0), // Width and height of the line
              painter: DottedLinePainter(),
            ).marginOnly(bottom: 10.h),
            stepper(
                isSelected: (1 <= selectedIndex),
                img: AppAssets.shippingCargoIcon),
            CustomPaint(
              size: Size(50.w, 1.0), // Width and height of the line
              painter: DottedLinePainter(),
            ).marginOnly(bottom: 10.h),
            stepper(
                isSelected: (2 <= selectedIndex), img: AppAssets.shippingBoxIcon),
            CustomPaint(
              size: Size(50.w, 1.0), // Width and height of the line
              painter: DottedLinePainter(),
            ).marginOnly(bottom: 10.h),
            stepper(
                isSelected: (3 <= selectedIndex),
                img: AppAssets.shippingCargoIcon),
          ],
        ),
      ),
    );
  }

  Widget stepper({required bool isSelected, required String img}) {
    return Column(
      children: [
        Image.asset(img,
            scale: 17,
            color: isSelected ? AppColors.primary : AppColors.textGreyColor),
        SizedBox(
          height: 10.h,
        ),
        Icon(Icons.check_circle,
            color: isSelected ? AppColors.primary : AppColors.textGreyColor,
            size: 23)
      ],
    ).paddingHorizontal(8.w);
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey.shade300 // Color of the dotted line
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0 // Width of the dotted line
      ..style = PaintingStyle.stroke;

    const double dashWidth = 5.0; // Length of each dash
    const double dashSpace = 3.0; // Space between each dash

    double currentX = 0.0;
    while (currentX < size.width) {
      canvas.drawLine(
        Offset(currentX, size.height / 2),
        Offset(currentX + dashWidth, size.height / 2),
        paint,
      );
      currentX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
