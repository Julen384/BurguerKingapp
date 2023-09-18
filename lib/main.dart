import 'package:flutter/material.dart';
import 'package:primerito2/inicio.dart';
import 'package:primerito2/myBk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter con Violeta',
      theme: ThemeData(
        fontFamily: 'FlameBold2',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo de Julen'),
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
  int currentPageIndex = 0;
  List<Widget> _pages= [
    InicioPage(),
    MyBKPage()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 235, 222),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromARGB(255, 243, 235, 222),
        height: 80,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined, size: 40),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.star_border_outlined, size: 40),
            selectedIcon: Icon(Icons.star),
            label: 'My BK',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.fastfood),
            icon: Icon(Icons.fastfood_outlined, size: 40),
            label: 'Carta',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.delivery_dining),
            icon: Icon(Icons.delivery_dining_outlined, size: 40),
            label: 'Servicios',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_4),
            icon: Icon(Icons.person_4_outlined, size: 40),
            label: 'Perfil',
          ),
        ],
      ),
      body: _pages[currentPageIndex],
    );
  }
}
