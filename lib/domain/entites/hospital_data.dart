class Hospital {
  final String name;
  final double location;
  final bool hasEmergency;
  final bool hasICU;
  final bool hasAmbulance;

  Hospital(
      {required this.name,
      required this.location,
      required this.hasEmergency,
      required this.hasICU,
      required this.hasAmbulance});
}
