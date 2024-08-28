import 'package:flutter/material.dart';
import 'package:internshala_clone/widgets/drawer.dart';

class MorePage extends StatefulWidget {
  final String title;
  const MorePage({super.key, required this.title});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
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
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      drawer: showDrawer(context),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Safety Tips'),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Terms and Conditions'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy Policy'),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Update Password'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
