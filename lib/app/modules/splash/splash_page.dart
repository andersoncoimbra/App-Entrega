import 'package:dartweek/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:dartweek/app/core/ui/widgets/vakinha_button.dart';
import 'package:dartweek/app/core/ui/widgets/vakinha_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: context.heightTransformer(reducedBy: 85),
                  ),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(
                    height: 60,
                  ),
                  VakinhaButton(
                      label: 'Acessar',
                      width: context.widthTransformer(reducedBy: 40),
                      heigth: 35,
                      onPressed: () {
                        Get.toNamed('/auth/login');
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
