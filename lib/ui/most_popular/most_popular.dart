import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'helper/most_popular_header.dart';
import 'helper/most_popular_product_card.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CommonAppbar(title: "Most Popular",),
            SizedBox(height: 10.h,),
            const MostPopularHeader(),
            SizedBox(height: 10.h,),
            const Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: MostPopularProductCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
