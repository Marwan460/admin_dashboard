import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 220,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Assets.card),
            ),
            borderRadius: BorderRadius.circular(12),
            color: AppColors.blue,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 31, right: 45, top: 12),
              title:  Text('Name card', style: AppStyles.regular16(context).copyWith(color: AppColors.white),),
              subtitle:  Text('Syah Bandi', style: AppStyles.medium20(context),),
              trailing: SvgPicture.asset(Assets.gallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('0918 8124 0042 8129', style: AppStyles.semiBold24(context).copyWith(color: AppColors.white),),
                  Text('12/20 - 124', style: AppStyles.regular16(context).copyWith(color: AppColors.white),)
                ],
              ),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
