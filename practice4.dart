import 'dart:io';

// Filtering the Products with Categories ,Max Price and Minimum Prices
class Product {
  String name;
  String category;
  double price;

  Product(this.name,this.category,this.price);

  @override
  String toString (){
    return 'Product (Name:$name,Category:$category,Price:$price';
  }

}

void main(){
  List <Product> products = [
    Product('Samsung A 24', 'Mobiles', 76760.00),
    Product('Huwaei P 20 Lite', 'Mobiles', 3330.00),
    Product('Iphone 12', 'Mobiles', 67567544.00),
    Product('Heaphone', 'Accessories',334.00),
    Product('Keyboard', 'Accessories', 9997.00),
    Product('Mouse', 'Accessories', 2222.00),
    Product('Shoes', 'Ecommerce', 92399),
    Product('Cloths', 'Ecommerce', 83993),
    Product('Jokers', 'Ecommerce', 7676.00),
  ];
//Define the Filtering
double price = 4550;
double minPrice = 566;
double maxPrice = 245556;
String category = 'Mobiles';


// Applying the Filtering

 List <Product> filteredProducts = products.where((products){
   return
   products.price >= minPrice &&
   products.price <= maxPrice &&
        (category.isEmpty || products.category == category);
 }).toList();
// Printing the Filtering List
  filteredProducts.forEach((product)=> print(product));

}






