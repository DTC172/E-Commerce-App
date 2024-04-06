import 'package:e_commerce_app/common/widgets/products/cart/add_remove.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                const SizedBox(width: 70),
                const TCartItem(),
                if (showAddRemoveButtons)
                  const SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (showAddRemoveButtons)
                      const Row(
                        children: [
                          /// Extra Space
                          SizedBox(width: 70),

                          /// Add Remove button
                          TProductQuantityWithAddRemove(),
                          SizedBox(width: TSizes.spaceBtwItems),
                        ],

                        /// Product Total Price
                      ),
                    if (showAddRemoveButtons)
                      const TProductPriceText(price: '256'),
                  ],
                ),
              ],
            ),
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemCount: 2);
  }
}
