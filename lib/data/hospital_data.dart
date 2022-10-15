import 'package:patient_app/domain/entites/hospital.dart';

class HospitalData {
  List<Hospital> getEmergencyHospitals(double patientLocation) {
    return [
      Hospital(name: "Hospital", location: 2.1, phoneNumber: 0123456789,hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 5.1, phoneNumber: 0123456789,hasEmergency: true, hasICU: false, hasAmbulance: true),
      Hospital(name: "Hospital", location: 1.1, phoneNumber: 0123456789,hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 3.1, phoneNumber: 0123456789,hasEmergency: true, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 22.1,phoneNumber: 0123456789, hasEmergency: true, hasICU: false, hasAmbulance: false),
      Hospital(name: "Hospital", location: 12.1,phoneNumber: 0123456789, hasEmergency: true, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 0.5, phoneNumber: 0123456789,hasEmergency: true, hasICU: true, hasAmbulance: false),
      Hospital(name: "Hospital", location: 2.0, phoneNumber: 0123456789,hasEmergency: false, hasICU: true, hasAmbulance: true),
      Hospital(name: "Hospital", location: 2.12,phoneNumber: 0123456789, hasEmergency: true, hasICU: false, hasAmbulance: true),
      Hospital(name: "Hospital", location: 2.17,phoneNumber: 0123456789, hasEmergency: true, hasICU: true, hasAmbulance: false),
    ]..removeWhere((hospital) => hospital.hasEmergency == false)..sort((a,b) => a.location.compareTo(b.location));
  }
}