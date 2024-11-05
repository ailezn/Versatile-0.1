import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class NavigationBarWidget extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const NavigationBarWidget({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      selectedItemColor: Colors.blue, // Set color for selected item here
      unselectedItemColor: Colors.black, // Set color for unselected items here
      backgroundColor: Colors.red,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            SFSymbols.house,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            SFSymbols.staroflife,
            color: Colors.black,
          ),
          label: 'Recommend',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            SFSymbols.plus_circle,
            color: Colors.black,
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            SFSymbols.cube_box,
            color: Colors.black,
          ),
          label: 'Cupboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            SFSymbols.person,
            color: Colors.black,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
