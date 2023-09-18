import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  late final HomeController homeController;

  HomeView({super.key}) {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 130,
              height: 130,
            ),
            SizedBox(
              height: 50,
            ),
            CurrencyBox(),
            SizedBox(
              height: 10,
            ),
            CurrencyBox(),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: Text('CONVERTER'))
          ],
        ),
      ),
    ));
  }
}
