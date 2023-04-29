import 'package:flutter/material.dart';

class MyNavigationRail extends StatefulWidget {
  const MyNavigationRail({Key? key}) : super(key: key);

  @override
  _MyNavigationRailState createState() => _MyNavigationRailState();
}

class _MyNavigationRailState extends State<MyNavigationRail> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: NavigationRailLabelType.all,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home_outlined),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.badge_rounded),
          label: Text('Products'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.production_quantity_limits_outlined),
          label: Text('Carts'),
        ),
      ],
    );
  }
}
