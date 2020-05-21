import 'package:neomorphism_ui_designs/model/product_features.dart';

class Product{
  final String imageUrl;
  final String posterImageUrl;
  final String category;
  final String productName;
  final String price;
  final bool isFav;
  final List<ProductFeatures> productFeatures;

  Product({this.productFeatures, this.posterImageUrl, this.price, this.isFav,this.imageUrl, this.category, this.productName});

}