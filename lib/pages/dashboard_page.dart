import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:woocommerce_store/config.dart';
import 'package:woocommerce_store/widgets/widget_home_categories.dart';
import 'package:woocommerce_store/widgets/widget_home_products.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            imageCarousel(context),
            WidgetCategories(),
            WidgetHomeProducts(
              labelName: "Top Selling Products!",
              tagId: Config.topSellingTagId,
            )
          ],
        ),
      ),
    );
  }

  Widget imageCarousel(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: new Carousel(
        overlayShadow: false,
        borderRadius: true,
        boxFit: BoxFit.none,
        autoplay: true,
        dotSize: 4.0,
        images: [
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7Rz6nEx-do74Gc-5ZsqYwrSBPPCX9VvePgWpJwcaxvUVKUbPr8Yoqr_SR5dn2IC1AeBw&usqp=CAU"),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvwsBCSs_Vuw50oK39E8_5S0pHHPtxl9aKz00IEytG1LvEWmEsXDPqxFXyOf0bIUmu7A&usqp=CAU"),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ05v3ogdyNNegRKlbBQ4f4FXdd20yVBzjGWeMm4B5tGHCdwVW82OrZAJ3olMeD2HZ7jg&usqp=CAU"),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlOlGs-2qKUNmJd0Vetv-GboRgSKgZyVWXpYbPhYnN_h-RwDaS5gDhHIXoSCV6-Zyjsg&usqp=CAU"),
          )
        ],
      ),
    );
  }
}
