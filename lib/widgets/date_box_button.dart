import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

const String MIN_DATETIME = '2019-05-15 09:23:10';
const String MAX_DATETIME = '2019-06-03 21:11:00';
const String INIT_DATETIME = '2019-05-16 09:00:00';
const String _format = 'yyسنةMشهرdيوم    EEE,H:mص';
const DateTimePickerLocale _locale = DateTimePickerLocale.ar;

class DateBoxButton extends StatelessWidget {
  final bool showTitle;
  final String text;
  final bool isChecked;
  final Function onPressed;
  final double width;
  final double height;
  final double fontSize;
  final BuildContext context;
  const DateBoxButton(
      {Key key,
      this.text,
      this.isChecked = true,
      this.onPressed,
      this.width = 100,
      this.height = 84,
      this.fontSize = 12,
      this.showTitle = true,
      this.context})
      : super(key: key);

  _showDateTimePicker() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: DateTime.parse(INIT_DATETIME),
      dateFormat: _format,
      locale: _locale,
      pickerTheme: DateTimePickerTheme(
        showTitle: showTitle,
      ),
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      onChange: (dateTime, List<int> index) {
        // setState(() {
        //   _dateTime = dateTime;
        // });
      },
      onConfirm: (dateTime, List<int> index) {
        // onPressed(dateTime);
        // setState(() {
        //   _dateTime = dateTime;
        // });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _showDateTimePicker,
      child: Container(
        // constraints: BoxConstraints(maxWidth: 120),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: isChecked ? primaryColor : Colors.white,
            border: Border.all(color: primaryColor)),
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: isChecked ? Colors.white : primaryColor),
                  ),
                  SizedBox(
                    width: 4.0,
                  )
                ],
              ),
              Text(
                'الأربعاء',
                style: AppStyles.textStyle12_white,
              ),
              Text(
                '20 اغطسطس',
                style: AppStyles.textStyle12_white,
              ),
              Text(
                '02: 00 ص',
                style: AppStyles.textStyle12_white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
