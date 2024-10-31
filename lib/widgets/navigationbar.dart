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
      items: const [
        BottomNavigationBarItem(
          icon: Icon(SFSymbols.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(SFSymbols.staroflife),
          label: 'Recommend',
        ),
        BottomNavigationBarItem(
          icon: Icon(SFSymbols.plus_circle),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(SFSymbols.cube_box),
          label: 'Cupboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(SFSymbols.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
