import 'package:flutter/material.dart';

class CardListTileUsage extends StatelessWidget {
  CardListTileUsage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("CardList")),
        body: Center(
          child: ListView(children: [
            Column(
              children: [
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
                ListElement(),
              ],
            ),
            Text("Hi"),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.ac_unit))
          ]),
        ));
  }

  SingleChildScrollView SingleChildScrollViewUsage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
          ListElement(),
        ],
      ),
    );
  }
}

class ListElement extends StatelessWidget {
  const ListElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.check)),
              title: Text("Title"),
              subtitle: Text("Subtitle"),
              trailing: Icon(Icons.maximize)),
          color: Colors.blue,
          shadowColor: Colors.red,
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        Divider(
          color: Colors.green,
          thickness: 3.0,
          height: 5,
          indent: 50,
          endIndent: 50,
        )
      ],
    );
  }
}
