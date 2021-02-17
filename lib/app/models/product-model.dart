import 'dart:convert';

import 'category-model.dart';

class ProductList {
  List <Product> products;
  ProductList({
    this.products,
  });

  ProductList copyWith({
    List <Product> products,
  }) {
    return ProductList(
      products: products ?? this.products,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'products':products ?.map((x) => x?.toMap())?.toList(),
     
    };
  }

  factory ProductList.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return ProductList(
        products: List<Product>.from(map['products']?.map((x) => Product.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductList.fromJson(String source) => ProductList.fromMap(json.decode(source));

  @override
  String toString() => 'ProductList(products: $products)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is ProductList &&
      o.products == products;
  }

  @override
  int get hashCode => products.hashCode;
}

class Product {
   final PCategory category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;
  Product({
    this.category,
    this.id,
    this.isFeatured,
    this.name,
    this.price,
  });

  Product copyWith({
    PCategory category,
    int id,
    bool isFeatured,
    String name,
    int price,
  }) {
    return Product(
      category: category ?? this.category,
      id: id ?? this.id,
      isFeatured: isFeatured ?? this.isFeatured,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'id': id,
      'isFeatured': isFeatured,
      'name': name,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Product(
      category: map['category'],
      id: map['id'],
      isFeatured: map['isFeatured'],
      name: map['name'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(category: $category, id: $id, isFeatured: $isFeatured, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Product &&
      o.category == category &&
      o.id == id &&
      o.isFeatured == isFeatured &&
      o.name == name &&
      o.price == price;
  }

  @override
  int get hashCode {
    return category.hashCode ^
      id.hashCode ^
      isFeatured.hashCode ^
      name.hashCode ^
      price.hashCode;
  }

   String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';
}
