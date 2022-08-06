import 'package:app/controllers/home_controller.dart';
import 'package:app/sources/values/sting.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../widgets/custom_country_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page title',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Roboto',
              fontSize: 20,
              letterSpacing: 0.15000000596046448,
              fontWeight: FontWeight.normal,
              height: 1.2),
        ),
      ),
      body: FooterView(
          footer: Footer(
            backgroundColor: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              homePageFooterText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          children: [
            Center(
              child: GetBuilder<HomeController>(builder: (controller) {
                return Column(
                  children: [
                    const Text(
                      "Language",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCountryButton(
                          country: 'icons/flags/png/kr.png',
                          onPressed: () => log.d("Logger is working!"),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomCountryButton(
                          country: 'icons/flags/png/jp.png',
                          onPressed: () => print('Hello, World!'),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomCountryButton(
                          country: 'icons/flags/png/ch.png',
                          onPressed: () => {controller.onImageButtonPressed()},
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ),
          ]),
    );
  }
}
