import 'package:customer_app/blocs/search/normal_search/index.dart';
import 'package:customer_app/models/models.dart';
import 'package:customer_app/pages/search/search_list/index.dart';
import 'package:customer_app/pages/search/search_map/search_map_page.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalSearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NormalSearchBloc(),
        child: BlocBuilder<NormalSearchBloc, NormalSearchState>(
          builder: (context, state) {
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: DropDownWidget(
                        itemList: ['1', '2'],
                        onChanged: (value) {},
                        hintText: 'سنة الصنع',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: DropDownWidget(
                        itemList: ['1', '2'],
                        onChanged: (value) {},
                        hintText: 'الموديل',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: DropDownWidget(
                        itemList: ['1', '2'],
                        onChanged: (value) {},
                        hintText: 'الماركة',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: DropDownWidget(
                        itemList: ['1', '2'],
                        onChanged: (value) {},
                        hintText: 'الماركة',
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      'مكان إستلام وتسليم السيارة:',
                      style: AppStyles.textStyle18_black,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: DateBoxButton(
                          onPressed: () {
                            print('asdf');
                          },
                          fontSize: 12,
                          text: 'إلى :',
                          context: context),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: DateBoxButton(
                        fontSize: 12,
                        text: 'من :',
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'تاريخ إستلام السيارة :',
                      style: AppStyles.textStyles16_black,
                    )
                  ],
                ),
                SizedBox(height: 16),
// ====================  Search In  ==========================
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'ابحث في:',
                      style: AppStyles.textStyles16_black,
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 2,
                      child: CheckBoxButton(
                        text: 'الكل',
                        isChecked: state.searchIn == SearchIn.external_branch,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 2,
                      child: CheckBoxButton(
                        text: 'المطار',
                        isChecked: state.searchIn == SearchIn.airport,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 3,
                      child: CheckBoxButton(
                        text: 'الفروع الخارجية',
                        isChecked: state.searchIn == SearchIn.all,
                        onPressed: () {
                          // _onSearchInTypeChanged(SearchIn.all);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(flex: 2, child: Container()),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'الخريطة',
                        isChecked: state.showType == ShowType.map,
                        onPressed: () {
                          BlocProvider.of<NormalSearchBloc>(context)
                              .add(ShowTypeChanged(showType: ShowType.map));
                          // _onSearchInTypeChanged(SearchIn.all);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'القائمة',
                        isChecked: state.showType == ShowType.list,
                        onPressed: () {
                          print('clicked');
                          BlocProvider.of<NormalSearchBloc>(context)
                              .add(ShowTypeChanged(showType: ShowType.list));
                          // _onSearchInTypeChanged(SearchIn.all);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'الكل',
                        isChecked: state.windowType == WindowType.all,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'عادي',
                        isChecked: state.windowType == WindowType.normal,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'القائمة',
                        isChecked: state.windowType == WindowType.automatic,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'نوع الشبابيك:',
                        style: AppStyles.textStyles14_black,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'الكل',
                        isChecked: state.limeType == LimeType.all,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'عادي',
                        isChecked: state.limeType == LimeType.normal,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'القائمة',
                        isChecked: state.limeType == LimeType.automatic,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'نوع الجير:',
                        style: AppStyles.textStyles14_black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'الكل',
                        isChecked:
                            state.outsideOfKingdom == OutsideOfKingdom.all,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'عادي',
                        isChecked:
                            state.outsideOfKingdom == OutsideOfKingdom.normal,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: CheckBoxButton(
                        text: 'القائمة',
                        isChecked: state.outsideOfKingdom ==
                            OutsideOfKingdom.automatic,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'استخدام خارج المملكة:',
                        style: AppStyles.textStyles14_black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                CheckBoxButton(
                  text: 'البحث',
                  fontSize: 18,
                  isChecked: true,
                  width: MediaQuery.of(context).size.width,
                  onPressed: () {
                    print('======>');
                    print('eeerer');
                    if (state.showType == ShowType.list) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchListPage()));
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchMapPage()));
                    }
                  },
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            );
          },
        ));
  }
}
