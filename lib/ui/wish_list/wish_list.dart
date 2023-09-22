import 'package:digi_vegetable/frame_work/controller/wishlist_controller/wishlist_controller.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import '../utils/common_widget/common_product_card.dart';
import '../utils/theme/theme.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CommonAppbar(title: "WishList"),
            Expanded(
                child:
                Consumer(
                  builder: (context, ref, child) {
                    final wishListWatch = ref.watch(wishListController);
                    return wishListWatch.wishList.isEmpty? Center(
                      child: Column(
                        children: [
                          TextButton(onPressed: (){
                          }, child: const Text("Add Product to WishList"))
                        ],
                      ),
                    ):
                    SizedBox(
                        width: context.screenWidth,
                        child: Wrap(
                            runSpacing: 20,
                            alignment: WrapAlignment.spaceEvenly,
                            children: List.generate(
                                wishListWatch.wishList.length,
                                    (index) {
                                  final product = wishListWatch
                                      .wishList[index];
                                  return CommonProductCard(
                                    productData: product,
                                    onSelected: (val) {
                                      switch (val) {
                                        case "500g":
                                          wishListWatch.getItemOfData(
                                              index, "500g");
                                          break;
                                        case "1Kg":
                                          wishListWatch.getItemOfData(
                                              index, "1Kg");
                                          break;
                                        case "2Kg":
                                          wishListWatch.getItemOfData(
                                              index, "2Kg");
                                          break;
                                        case "4Kg":
                                          wishListWatch.getItemOfData(
                                              index, "4Kg");
                                          break;
                                        case "5Kg":
                                          wishListWatch.getItemOfData(
                                              index, "5Kg");
                                          break;
                                      }
                                    },
                                    likeButton: () {
                                      wishListWatch.removeData(product);
                                    },
                                  );
                                })));
                  },
                ))
          ],
        ),
      ),
    );
  }
}