import 'package:flutter/material.dart';
import 'package:coding_challenge_pinterest/UI/ui.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart'; 

class CheckAuthLoading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: _bodySplash(context),
      //backgroundColor: Colors.red,
      splashIconSize: double.infinity,
      nextScreen: HomeScreen(), //mainHiome
      duration: 2000,
      //centered: true,
      curve: Curves.easeInExpo,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRight, 
      animationDuration:const  Duration(microseconds: 1700), 
      );
  }


  Widget _bodySplash(context){
    final mediaquey = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [

        Column(
        children: [
        SizedBox(height: mediaquey.height * 0.43,),
        Lottie.asset('assets/splash/9929-colorful-loading-circle.json' ,
        height: 100 , width: 130),
        ],
      ),

      Positioned( 
        top: mediaquey.height * 0.93,
        child: const  Center(
          child: Text('BY Rodrigo Vidal' , 
          style: TextStyle(color:  Color.fromARGB(255, 60, 93, 202), fontSize: 17,   ) ),
        )),
      ],
    );
  }


  
}