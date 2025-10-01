class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.oldPrice,
    required this.imageUrl,
    required this.isFavorite,
    required this.description,
  });
}
final List<Product> products = [
  Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 29.99,
    oldPrice: 39.99,
    imageUrl: 'assets/images/shoe.jpg',
    isFavorite: true,
    description: 'A comfortable and stylish Shoes for everyday wear.',
  ),
  Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 49.99,
    oldPrice: 59.99,
    imageUrl: 'assets/images/shoe2.jpg',
    isFavorite: false,
    description: 'Classic denim jeans for a timeless look.',
  ),
  Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 79.99,
    oldPrice: 89.99,
    imageUrl: 'assets/images/shoes2.jpg',
    isFavorite: true,
    description: 'Elegant sneakers for a modern lifestyle.',
  ),
  Product(
    name: 'Laptop',
    category: 'Electronics',
    price: 29.99,
    oldPrice: 39.99,
    imageUrl: 'assets/images/laptop.jpg',
    isFavorite: true,
    description: 'Laptop for everyday use',
  ),
  Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 49.99,
    oldPrice: 59.99,
    imageUrl: 'assets/images/shoe2.jpg',
    isFavorite: false,
    description: 'Classic denim jeans for a timeless look.',
  ),
  Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 79.99,
    oldPrice: 89.99,
    imageUrl: 'assets/images/shoes2.jpg',
    isFavorite: true,
    description: 'Elegant sneakers for a modern lifestyle.',
  ),


];
