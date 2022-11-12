import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meal_kit_flutter/model/Preferensi.dart';
import 'package:meal_kit_flutter/services/Auth.dart';
import 'package:meal_kit_flutter/views/Pembayaran_Berhasil_Page.dart';
import 'package:meal_kit_flutter/views/Wrapper.dart';
import 'package:meal_kit_flutter/views/pages.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'model/User.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
          DaftarResepPage.routeName: (context) => DaftarResepPage(
                preferensi:
                    ModalRoute.of(context)?.settings.arguments as Preferensi,
              ),
          TambahResepPage.routeName: (context) => TambahResepPage(),
          PembayaranBerhasil.routeName: (context) => PembayaranBerhasil(),
          StepMasak.routeName: (context) => StepMasak(),
          ProfilePage.routeName: (context) => ProfilePage(),
          UbahProfilPage.routeName: (context) => UbahProfilPage(),
          UbahPreferensiPage.routeName: (context) => UbahPreferensiPage(),
        },
      ),
    );
  }
}
