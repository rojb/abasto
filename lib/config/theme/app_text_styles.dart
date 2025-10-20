import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  /* Inputs */
  static final dropdownInput = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static final searchInputHint = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.grey700,
    height: 2.3,
  );

  /* Headlines */
  static final mainPageHeadline = GoogleFonts.inter(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    height: 0.63,
  );

  static final pageHeadline = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    height: 0,
  );

  static final mainSectionHeadline = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 0.93,
  );

  static final sectionHeadline = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 1.5,
  );

  static final mainSectionOption = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    height: 1.15,
  );

  /* Address */
  static final currentAddressTitle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.grey600,
  );

  static final currentAddressBody = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    height: 0,
  );

  /* Promo banner */
  static final mainPromoCardTitle = GoogleFonts.poppins(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    height: 1.02,
  );

  static final mainPromoCardDescription = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    height: 1.5,
  );

  static final mainPromoCardButton = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    height: 2.3,
  );

  /* Category banner */
  static final categoryBannerTitle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 0.4,
  );
}
