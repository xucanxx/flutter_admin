import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'cryFormField.dart';

class CrySelectDate extends CryFormField {
  CrySelectDate({
    Key? key,
    String? value,
    required String label,
    ValueChanged? onChange,
    FormFieldSetter? onSaved,
    required BuildContext context,
  }) : super(
          key: key,
          label: label,
          builder: (CryFormFieldState state) {
            return TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: value),
              onChanged: (v) {
                onChange?.call(v);
              },
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015, 8),
                  lastDate: DateTime(2101),
                );
                if (picked != null) {
                  onChange?.call(DateFormat("yyyy-MM-dd").format(picked));
                  state.didChange();
                }
              },
              onSaved: (v) {
                onSaved?.call(v);
              },
            );
          },
        );
}
