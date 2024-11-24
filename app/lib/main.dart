import 'package:flutter/material.dart';
import 'screens/erp_dashboard.dart';
import 'screens/my_fee_detail_page.dart';
import 'screens/notices_page.dart';
import 'screens/my_events_detail_page.dart';
import 'screens/my_timetable_detail_page.dart';
//import 'screens/feedback_page.dart';
//import 'screens/convocation_registration_page.dart';
//import 'screens/my_profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniLog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ERPDashboard(),
        '/feeDetail': (context) => MyFeeDetailPage(),
        '/notices': (context) =>  NoticesPage(),
        '/myEvents': (context) => const MyEventsDetailPage(),
        '/timetable': (context) => const MyTimetableDetailPage(),
        //'/myProfile': (context) => const MyProfilePage(),
        //'/feedback': (context) => const FeedbackPage(),
      },
    );
  }
}
