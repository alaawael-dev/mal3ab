import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// Mal3ab Text Styles
///
/// Font strategy: every style has ONE definition that works for both languages.
/// - fontFamily = primary font (what's used for Latin/English glyphs)
/// - fontFamilyFallback = [Cairo] (automatically used for any glyph the
///   primary font doesn't have — i.e. Arabic text)
///
/// This means: no langCode checks, no separate Arabic-only classes, no
/// duplicated styles. Just use TextStylesTitles.titleLarge (or whichever)
/// regardless of which language is active — Flutter picks the right font
/// per-character automatically.
///
/// - BebasNeue         -> headlines/display, falls back to Cairo for Arabic
/// - BarlowCondensed   -> body/label/button text, falls back to Cairo for Arabic
/// - Cairo             -> used only as fallback, and for bilingual strings
///   where a single line mixes both scripts (e.g. "NEXT — التالي")

class AppFonts {
  static const String bebasNeue = 'BebasNeue';
  static const String barlowCondensed = 'BarlowCondensed';
  static const String cairo = 'Cairo';
}

class TextStylesTitles {
  // ---- DISPLAY ---- (rarely used, reserved for hero/splash moments)
  static const TextStyle xTitleLarge = TextStyle(
    fontFamily: AppFonts.bebasNeue,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 40,
    letterSpacing: 1.4,
    color: AppColors.pitchGreen,
    height: 1.1,
  );
  static const TextStyle xTitleMedium = TextStyle(
    fontFamily: AppFonts.bebasNeue,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 32,
    letterSpacing: 1.2,
    color: AppColors.chalk,
    height: 1.1,
  );

  // ---- HEADLINE ---- (screen titles, onboarding titles, e.g. "FIND YOUR FIELD")
  static const TextStyle titleLarge = TextStyle(
    fontFamily: AppFonts.bebasNeue,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 28,
    letterSpacing: 1.2,
    color: AppColors.chalk,
    height: 1.15,
  );
  static const TextStyle titleMedium = TextStyle(
    fontFamily: AppFonts.bebasNeue,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 24,
    letterSpacing: 1.0,
    color: AppColors.chalk,
    height: 1.15,
  );
  static const TextStyle titleSmall = TextStyle(
    fontFamily: AppFonts.bebasNeue,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 20,
    letterSpacing: 0.8,
    color: AppColors.pitchGreen,
  );
}

class TextStylesSub {
  // ---- TITLE ---- (section headers, card titles, field names)
  static const TextStyle largeSubtitles = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.chalk,
  );
  static const TextStyle mediumSubtitles = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.chalk,
  );
  static const TextStyle smallSubtitles = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.chalk,
  );

  // ---- BODY ---- (descriptions, paragraph text)
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.chalk,
    height: 1.4,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.chalk,
    height: 1.4,
  );
  static const TextStyle bodySmall = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.greyGreen,
    height: 1.35,
  );

  // ---- LABEL ---- (buttons, chips, tags, form labels)
  static const TextStyle labelLarge = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    color: AppColors.nightBg,
  );
  static const TextStyle labelMedium = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
    color: AppColors.greyGreen,
  );
  static const TextStyle labelSmall = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.3,
    color: AppColors.greyGreen,
  );
}

/// One-off styles that don't fit the Titles/Sub hierarchy.
/// Same fallback rule applies: primary font handles Latin, Cairo covers Arabic.
class AppTextStyles {
  // Bilingual button label, e.g. "NEXT — التالي" (single string, both scripts
  // at once — this is the one case that stays Cairo-primary, since a
  // fallback font can't be used for the *whole* string, only missing glyphs)
  static const TextStyle bilingualButton = TextStyle(
    fontFamily: AppFonts.cairo,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    color: AppColors.nightBg,
  );

  // Skip button (matches your current skip_button.dart usage)
  static const TextStyle skipLabel = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
    color: AppColors.greyGreen,
  );

  // Price / amount display (e.g. field booking price, "150 EGP")
  static const TextStyle price = TextStyle(
    fontFamily: AppFonts.bebasNeue,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 22,
    letterSpacing: 0.6,
    color: AppColors.amberGoal,
  );

  // Status / badge text (e.g. "Confirmed", "Cancelled")
  static const TextStyle statusSuccess = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.4,
    color: AppColors.neonTurf,
  );
  static const TextStyle statusError = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.4,
    color: AppColors.redCard,
  );

  // Input field text (forms: phone number, name, etc.)
  static const TextStyle inputText = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.chalk,
  );
  static const TextStyle inputHint = TextStyle(
    fontFamily: AppFonts.barlowCondensed,
    fontFamilyFallback: [AppFonts.cairo],
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.greyGreen,
  );
}
