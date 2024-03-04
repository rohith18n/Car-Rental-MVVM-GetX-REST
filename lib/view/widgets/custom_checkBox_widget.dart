import 'package:flutter/material.dart';

class CustomCheckboxWidget extends StatefulWidget {
  final String text;
  final ValueChanged<bool>? onChanged;
  final bool initialValue;

  const CustomCheckboxWidget({
    Key? key,
    required this.text,
    this.onChanged,
    this.initialValue = false,
  }) : super(key: key);

  @override
  _CustomCheckboxWidgetState createState() => _CustomCheckboxWidgetState();
}

class _CustomCheckboxWidgetState extends State<CustomCheckboxWidget> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
                widget.onChanged?.call(isChecked);
              });
            },
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}
