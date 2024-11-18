import 'package:flutter/material.dart';
import 'package:wisata_candi_faldi/screens/favorite_screen.dart';
import 'package:wisata_candi_faldi/screens/home_screen.dart';
import 'package:wisata_candi_faldi/screens/profile_screen.dart';
import 'package:wisata_candi_faldi/screens/search_screen.dart';
import 'package:wisata_candi_faldi/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(),
      home: MainScreen(),
    );
}
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // TODO: 1. Deklarasikan Variabel
  int _currentIndex = 0;
  final List<Widget>_children=[
    Homescreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   TODO: 2. Buat Properti body berupa widget yang di tampilkan
      body: _children[_currentIndex],
    //   TODO: 3. Buat Properti bottomNavigationBar dengan nilai Theme
      bottomNavigationBar: Theme(
    //   TODO: 4. Buat data dan child dari Theme
        data: Theme.of(context).copyWith(
      canvasColor: Colors.deepPurple[50],
    ),
      child: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index){},
      items: const[],
    selectedItemColor: Colors.deepPurple,
    unselectedItemColor: Colors.deepPurple[100],
    showUnselectedLabels: true,
    ),
    ),
    );
  }
}




