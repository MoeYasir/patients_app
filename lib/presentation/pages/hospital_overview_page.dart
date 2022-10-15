import 'package:flutter/material.dart';
import 'package:patient_app/data/location.dart';
import 'package:patient_app/domain/entites/hospital.dart';
import 'package:patient_app/presentation/widgets/custom_button.dart';
import 'package:patient_app/presentation/widgets/custom_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class HospitalOverviewPage extends StatelessWidget {
  final Hospital hospital;

  HospitalOverviewPage({Key? key, required this.hospital})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Location location = Location();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        foregroundColor: Colors.blue[400],
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  hospital.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${hospital.location} km",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIcon(
                          available: hospital.hasICU,
                          icon: 'assets/icons/icu.png',
                          size: 50,
                        ),
                        Text(
                          "ICU",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIcon(
                          available: hospital.hasAmbulance,
                          icon: 'assets/icons/icons8-ambulance-64.png',
                          size: 50,
                        ),
                        Text(
                          "Ambulance",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.green[100],
                  child: Text(
                    hospital.hasAmbulance
                        ? "Call Hospital"
                        : "Call Private Ambulance",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    launchUrl(phoneLaunchUri(hospital.phoneNumber.toString()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Uri phoneLaunchUri(String phoneNumber) => Uri(
    scheme: "tel",
    path: "0" + phoneNumber,
  );
}
