import 'dart:js_util';

import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  var products = [
    {
      "id": 1,
      "name": "MacBook Pro 2024",
      "in-stock": true,
      "price": "₺ 15.000",
      "photo":
          "https://cdn.akakce.com/z/apple/macbook-pro-m2-pro-16-gb-512-gb-ssd-14-mphe3tu-a-uzay-grisi.jpg",
    },
    {
      "id": 2,
      "name": "Iphone 15 Pro Max",
      "in-stock": false,
      "price": "₺ 25.000",
      "photo":
          "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-1inch_GEO_EMEA?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=VW44dkRidm5wazhwcGxtL0cyaEJ2VTkrNXBUdUJSK1k4NE5seUtJaW80ZmcvQnUxdUdEMFZ5SXlMVXRiaERVdnNCckZqMTMrS3dIUWFPL2dFWXJDTmpDNlBJczZRQmxyM2ZhZjVKT0RIMFJtMnIvc0R1T2E0dzJMNDBHTWVISnVWUUI4TzJ6bEM4S1ZTK1ZYbjIxMUpnPT0=&traceId=1",
    },
    {
      "id": 3,
      "name": "Playstation 5",
      "in-stock": true,
      "price": "₺ 10.000",
      "photo":
          "https://reimg-teknosa-cloud-prod.mncdn.com/mnresize/600/600/productimage/788560182/788560182_1_MC/96b1bc29aa6f4214ab8e75883dbcf29b.jpg",
    },
    {
      "id": 4,
      "name": "Samsung S24 Ultra",
      "in-stock": true,
      "price": "₺ 15.000",
      "photo":
          "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/samsung/thumb/143409-1-1_large.jpg",
    },
    {
      "id": 5,
      "name": "Oyuncu Kasası",
      "in-stock": true,
      "price": "₺ 30.000",
      "photo": "https://i0.shbdn.com/photos/12/10/55/x5_1140121055nop.jpg",
    },
    {
      "id": 6,
      "name": "Iphone 14 Pro Max",
      "in-stock": true,
      "price": "₺ 10.000",
      "photo": "https://cdn.cimri.io/pictures/article/original/46/46144.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Products"),
        ),
        body: SizedBox.expand(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              margin: const EdgeInsets.all(14.0),
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Image.network(products[index]["photo"].toString()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(products[index]["name"].toString()),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border)),
                    ],
                  ),
                  if(products[index]["in-stock"] as bool)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.check_box),
                            const Text("Mevcut"),
                          ],
                        ),
                        Text("Fiyat: ${products[index]["price"].toString()}"),
                      ],
                    )
                    else 
                    const Row(
                      children: [
                        Icon(Icons.error),
                        Text("Mevcut Değil"),
                      ],
                    ),
                  const Divider (),
                ],
                )),
            ),
          ),
        );
  }
}
