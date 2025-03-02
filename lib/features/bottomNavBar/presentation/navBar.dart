import 'package:flutter/material.dart';
import 'package:tai/features/bottomNavBar/presentation/analytics/analyticsScreen.dart';
import 'package:tai/features/bottomNavBar/presentation/Requests/presentation/requestsScreen.dart';
import 'package:tai/features/bottomNavBar/presentation/Transactions/transactionsScreen.dart';
import 'package:tai/features/bottomNavBar/presentation/home/homeScreen.dart';
import 'package:tai/features/bottomNavBar/presentation/navbarIcons.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int nowIndex = 0;
  void onTap(int index) {
    setState(() {
      nowIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List pages = [
      const HomeScreen(),
      const AnalyticsScreen(),
      const TransactionsScreen(),
      const RequestsScreen()
    ];
    return Scaffold(
      body: pages[nowIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(

            // unselectedLabelStyle: theme.textTheme.displaySmall,
            // selectedLabelStyle: theme.textTheme.displaySmall,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(255, 240, 240, 240),
            currentIndex: nowIndex,
            onTap: onTap,
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: theme.primaryColor,
            // unselectedItemColor: theme.disabledColor,
            selectedIconTheme: IconThemeData(color: theme.primaryColor),
            unselectedIconTheme: IconThemeData(color: theme.disabledColor),
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: BarIcon(
                        name: 'Home', active: nowIndex == 0 ? true : false),
                  )),
              BottomNavigationBarItem(
                  label: "Analytics",
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: BarIcon(
                        name: 'Analytics', active: nowIndex == 1 ? true : false),
                  )),
             
              BottomNavigationBarItem(
                  label: "Transactions",
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: BarIcon(
                        name: 'Transactions', active: nowIndex == 2 ? true : false),
                  )),
              BottomNavigationBarItem(
                  label: "Requests",
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: BarIcon(
                        name: 'Requests', active: nowIndex == 3 ? true : false),
                  )),
            ]),
      ),
    );
  }
}
