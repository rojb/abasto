import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

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

  /* Product card */
  static final productCardTitle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    height: 1.25,
  );

  static final productCardName = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 1.25,
  );

  static final productCardButton = GoogleFonts.inter(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    color: AppColors.black,
    height: 1.18,
  );

  static final productCardPrice = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    height: 1.07,
  );

  static final productCardOldPrice = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.grey700,
    height: 1.25,
  );

  /* Secondary product banner */
  static final secondaryBannerTitle = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    height: 1,
  );

  static final secondaryBannerDescription = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    height: 1.84,
  );

  static final secondaryBannerButton = GoogleFonts.inter(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    height: 2.36,
    letterSpacing: 0,
  );
}
