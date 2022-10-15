import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:patient_app/data/hospital_data.dart';
import 'package:patient_app/data/location.dart';
import 'package:patient_app/domain/entites/hospital.dart';
import 'package:patient_app/presentation/widgets/hospital_list_item.dart';

class EmergencyPage extends StatefulWidget {
  EmergencyPage({Key? key}) : super(key: key);

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  HospitalData hospitalData = HospitalData();
  List<Hospital> hospitals = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency"),
      ),
      body: FutureBuilder(
          future: hospitalData.getEmergencyHospitals(5),
          builder: (BuildContext context, AsyncSnapshot<List<Hospital>?> snapshot) {
            print(snapshot.data);
            return snapshot.connectionState == ConnectionState.done ?  Container(
              child: ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) => HospitalListItem(
                  hospital: snapshot.data![index],
                ),
              ),
            ) :     EasyLoading.show(status: "Loading...") as Widget;


          }),
    );
  }
}
