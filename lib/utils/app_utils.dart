import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/model/product.dart';
import 'package:neomorphism_ui_designs/model/product_features.dart';

class ApUtils {
  List<Product> getProductsList() {
    List<Product> product = [
      getProduct1(),
      getProduct2(),
      getProduct3(),
      getProduct4(),
      getProduct5(),
      getProduct6(),
      getProduct7(),
      getProduct8(),
    ];

    return product;
  }

  getProduct1() {
    // #1 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Power', value: '220 watt', icon: Icons.lightbulb_outline);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '500 mm', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 =
        ProductFeatures(title: 'Voltage', value: '24 kW', icon: Icons.power);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1576723664290-a8f52b7ee8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
        imageUrl:
            'https://image.freepik.com/free-photo/hotel-interior_144627-27370.jpg',
        category: 'Standing',
        productName: 'Table Lamp',
        isFav: true,
        price: '\$199',
        productFeatures: f1);
    return p1;
  }

  getProduct2() {
    // #2 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Power', value: '220 watt', icon: Icons.lightbulb_outline);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '350 mm', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 =
        ProductFeatures(title: 'Voltage', value: '24 kW', icon: Icons.power);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1547398890-5be13019f343?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2380&q=80',
        imageUrl:
            'https://image.freepik.com/free-vector/lamp-with-grunge-texture_23-2147499247.jpg',
        category: 'Hanging',
        productName: 'Hanging Lamp',
        isFav: false,
        price: '\$99',
        productFeatures: f1);
    return p1;
  }

  getProduct3() {
    // #3 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Power', value: '240 watt', icon: Icons.lightbulb_outline);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '550 mm', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 =
        ProductFeatures(title: 'Voltage', value: '24 kW', icon: Icons.power);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1573813971495-e4b5e4a548fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80',
        imageUrl:
            'https://image.freepik.com/free-vector/vintage-realistic-wall-electric-lamp_99660-147.jpg',
        category: 'Hanging',
        productName: 'Wall Lamp',
        isFav: true,
        price: '\$299',
        productFeatures: f1);
    return p1;
  }

  getProduct4() {
    // #4 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Discount', value: '20 %', icon: Icons.local_offer);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '10 m', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 = ProductFeatures(
        title: 'Weight', value: '250 kg', icon: Icons.line_weight);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1505409628601-edc9af17fda6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2784&q=80',
        imageUrl:
            'https://images.unsplash.com/photo-1526308182272-d2fe5e5947d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
        category: 'Table',
        productName: 'Dinning Table',
        isFav: true,
        price: '\$1099',
        productFeatures: f1);
    return p1;
  }

  getProduct5() {
    // #5 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Discount', value: '15 %', icon: Icons.local_offer);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '8 m', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 = ProductFeatures(
        title: 'Weight', value: '200 kg', icon: Icons.line_weight);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
        imageUrl:
            'https://images.unsplash.com/photo-1584198541667-f790d4f62742?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
        category: 'Sofa',
        productName: 'Sofa',
        isFav: true,
        price: '\$499',
        productFeatures: f1);
    return p1;
  }

  getProduct6() {
    // #6 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Discount', value: '5 %', icon: Icons.local_offer);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '1 m', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 = ProductFeatures(
        title: 'Weight', value: '4 kg', icon: Icons.line_weight);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1551298370-9d3d53740c72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80',
        imageUrl:
            'https://images.unsplash.com/photo-1571283600721-e0e5d851fd17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
        category: 'Chair',
        productName: 'Plastic Light Chair',
        isFav: true,
        price: '\$79',
        productFeatures: f1);
    return p1;
  }

  getProduct7() {
    // #7 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Discount', value: '5 %', icon: Icons.local_offer);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '800 mm', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 = ProductFeatures(
        title: 'Weight', value: '8 kg', icon: Icons.line_weight);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1536639240649-1f0979e7993d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
        imageUrl:
            'https://images.unsplash.com/photo-1503602642458-232111445657?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
        category: 'Stool',
        productName: 'Wooden Stool',
        isFav: false,
        price: '\$69',
        productFeatures: f1);
    return p1;
  }

  getProduct8() {
    // #8 product
    List<ProductFeatures> f1 = [];
    ProductFeatures p1f1 = ProductFeatures(
        title: 'Discount', value: '15 %', icon: Icons.local_offer);
    ProductFeatures p1f2 = ProductFeatures(
        title: 'Size', value: '6 m', icon: Icons.photo_size_select_small);
    ProductFeatures p1f3 = ProductFeatures(
        title: 'Weight', value: '15 kg', icon: Icons.line_weight);

    f1.add(p1f1);
    f1.add(p1f2);
    f1.add(p1f3);
    Product p1 = Product(
        posterImageUrl:
            'https://images.unsplash.com/photo-1529338296731-c4280a44fc48?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',
        imageUrl:
            'https://images.unsplash.com/photo-1449247709967-d4461a6a6103?ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80',
        category: 'Table',
        productName: 'Work Table',
        isFav: true,
        price: '\$159',
        productFeatures: f1);
    return p1;
  }
}
