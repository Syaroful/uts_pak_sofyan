import 'package:flutter/material.dart';
import 'package:uts_pak_sofyan/Widgets/banner.dart';
import 'package:uts_pak_sofyan/Widgets/category.dart';
import 'package:uts_pak_sofyan/Widgets/main_feature_card.dart';
import 'package:uts_pak_sofyan/Widgets/top_bar.dart';
import 'package:uts_pak_sofyan/Widgets/user_card.dart';
import 'package:uts_pak_sofyan/config/app_asset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> body = [
    MainHomePage(),
    Center(
      child: Image.asset(
        'assets/images/app-development1.png',
        width: 200,
      ),
    ),
    Center(
      child: Image.asset(
        'assets/images/app-development2.png',
        width: 200,
      ),
    ),
    Center(
      child: Image.asset(
        'assets/images/app-development3.png',
        width: 200,
      ),
    ),
    Center(
      child: Image.asset(
        'assets/images/app-development4.png',
        width: 200,
      ),
    ),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color(0xffF7F8FD),
        body: body[_currentIndex],
        floatingActionButton: FloatingActionButton(
            onPressed: () => {
                  setState(() {
                    _currentIndex = 2;
                  })
                },
            child: ImageIcon(
              AssetImage(AppAsset.icon_pay),
              size: 32,
              color: Colors.white,
            ),
            backgroundColor: Color(0xffE82529)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xffE82529),
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAsset.icon_home)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAsset.icon_history)),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAsset.icon_pay)),
              label: 'Pay',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAsset.icon_inbox)),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAsset.icon_account)),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

class MainHomePage extends StatelessWidget {
  const MainHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBar(),
        SizedBox(height: 16),
        UserCard(),
        SizedBox(height: 16),
        MainFeatureCard(),
        SizedBox(height: 24),
        Category(),
        SizedBox(height: 24),
        BannerSlider(),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
