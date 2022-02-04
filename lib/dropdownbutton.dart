import 'package:flutter/material.dart';

class DropDownButtonUsage extends StatefulWidget {
  const DropDownButtonUsage({Key? key}) : super(key: key);

  @override
  _DropDownButtonUsageState createState() => _DropDownButtonUsageState();
}

class _DropDownButtonUsageState extends State<DropDownButtonUsage> {
  String? _SelectedCity;
  List<String> _AllCities = ["Ankara", "Bursa", "Istanbul", "Adana"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Select City"),
        // items: [
        //   DropdownMenuItem(
        //     child: Text("Sivas"),
        //     value: "Sivas",
        //   ),
        //   DropdownMenuItem(
        //     child: Text("Ankara"),
        //     value: "Ankara",
        //   ),
        //   DropdownMenuItem(
        //     child: Text("İzmir"),
        //     value: "İzmir",
        //   ),
        //   DropdownMenuItem(
        //     child: Text("Bursa"),
        //     value: "Bursa",
        //   )
        // ],
        items: _AllCities.map((String element) => DropdownMenuItem(
              child: Text(element),
              value: element,
            )).toList(),
        value: _SelectedCity,
        onChanged: (String? NewSelectedCity) {
          setState(() {
            _SelectedCity = NewSelectedCity;
          });
        },
      ),
    );
  }
}
