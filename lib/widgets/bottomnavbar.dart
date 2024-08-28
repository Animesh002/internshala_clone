import 'package:flutter/material.dart';
import 'package:internshala_clone/screens/home.dart';
import 'package:internshala_clone/screens/homepage.dart'; // Import MyHomePage
import 'package:url_launcher/url_launcher.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) async {
    if (index == 4) {
      const url =
          'https://trainings.internshala.com/?utm_source=is_app_bottom_navigation';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } else if (index == 3) {
      const url =
          'https://clubs.internshala.com/?utm_source=is_app&alp=dWlkPTIxOTI1MzQyJm10eXBlPWFsYSZzZD0yMDI0LTA4LTI3JnNpZz0yN2Q3NGMxM2VkYWI0M2YyY2MwMzdlZDYzMzE5ZTA5ZjNiMzM3MWQxNDAyYjViYjI2MDliNjllOGQ5MGZjMTY2';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Display content based on the selected index
        child: _getSelectedWidget(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Internships',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Clubs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Courses',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getSelectedWidget(int index) {
    switch (index) {
      case 0:
        return Home(
          title: 'Home',
        );
      case 1:
        return MyHomePage(
            title:
                'Internships'); // Show MyHomePage when 'Internships' is selected
      case 2:
        return MyHomePage(title: 'Jobs');
      default:
        return const Text('Home Screen');
    }
  }
}
