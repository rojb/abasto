import 'package:abasto/config/constants/app_icons.dart';
import 'package:abasto/config/theme/app_colors.dart';
import 'package:abasto/config/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String initialValue;
  final Function(String) onChanged;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      constraints: BoxConstraints(minWidth: 106, maxWidth: 106),
      decoration: BoxDecoration(
        color: AppColors.grey200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: PopupMenuButton<String>(
        onSelected: (value) {
          setState(() => selectedValue = value);
          widget.onChanged(value);
        },
        itemBuilder: (context) {
          return widget.items.map((item) {
            return PopupMenuItem<String>(
              value: item,
              child: Text(item, style: AppTextStyles.dropdownInput),
            );
          }).toList();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(selectedValue, style: AppTextStyles.dropdownInput),
              SvgPicture.asset(AppIcons.arrowDown),
            ],
          ),
        ),
      ),
    );
  }
}
