import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              onLongPress: () {
                debugPrint("long press");
              },
              child: const Text("TextButton")),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              style: ButtonStyle(
                  //backgroundColor: MaterialStateProperty.all(Colors.blue),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return null;
                  }),
                  overlayColor: MaterialStateProperty.all(
                      Colors.yellow.withOpacity(0.6))),
              label: const Text("TextIconButton")),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, onPrimary: Colors.green),
              child: const Text("Elevated Button")),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text("Elevated Button with icon")),
          OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  side: const BorderSide(color: Colors.green, width: 4)),
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_sharp),
              label: const Text("outlined with icon")),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  side: const BorderSide(color: Colors.green, width: 4)),
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_sharp),
              label: const Text("outlined with icon")),
          PopUpButton(),
          CupertinoButton(
            child: const Text("Cupertino"),
            onPressed: () {},
            color: Colors.red,
          ),
          const BackButton(
            color: Colors.blue,
          ),
          CloseBut()
        ],
      ),
    );
  }
}

class CloseBut extends StatelessWidget {
  const CloseBut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CloseButton(
      color: Colors.blue,
    );
  }
}

class PopUpButton extends StatelessWidget {
  PopUpButton({
    Key? key,
  }) : super(key: key);

  List<String> MyList = ["First", "Second", "Third"];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      itemBuilder: (context) => MyList.map((String e) => PopupMenuItem(
            child: Text(e),
            value: e,
          )).toList(),
    );
  }
}
