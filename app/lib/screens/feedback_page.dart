import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Faculty & Course Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              color: const Color.fromARGB(255, 146, 118, 118),
              child: Row(
                children: [
                  Icon(Icons.info, color: Colors.blue),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'You are accessing this page as role > Student',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            DataTable(
              columns: [
                DataColumn(label: Text('S. No.')),
                DataColumn(label: Text('Survey Name')),
                DataColumn(label: Text('Created By')),
                DataColumn(label: Text('Publish Date')),
                DataColumn(label: Text('Close Date')),
                DataColumn(label: Text('Action')),
                DataColumn(label: Text('Survey Status')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Faculty Feedback (New)')),
                  DataCell(Text('ACADEMICS ADMIN')),
                  DataCell(Text('22-Apr-2024')),
                  DataCell(Text('31-May-2024')),
                  DataCell(
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Submitted'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                  DataCell(Text('CLOSE')),
                ]),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
