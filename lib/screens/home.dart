import 'package:flutter/material.dart';
import 'package:internshala_clone/widgets/drawer.dart';

class Home extends StatefulWidget {
  final String title;
  const Home({super.key, required this.title});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove the shadow
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      drawer: showDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  'Hi, Animesh',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.waving_hand,
                  color: Colors.orange,
                  size: 24,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Let's help you land your dream career",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'To Do List (2)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // First Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 2,
              child: ListTile(
                leading: Icon(
                  Icons.assignment, // Assignment icon
                  color: Colors.blue, // Blue color for the icon
                ),
                title: const Text('Assignment Pending'),
                subtitle: const Text(
                  '2 days to submit',
                  style: TextStyle(color: Colors.red),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Second Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 2,
              child: ListTile(
                leading: Icon(
                  Icons.assignment, // Assignment icon
                  color: Colors.blue, // Blue color for the icon
                ),
                title: const Text('Assignment Pending'),
                subtitle: const Text(
                  '2 days to submit',
                  style: TextStyle(color: Colors.red),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: const [
                Text(
                  'Trending on Internshala',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.local_fire_department_rounded,
                  color: Colors.orange,
                  size: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
