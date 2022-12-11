import 'package:flutter/material.dart';
import 'package:wisata_nusantara_mobile/apps/dashboard/Dashboard.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:wisata_nusantara_mobile/apps/authentication/pages/LoginPage.dart';

// TEST WEBHOOK

void main() {
  runApp(const WisataNusantara());
}

class WisataNusantara extends StatelessWidget {
  // inisiasi key pada contructor CounterSeven
  const WisataNusantara({super.key});

  // widget root of application.
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) {
          CookieRequest request = CookieRequest();
          return request;
        },
        child: MaterialApp(
            title: 'Wisata Nusantara',
            theme: ThemeData(
                primarySwatch: Colors.green,
                scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
            // menampilkan judul
            home: const Dashboard(title: 'Dashboard')
            // routes:
            ));
  }
}

Future startApp() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
