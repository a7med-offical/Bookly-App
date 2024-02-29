import 'package:app/core/utlis/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../home/presenation/view/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slidingAnmation;

  @override
  void initState() {
    super.initState();
    AnimationFunc();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.KprimaryImage),
        SlideTransition(
            position: slidingAnmation,
            child: const Text(
              'Read free Books',
              textAlign: TextAlign.center,
            ))
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void AnimationFunc() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    slidingAnmation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();

    Future.delayed(
        const Duration(
          seconds: 1,
        ), () {
      Navigator.push(
        
          context,
          (MaterialPageRoute(
            
            builder: (ctxt) {
            return const HomeView();
          })));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
