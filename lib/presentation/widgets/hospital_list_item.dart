import 'package:flutter/material.dart';
import 'package:patient_app/domain/entites/hospital.dart';
import 'package:patient_app/presentation/pages/hospital_overview_page.dart';

import 'custom_icon.dart';

class HospitalListItem extends StatelessWidget {

  final Hospital hospital;
  const HospitalListItem({Key? key, required this.hospital}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: GestureDetector(
        child: ListTile(
          title: Text(
            hospital.name,
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
            "${hospital.location} km",
            style: TextStyle(fontSize: 16),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIcon(
                available: hospital.hasICU,
                icon: Icons.dangerous,
                size: 50,
              ),
              CustomIcon(
                available: hospital.hasAmbulance,
                icon: Icons.dangerous,
                size: 50,
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HospitalOverviewPage(hospital: hospital,),
            ),
          );
        },
      ),
    );
  }
}
