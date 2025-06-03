import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Add this import
import './screens/contactus.dart';
import './screens/dashboard.dart';
import './screens/login.dart';
import './screens/home.dart';
import './screens/orderspage.dart';
import './screens/profile.dart';
import './screens/child.dart';
import './screens/donation.dart';
import './screens/rewards.dart';
import './screens/badges.dart';
import './screens/devotion.dart';
import './screens/homescreen/campaigns.dart';
import './screens/homescreen/childupdates.dart';
import './screens/homescreen/community.dart';
import './screens/splashscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for async in main
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final String? token = prefs.getString('token');

  runApp(MyApp(initialRoute: token != null ? '/home' : '/login'));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorldVision Philippines',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
         '/': (context) => const SplashScreen(),
         '/dashboard': (context) => DashboardPage(),
         '/login': (context) => LoginPage(),
         '/home': (context) => HomePage(),
         '/profile': (context) => ProfilePage(),
         '/child': (context) => ChildPage(),
         '/donation': (context) => DonationPage(),
         '/rewards': (context) => RewardsPage(),
         '/badges': (context) => BadgesPage(),
         '/contactus': (context) => ContactUsPage(),
         '/devotion': (context) => DevotionPage(),
         '/campaigns': (context) => CampaignsPage(),
         '/childupdates': (context) => ChildUpdatesPage(),
         '/community': (context) => CommunityPage(),
         '/orders': (context) => OrdersPage(),

      },
    );
  } 
}
