import 'package:flutter/material.dart';

class CheckboxComponent extends StatefulWidget {
  const CheckboxComponent({super.key});

  @override
  State<CheckboxComponent> createState() => _CheckboxComponentState();
}

class _CheckboxComponentState extends State<CheckboxComponent> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Row(
      children: [
        const Text('Lembrar de mim'),
        Checkbox(
          checkColor: Colors.blue,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }
}
