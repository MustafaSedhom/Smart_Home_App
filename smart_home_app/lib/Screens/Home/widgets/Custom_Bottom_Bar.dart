// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:smart_home_app/constants/Colors/App_Colors.dart';
import 'package:smart_home_app/constants/Images_and_Icons/Icons.dart';

class CustomBottomNavBar extends StatefulWidget {
  final Function(int index)? onTap; // 1. Added callback

  const CustomBottomNavBar({super.key, this.onTap});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            index: 0,
            icon_not_selected: App_Icons.Home_Icon,
            icon_selected: App_Icons.Home_Fill_Icon,
            label: 'Home',
          ),
          _buildNavItem(
            index: 1,
            icon_not_selected: App_Icons.Net_Icon,
            icon_selected: App_Icons.Net_Fill_Icon,
            label: "Smart",
          ),
          _buildNavItem(
            index: 2,
            icon_not_selected: App_Icons.Pie_Icon,
            icon_selected: App_Icons.Pie_Fill_Icon,
            label: "Usage",
          ),
          _buildNavItem(
            index: 3,
            icon_not_selected: App_Icons.User_Icon,
            icon_selected: App_Icons.User_Fill_Icon,
            label: "Person",
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon_selected,
    required String icon_not_selected,
    String? label,
  }) {
    final bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() => _selectedIndex = index);
        if (widget.onTap != null) {
          widget.onTap!(index); // 2. Trigger parent function on tap
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE8EFF5) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: isSelected
              ? Border.all(
                  color: App_Colors.Main_2_Color.withOpacity(0.2),
                  width: 1,
                )
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isSelected ? icon_selected : icon_not_selected,
              width: 25,
              color: isSelected
                  ? App_Colors.Main_2_Color
                  : App_Colors.Main_2_Color.withOpacity(0.4),
            ),
            if (isSelected && label != null) ...[
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  color: App_Colors.Main_2_Color,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
