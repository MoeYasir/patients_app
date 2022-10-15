import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:patient_app/data/location.dart';
import 'package:patient_app/domain/entites/hospital.dart';

class HospitalData  {
  Location location = Location();

  Future<List<Hospital>> getEmergencyHospitals(double patientLocation) async {

    final currentPosition = await location.getCurrentPosition();
    final distance = await location.getDistance(currentPosition.longitude, currentPosition.latitude, 122.084, 574.602);
    return [
      Hospital(name: "Hospital", location: distance, phoneNumber: 0123456789,hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: distance, phoneNumber: 0123456789,hasEmergency: true, hasICU: false, hasAmbulance: true),
      Hospital(name: "Hospital", location: 1.1, phoneNumber: 0123456789,hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: distance, phoneNumber: 0123456789,hasEmergency: true, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 22.1,phoneNumber: 0123456789, hasEmergency: true, hasICU: false, hasAmbulance: false),
      Hospital(name: "Hospital", location: 12.1,phoneNumber: 0123456789, hasEmergency: true, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 0.5, phoneNumber: 0123456789,hasEmergency: true, hasICU: true, hasAmbulance: false),
      Hospital(name: "Hospital", location: 2.0, phoneNumber: 0123456789,hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 2.12,phoneNumber: 0123456789, hasEmergency: true, hasICU: false, hasAmbulance: true),
      Hospital(name: "Hospital", location: 2.17,phoneNumber: 0123456789, hasEmergency: true, hasICU: true, hasAmbulance: false),
    ]..removeWhere((hospital) => hospital.hasEmergency == false)..sort((a,b) => a.location.compareTo(b.location));
  }
}