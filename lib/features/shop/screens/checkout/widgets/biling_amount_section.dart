import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: TSizes.defaultSpace,
          right: TSizes.defaultSpace,
          top: TSizes.defaultSpace),
      child: Column(
        children: [
          /// SubTotal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
              Text('\$256', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),

          /// Shipping Fee
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping Fee',
                  style: Theme.of(context).textTheme.bodyMedium),
              Text('\$10', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),

          /// Tax Fee
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order Total',
                  style: Theme.of(context).textTheme.bodyMedium),
              Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),

          /// Order Total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order Total',
                  style: Theme.of(context).textTheme.bodyMedium),
              Text('\$256', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
