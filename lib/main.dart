import 'package:flutter/material.dart';

import 'package:meal_kit_flutter/views/pages.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MealKit',
      theme: ThemeData(

          //Pergantian Warna dan Text pada bar
          colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: secondaryColor,
              secondary: secondaryColor),
          appBarTheme: AppBarTheme(elevation: 0),
          textTheme: myTextTheme),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        RegisterPage.routeName: (context) => RegisterPage(),
        InformasiPengirimanPage.routeName: (context) =>
            InformasiPengirimanPage(),
        PreferensiPage.routeName: (context) => PreferensiPage(),
        ProfilePage.routeName: (context) => ProfilePage(),
      },
||||||| constructed merge base
    return StreamProvider<CustomUser?>.value(
      initialData: null,
      catchError: (context, error) => null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MealKit',
        theme: ThemeData(
            //Pergantian Warna dan Text pada bar
            colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: primaryColor,
                onPrimary: secondaryColor,
                secondary: secondaryColor),
            appBarTheme: AppBarTheme(elevation: 0),
            textTheme: myTextTheme),
        initialRoute: Wrapper.routeName,
        routes: {
          ResetPasswordPage.routeName: (context) => ResetPasswordPage(),
          BerandaPage.routeName: (context) => BerandaPage(),
          KeteranganPesananPage.routeName: (context) => KeteranganPesananPage(),
          BerhasilPembayaranPage.routeName: (context) =>
              BerhasilPembayaranPage(),
          Wrapper.routeName: (context) => Wrapper(),
          CheckoutPage.routeName: (context) => CheckoutPage(),
          LoginPage.routeName: (context) => LoginPage(),
          HomePage.routeName: (context) => HomePage(),
          RegisterPage.routeName: (context) => RegisterPage(),
          InformasiPengirimanPage.routeName: (context) =>
              InformasiPengirimanPage(),
          PreferensiPage.routeName: (context) => PreferensiPage(),
          InformasiResepPage.routeName: (context) => InformasiResepPage(),
          DaftarResepPage.routeName: (context) => DaftarResepPage(),
          TambahResepPage.routeName: (context) => TambahResepPage(),
          PembayaranBerhasil.routeName: (context) => PembayaranBerhasil()
        },
      ),
=======
    return StreamProvider<CustomUser?>.value(
      initialData: null,
      catchError: (context, error) => null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MealKit',
        theme: ThemeData(
            //Pergantian Warna dan Text pada bar
            colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: primaryColor,
                onPrimary: secondaryColor,
                secondary: secondaryColor),
            appBarTheme: AppBarTheme(elevation: 0),
            textTheme: myTextTheme),
        initialRoute: UbahProfilPage.routeName,
        routes: {
          ResetPasswordPage.routeName: (context) => ResetPasswordPage(),
          BerandaPage.routeName: (context) => BerandaPage(),
          KeteranganPesananPage.routeName: (context) => KeteranganPesananPage(),
          BerhasilPembayaranPage.routeName: (context) =>
              BerhasilPembayaranPage(),
          Wrapper.routeName: (context) => Wrapper(),
          CheckoutPage.routeName: (context) => CheckoutPage(),
          LoginPage.routeName: (context) => LoginPage(),
          HomePage.routeName: (context) => HomePage(),
          RegisterPage.routeName: (context) => RegisterPage(),
          InformasiPengirimanPage.routeName: (context) =>
              InformasiPengirimanPage(),
          PreferensiPage.routeName: (context) => PreferensiPage(),
          InformasiResepPage.routeName: (context) => InformasiResepPage(),
          DaftarResepPage.routeName: (context) => DaftarResepPage(),
          TambahResepPage.routeName: (context) => TambahResepPage(),
          PembayaranBerhasil.routeName: (context) => PembayaranBerhasil(),
          ProfilePage.routeName: (context) => ProfilePage(),
          UbahProfilPage.routeName: (context) => UbahProfilPage(),
          UbahInformasiPengirimanPage.routeName: (context) =>
              UbahInformasiPengirimanPage(),
        },
      ),
>>>>>>> Stashed changes
    );
  }
}
