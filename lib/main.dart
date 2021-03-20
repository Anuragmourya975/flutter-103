import 'package:flutter/material.dart';
import 'first1.dart';
import '2nd1.dart';
import 'List101.dart';
import 'form.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  'https://cdn0.iconfinder.com/data/icons/avatar-batch-1/512/profile_icon-11-512.png',
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
                            fontSize: 16, fontWeight: FontWeight.w700),
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

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  var _screens = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    List102(),
  ];
  var _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("My Second Task"),
          actions: [
            GestureDetector(
              child: IconButton(
                icon: Icon(Icons.person_add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          title: Text('Create Your Own Profile'),
                        ),
                        body: LastScreen(),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        body: PageView(
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          controller: _pageController,
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
            List102(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('P1'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('P2'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('P3'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories_outlined),
              title: Text('Profile'),
              backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            _currentIndex = index;
            _pageController.animateToPage(_currentIndex,
                duration: Duration(milliseconds: 800),
                curve: Curves.elasticOut);
            setState(() {
              // _pageController.animateToPage(_currentIndex,
              //     duration: Duration(microseconds: 200), curve: Curves.linear);
            });
          },
        ),
      ),
    );
  }
}
