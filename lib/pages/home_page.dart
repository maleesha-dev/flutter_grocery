import 'package:flutter/material.dart';
import 'package:flutter_grocery/widgets/app_bar/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70, // default 56
        leadingWidth: 70,
        leading: appBarLeading,
        title: appBarTitle,
        actions: [appBarActions],
      ),
    );
  }
}
