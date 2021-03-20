import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5.3),
                child: Text(
                  'Mahakal Institute Of \nTechnology & Managment',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 23.0,
                      fontFamily: "Prompt",
                      height: 1.2,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                  child: Text(
                'Behind Air Strip,Dewas Road,Ujjain-(0734-4050782,784)',
                textAlign: TextAlign.center,
              )),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.network(
                  'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/8_avatar-512.png',
                  height: 250,
                  width: 250,
                ),
              ),
              Stack(
                children: [
                  Center(
                    child: Image.network(
                        'https://img.collegedekhocdn.com/media/img/institute/logo/MIT.png',
                        height: 100,
                        width: 120,
                        color: Color.fromRGBO(
                          255,
                          255,
                          255,
                          0.3,
                        ),
                        colorBlendMode: BlendMode.modulate),
                  ),
                  Center(
                    child: Text(
                      'Anurag Mourya \nBETCH-CSE-2019-23 \nPratapcolony Pipliamandi, \nMandsour \n \n8839888531',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 130, 220, 0),
                    child: Center(
                      child: Image.network(
                        'https://img.icons8.com/ios/452/barcode.png',
                        height: 100,
                        width: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(160, 160, 0, 0),
                    child: Center(
                      child: Text(
                        'Director \nValid up to 30.06.23',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
