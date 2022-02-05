import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int elementCount = ModalRoute.of(context)!.settings.arguments as int;
    List StdList = List.generate(elementCount,
        (index) => Student(index + 1, "Name $index+1", "Surname $index+1"));
    print("Elem count $elementCount");
    return Scaffold(
      appBar: AppBar(title: const Text("Student List")),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.pushNamed(context, "StudentDetails",
                arguments: StdList[index]);
          },
          title: Text(StdList[index].name),
          subtitle: Text(StdList[index].surname),
        ),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
