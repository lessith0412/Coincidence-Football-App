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
    id: 58,
    price: 'Forward',
    title: "Adama Traoré",
    image: "assets/images/traore.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Adama.png",
  ),
  Product(
    id: 54,
    price: 'Forward',
    title: "Ferran Torres",
    image: "assets/images/torres.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Trorres.png",
  ),
  Product(
    id: 52,
    price: 'Midfielder',
    title: "Sergi Roberto",
    image: "assets/images/sergi.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Roberto.png",
  ),
  Product(
    id: 51,
    price: 'Midfielder',
    title: "Pedri",
    image: "assets/images/pedri.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Pedri.png",
  ),
  Product(
    id: 11,
    price: 'Forward',
    title: "Ousmane Dembélé",
    image: "assets/images/ousmane.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Dembélé.png",
  ),
  Product(
    id: 1,
    price: 'Defender',
    title: "Jordi Alba",
    image: "assets/images/jordialba.png",
    imagefront: "Cards/CC/BackCover.png",
      imageback: "Cards/CC/Barcelona/JordiAlba.png",
  ),
  Product(
    id: 3,
    price: 'Forward',
    title: "Frenkie de Jong",
    image: "assets/images/jong.png",
    imagefront: "Cards/CC/BackCover.png",
      imageback: "Cards/CC/Barcelona/deJong.png",
  ),
  Product(
    id: 4,
    price: 'Defender',
    title: "Eric García",
    image: "assets/images/eric.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/EricGarcía.png",
  ),
  Product(
    id: 5,
    price: 'Forward',
    title: 'Memphis Depay',
    image: "assets/images/depay.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Depay.png",
  ),
  Product(
    id: 2,
    price: 'Defender',
    title: "Dani Alves",
    image: "assets/images/danialves.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Alves.png",
  ),
  Product(
    id: 35,
    price: 'Defender',
    title: "Sergio Busquets",
    image: "assets/images/busquest.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/Busquets.png",
  ),
  Product(
    id: 25,
    price: 'Forward',
    title: "Ansu Fati",
    image: "assets/images/ansu.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/AnsuFati.png",
  ),
  Product(
    id: 15,
    price: 'Goal Keeper',
    title: "Marc-André ter Stegen",
    image: "assets/images/terstegen.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/Barcelona/ter.png",
  ),
];
