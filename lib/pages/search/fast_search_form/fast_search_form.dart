import 'package:customer_app/blocs/search/fast_search/index.dart';
import 'package:customer_app/models/models.dart';
import 'package:customer_app/pages/search/search_list/index.dart';
import 'package:customer_app/pages/search/search_map/search_map_page.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FastSearchForm extends StatefulWidget {
  // _onSearchInTypeChanged(SearchIn searchIn) {
  //   FastSearchBloc.getInstance().add(SearchInChanged(searchIn: searchIn));
  // }

  @override
  _FastSearchFormState createState() => _FastSearchFormState();
}

class _FastSearchFormState extends State<FastSearchForm> {
  // _onSearchButtonPressed(BuildContext context) {
  //   print('sad');
  //   // Navigator.of(context)
  //   //     .push(MaterialPageRoute(builder: (context) => SearchListPage()));
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => FastSearchBloc(),
        child: BlocBuilder<FastSearchBloc, FastSearchState>(
          builder: (context, state) {
            return Column(
              children: <Widget>[
                SizedBox(height: 16),
// ====================  CarClass In  ==========================
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'فئة السيارة :',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CheckBoxButton(
                      width: 80,
                      text: 'عائلية',
                      isChecked: state.carClass == CarClass.family,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CheckBoxButton(
                      width: 80,
                      text: 'سيدان',
                      isChecked: state.carClass == CarClass.sedan,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CheckBoxButton(
                      width: 80,
                      text: 'إقتصادية',
                      isChecked: state.carClass == CarClass.economical,
                      onPressed: () {
                        // _onSearchInTypeChanged(SearchIn.all);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CheckBoxButton(
                        width: 80,
                        text: 'نقل',
                        isChecked: state.carClass == CarClass.transfer),
                    SizedBox(
                      width: 12,
                    ),
                    CheckBoxButton(
                      width: 80,
                      text: 'فارهة',
                      isChecked: state.carClass == CarClass.luxury,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CheckBoxButton(
                      width: 80,
                      text: 'رياضية',
                      isChecked: state.carClass == CarClass.athletic,
                      onPressed: () {
                        // _onSearchInTypeChanged(SearchIn.all);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: DropDownWidget(
                        itemList: ['1', '2'],
                        onChanged: (value) {},
                        hintText: 'المدينة',
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'مكان إستلام وتسليم السيارة:',
                        style: AppStyles.textStyles14_black,
                      ),
                    )
                  ],
                ),
// ======================= Date box =============================
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: DateBoxButton(
                        fontSize: 12,
                        text: 'إلى :',
                      ),
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
                      style: AppStyles.textStyles14_black,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
// ==================== search in ===========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'ابحث في:',
                      style: AppStyles.textStyles14_black,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CheckBoxButton(
                      width: 80,
                      text: 'الكل',
                      isChecked: state.searchIn == SearchIn.external_branch,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CheckBoxButton(
                      width: 80,
                      text: 'المطار',
                      isChecked: state.searchIn == SearchIn.airport,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CheckBoxButton(
                      width: 100,
                      text: 'الفروع الخارجية',
                      isChecked: state.searchIn == SearchIn.all,
                      onPressed: () {
                        // _onSearchInTypeChanged(SearchIn.all);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CheckBoxButton(
                      width: 80,
                      text: 'الخريطة',
                      isChecked: state.showType == ShowType.map,
                      onPressed: () {
                        BlocProvider.of<FastSearchBloc>(context)
                            .add(ShowTypeChanged(showType: ShowType.map));
                      },
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CheckBoxButton(
                      width: 80,
                      text: 'القائمة',
                      isChecked: state.showType == ShowType.list,
                      onPressed: () {
                        BlocProvider.of<FastSearchBloc>(context)
                            .add(ShowTypeChanged(showType: ShowType.list));
                      },
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
