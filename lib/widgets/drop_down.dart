import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  final String image;
  final List<String> itemList;
  final ValueChanged<String> onChanged;
  final String hintText;
  final bool isEnabled;
  final double paddingTop;
  final double paddingBottom;
  final IconData iconData;
  final String disableHint;
  final bool manualInput;
  final double fontSize;
  final String selectedItem;
  const DropDownWidget(
      {Key key,
      this.image,
      this.fontSize = 18,
      this.manualInput = false,
      this.paddingTop = 5,
      this.paddingBottom = 10,
      this.disableHint = '',
      this.isEnabled = true,
      this.iconData = Icons.arrow_drop_down,
      this.selectedItem,
      @required this.itemList,
      @required this.onChanged,
      @required this.hintText})
      : super(key: key);

  @override
  DropDownWidgetState createState() {
    return DropDownWidgetState();
  }
}

class DropDownWidgetState extends State<DropDownWidget> {
  List<DropdownMenuItem<String>> itemsList = [];
  String selectedItem;
  bool isEnabled;

  @override
  void initState() {
    super.initState();

    isEnabled = true;
    itemsList = widget.itemList
        .map<DropdownMenuItem<String>>((str) => DropdownMenuItem<String>(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Text(
                  str,
                  maxLines: 2,
                  style: TextStyle(fontSize: widget.fontSize, height: 1),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            value: str))
        .toList();
    selectedItem = widget.selectedItem;
    // widget.onChanged(selectedItem);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 36,
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          color: Color(0xFFE8E8E8),
          border: Border.all(color: Color(0x44000000))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Icon(
                Icons.arrow_drop_down,
                color: Color(0xFFBC962B),
              )),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                child: DropdownButton(
                    icon: Icon(widget.iconData, size: 0, color: Colors.black),
                    isExpanded: true,
                    items: isEnabled ? itemsList : null,
                    value: selectedItem,
                    style: TextStyle(
                        color: Color(0xFFBC962B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    hint: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 28),
                          child: Text(
                            widget.hintText,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFAFAFAF)),
                            textAlign: TextAlign.right,
                          ),
                        )),
                    disabledHint: Text(
                      widget.hintText,
                      style: TextStyle(fontSize: widget.fontSize),
                    ),
                    isDense: true,
                    onChanged: (value) {
                      setState(() {
                        selectedItem = value as String;
                      });
                      widget.onChanged(value as String);
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
