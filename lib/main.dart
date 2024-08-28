import 'package:flutter/material.dart';
import 'package:internshala_clone/widgets/bottomnavbar.dart';
import 'package:provider/provider.dart';
import 'providers/internship_provider.dart';
import 'screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InternshipProvider>(
        create: (_) => InternshipProvider(),
        child: MaterialApp(
            title: 'Internshala',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
              useMaterial3: true,
            ).copyWith(
              textTheme: GoogleFonts.interTextTheme(),
            ),
            home:
                BottomNavBar() //Screen to navigate to once the splashScreen is done.

            ));
  }
}
