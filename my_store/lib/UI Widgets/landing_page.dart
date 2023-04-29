import 'package:flutter/material.dart';
import 'package:my_store/UI%20Widgets/product_grid_view.dart';

import 'my_navigation_rail.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: const [MyNavigationRail(), Expanded(child: ProductGridView())],
    ));
  }
}
