class ProductModel{
  String? id ;
  String? catId; 
String? img;
String? title;
String? price;
String? amount;
String? description;
String? tag;
int quantity;

// constractor
ProductModel({
this.id,
this.catId,
this.img,
this.title,
this.price,
this.amount,
this.description,
required this.tag,
this.quantity = 1,
});

}



