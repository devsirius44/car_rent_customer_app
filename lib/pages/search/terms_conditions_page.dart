import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TermsNConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/bg-simple.png',
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 36, left: 18),
                    alignment: Alignment.topLeft,
                    child: FractionallySizedBox(
                        widthFactor: 0.23,
                        child: Image.asset('assets/images/logo.png')),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: <Widget>[
                          TextControlled(
                            text: 'شروط واحكام التسجيل',
                            textAlign: TextAlign.center,
                            textStyle: AppStyles.textStyle24_black,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextControlled(
                            text:
                                '١. التطبيق يقدم الخدمة مجانا دون أي مقابل سواء للعميل أو مكتب التأجير',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text: '٣. يكون الدفع عند استلام السياره.',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text:
                                '٤. جميع الاشكاليات والخلافات يتم الهالها مع اصحاب مكاتب التاجير.',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text:
                                '٧. في حالة عدم الحصول على السيارة المتفق عليها وكثرة الشكاوي على مؤسسة معينه سوف يتم اغلاق حساب المنشاة في تطبيق سيارة ستيشن ( وهذا هو الاجراء الوحيد الذين تقوم به تطبيق سيارة ستيشن)',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text:
                                '١٠. جميع الاتفاقيات والتعاقدات تتم عن طريق المؤسسة دون اي تدخل من التطبيق.',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text: '٢. يجب ان يكون لديك حساب في ابشر.',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text:
                                '٧. في حالة عدم الحصول على السيارة المتفق عليها وكثرة الشكاوي على مؤسسة معينه سوف يتم اغلاق حساب المنشاة في تطبيق سيارة ستيشن ( وهذا هو الاجراء الوحيد الذين تقوم به تطبيق سيارة ستيشن)',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text:
                                '١٠. جميع الاتفاقيات والتعاقدات تتم عن طريق المؤسسة دون اي تدخل من التطبيق.',
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextControlled(
                            text: '٢. يجب ان يكون لديك حساب في ابشر.',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AppButton(
                            text: 'تم الإطلاع',
                            hMargin: 36,
                            vPadding: 6.0,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(
                            height: 24,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}
