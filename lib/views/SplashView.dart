// ignore_for_file: use_build_context_synchronously

import 'package:basketball_app/views/HomeView.dart';
import 'package:flutter/material.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
@override
@override

  

class _SplashViewState extends State<SplashView> {

@override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Homeview()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image:  AssetImage("Assets/Images/25cad4c635d9b15878243f59ddbf6097.jpg")
          )
        ),
        

      ),
    );
  }
}
