import 'package:customer_app/blocs/search/search_type/index.dart';
import 'package:customer_app/blocs/search/search_type/search_bloc.dart';
import 'package:customer_app/models/models.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../search.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SearchTypeBloc(),
        child: BlocBuilder<SearchTypeBloc, SearchType>(
          condition: ((context, state) {
            return state is SearchType;
          }),
          builder: (context, state) {
            return Card(
              elevation: 5.0,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Text('إبحث', style: AppStyles.textStyle24_black),
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: CheckBoxButton(
                                  text: 'سريع',
                                  isChecked: state == SearchType.fast,
                                  onPressed: () {
                                    print('fast clicked');
                                    BlocProvider.of<SearchTypeBloc>(context)
                                        .add(UpdateSearchType(
                                            searchType: SearchType.fast));
                                    // SearchTypeBloc.getInstance().add(
                                    //     UpdateSearchType(
                                    //         searchType: SearchType.fast));
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                flex: 1,
                                child: CheckBoxButton(
                                  text: 'عادي',
                                  isChecked: state == SearchType.normal,
                                  onPressed: () {
                                    BlocProvider.of<SearchTypeBloc>(context)
                                        .add(UpdateSearchType(
                                            searchType: SearchType.normal));
                                    // SearchTypeBloc.getInstance().add(
                                    //     UpdateSearchType(
                                    //         searchType: SearchType.normal));
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'نوع البحث:',
                                  style: AppStyles.textStyle18_black,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          state == SearchType.normal
                              ? NormalSearchForm()
                              : FastSearchForm(),
                        ],
                      ),
                    ),
                  )),
            );
          },
        ));
  }
}
