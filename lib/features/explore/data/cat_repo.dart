import 'package:green_mart/core/constants/network_imgs.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/features/explore/data/cat_model.dart';

class CatRepo{

Map<String,String> categories={
"Fresh Fruits & Vegetable":'1',
"Cooking Oil & Ghee":"2",
"Meat & Fish":"3",
"Bakery & Snacks":"4",
"Dairy & Eggs":"5",
"Beverages":"6",
};

List<CatModel> categoriesCards = [
  CatModel(
    id: '1',
  color:AppColors.lightGreen,
  imgUrl: NetworkImgs.frashFruitsVegetable, 
  imgHeight: 100,
  cardTitle: "Fresh Fruits & Vegetable",
  ),
  CatModel(
    id: '2',
   color:AppColors.midOrange,
  imgUrl: NetworkImgs.cookingOilGhee, 
  imgHeight: 80,
  cardTitle: "Cooking Oil & Ghee",
 ),
  CatModel(
    id: '3',
   color:AppColors.lightRed,
  imgUrl: NetworkImgs.meatFish, 
  imgHeight: 60,
  cardTitle: "Meat & Fish",
),
  CatModel(
    id: '4',
   color:AppColors.lightPurple,
  imgUrl: NetworkImgs.bakerySnacks, 
  imgHeight: 100,
  cardTitle: "Bakery & Snacks",
),
  CatModel(
    id: '5',
   color:AppColors.lightOrange,
  imgUrl: NetworkImgs.dairyEggs, 
  imgHeight: 100,
  cardTitle: "Dairy & Eggs",
),
  CatModel(
    id: '6',
   color:AppColors.lightBlue,
  imgUrl: NetworkImgs.beverages, 
  imgHeight: 80,
  cardTitle: "Beverages",
 ),

];

 String getCategoryId(String categoryName){
return categories[categoryName] ?? categories["Fresh Fruits & Vegetable"]!;
}
 
 List<CatModel> getAllCategories()  {
    return categoriesCards;
  }

}