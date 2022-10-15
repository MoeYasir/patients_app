import 'package:flutter/material.dart';
import 'package:patient_app/presentation/widgets/custom_button.dart';
import 'package:patient_app/presentation/widgets/custom_icon.dart';

class HospitalOverviewPage extends StatelessWidget {
  const HospitalOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Hospital Name",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Distance",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIcon(
                      available: true,
                      icon: Icons.dangerous,
                      size: 50,
                    ),
                    CustomIcon(
                      available: false,
                      icon: Icons.dangerous,
                      size: 50,
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
                    "Call Hospital",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
