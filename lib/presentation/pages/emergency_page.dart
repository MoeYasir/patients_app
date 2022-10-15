import 'package:flutter/material.dart';
import 'package:patient_app/data/hospital_data.dart';
import 'package:patient_app/domain/entites/hospital.dart';
import 'package:patient_app/presentation/widgets/hospital_list_item.dart';

class EmergencyPage extends StatelessWidget {
  EmergencyPage({Key? key}) : super(key: key);

  final List<Hospital> hospitals = HospitalData().getEmergencyHospitals(5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: hospitals.length,
          itemBuilder: (context, index) => HospitalListItem(
            hospital: hospitals[index],
          ),
        ),
      ),
    );
  }
}
