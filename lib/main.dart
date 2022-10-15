import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:patient_app/presentation/pages/emergency_page.dart';
import 'package:patient_app/presentation/pages/home.dart';
import 'package:patient_app/presentation/pages/signup_login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = 'Ox9aRljoEqPp2v3HOpJfhVuUy10VNtzcFJvzm3uK';
  final keyClientKey = '5GL04wgCdSCRmUoTJWPJUS3wi2p5wZYnUDWAyo7s';
  final keyParseServerUrl = 'https://parseapi.back4app.com';
  // final keyApplicationId = 'NYjW8dnCs0AoD7fcpVVdLKFLUTjeskMvOeMkknU6';
  // final keyClientKey = 'fDu4yPWVxm9z6LdUXbggrAVQcFuzYfzvMoa4AWht';
  // final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: EasyLoading.init(),
        title: 'Healtha',
        theme: ThemeData(
            // scaffoldBackgroundColor: kPrimaryColor,
            textTheme: TextTheme(
              bodyText1: GoogleFonts.poppins().copyWith(color: Colors.white),
              bodyText2: GoogleFonts.poppins().copyWith(color: Colors.black),

              // bodyText2: GoogleFonts.poppins().copyWith(color: Color(0xffF8ECD1)),
            ),
            primaryIconTheme: const IconThemeData(color: Colors.black)),
        home: Home());
  }
}
