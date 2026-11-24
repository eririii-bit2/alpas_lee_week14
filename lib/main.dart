import 'package:material_ui/material_ui.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  // Run MappApp (which contains MaterialApp), NOT LoginScreen() directly
  runApp(const MappApp());
}

class MappApp extends StatelessWidget {
  const MappApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mapp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF16181A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF333333),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF14B8A6),
          surface: Color(0xFF16181A),
        ),
      ),
      // home: const LoginScreen(),
      home: const ProfileScreen(),
    );
  }
}