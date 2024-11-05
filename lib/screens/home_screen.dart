import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:versatile_app/widgets/navigationbar.dart';
import 'package:versatile_app/screens/recommended_screen.dart';
import 'package:versatile_app/screens/add_screen.dart';
import 'package:versatile_app/screens/cupboard_screen.dart';
import 'package:versatile_app/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> banners = [
    'assets/images/banner2.png',
    'assets/images/banner1.png',
    'assets/images/banner3.png',
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.pushNamed(context, '/recommend');
        break;
    }
  }

  // // disini rubah jadi ada kondisi (bisa pakek switch atau if else)
  // final List<Widget> _screens = [
  //   HomeScreen(),
  //   RecommendedScreen(),
  //   AddScreen(),
  //   CupboardScreen(),
  //   ProfileWidget(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 852,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(254, 254, 254, 1),
        ),
        child: Stack(
          children: <Widget>[
            const Positioned(
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
            const Positioned(
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileWidget()),
                  );
                },
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: const Color.fromRGBO(162, 162, 208, 1),
                      width: 2,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 167,
              left: 0,
              right: 0,
              child: Container(
                height: 297,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1,
                  ),
                  itemCount: banners.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(banners[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 0,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Row(
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
                    const SizedBox(height: 20),
                    Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          ActivityCard(
                            title: 'Outfit Journey',
                            subtitle: 'See your outfit journey',
                            icon: SFSymbols.calendar,
                          ),
                          const SizedBox(height: 20),
                          const ActivityCard(
                            title: 'Recommendation',
                            subtitle: 'See ideas for your outfit',
                            icon: SFSymbols.staroflife,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarWidget(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the tap event ntar disini
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              offset: Offset(4, 4),
              blurRadius: 8,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromRGBO(254, 254, 254, 1),
          border: Border.all(
            color: const Color.fromRGBO(162, 162, 208, 1),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon, color: const Color.fromRGBO(73, 73, 141, 1)),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 43, 1),
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 20,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
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
              ],
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
