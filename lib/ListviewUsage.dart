import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewUsage extends StatelessWidget {
  ListViewUsage({Key? key}) : super(key: key);

  List<Students> AllStudents = List.generate(
      500, (index) => Students(index + 1, "Student", "Student Surname"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body: LViewSeperated(),
    );
  }

  ListView LViewBuilder() {
    return ListView.builder(
      itemBuilder: (context, index) {
        var CurrentStudent = AllStudents[index];
        return Card(
          color: index % 2 == 0 ? Colors.red.shade200 : Colors.blue.shade200,
          child: ListTile(
            onTap: () {
              print("Element: $index");
            },
            title: Text(CurrentStudent.name),
            subtitle: Text(CurrentStudent.surname),
            leading: CircleAvatar(
              child: Text(CurrentStudent.id.toString()),
            ),
          ),
        );
      },
      itemCount: AllStudents.length,
    );
  }

  ListView LViewSeperated() {
    return ListView.separated(
      itemBuilder: (context, index) {
        var CurrentStudent = AllStudents[index];
        return Card(
          color: index % 2 == 0 ? Colors.red.shade200 : Colors.blue.shade200,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.black;
              } else {
                EasyLoading.instance.backgroundColor = Colors.green;
              }
              EasyLoading.showToast("Test",
                  toastPosition: EasyLoadingToastPosition.bottom);
              print("Element: $index");
            },
            onLongPress: () {
              _AlertDialogUsage(context, CurrentStudent);
            },
            title: Text(CurrentStudent.name),
            subtitle: Text(CurrentStudent.surname),
            leading: CircleAvatar(
              child: Text(CurrentStudent.id.toString()),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => (index + 1) % 4 == 0
          ? Divider(
              thickness: 4,
              height: 5,
              color: Colors.green,
            )
          : SizedBox(),
      itemCount: AllStudents.length,
    );
  }

  ListView ClassicListView() {
    return ListView(
      children: AllStudents.map((e) => ListTile(
            title: Text(e.name),
            subtitle: Text(e.surname),
            leading: CircleAvatar(
              child: Text(e.id.toString()),
            ),
          )).toList(),
    );
  }

  void _AlertDialogUsage(BuildContext context, Students Std) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: Text(Std.toString()),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    const Text("Hello"),
                    const Text("Hello1"),
                    Text("Hello2" * 200)
                  ],
                ),
              ),
              actions: [
                ButtonBar(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Close")),
                    TextButton(onPressed: () {}, child: const Text("Ok"))
                  ],
                )
              ],
            ));
  }
}

class Students {
  final int id;
  final String name;
  final String surname;

  Students(this.id, this.name, this.surname);

  @override
  String toString() {
    // TODO: implement toString
    return "Name $name  Surname $surname  id $id";
  }
}
