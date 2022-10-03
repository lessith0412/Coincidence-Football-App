class Product {
  final int id;
  final String price, title, image,imagefront,imageback;

  Product({ required this.id, required this.price, required this.title, required
  this.image, required this.imagefront,required this.imageback});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 5,
    price: 'Forward',
    title: "Cristiano Ronaldo",
    image: "assets/images/ro.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Ronaldo.png",
  ),
  Product(
    id: 6,
    price: 'Defender',
    title: "Harry Maguire",
    image: "assets/images/harrymaguire.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Maguire.png",
  ),
  Product(
    id: 7,
    price: 'Midfielder',
    title: "Paul Pogba",
    image: "assets/images/pogba.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Pogba.png",
  ),
  Product(
    id: 8,
    price: 'Forward',
    title: "Marcus Rashford",
    image: "assets/images/rashford.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Rashford.png",
  ),
  Product(
    id: 9,
    price: 'Defender',
    title: "Varane",
    image: "assets/images/varne.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Varane.png",
  ),
  Product(
    id: 10,
    price: 'Midfielder',
    title: "Bruno Fernandes",
    image: "assets/images/bruno.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Bruno.png",
  ),
  Product(
    id: 11,
    price: 'Forward',
    title: "Edinson Cavani",
    image: "assets/images/cavani.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Cavani.png",
  ),
  Product(
    id: 12,
    price: 'Midfielder',
    title: "Fred",
    image: "assets/images/fred.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Fred.png",
  ),
  Product(
    id: 13,
    price: 'Forward',
    title: 'Sancho',
    image: "assets/images/sancho.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Sancho.png",
  ),
  Product(
    id: 14,
    price: 'Midfielder',
    title: "Scott McTominay",
    image: "assets/images/scott.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/McTominay.png",
  ),
  Product(
    id: 15,
    price: 'Defender',
    title: "Luke Shaw",
    image: "assets/images/luke.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Shaw.png",
  ),
  Product(
    id: 16,
    price: 'Forward',
    title: "John GreenWood",
    image: "assets/images/greenwood.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/Greenwood.png",
  ),
  Product(
    id: 17,
    price: 'Goal Keeper',
    title: "David deGea",
    image: "assets/images/david.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManUnited/DeGea.png",
  ),
];
