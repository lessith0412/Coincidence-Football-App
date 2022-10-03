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
    title: "Karim Benzema",
    image: "assets/images/benzema.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Benzema.png",
  ),
  Product(
    id: 2,
    price: 'Forward',
    title: "Gareth Bale",
    image: "assets/images/bale.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Bale.png",
  ),
  Product(
    id: 1,
    price: 'Defender',
    title: "Marcelo Vieira",
    image: "assets/images/marcelo.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Marcelo.png",
  ),
  Product(
    id: 6,
    price: 'Midfielder',
    title: "Luka Modric",
    image: "assets/images/modric.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Modric.png",
  ),
  Product(
    id: 7,
    price: 'Forward',
    title: "Vini Jr.",
    image: "assets/images/vinijr.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Vinícius.png",
  ),
  Product(
    id: 8,
    price: 'Midfielder',
    title: "Toni Kroos",
    image: "assets/images/tonikroos.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Kroos.png",
  ),
  Product(
    id: 9,
    price: 'Winger',
    title: "Rodrygo",
    image: "assets/images/rodyrgo.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Rodrygo.png",
  ),
  Product(
    id: 10,
    price: 'Midfielder',
    title: "Federico Valverde",
    image: "assets/images/valverede.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Valverde.png",
  ),
  Product(
    id: 11,
    price: 'Forward',
    title: 'Eden Hazard',
    image: "assets/images/eden.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Hazard.png",
  ),
  Product(
    id: 13,
    price: 'Forward',
    title: "Isco",
    image: "assets/images/isco.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Isco.png",
  ),
  Product(
    id: 14,
    price: 'Defender',
    title: "Ferland Mendy",
    image: "assets/images/ferlandmendy.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Mendy.png",
  ),
  Product(
    id: 15,
    price: 'Midfielder',
    title: "Casemiro",
    image: "assets/images/caesmiro.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Casemiro.png",
  ),
  Product(
    id: 25,
    price: 'Goal Keeper',
    title: "Thibaut Courtois",
    image: "assets/images/courtois.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/RealMadrid/Courtois.png",
  ),
];
