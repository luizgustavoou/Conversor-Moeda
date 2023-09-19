import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeController homeController;
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  //Há três formas de resolver o overflo bottom
  // 1) Colocando SingleChildScrollView antes do primeiro COLUMN que está após o PADDING
  // 2) coloar a propriedade resizeToAvoidBottomInset: false dentro do Scaffold (ruim pois nao consegue ver o botao)
  // 3) Trocar o primeiro COLUMN que está após o PADDING por um widget chamado ListVIEW
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
        child: SingleChildScrollView(
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
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: homeController.toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model!;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: homeController.fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model!;
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    homeController.converter();
                  },
                  child: Text('CONVERTER'))
            ],
          ),
        ),
      ),
    ));
  }
}
