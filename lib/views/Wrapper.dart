import 'package:flutter/material.dart';
import 'package:meal_kit_flutter/views/pages.dart';
import 'package:provider/provider.dart';
import '../model/User.dart';

class Wrapper extends StatelessWidget {
  static final routeName = "Wrapper";
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);
    //return either home or authenticate widget based on the changed state
    if (user != null) {
      return const HomePage();
    }
    return const LoginPage();
  }
}
