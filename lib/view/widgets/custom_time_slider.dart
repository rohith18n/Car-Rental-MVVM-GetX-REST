import 'package:flutter/material.dart';

class TimeSlider extends StatefulWidget {
  final ValueChanged<TimeOfDay> onTimeSelected;
  final Color? sliderColor;
  final Color? labelColor;

  TimeSlider({
    required this.onTimeSelected,
    this.sliderColor,
    this.labelColor,
  });

  @override
  _TimeSliderState createState() => _TimeSliderState();
}

class _TimeSliderState extends State<TimeSlider> {
  double _sliderValue = 0.0;
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = _valueToTime(_sliderValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _sliderValue,
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
              _selectedTime = _valueToTime(value);
            });
          },
          divisions: 48,
          label: _formatTime(_selectedTime),
          min: 0.0,
          max: 48.0,
          activeColor: widget.sliderColor ?? Colors.blue,
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //   child: Text(
        //     _formatTime(_selectedTime),
        //     style: TextStyle(color: widget.labelColor ?? Colors.black),
        //   ),
        // ),
      ],
    );
  }

  TimeOfDay _valueToTime(double value) {
    final double minutes = value * 30.0;
    final int hours = minutes ~/ 60;
    final int remainingMinutes = (minutes % 60).round();
    return TimeOfDay(hour: hours % 24, minute: remainingMinutes);
  }

  String _formatTime(TimeOfDay time) {
    return '${time.hourOfPeriod}:${time.minute.toString().padLeft(2, '0')} ${time.period == DayPeriod.am ? 'AM' : 'PM'}';
  }
}
