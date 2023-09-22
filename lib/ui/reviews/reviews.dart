import 'package:digi_vegetable/ui/reviews/helper/review_rating_bar.dart';
import 'package:digi_vegetable/ui/reviews/helper/review_tile.dart';

import '../utils/common_widget/common_appbar.dart';
import '../utils/theme/theme.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CommonAppbar(title: "Reviews",),
            SizedBox(height: 10.h,),
            const ReviewRatingBar(),
            SizedBox(height: 10.h,),
            const Expanded(
              child: ReviewTile(),
            )
          ],
        ),
      ),
    );
  }
}
