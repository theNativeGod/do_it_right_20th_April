import 'package:do_it_right/view_models/create_profile_provider.dart';
import 'package:do_it_right/view_models/profile_provider.dart';
import 'package:do_it_right/view_models/saju-jirugi_provider.dart';
import 'package:do_it_right/views/create_profile_screen/create_profile_screen.dart';
import 'package:do_it_right/views/login_screen/login_screen.dart';
import 'package:do_it_right/views/profile_screen/profile_screen.dart';
import 'package:do_it_right/views/saju-jirugi/saju_jirugi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CreateProfileProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => ProfileProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => SajuJirugiProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Do It Right',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: const Color(0xffcceffc),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
