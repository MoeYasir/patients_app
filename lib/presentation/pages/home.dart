import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:patient_app/presentation/pages/doctor_tab.dart';
import 'package:patient_app/presentation/pages/emergency_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        onTabChange: (i) {
          setState(() {
            index = i;
          });
        },
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.green.shade800,
        backgroundColor: Colors.black,
        gap: 8,
        padding: EdgeInsets.all(16),
        tabs: const [
          GButton(
            icon: Icons.dangerous,
            text: 'Emergency',
          ),
          GButton(
            icon: Icons.health_and_safety_rounded,
            text: 'Doctors',
          ),
          GButton(
            icon: Icons.local_pharmacy,
            text: 'Pharmacies',
          ),
          GButton(
            icon: Icons.dangerous,
            text: 'Emergency',
          ),
        ],
      ),
      body: index == 0
          ? EmergencyPage()
          : index == 1
              ? DoctorTab()
              : null,
    );
  }
}
