import 'package:flutter/material.dart';

import 'cryFormField.dart';

class CryInput extends CryFormField {
  CryInput({
    Key? key,
    double? width,
    required String label,
    double? labelWidth,
    String? value,
    ValueChanged? onChange,
    FormFieldSetter? onSaved,
    FormFieldValidator<String>? validator,
    bool? enable,
  }) : super(
          key: key,
          width: width ?? 300,
          label: label,
          labelWidth: labelWidth ?? 100,
          builder: (state) {
            return TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(),
                enabled: enable ?? true,
              ),
              controller: TextEditingController(text: value),
              onChanged: (v) {
                onChange?.call(v);
              },
              onSaved: (v) {
                onSaved?.call(v);
              },
              validator: validator,
            );
          },
        );
}
