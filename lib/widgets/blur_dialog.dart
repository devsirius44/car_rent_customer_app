import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

enum ConfirmAction { CANCEL, AGREE }

Future<ConfirmAction> blurDialog(BuildContext context,
    {String waringTitle = 'Really?'}) {
  Dialog simpleDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Container(
      // height: 300.0,
      constraints: BoxConstraints(maxHeight: 180),
      width: 300.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              waringTitle,
              style: TextStyle(color: Colors.black, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SubmitButton(
                  title: 'إلغاء',
                  width: 100,
                  hPadding: 34,
                  vPadding: 17,
                  fontSize: 12,
                  borderRadius: 8.0,
                  onPressed: () {
                    Navigator.of(context).pop(ConfirmAction.CANCEL);
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                SubmitButton(
                  title: 'موافق',
                  width: 100,
                  hPadding: 34,
                  vPadding: 17,
                  fontSize: 12,
                  borderRadius: 8.0,
                  backgroundColor: Color(0xFFBC2B2B),
                  onPressed: () {
                    Navigator.of(context).pop(ConfirmAction.AGREE);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
  return showDialog(
      context: context, builder: (BuildContext context) => simpleDialog);
}
