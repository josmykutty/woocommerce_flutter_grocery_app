import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woocommerce_store/pages/base_page.dart';
import 'package:woocommerce_store/pages/home_page.dart';
//import 'package:woocommerce_app/pages/paypal_paymentdart';
import 'package:woocommerce_store/pages/product_page.dart';
// import 'package:woocommerce_store/pages/verify_address.dart';
// import 'package:woocommerce_store/provider/cart_provider.dart';
// import 'package:woocommerce_store/provider/loader_provider.dart';
// import 'package:woocommerce_store/provider/order_provider.dart';

// import 'pages/checkout_base.dart';
import 'pages/login_page.dart';
// import 'pages/order_success.dart';
// import 'pages/orders_page.dart';
// import 'pages/product_details.dart';
// import 'provider/masters_provider.dart';
import 'provider/products_provider.dart';

void main() {
  // it should be the first line in main method
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
          child: ProductPage(),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => CartProvider(),
        //   child: ProductDetails(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => LoaderProvider(),
        //   child: BasePage(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => MastersProvider(),
        //   child: VerifyAddress(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => OrderProvider(),
        //   child: OrderSuccessWidget(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => OrderProvider(),
        //   child: OrdersPage(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => CartProvider(),
        //   child:
        //       CheckoutBasePage(), //WILL PUT ONLY THIS BASE CLASS (APPLY TO ALL VERIFY, PAYMENT, ORDER STATUS)
        // ),
      ],
      child: MaterialApp(
        title: 'WooCommerce App',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          // Set routes for using the Navigator.
          //'/PayPal': (BuildContext context) => new PaypalPayPaymentWidget(),
          //'/OrderSuccess': (BuildContext context) => new OrderSuccessWidget(),
        },
        theme: ThemeData(
          fontFamily: 'Nunito-Regular',
          primaryColor: Colors.white,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            elevation: 0,
            foregroundColor: Colors.white,
          ),
          brightness: Brightness.light,
          accentColor: Colors.redAccent,
          dividerColor: Colors.redAccent,
          focusColor: Colors.redAccent,
          hintColor: Colors.redAccent,
          textTheme: TextTheme(
            headline4: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.redAccent,
                height: 1.3),
            headline2: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: Colors.redAccent,
                height: 1.4),
            headline3: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.3),
            subtitle1: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.3),
            caption: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
                height: 1.2),
          ),
        ),
      ),
    );
  }
}
