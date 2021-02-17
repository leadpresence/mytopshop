import 'dart:convert';

import 'category-model.dart';

class Product {
   final Category category;
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
    Category category,
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
}
