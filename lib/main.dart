// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/* ------------------------------ DEPENDENCIES ------------------------------ */
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loading_indicator/loading_indicator.dart';
// import 'package:loading_indicator/loading_indicator.dart';

/* ---------------------------------- PAGE ---------------------------------- */
import 'package:sahabat_taman/intro_loginRegister/intro.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());

  // whenever your initialization is completed, remove the splash screen:
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

/* --------------------------- LOADING SCREEN AWAL -------------------------- */
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // DURASI
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          // ROUTE
          MaterialPageRoute(
            builder: (context) => const Intro(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 63, 93, 79),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CONTENT

              Text(
                'Sahabat Setia, Untuk Solusi Taman Anda',
                // STYLE
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Passero',
                  color: Colors.white,
                ),
              ),

              // BATAS ATAS/BAWAH
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Image.asset(
                  'asset/images/logo.png',
                  height: 250,
                ),
              ),

              SizedBox(
                height: 40,
                child: LoadingIndicator(
                  indicatorType: Indicator.lineSpinFadeLoader,
                  colors: const [Colors.white],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
