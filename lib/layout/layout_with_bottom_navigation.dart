import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/screens/bottle_collection/collection_provider.dart';
import 'package:pixelfield_test/screens/bottle_collection/my_collection_main_screen.dart';
import 'package:pixelfield_test/screens/screens_not_built_just_to_show/scan_screen.dart';
import 'package:pixelfield_test/screens/screens_not_built_just_to_show/settings_screen.dart';
import 'package:pixelfield_test/screens/screens_not_built_just_to_show/shop_screen.dart';

class LayoutWithBottomNavigation extends StatefulWidget {
  
  const LayoutWithBottomNavigation({super.key});

  @override
  State<LayoutWithBottomNavigation> createState() => _LayoutWithBottomNavigationState();
}

class _LayoutWithBottomNavigationState extends State<LayoutWithBottomNavigation> {
   



  int _selectedIndex = 1; 
  Widget widgetChildToShow = CollectionProvider(child:const MyCollectionMainScreen());
  

  void _changeBottomNav(int index) {
      switch(index){
      case 0:
        setState(() {
          _selectedIndex = index;
          widgetChildToShow = const ScanScreen();
        });
      case 1:
         setState(() {
          _selectedIndex = index;
          widgetChildToShow = CollectionProvider(child: const MyCollectionMainScreen());
        });
      case 2:
         setState(() {
          _selectedIndex = index;
          widgetChildToShow = const ShopScreen();
        });
      case 3:
       setState(() {
          _selectedIndex = index;
          widgetChildToShow = const SettingsScreen();
        });
            
    }
  }


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
    value:  SystemUiOverlayStyle(
      statusBarColor:  Theme.of(context).colorScheme.surface,
    ),
    child: SafeArea(
      child:Scaffold(
        body: Container(
          width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface 
           ),
            child: widgetChildToShow
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface 
          ),
          height: 80,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 24,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: Theme.of(context).colorScheme.surface ,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(padding:EdgeInsets.only(bottom: 10)  ,child: FaIcon(FontAwesomeIcons.expand)),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: Padding(padding:EdgeInsets.only(bottom: 10)  ,child: FaIcon(FontAwesomeIcons.tableCellsLarge)),
              label: 'Collection',
            ),
            BottomNavigationBarItem(
              icon: Padding(padding:EdgeInsets.only(bottom: 10)  ,child: FaIcon(FontAwesomeIcons.bottleWater)),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon:  Padding(padding:EdgeInsets.only(bottom: 10)  ,child:FaIcon(FontAwesomeIcons.gear)),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).colorScheme.onPrimary,
          unselectedItemColor: Theme.of(context).colorScheme.secondary,
          onTap: _changeBottomNav,
          showSelectedLabels: true,
          showUnselectedLabels: true,
                ),
        ),
      )
    )
    );
  }
}