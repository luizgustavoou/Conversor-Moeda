import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
        child: Column(
          children: [
            Text('Hello world!'),
            Image.asset(
              'assets/images/logo.png',
              width: 130,
              height: 130,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton(
                            isExpanded: true,
                            underline: Container(
                              height: 1,
                              color: Colors.amber,
                            ),
                            value: 'a',
                            items: [
                              DropdownMenuItem(value: 'a', child: Text('Real')),
                              DropdownMenuItem(value: 'b', child: Text('Dolar'))
                            ],
                            onChanged: (value) {}),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 2,
                      child: TextField(
                          onChanged: (text) {},
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.amber))))),
                ],
              ),
            ),
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
