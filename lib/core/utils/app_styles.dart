import 'package:admin_dashboard/core/utils/app_colors.dart';
import 'package:admin_dashboard/core/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: AppColors.primary,
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: AppColors.primary,
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: AppColors.primary,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.bold,
      color: AppColors.blue,
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: AppColors.primary,
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: AppColors.white,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    );
  }

  static  TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: AppColors.blue,
    );
  }

  static  TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    );
  }

  static  TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: AppColors.blue,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1800;
  }
}
