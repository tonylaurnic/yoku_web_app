import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required TextEditingController controllerPhone,
  })  : _controllerPhone = controllerPhone,
        super(key: key);

  final TextEditingController _controllerPhone;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerPhone,
      keyboardType: TextInputType.streetAddress,
      maxLines: 1,
      decoration: InputDecoration(
          fillColor: Colors.black,
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          labelText: labelText,
          // 'Telefono',
          labelStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          hintText: hintText,
          //  "Telefono",
          hintStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
    );
  }
}
