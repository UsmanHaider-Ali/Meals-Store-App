import 'package:flutter/material.dart';
import '../tabs/categories_tab.dart';
import '../tabs/favourite_tab.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _tabs;

  int _currentSelectedIndex = 0;

  @override
  void initState() {
    _tabs = [
      {
        'page': const CategoriesTab(),
        'title': 'Categories',
      },
      {
        'page': const FavouriteTab(),
        'title': 'Favourite',
      }
    ];
    super.initState();
  }

  void _changeTab(int index) {
    setState(() {
      _currentSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            _tabs[_currentSelectedIndex]['title'] as String,
          ),
        ),
        body: Center(
          child: _tabs[_currentSelectedIndex]['page'] as Widget,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _changeTab,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: _currentSelectedIndex,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Colors.blue,
          // elevation: 20,
          // enableFeedback: true,
          // selectedIconTheme: IconThemeData(
          //   size: 16,
          // ),
          // unselectedIconTheme: IconThemeData(
          //   size: 12,
          // ),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                label: 'Favourite'),
          ],
        ),
      ),
    );
  }
}
