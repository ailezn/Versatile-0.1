import 'package:flutter/material.dart';
import 'package:versatile_app/widgets/navigationbar.dart';
import 'package:versatile_app/screens/recommended_screen.dart';
import 'package:versatile_app/screens/add_screen.dart';
import 'package:versatile_app/screens/cupboard_screen.dart';
import 'package:versatile_app/screens/profile_screen.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    RecommendedScreen(),
    AddScreen(),
    CupboardScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBarWidget(onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 852,
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 254, 254, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 83,
            left: 16,
            child: Text(
              'Welcome',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 43, 1),
                fontFamily: 'SF Pro Rounded',
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 107,
            left: 16,
            child: Text(
              'Viera Vaziera',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(73, 73, 141, 1),
                fontFamily: 'SF Pro Rounded',
                fontSize: 24,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 83,
            left: 326,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Color.fromRGBO(162, 162, 208, 1),
                  width: 2,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 167,
            left: 16,
            right: 16,
            child: Container(
              height: 297,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.1,
                ),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/banner1.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/banner2.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/banner3.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'My Activity',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(73, 73, 141, 1),
                          fontFamily: 'SF Pro Rounded',
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ActivityCard(
                    title: 'Outfit Journey',
                    subtitle: 'See your outfit journey',
                  ),
                  SizedBox(height: 20),
                  ActivityCard(
                    title: 'Recommendation',
                    subtitle: 'See ideas for your outfit',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title;
  final String subtitle;

  ActivityCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(4, 4),
            blurRadius: 8,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(254, 254, 254, 1),
        border: Border.all(
          color: Color.fromRGBO(162, 162, 208, 1),
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 43, 1),
              fontFamily: 'SF Pro Rounded',
              fontSize: 20,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
          SizedBox(height: 8),
          Text(
            subtitle,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(73, 73, 141, 1),
              fontFamily: 'SF Pro Rounded',
              fontSize: 12,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
