import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3ab/controller/lang_controller.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';

class LangButton extends GetView<LangControllerImp> {
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const LangButton({
    super.key,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 360,
          decoration: BoxDecoration(
            color: selected ? const Color(0xFF0E2B16) : const Color(0xFF171C17),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: selected ? const Color(0xFF00C853) : Colors.transparent,
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: controller.selectedLang == "ar"
                            ? AppFonts.cairo
                            : null,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontFamily: controller.selectedLang == "ar"
                            ? AppFonts.cairo
                            : null,
                      ),
                    ),
                  ],
                ),
              ),

              Icon(
                selected ? Icons.check_circle : Icons.radio_button_unchecked,
                color: selected ? const Color(0xFF00C853) : Colors.grey,
                size: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
