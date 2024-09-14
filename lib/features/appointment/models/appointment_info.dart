// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppointmentInfo {
  String startTime;
  String endTime;
  String place;
  String date;
  AppointmentInfo({
    required this.startTime,
    required this.endTime,
    required this.place,
    required this.date,
  });

  AppointmentInfo copyWith({
    String? startTime,
    String? endTime,
    String? place,
    String? date,
  }) {
    return AppointmentInfo(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      place: place ?? this.place,
      date: date ?? this.date,
    );
  }
}

final List<AppointmentInfo> appointments = [
  AppointmentInfo(
    startTime: '9:00 AM',
    endTime: '9:30 AM',
    place: 'Tahrir Square, Cairo',
    date: 'Monday, 01/08/2024',
  ),
  AppointmentInfo(
    startTime: '10:00 AM',
    endTime: '10:30 AM',
    place: 'Madinaty Clinic, New Cairo',
    date: 'Tuesday, 02/08/2024',
  ),
  AppointmentInfo(
    startTime: '11:00 AM',
    endTime: '11:45 AM',
    place: 'El-Maadi Medical Center',
    date: 'Wednesday, 03/08/2024',
  ),
  AppointmentInfo(
    startTime: '12:00 PM',
    endTime: '12:30 PM',
    place: 'Nasr City, Cairo',
    date: 'Thursday, 04/08/2024',
  ),
  AppointmentInfo(
    startTime: '1:00 PM',
    endTime: '1:30 PM',
    place: 'Dokki, Giza',
    date: 'Friday, 05/08/2024',
  ),
  AppointmentInfo(
    startTime: '2:00 PM',
    endTime: '2:30 PM',
    place: 'Alexandria Medical Center',
    date: 'Saturday, 06/08/2024',
  ),
  AppointmentInfo(
    startTime: '3:00 PM',
    endTime: '3:30 PM',
    place: 'Sidi Gaber, Alexandria',
    date: 'Sunday, 07/08/2024',
  ),
  AppointmentInfo(
    startTime: '4:00 PM',
    endTime: '4:30 PM',
    place: 'Heliopolis, Cairo',
    date: 'Monday, 08/08/2024',
  ),
  AppointmentInfo(
    startTime: '5:00 PM',
    endTime: '5:30 PM',
    place: 'Sheikh Zayed Medical Center',
    date: 'Tuesday, 09/08/2024',
  ),
  AppointmentInfo(
    startTime: '6:00 PM',
    endTime: '6:45 PM',
    place: 'Gleem, Alexandria',
    date: 'Wednesday, 10/08/2024',
  ),
  AppointmentInfo(
    startTime: '7:00 PM',
    endTime: '7:30 PM',
    place: 'Zamalek, Cairo',
    date: 'Thursday, 11/08/2024',
  ),
  AppointmentInfo(
    startTime: '8:00 PM',
    endTime: '8:30 PM',
    place: 'Haram, Giza',
    date: 'Friday, 12/08/2024',
  ),
];
