import 'package:flutter/material.dart';
import 'package:flutter_application_4/student_list.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({required this.selectedStudent, Key? key}) : super(key: key);

  final Student selectedStudent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Detail"),
      ),
      body: Center(child: Column(children: [
         Text(selectedStudent.id.toString()),
         Text(selectedStudent.name.toString()),
         Text(selectedStudent.surname.toString())
      ],),),
    );
  }
}
