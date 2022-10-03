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
    id: 1,
    price: 'Forward',
    title: "Mohamed Salah",
    image: "assets/images/salah.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Salah.png",
  ),
  Product(
    id: 51,
    price: 'Defender',
    title: "Virgil van Dijk",
    image: "assets/images/virgil.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/van.png",
  ),
  Product(
    id: 52,
    price: 'Midfielder',
    title: "Andrew Roberston",
    image: "assets/images/andrewroberston.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Robertson.png",
  ),
  Product(
    id: 55,
    price: 'Midfielder',
    title: "Fabinho",
    image: "assets/images/fabinho.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Fabinho.png",
  ),
  Product(
    id: 56,
    price: 'Forward',
    title: "Roberto Firmino",
    image: "assets/images/firmino.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Firmino.png",
  ),
  Product(
    id: 2,
    price: 'Forward',
    title: "Sadio Mané",
    image: "assets/images/mane.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Mané.png",
  ),
  Product(
    id: 3,
    price: 'Defender',
    title: "Ibrahima Konaté",
    image: "assets/images/konate.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Konaté.png",
  ),
  Product(
    id: 5,
    price: 'Winger',
    title: "Luis Díaz",
    image: "assets/images/luisDiaz.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Díaz.png",
  ),
  Product(
    id: 7,
    price: 'Defender',
    title: 'Trent Alexander-Arnold',
    image: "assets/images/trent.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Arnold.png",
  ),
  Product(
    id: 9,
    price: 'Midfielder',
    title: "Harvey Elliott",
    image: "assets/images/harvey.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Elliott.png",
  ),
  Product(
    id: 10,
    price: 'Defender',
    title: "Joël Matip",
    image: "assets/images/joel.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Matip.png",
  ),
  Product(
    id: 11,
    price: 'Forward',
    title: "Diogo Jota",
    image: "assets/images/jota.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Jota.png",
  ),
  Product(
    id: 33,
    price: 'Goal Keeper',
    title: "Alisson Becker",
    image: "assets/images/allison.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Liverpool/Alisson.png",
  ),
];
