import 'package:flutter/material.dart';

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
        title: "Lionel Messi",
        image: "assets/images/messi.png",
        imagefront: "Cards/CC/BackCover.png",
        imageback: 'Cards/CC/PSG/Messi.png',
    ),
    Product(
        id: 6,
        price: 'Forward',
        title: "Neymar Jr.",
        image: "assets/images/Neymar.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Neymar.png',
    ),
    Product(
        id: 7,
        price: 'Forward',
        title: "Kylian Mbappe",
        image: "assets/images/mba.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Kylian.png',
    ),
    Product(
        id: 8,
        price: 'Defender',
        title: "Marquinhos",
        image: "assets/images/marquinhos.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Marquinhos.png',
    ),
    Product(
        id: 9,
        price: 'Defender',
        title: "Sergio Ramos",
        image: "assets/images/ramos.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Ramos.png',
    ),
    Product(
        id: 10,
        price: 'Midfielder',
        title: "Marco Verratti",
        image: "assets/images/verrati.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Verratti.png',
    ),
    Product(
        id: 11,
        price: 'Midfielder',
        title: "Georginio Wijnaldum",
        image: "assets/images/wijnaldum.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Wijnaldum.png',
    ),
    Product(
        id: 12,
        price: 'Midfielder',
        title: "Leandro Paredes",
        image: "assets/images/paredes.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Paredes.png',
    ),
    Product(
        id: 13,
        price: 'Defender',
        title: 'Nuno Mendes',
        image: "assets/images/nuno.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Mendes.png',
    ),
    Product(
        id: 14,
        price: 'Defender',
        title: "Presnel Kimpembe",
        image: "assets/images/kimpempe.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Kimpembe.png',
    ),
    Product(
        id: 15,
        price: 'Defender',
        title: "Achraf Hakimi",
        image: "assets/images/hakimi.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Hakimi.png',
    ),
    Product(
        id: 16,
        price: 'Forward',
        title: "Maurco Icardi",
        image: "assets/images/icardi.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Icardi.png',
    ),
    Product(
        id: 17,
        price: 'Goal Keeper',
        title: "Keylor Navas",
        image: "assets/images/navas.png",
      imagefront: "Cards/CC/BackCover.png",
      imageback: 'Cards/CC/PSG/Navas.png',
    ),
  ];