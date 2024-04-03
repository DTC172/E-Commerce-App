import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/customs_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/list_title/settings_menu_title.dart';
import 'package:e_commerce_app/common/widgets/list_title/user_profile_title.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  /// User Profile Card
                  const TUserProfileTitle(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  const TSettingMenuTitle(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subtitle: 'Set shopping delivery address'),
                  const TSettingMenuTitle(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove products from cart'),
                  const TSettingMenuTitle(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'View your orders'),
                  const TSettingMenuTitle(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account'),
                  const TSettingMenuTitle(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List of all available coupons'),
                  const TSettingMenuTitle(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notifications messages'),
                  const TSettingMenuTitle(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected accounts'),

                  /// -- App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSettingMenuTitle(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your cloud firebase',
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommended based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search results are filtered for all ages',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// -- Log out button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Log Out'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
