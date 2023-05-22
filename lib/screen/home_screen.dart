import 'dart:math';
import 'package:colorchanging/l10n/l10n.dart';
import 'package:colorchanging/utils/color.dart';
import 'package:colorchanging/utils/sizes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _currentColor = AppColors.black;

  void _changeColor() {
    setState(() {
      _currentColor = Color(Random().nextInt(0xffffffff)).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeColor,
        child: Container(
          color: _currentColor,
          child: Center(
            child: Text(
              bodyText,
              style: TextStyle(color: AppColors.white, fontSize: Dimensions.xxlg),
            ),
          ),
        ),
      ),
    );
  }
}