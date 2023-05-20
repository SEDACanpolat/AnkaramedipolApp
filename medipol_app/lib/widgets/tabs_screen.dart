import 'package:flutter/material.dart';
import 'package:medipol_app/screens/feeds_screen.dart';
import 'package:medipol_app/screens/hospital.dart';
import 'package:medipol_app/widgets/categories.dart';
import 'package:medipol_app/widgets/main_drawer.dart';


class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': FeedsScreen(), 'title': "İçerik"},
    {'page': CategoriesScreen(), 'title': "Kampüs Hayatı"},
    {'page': Hospital(), 'title': "Hastane"},
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star_purple500),
            label: "İçerik",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Kampüs Hayatı",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_hospital_outlined,
            ),
            label: "Hastane",
          )
        ],
      ),
    );
  }
}
