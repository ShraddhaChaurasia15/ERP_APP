import 'package:flutter/material.dart';
import '../screens/admit_card.dart';
import '../screens/convocation_registration_page.dart';
import '../screens/gec_subject_registration_page.dart';
import '../screens/reappear_request_page.dart';
import '../screens/remid_request_page.dart';
import '../screens/student_profile_section.dart';
import '../screens/change_password.dart';
import '../screens/change_mobilenumber.dart';
import '../screens/supplementary_request_page.dart';
import '../screens/view_marks_page.dart';
// import '../screens/feedback_page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('Vedanshi Mishra'),
        accountEmail: Text('vedanshi@example.com'),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
      ),
      ListTile(
        title: Text('Dashboard'),
        leading: Icon(Icons.dashboard),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ExpansionTile(
        title: const Text('Convocation'),
        leading: const Icon(Icons.school),
        children: <Widget>[
          ListTile(
            title: const Text('Convocation Registration'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ConvocationRegistrationPage()),
              );
            },
          ),
        ],
      ),

      ExpansionTile(
        title: const Text('My Profile'),
        leading: const Icon(Icons.person),
        children: <Widget>[
          ExpansionTile(
            title: const Text('Personal Information'),
            children: <Widget>[
              ListTile(
                title: const Text('Student Profile'),
                //tileColor: Colors.green[300], // Green background color
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StudentProfilePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Change Password'),
                //tileColor: Colors.green[300], // Green background color
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePasswordPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Change Mobile Number'),
                //tileColor: Colors.green[300], // Green background color
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePhoneNumberPage()),
                  );
                },
              ),
            ],
          ),
        ],
      ),

      // New Exam Process Section
      ExpansionTile(
        title: const Text('Exam Process'),
        leading: const Icon(Icons.library_books),
        children: <Widget>[
          ExpansionTile(
            title: const Text('Post-Exam Activities'),
            children: <Widget>[
              ListTile(
                  title: const Text('GEC Subject Registration'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GECSubjectRegistrationPage()),
                    );
                  }),
              ListTile(
                  title: const Text('Request for Re-appear Paper'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReAppearRequestPage()),
                    );
                  }),
              ListTile(
                  title: const Text('Request for Supplementary Paper'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SupplementaryRequestPage()),
                    );
                  }),
              ListTile(
                  title: const Text('Request for Re-Mid Paper'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReMidRequestPage()),
                    );
                  }),
              ListTile(
                  title: const Text('View Marks'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewMarksPage()),
                    );
                  }),
            ],
          ),

          ExpansionTile(
            title: const Text('Exam Report'),
            children: <Widget>[
              ListTile(
                  title: const Text('Admit Card'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdmitCardPage()),
                    );
                  }),
            ],
          ),

          ExpansionTile(
            title: const Text('Degree Data Details'),
            children: <Widget>[
              ListTile(
                  title: const Text('Update Degree Data Details'),
                  onTap: () {}),
              ListTile(title: const Text('Degree Data Details'), onTap: () {}),
            ],
          ),
          // Add other drawer items similarly...
        ],
      ),
    ]));
  }
}
