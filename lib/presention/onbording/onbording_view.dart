import 'package:flutter/material.dart';
import 'package:storezewin/presention/resources/color_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorManager.white ,
      body: const Center(child: Text('data')),
    );
  }
}
