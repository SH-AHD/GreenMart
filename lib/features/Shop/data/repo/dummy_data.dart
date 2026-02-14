
import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/network_imgs.dart';

import '../models/product_model.dart';

class ShopRepository {

// Singleton Pattern 
static final ShopRepository _instance = ShopRepository._internal();

ShopRepository._internal();

factory ShopRepository(){
  return _instance;
}

final List<ProductModel> offerProducts = [
  ProductModel(
    id: '1',
    img:
        'https://imgs.search.brave.com/ce4EuCv6dREiC4ytZbYYwrfkJoUQCE-6PE_1dFYS1Hc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wbmdm/cmUuY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy9CYW5hbmExMTUt/MTAyNHg2ODMucG5n',
    title: 'Banana',
    price: '\$4.99',
    amount: '7pcs',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    img: 'https://imgs.search.brave.com/xOBort082qXA3YtL-EcvOeOcHfSWontkKWD96QnGQrs/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNTkv/NjUyLzU0Ni9zbWFs/bC9mcmVzaC1hbmQt/anVpY3ktcmVkLWFu/ZC1ncmVlbi1hcHBs/ZXMtd2l0aC13YXRl/ci1kcm9wcy1vbi1h/LWZvci1oZWFsdGh5/LWVhdGluZy1wbmcu/cG5n',
    title: 'Apple',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),


  ProductModel(
    id: '19',
    catId: "3",
    img: 'https://imgs.search.brave.com/2IzGUE9355HDaADBPpn6PcPDUJPh-kIFUcSNf3VXfPc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzIv/ODM2LzM3NS9zbWFs/bC9qdWljeS1ncmls/bGVkLWJlZWYtc3Rl/YWstd2l0aC1yb3Nl/bWFyeS1hbmQtcGVw/cGVyY29ybnMtaXNv/bGF0ZWQtb24tdHJh/bnNwYXJlbnQtYmFj/a2dyb3VuZC1wbmcu/cG5n',
    title: 'Beef Steak',
    price: '\$25.00',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description: 'Premium quality beef steak, fresh and tender.',
  ),
  ProductModel(
    id: '17',
    catId: "3",
    img: 'https://imgs.search.brave.com/3p-uCqLC8ApbweBnaA-PJR48yNoHQcrqsD_3OU-EsFk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzIv/MzI1LzI5Ni9zbWFs/bC9yYXctY2hpY2tl/bi1tZWF0LWlzb2xh/dGVkLW9uLXRyYW5z/cGFyZW50LWJhY2tn/cm91bmQtZmlsZS1j/dXQtb3V0LWFpLWdl/bmVyYXRlZC1wbmcu/cG5n',
    title: 'Fresh Chicken',
    price: '\$12.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description: 'Whole fresh chicken, perfect for roasting or grilling.',
  ),
 
  ProductModel(
    id: '9',
    catId: "5",
    img: 'https://imgs.search.brave.com/ZWGoZ3SpDNtfXvcyr5fk2QeqaSpqbgnTvNQicLlEVh4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzMv/NDIzLzE4NC9zbWFs/bC9nbGFzcy1qdWct/ZmlsbGVkLXdpdGgt/ZnJlc2gtbWlsay1w/bmcucG5n',
    title: 'Fresh Milk',
    price: '\$3.50',
    amount: '1L',
    tag: UniqueKey().toString(),
    description: 'Pure full cream milk, rich in calcium and vitamins.',
  ),

];

final List<ProductModel> bestSellingProducts = [
  ProductModel(
    id: '1',
    img:
        'https://imgs.search.brave.com/jRh05J8K5273XCt8LZTLPY_ULGuJc42SMebFnwO3L-Q/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzcv/MTc0LzM1MC9zbWFs/bC9haS1nZW5lcmF0/ZWQtM2QtcmVuZGVy/aW5nLW9mLWEtb3Jh/bmdlcy13aXRoLWxl/YXZlcy1vbi10cmFu/c3BhcmVudC1iYWNr/Z3JvdW5kLWFpLWdl/bmVyYXRlZC1mcmVl/LXBuZy5wbmc',
    title: 'Orange',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    img:
        'https://imgs.search.brave.com/ZB2q0jgoaBsYu6eZQk57hAJWRRZ8uTm0B9pTbciF_BY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNDYv/ODIyLzIwMC9zbWFs/bC9hLWZyZXNoLXRo/cmVlLXJlZC1wZXBw/ZXItd2l0aC13YXRl/ci1kcm9wbGV0cy1p/c29sYXRlZC1vbi1h/LXRyYW5zcGFyZW50/LWJhY2tncm91bmQt/ZnJlZS1wbmcucG5n',
    title: 'Bell Pepper Red',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
    ProductModel(
    id: '23',
    catId: "2",
    img: 'https://imgs.search.brave.com/7qNdAlnEqdKIHBARdJr2C-YfP5adplPRY2bFLsDzRI0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzAv/NDY1LzYzOS9zbWFs/bC9nbGFzcy1ib3R0/bGUtZmlsbGVkLXdp/dGgtZ29sZGVuLW9s/aXZlLW9pbC1yZXN0/cy1uZWFyLWZyZXNo/LW9saXZlcy1vbi10/cmFuc3BhcmVudC1i/YWNrZ3JvdW5kLXBu/Zy5wbmc',
    title: 'Extra Virgin Olive Oil',
    price: '\$20.00',
    amount: '500ml',
    tag: UniqueKey().toString(),
    description: 'Premium cold-pressed olive oil, ideal for salads.',
  ),
  ProductModel(
    id: '24',
    catId: "2",
    img: 'https://imgs.search.brave.com/48k_i_gLbgvBlLvh4fCvpz4P9ivWYrwTrQLU8sQi-ps/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNjcv/OTA1LzY2Ny9zbWFs/bC9jbGFyaWZpZWQt/YnV0dGVyLWluLWEt/Y2xheS1wb3QtYS13/b29kZW4tc3Bvb24t/cmVzdHMtaW5zaWRl/LXBuZy5wbmc',
    title: 'Vegetable Ghee',
    price: '\$10.00',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description: 'High-quality ghee that adds great flavor to your meals.',
  ),
 ProductModel(
    id: "13",
    catId: "6",
    title: "Orange Juice",
    img: NetworkImgs.orange_juice,
    price: "\$15.99",
    amount: "2L",
    tag: UniqueKey().toString(),
    description: "Freshly squeezed orange juice full of Vitamin C.",
  ),
  ProductModel(
    id: "14",
    catId: "6",
    title: "Coca Cola Can",
    img: NetworkImgs.coca_cola,
    price: "\$4.99",
    amount: "325ml",
    tag: UniqueKey().toString(),
    description: "The classic taste of Coca Cola in a convenient can.",
  ),

];

final List<ProductModel> _allProducts = [
  ProductModel(
    id: '1',
    catId: "1",
    img:
        'https://imgs.search.brave.com/jRh05J8K5273XCt8LZTLPY_ULGuJc42SMebFnwO3L-Q/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzcv/MTc0LzM1MC9zbWFs/bC9haS1nZW5lcmF0/ZWQtM2QtcmVuZGVy/aW5nLW9mLWEtb3Jh/bmdlcy13aXRoLWxl/YXZlcy1vbi10cmFu/c3BhcmVudC1iYWNr/Z3JvdW5kLWFpLWdl/bmVyYXRlZC1mcmVl/LXBuZy5wbmc',
    title: 'Orange',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
        catId: "1",
    img:
        'https://imgs.search.brave.com/ZB2q0jgoaBsYu6eZQk57hAJWRRZ8uTm0B9pTbciF_BY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNDYv/ODIyLzIwMC9zbWFs/bC9hLWZyZXNoLXRo/cmVlLXJlZC1wZXBw/ZXItd2l0aC13YXRl/ci1kcm9wbGV0cy1p/c29sYXRlZC1vbi1h/LXRyYW5zcGFyZW50/LWJhY2tncm91bmQt/ZnJlZS1wbmcucG5n',
    title: 'Bell Pepper Red',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
        catId: "1",
   img: 'https://imgs.search.brave.com/xOBort082qXA3YtL-EcvOeOcHfSWontkKWD96QnGQrs/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNTkv/NjUyLzU0Ni9zbWFs/bC9mcmVzaC1hbmQt/anVpY3ktcmVkLWFu/ZC1ncmVlbi1hcHBs/ZXMtd2l0aC13YXRl/ci1kcm9wcy1vbi1h/LWZvci1oZWFsdGh5/LWVhdGluZy1wbmcu/cG5n',
    title: 'Apple',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    catId: "1",
    img:
        'https://imgs.search.brave.com/ce4EuCv6dREiC4ytZbYYwrfkJoUQCE-6PE_1dFYS1Hc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wbmdm/cmUuY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy9CYW5hbmExMTUt/MTAyNHg2ODMucG5n',
    title: 'Banana',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '5',
        catId: "1",
    img:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    title: 'Cabbage',
    price: '\$10.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),


  ProductModel(
    id: '6',
    catId: "4",
    img: 'https://imgs.search.brave.com/da6cM5kE3n373YWkWiQsTru--FIm5vqdrlPNEwCdSDA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzQv/NDY4LzAwOS9zbWFs/bC9iYWd1ZXR0ZS1i/YWd1ZXR0ZS1icmVh/ZC1mcmVuY2gtYnJl/YWQtbG9uZy1icmVh/ZC1iYWd1ZXR0ZS10/cmFuc3BhcmVudC1i/YWNrZ3JvdW5kLWFp/LWdlbmVyYXRlZC1w/bmcucG5n',
    title: 'French Bread',
    price: '\$2.99',
    amount: '1pc',
    tag: UniqueKey().toString(),
    description: 'Freshly baked French baguette with a crunchy crust and soft interior.',
  ),
  ProductModel(
    id: '7',
    catId: "4",
    img: 'https://imgs.search.brave.com/zKrrazWUQfgnwWpGlQR-ZSZPT8onEyw-IeqrOwrirgo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNjkv/ODgzLzI0NC9zbWFs/bC9kZWxpY2lvdXMt/Y2hvY29sYXRlLWNo/aXAtY29va2llcy1m/bHlpbmctdGhyb3Vn/aC10aGUtYWlyLXNl/dC1pc29sYXRlZC1v/bi10cmFuc3BhcmVu/dC1iYWNrZ3JvdW5k/LWZyZWUtcG5nLnBu/Zw',
    title: 'Chocolate Cookies',
    price: '\$5.49',
    amount: '200g',
    tag: UniqueKey().toString(),
    description: 'Delicious cookies packed with dark chocolate chips.',
  ),
  ProductModel(
    id: '8',
    catId: "4",
    img: 'https://imgs.search.brave.com/QvK8WLdWEFa1_0NO9ZFrty8Ur-GJJ2llW8y2Sw72u0I/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wbmcu/cG5ndHJlZS5jb20v/cG5nLXZlY3Rvci8y/MDI0MTIyNS9vdXJt/aWQvcG5ndHJlZS1z/cGxhc2gtb2Ytcmlw/cGxlLXBvdGF0by1j/aGlwcy1mbHlpbmct/c25hY2tzLWZvci1m/b29kLXBhY2thZ2Ut/cG5nLWltYWdlXzE0/ODkwNDIxLnBuZw',
    title: 'Potato Chips',
    price: '\$1.99',
    amount: '150g',
    tag: UniqueKey().toString(),
    description: 'Crispy salted potato chips, perfect for snack time.',
  ),


  ProductModel(
    id: '9',
    catId: "5",
    img: 'https://imgs.search.brave.com/ZWGoZ3SpDNtfXvcyr5fk2QeqaSpqbgnTvNQicLlEVh4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzMv/NDIzLzE4NC9zbWFs/bC9nbGFzcy1qdWct/ZmlsbGVkLXdpdGgt/ZnJlc2gtbWlsay1w/bmcucG5n',
    title: 'Fresh Milk',
    price: '\$3.50',
    amount: '1L',
    tag: UniqueKey().toString(),
    description: 'Pure full cream milk, rich in calcium and vitamins.',
  ),
  ProductModel(
    id: '20',
    catId: "5",
    img: 'https://imgs.search.brave.com/tTaYFr0WDEeiQN5kOsQut96NLxTkZKDL2ovKKWgmzIk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNDkv/NDIzLzA3OS9zbWFs/bC90d2VsdmUtZWdn/cy1pbi1hLWJveC1w/bmcucG5n',
    title: 'Egg Box',
    price: '\$4.99',
    amount: '12pcs',
    tag: UniqueKey().toString(),
    description: 'Farm fresh brown eggs, high in protein.',
  ),
  ProductModel(
    id: '18',
    catId: "5",
    img: 'https://imgs.search.brave.com/lvZoETpBQvoA2MOwUmPadj8NhYUoSB8iMxpPNkdg8Ls/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNjkv/MDczLzU1Mi9zbWFs/bC9hc3NvcnRlZC1j/aGVkZGFyLWNoZWVz/ZS1jdWJlcy1hbmQt/c2xpY2VzLW9uLXdv/b2Rlbi1jdXR0aW5n/LWJvYXJkLXBuZy5w/bmc',
    title: 'Cheddar Cheese',
    price: '\$8.99',
    amount: '500g',
    tag: UniqueKey().toString(),
    description: 'Aged cheddar cheese with a sharp and creamy flavor.',
  ),
 
  ProductModel(
    id: "10",
        catId: "6",
    title: "Diet Coke",
    img: NetworkImgs.diet_coke,
    price: "\$1.99",
    amount: "355ml",
    tag: UniqueKey().toString(),
    description: "Cold and refreshing diet coke with zero calories.",
  ),
  ProductModel(
    id: "11",
    catId: "6",
    title: "Sprite Can",
    img: NetworkImgs.sprite_can,
    price: "\$1.50",
    amount: "325ml",
    tag: UniqueKey().toString(),
    description: "Lemon-lime soda that quenches your thirst.",
  ),
  ProductModel(
    id: "12",
    catId: "6",
    title: "Apple & Grape Juice",
    img: NetworkImgs.apple_grape_juice,
    price: "\$15.99",
    amount: "2L",
     tag: UniqueKey().toString(),
    description: "Natural blend of apple and grape juice, no added sugar.",
  ),
  ProductModel(
    id: "13",
    catId: "6",
    title: "Orange Juice",
    img: NetworkImgs.orange_juice,
    price: "\$15.99",
    amount: "2L",
    tag: UniqueKey().toString(),
    description: "Freshly squeezed orange juice full of Vitamin C.",
  ),
  ProductModel(
    id: "14",
    catId: "6",
    title: "Coca Cola Can",
    img: NetworkImgs.coca_cola,
    price: "\$4.99",
    amount: "325ml",
    tag: UniqueKey().toString(),
    description: "The classic taste of Coca Cola in a convenient can.",
  ),
  ProductModel(
    id: "15",
    catId: "6",
    title: "Pepsi Can",
    img: NetworkImgs.pepsi_can,
    price:" \$4.99",
    amount: "330ml",
     tag: UniqueKey().toString(),
    description: "Refreshing Pepsi cola can, perfect for any meal.",
  ),



  ProductModel(
    id: '19',
    catId: "3",
    img: 'https://imgs.search.brave.com/2IzGUE9355HDaADBPpn6PcPDUJPh-kIFUcSNf3VXfPc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzIv/ODM2LzM3NS9zbWFs/bC9qdWljeS1ncmls/bGVkLWJlZWYtc3Rl/YWstd2l0aC1yb3Nl/bWFyeS1hbmQtcGVw/cGVyY29ybnMtaXNv/bGF0ZWQtb24tdHJh/bnNwYXJlbnQtYmFj/a2dyb3VuZC1wbmcu/cG5n',
    title: 'Beef Steak',
    price: '\$25.00',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description: 'Premium quality beef steak, fresh and tender.',
  ),
  ProductModel(
    id: '17',
    catId: "3",
    img: 'https://imgs.search.brave.com/3p-uCqLC8ApbweBnaA-PJR48yNoHQcrqsD_3OU-EsFk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzIv/MzI1LzI5Ni9zbWFs/bC9yYXctY2hpY2tl/bi1tZWF0LWlzb2xh/dGVkLW9uLXRyYW5z/cGFyZW50LWJhY2tn/cm91bmQtZmlsZS1j/dXQtb3V0LWFpLWdl/bmVyYXRlZC1wbmcu/cG5n',
    title: 'Fresh Chicken',
    price: '\$12.99',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description: 'Whole fresh chicken, perfect for roasting or grilling.',
  ),
  ProductModel(
    id: '21',
    catId: "3",
    img: 'https://imgs.search.brave.com/Q_B0oWEtUW59NYz0iRmsKgJW71oURwCo5qjmtdDfVOc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNjAv/MjQxLzk5My9zbWFs/bC9kZWxpY2lvdXMt/c2FsbW9uLWZpbGxl/dC13aXRoLWZyZXNo/LWJhc2lsLWhpZ2gt/cmVzb2x1dGlvbi1m/b29kLWltYWdlLXBu/Zy5wbmc',
    title: 'Salmon Fillet',
    price: '\$30.00',
    amount: '500g',
    tag: UniqueKey().toString(),
    description: 'Fresh Atlantic salmon rich in Omega-3 fatty acids.',
  ),

  ProductModel(
    id: '22',
    catId: "2",
    img: 'https://imgs.search.brave.com/VKbldgcR9ALnl6tDmzGOH6JWlnHsoxmICEyc9fjupgA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/cG5nYWxsLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvMTIvU3Vu/Zmxvd2VyLU9pbC1C/YWNrZ3JvdW5kLVBO/Ry5wbmc',
    title: 'SunFlower Oil',
    price: '\$15.00',
    amount: '2L',
    tag: UniqueKey().toString(),
    description: 'Refined sunflower oil for healthy cooking and frying.',
  ),
  ProductModel(
    id: '23',
    catId: "2",
    img: 'https://imgs.search.brave.com/7qNdAlnEqdKIHBARdJr2C-YfP5adplPRY2bFLsDzRI0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzAv/NDY1LzYzOS9zbWFs/bC9nbGFzcy1ib3R0/bGUtZmlsbGVkLXdp/dGgtZ29sZGVuLW9s/aXZlLW9pbC1yZXN0/cy1uZWFyLWZyZXNo/LW9saXZlcy1vbi10/cmFuc3BhcmVudC1i/YWNrZ3JvdW5kLXBu/Zy5wbmc',
    title: 'Extra Virgin Olive Oil',
    price: '\$20.00',
    amount: '500ml',
    tag: UniqueKey().toString(),
    description: 'Premium cold-pressed olive oil, ideal for salads.',
  ),
  ProductModel(
    id: '24',
    catId: "2",
    img: 'https://imgs.search.brave.com/48k_i_gLbgvBlLvh4fCvpz4P9ivWYrwTrQLU8sQi-ps/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNjcv/OTA1LzY2Ny9zbWFs/bC9jbGFyaWZpZWQt/YnV0dGVyLWluLWEt/Y2xheS1wb3QtYS13/b29kZW4tc3Bvb24t/cmVzdHMtaW5zaWRl/LXBuZy5wbmc',
    title: 'Vegetable Ghee',
    price: '\$10.00',
    amount: '1kg',
    tag: UniqueKey().toString(),
    description: 'High-quality ghee that adds great flavor to your meals.',
  ),
];


final List<ProductModel> _favProducts=[]; 

final List<ProductModel> _cartItems=[]; 

 List<ProductModel> getAllStaticProducts() {
    return _allProducts;
  }

    Future<List<ProductModel>> getOfferStaticProducts() async {
   await Future.delayed(const Duration(seconds: 1));

    return offerProducts;
  }

    Future<List<ProductModel>> getBestStaticProducts() async {
   await Future.delayed(const Duration(seconds: 1));

    return bestSellingProducts;
  }


 List<ProductModel> getCatProducts(String categoryId){

return _allProducts.where((item)=> item.catId==categoryId).toList();  
}


List<ProductModel> getProductsByName(String searchKey) {
  final cleanKey = searchKey.trim().toLowerCase();

  if (cleanKey.isEmpty) {
    return _allProducts; 
    }

  return _allProducts.where((item) {
    final title = item.title?.toLowerCase() ?? "";
    return title.contains(cleanKey);
  }).toList();
}

List<ProductModel>  getFavProducts()=>_favProducts;

void toggleFavorite(ProductModel product) {
    if (_favProducts.contains(product)) {
      _favProducts.remove(product);
    } else {
      _favProducts.add(product);
    }
  }

bool isFavorite(ProductModel product) {
    return _favProducts.contains(product);
  }

List<ProductModel>  getCartProducts()=>_cartItems;

void addToCart(ProductModel product){
  _cartItems.add(product);

}
void removeFromCart(ProductModel product){
  _cartItems.remove(product);

}


String calcTotalCost(List<ProductModel> items) {
  double total = 0.0;
  
  for (var item in items) {
    double price = double.tryParse(item.price?.replaceAll('\$', '') ?? '0') ?? 0.0;

     total += price * item.quantity; 
  }
  
  return total.toStringAsFixed(2);
}
}

