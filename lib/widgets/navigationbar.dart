import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  NavigationBarWidget({required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 254, 254, 1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: () => onItemTapped(0),
            child: BottomNavItem(title: 'Home', isSelected: selectedIndex == 0),
          ),
          GestureDetector(
            onTap: () => onItemTapped(1),
            child: BottomNavItem(title: 'Recommended', isSelected: selectedIndex == 1),
          ),
          GestureDetector(
            onTap: () => onItemTapped(2),
            child: BottomNavItem(title: 'Add', isSelected: selectedIndex == 2),
          ),
          GestureDetector(
            onTap: () => onItemTapped(3),
            child: BottomNavItem(title: 'Cupboard', isSelected: selectedIndex == 3),
          ),
          GestureDetector(
            onTap: () => onItemTapped(4),
            child: BottomNavItem(title: 'Profile', isSelected: selectedIndex == 4),
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  BottomNavItem({required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Color.fromRGBO(73, 73, 141, 1) : Colors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 4),
        isSelected
            ? Container(
                height: 2,
                width: 20,
                color: Color.fromRGBO(73, 73, 141, 1),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
