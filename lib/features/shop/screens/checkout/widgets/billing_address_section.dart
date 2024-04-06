import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TSectionHeading(
              title: 'Shipping Address',
              buttonTitle: 'Change',
              showActionButton: true,
              onPressed: () {}),
          Text('John Doe', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.grey, size: 16),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('+1 123 456 7890',
                  style: Theme.of(context).textTheme.bodyMedium)
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          Row(
            children: [
              const Icon(Icons.location_history, color: Colors.grey, size: 16),
              const SizedBox(width: TSizes.spaceBtwItems),
              Expanded(
                  child: Text('Hoang Hoa Tham, Ba Dinh, Ha Noi',
                      style: Theme.of(context).textTheme.bodyMedium,
                      softWrap: true))
            ],
          )
        ],
      ),
    );
  }
}
