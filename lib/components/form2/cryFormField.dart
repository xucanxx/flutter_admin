import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryFormField extends StatefulWidget {
  final double width;
  final Function builder;

  CryFormField({
    Key? key,
    required this.builder,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => CryFormFieldState();
}

class CryFormFieldState extends State<CryFormField> {
  didChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: widget.width,
      child: widget.builder(this),
    );
  }
}
