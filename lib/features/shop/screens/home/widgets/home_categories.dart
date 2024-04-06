import 'package:e_commerce_app/common/widgets/images_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/features/shop/screens/sub_cateogory/sub_category.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return TVerticalImageText(
                title: 'Shoes',
                image: TImages.shoeIcon,
                onTap: () => Get.to(() => const SubCategoriesScreen()),
              );
            }),
      ),
    );
  }
}
