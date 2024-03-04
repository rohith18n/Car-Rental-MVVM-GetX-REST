// scrollable_clean_calendar.dart
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/models/day_values_model.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';
import 'package:scrollable_clean_calendar/widgets/days_widget.dart';
import 'package:scrollable_clean_calendar/widgets/month_widget.dart';
import 'package:scrollable_clean_calendar/widgets/weekdays_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollableCleanCalendar extends StatefulWidget {
  final String locale;
  final ScrollController? scrollController;
  final bool showWeekdays;
  final Layout? layout;
  final double spaceBetweenMonthAndCalendar;
  final double spaceBetweenCalendars;
  final double calendarCrossAxisSpacing;
  final double calendarMainAxisSpacing;
  final EdgeInsets? padding;
  final TextStyle? monthTextStyle;
  final TextAlign? monthTextAlign;
  final TextStyle? weekdayTextStyle;
  final TextStyle? dayTextStyle;
  final Color? daySelectedBackgroundColor;
  final Color? dayBackgroundColor;
  final Color? daySelectedBackgroundColorBetween;
  final Color? dayDisableBackgroundColor;
  final Color? dayDisableColor;
  final double dayRadius;
  final Widget Function(BuildContext context, String month)? monthBuilder;
  final Widget Function(BuildContext context, String weekday)? weekdayBuilder;
  final Widget Function(BuildContext context, DayValues values)? dayBuilder;
  final CleanCalendarController calendarController;

  const ScrollableCleanCalendar({
    this.locale = 'en',
    this.scrollController,
    this.showWeekdays = true,
    this.layout,
    this.calendarCrossAxisSpacing = 4,
    this.calendarMainAxisSpacing = 4,
    this.spaceBetweenCalendars = 24,
    this.spaceBetweenMonthAndCalendar = 24,
    this.padding,
    this.monthBuilder,
    this.weekdayBuilder,
    this.dayBuilder,
    this.monthTextAlign,
    this.monthTextStyle,
    this.weekdayTextStyle,
    this.daySelectedBackgroundColor,
    this.dayBackgroundColor,
    this.daySelectedBackgroundColorBetween,
    this.dayDisableBackgroundColor,
    this.dayDisableColor,
    this.dayTextStyle,
    this.dayRadius = 6,
    required this.calendarController,
  }) : assert(layout != null ||
      (monthBuilder != null &&
          weekdayBuilder != null &&
          dayBuilder != null));

  @override
  State<ScrollableCleanCalendar> createState() =>
      _ScrollableCleanCalendarState();
}

class _ScrollableCleanCalendarState extends State<ScrollableCleanCalendar> {
  @override
  void initState() {
    initializeDateFormatting();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final focusDate = widget.calendarController.initialFocusDate;
      if (focusDate != null) {
        widget.calendarController.jumpToMonth(date: focusDate);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.scrollController != null) {
      return listViewCalendar();
    } else {
      return scrollablePositionedListCalendar();
    }
  }

  Widget listViewCalendar() {
    return ListView.separated(
      controller: widget.scrollController,
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      separatorBuilder: (_, __) =>
          SizedBox(height: widget.spaceBetweenCalendars),
      itemCount: widget.calendarController.months.length,
      itemBuilder: (context, index) {
        final month = widget.calendarController.months[index];

        return childCollumn(month);
      },
    );
  }

  Widget scrollablePositionedListCalendar() {
    return ScrollablePositionedList.separated(
      itemScrollController: widget.calendarController.itemScrollController,
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      separatorBuilder: (_, __) =>
          SizedBox(height: widget.spaceBetweenCalendars),
      itemCount: widget.calendarController.months.length,
      itemBuilder: (context, index) {
        final month = widget.calendarController.months[index];

        return childCollumn(month);
      },
    );
  }

  Widget childCollumn(DateTime month) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: MonthWidget(
            month: month,
            locale: widget.locale,
            layout: widget.layout,
            monthBuilder: widget.monthBuilder,
            textAlign: widget.monthTextAlign,
            textStyle: widget.monthTextStyle,
          ),
        ),
        SizedBox(height: widget.spaceBetweenMonthAndCalendar),
        Column(
          children: [
            WeekdaysWidget(
              showWeekdays: widget.showWeekdays,
              cleanCalendarController: widget.calendarController,
              locale: widget.locale,
              layout: widget.layout,
              weekdayBuilder: widget.weekdayBuilder,
              textStyle: widget.weekdayTextStyle,
            ),
            AnimatedBuilder(
              animation: widget.calendarController,
              builder: (_, __) {
                return DaysWidget(
                  month: month,
                  cleanCalendarController: widget.calendarController,
                  calendarCrossAxisSpacing: widget.calendarCrossAxisSpacing,
                  calendarMainAxisSpacing: widget.calendarMainAxisSpacing,
                  layout: widget.layout,
                  dayBuilder: widget.dayBuilder,
                  backgroundColor: widget.dayBackgroundColor,
                  selectedBackgroundColor: widget.daySelectedBackgroundColor,
                  selectedBackgroundColorBetween:
                  widget.daySelectedBackgroundColorBetween,
                  disableBackgroundColor: widget.dayDisableBackgroundColor,
                  dayDisableColor: widget.dayDisableColor,
                  radius: widget.dayRadius,
                  textStyle: widget.dayTextStyle,
                );
              },
            )
          ],
        )
      ],
    );
  }
}
