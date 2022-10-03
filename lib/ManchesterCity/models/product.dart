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
    id: 45,
    price: 'Midfielder',
    title: "Kevin DeBruyne",
    image: "assets/images/kevin.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/DeBruyne.png",
  ),
  Product(
    id: 35,
    price: 'Midfielder',
    title: "Bernardo Silva",
    image: "assets/images/bernardo.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Silva.png",
  ),
  Product(
    id: 25,
    price: 'Forward',
    title: "Jack Grealish",
    image: "assets/images/jack.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Grealish.png",
  ),
  Product(
    id: 15,
    price: 'Defender',
    title: "Fernandinho",
    image: "assets/images/fer.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Fernandinho.png",
  ),
  Product(
    id: 59,
    price: 'Defender',
    title: "João Cancelo",
    image: "assets/images/jao.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Cancelo.png",
  ),
  Product(
    id: 58,
    price: 'Forward',
    title: "Gabriel Jesus",
    image: "assets/images/jesus.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Jesus.png",
  ),
  Product(
    id: 57,
    price: 'Defender',
    title: "Kyle Walker",
    image: "assets/images/kyle.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Walker.png",
  ),
  Product(
    id: 56,
    price: 'Forward',
    title: "Raheem Sterling",
    image: "assets/images/raheem.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Sterling.png",
  ),
  Product(
    id: 55,
    price: 'Forward',
    title: 'Phil Foden',
    image: "assets/images/phil.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Foden.png",
  ),
  Product(
    id: 54,
    price: 'Midfielder',
    title: "Rodri",
    image: "assets/images/rodri.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Rodri.png",
  ),
  Product(
    id: 53,
    price: 'Forward',
    title: "Riyad Mahrez",
    image: "assets/images/riyas.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Mahrez.png",
  ),
  Product(
    id: 52,
    price: 'Defender',
    title: "Ruben Dias",
    image: "assets/images/rubendias.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Dias.png",
  ),
  Product(
    id: 51,
    price: 'Goal Keeper',
    title: "Ederson",
    image: "assets/images/ederson.png",
    imagefront: "Cards/CC/BackCover.png",
    imageback: "Cards/CC/ManCity/Ederson.png",
  ),
];
