import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
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
    HospitalData hospitalData = HospitalData();

    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency"),
      ),
      body: FutureBuilder(
          future:hospitalData.getEmergencyHospitals(7),
          builder:
              (BuildContext context, AsyncSnapshot<List<Hospital>> snapshot) {
            // print(snapshot.data[0][0]);
            return snapshot.connectionState == ConnectionState.done
                ? Container(
              child: ListView.builder(
                itemCount: 5,
                  itemBuilder: (context, index) {
                    return HospitalListItem(hospital: snapshot.data![index]);
                  })
            )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }

  Future getEmergencyHospitalsFromDatabase() async {
    // final List<ParseObject>allObjects = ArrayList<ParseObject>();
    // final ParseQuery parseQuery = new ParseQuery("UserDetails");
    // parseQuery.setLimit(1000);
    // parseQuery.findInBackground(getAllObjects());
    //

    QueryBuilder queryBuilder =
    QueryBuilder<ParseObject>(ParseObject('HospitalDetails'))
      ..orderByDescending('createdAt');
    queryBuilder.setLimit(10000);
    var response = await queryBuilder.query();
    return response.result;
  }
}
