import 'package:flutter/material.dart';
import 'package:internshala_clone/screens/Helpcenter.dart';
import 'package:internshala_clone/screens/More.dart';
import 'package:internshala_clone/screens/report.dart';
import 'package:internshala_clone/widgets/bottomnavbar.dart';
import '../commons/boxes.dart';
import 'circleavatar.dart';
import 'icontext_widget.dart';

Drawer showDrawer(BuildContext context) {
  return Drawer(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            Boxes.largeHeightBox,
            const Text(
              'Animesh Pandey',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const Text('animesh.12012001@iiitsonepat.ac.in'),
            Boxes.mediumHeightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // Handle Preferences click
                  },
                  child: const CircleAvatarWidget(text: 'Preferences'),
                ),
                InkWell(
                  onTap: () {
                    // Handle Resume click
                  },
                  child: const CircleAvatarWidget(text: 'Resume'),
                ),
                InkWell(
                  onTap: () {
                    // Handle Applications click
                  },
                  child: const CircleAvatarWidget(text: 'Applications'),
                ),
              ],
            ),
            Boxes.mediumHeightBox,
            const Divider(
              thickness: 0.5,
            ),
            Boxes.mediumHeightBox,
            const Text('EXPLORE'),
            ListTile(
              leading: const Icon(Icons.send_sharp),
              title: const Text('Internships'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()),
                ); // Navigate to BottomNavBar
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail_outline),
              title: const Text('Jobs'),
              onTap: () {
                // Handle Jobs click
                Navigator.pop(context); // Close the drawer
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.screen_lock_landscape),
              title: const Text('Courses'),
              onTap: () {
                // Handle Courses click
              },
            ),
            ListTile(
              leading: const Icon(Icons.work_outline_outlined),
              title: const Text('Placement Guarantee Courses'),
              onTap: () {
                // Handle Placement Guarantee Courses click
              },
            ),
            ListTile(
              leading: const Icon(Icons.language_outlined),
              title: const Text('Study Abroad'),
              onTap: () {
                // Handle Study Abroad click
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Study in India'),
              onTap: () {
                // Handle Study in India click
              },
            ),
            ListTile(
              leading: const Icon(Icons.laptop),
              title: const Text('Online Degrees'),
              onTap: () {
                // Handle Online Degrees click
              },
            ),
            Boxes.mediumHeightBox,
            const Text('HELP & SUPPORT'),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help Center'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Help(
                            title: 'Help Center',
                          )),
                ); // Navigate to BottomNavBar
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat_bubble_outline),
              title: const Text('Report a complaint'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReportCenter(
                            title: 'Report a complaint',
                          )),
                ); // Navigate to BottomNavBar
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('More'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MorePage(
                            title: 'More',
                          )),
                ); // Navigate to BottomNavBar
              },
            ),
          ],
        ),
      ),
    ),
  );
}
