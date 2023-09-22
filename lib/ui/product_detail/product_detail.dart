import 'package:digi_vegetable/ui/product_detail/helper/product_detail_button.dart';
import 'package:digi_vegetable/ui/product_detail/helper/product_detail_slider.dart';
import 'package:digi_vegetable/ui/product_detail/helper/product_detail_view.dart';

import '../utils/theme/theme.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProductDetailSlider(),
                      ProductDetailView(),
                    ],
                  ),
                ),
              ),
            ProductDetailButton()
            ],
        ),
      ),
    );
  }
}

