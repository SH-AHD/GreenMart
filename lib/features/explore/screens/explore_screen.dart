import 'package:flutter/material.dart';
import 'package:green_mart/core/routing/navigations.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_input_field.dart';
import 'package:green_mart/features/explore/data/cat_model.dart';
import 'package:green_mart/features/explore/data/cat_repo.dart';
import 'package:green_mart/features/explore/screens/cat_products_screen.dart';
import 'package:green_mart/features/explore/widgets/category_card.dart';
import 'package:green_mart/features/search/screens/search_screen.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  List<CatModel> categoriesList = CatRepo().getAllCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find Products",
          style: TextStyles.font24BlackW600.copyWith(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  pushPage(context: context, 
                  newScreen: SearchScreen());
                },
                child: CustomInputField(
                  hint: "Search Store", 
                  pre: Icon(Icons.search),
                  enabled: false,
                  ),
              ),

              const SizedBox(height: 22),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    onTap: () {
                      pushPage(
                        context: context,
                        newScreen: CatProductsScreen(
                          categoryName: categoriesList[index].cardTitle,
                        ),
                      );
                    },
                    model: categoriesList[index],
                  );
                },
                itemCount: categoriesList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
