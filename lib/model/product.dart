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
    description: 'a portable microcomputer having its main components', 
    images: 'assets/images/laptop-min.jpg', 
    price: 15000000,
    isFavourite: true,
    isPopular: false
  ),
  Product(
    id: 2,
    title: 'Headphone', 
    description: 'a cordless or mobile phone.', 
    images: 'assets/images/headphone-min.jpg', 
    price: 1500000,
    isFavourite: true,
    isPopular: true
  ),
  Product(
    id: 3,
    title: 'Keyboard', 
    description: 'a panel of keys that operate a computer or typewriter.', 
    images: 'assets/images/keyboard-min.jpg', 
    price: 250000,
    isFavourite: true,
    isPopular: true
  ),
  Product(
    id: 4,
    title: 'Table', 
    description: 'a piece of furniture with a flat top and one or more legs, providing a level surface on which objects may be placed', 
    images: 'assets/images/table-min.jpg', 
    price: 3500000,
    isFavourite: true,
    isPopular: true
  ),
  Product(
    id: 5,
    title: 'Chair', 
    description: 'a separate seat for one person, typically with a back and four legs.', 
    images: 'assets/images/chair-min.jpg', 
    price: 540000,
    isFavourite: true,
    isPopular: true
  ),
];