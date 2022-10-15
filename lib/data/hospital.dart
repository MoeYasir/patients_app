import 'package:patient_app/domain/entites/hospital_data.dart';

class HospitalData {
  List<Hospital> getEmergencyHospitals(double patientLocation) {
    return [
      Hospital(name: "Hospital", location: 2.1, hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 5.1, hasEmergency: true, hasICU: false, hasAmbulance: true),
      Hospital(name: "Hospital", location: 1.1, hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 3.1, hasEmergency: true, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 22.1, hasEmergency: true, hasICU: false, hasAmbulance: false),
      Hospital(name: "Hospital", location: 12.1, hasEmergency: true, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 0.5, hasEmergency: true, hasICU: true, hasAmbulance: false),
      Hospital(name: "Hospital", location: 2.0, hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 2.12, hasEmergency: true, hasICU: false, hasAmbulance: true),
      Hospital(name: "Hospital", location: 2.17, hasEmergency: true, hasICU: true, hasAmbulance: false),
    ]..removeWhere((hospital) => hospital.hasEmergency == false)..sort((a,b) => a.location.compareTo(b.location));
  }
}