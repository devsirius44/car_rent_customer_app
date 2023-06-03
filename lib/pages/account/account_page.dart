import 'dart:io';

import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:customer_app/widgets/widgets.dart' as prefix0;
import 'package:flutter/material.dart';

import 'index.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  File _file;

  @override
  void initState() {
    super.initState();
  }

  onImagePick(File file) {
    if (file != null) {
      setState(() {
        _file = file;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 12.0,
            ),
            AvatarSettingPanel(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 42),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(offset: Offset(0, 5), color: Colors.grey[200])
              ]),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 30),
                  TextControlled(
                    text: 'بيانات الحساب',
                    textStyle: AppStyles.textStyles14_black,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  FlatTextFormField(
                    initialValue: 'الخبر',
                    hintText: 'اسم الفرع',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatTextFormField(
                    initialValue: 'الخبر',
                    hintText: 'المنطقة',
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextControlled(
                      text: 'معلومات شخصية',
                      textStyle: AppStyles.textStyles14_black),
                  FlatTextFormField(
                    initialValue: 'الخبر',
                    hintText: 'الحي',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatTextFormField(
                    initialValue: 'الخبر',
                    hintText: 'الشارع',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatTextFormField(
                    hintText: 'رقم الهاتف',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatTextFormField(
                    hintText: 'رقم الهاتف',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatTextFormField(
                    hintText: 'رقم الهاتف',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatTextFormField(
                    hintText: 'رقم الهاتف',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CheckBoxButton(
                    width: MediaQuery.of(context).size.width,
                    isChecked: true,
                    text: 'حفظ',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => AccountSettingSuccessPage()));
                    },
                  ),
                  SizedBox(
                    height: 90,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
