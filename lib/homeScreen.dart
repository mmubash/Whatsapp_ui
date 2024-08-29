import 'package:flutter/material.dart';
import 'package:whatsapp/callsPage.dart';
import 'package:whatsapp/chatsPage.dart';
import 'package:whatsapp/communitiesPage.dart';
import 'package:whatsapp/updatesPage.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  bool _isTapNavigation = false;
  PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _isTapNavigation = true;
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      if (_selectedIndex != index) {
        _isTapNavigation = false;
      }
      _selectedIndex = index;
    });
  }

  Widget _getUpdatePage() {
    if (_selectedIndex == 1) {
      return _isTapNavigation ? const UpdatesPageTap() : const UpdatesPageSwipe();
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          ChatsPage(),
          _getUpdatePage(),
          CommunitiesPage(),
          CallsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
