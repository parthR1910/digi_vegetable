import 'dart:ui';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import '../theme/theme.dart';


///----------------------------- busy over lay for loading ----------------------///

class CommonLoading extends StatelessWidget {
  const CommonLoading({
    super.key,
    required this.child,
    required this.show,
  });
  final Widget child;
  final bool show;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Material(
      child: IgnorePointer(
        ignoring: show,
        child: Stack(
          children: [
            child,
            if (show)
              BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
                child: Container(
                  height: size.height,
                  width: size.width,
                  color: Colors.black26,
                  child: Center(
                    child: Container(
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: context.colorScheme.primary,
                          ),
                        )),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
