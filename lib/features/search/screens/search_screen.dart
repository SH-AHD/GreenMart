import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/custom_input_field.dart';
import 'package:green_mart/features/Shop/data/repo/dummy_data.dart';

import 'package:green_mart/features/search/widgets/filtered_products.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchKey="";
late FocusNode _searchFocusNode ;

@override
  void initState() {
    super.initState();
    _searchFocusNode= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
    _searchFocusNode.requestFocus();
  });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _searchFocusNode.dispose();

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CustomInputField(hint: "Search Store", 
          pre: Icon(Icons.search),
          focusNode: _searchFocusNode,
          onChange: (value){
            setState(() {
              searchKey=value;
            });
          },
          ),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FilteredProducts(
          catProducts:ShopRepository().getProductsByName(searchKey),
        ),    ),
    );
  }
}
