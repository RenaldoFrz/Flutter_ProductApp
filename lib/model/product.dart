class Product{
  final int id;
  final String title, description;
  final String images;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.images,
    required this.price,
  });
}

List <Product> products = [
  Product(
    id: 1,
    title: 'Laptop', 
    description: 'description', 
    images: 'assets/images/laptop-min.jpg', 
    price: 15000000,
    isFavourite: true,
    isPopular: false
  ),
  Product(
    id: 2,
    title: 'Headphone', 
    description: 'description', 
    images: 'assets/images/headphone-min.jpg', 
    price: 1500000,
    isFavourite: true,
    isPopular: true
  ),
  Product(
    id: 3,
    title: 'Keyboard', 
    description: 'description', 
    images: 'assets/images/keyboard-min.jpg', 
    price: 250000,
    isFavourite: true,
    isPopular: true
  ),
  Product(
    id: 4,
    title: 'Table', 
    description: 'description', 
    images: 'assets/images/table-min.jpg', 
    price: 3500000,
    isFavourite: true,
    isPopular: true
  ),
  Product(
    id: 5,
    title: 'Chair', 
    description: 'description', 
    images: 'assets/images/chair-min.jpg', 
    price: 540000,
    isFavourite: true,
    isPopular: true
  ),
];