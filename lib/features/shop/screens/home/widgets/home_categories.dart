import 'package:e_commerce_app/common/widgets/images_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              title: 'Shoes',
              image: TImages.shoeIcon,
              onTap: () {},
            );
          }),
    );
  }
}
