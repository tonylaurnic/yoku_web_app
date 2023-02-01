import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/router/app_pages.dart';
import 'package:yoku_web_app/widgets/navigation_bar/drower_element.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_item.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDescktop extends StatelessWidget {
  const NavigationBarTabletDescktop(
      {super.key, this.automaticallyImplyLeading});

  final bool? automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor.withOpacity(0.8),
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarItem(
            'PRENOTA',
            onTap: () => Get.toNamed(Routes.booking),
          ),
          GestureDetector(
              child: const Text(
            'EN',
            style: TextStyle(color: Colors.black),
          )),
          const NavBarLogo(),
          DrowerElement(
            onPressed: () => Get.toNamed(Routes.dialogbox),
          ),
        ],
      ),
    );
  }
}

// DropdownButton languageChooser() {
//     return DropdownButton<String>(
//         isExpanded: false,
//         hint: Text('Please choose a location'), // Not necessary for Option 1
//         value: _controller.selectedLanguage.value,
//         onChanged: (symbol) {
//           _controller.changeLanguage = symbol;
//         },
//         items: languages.map((LanguageModel _language) {
//           print(_language.language);
//           return DropdownMenuItem<String>(
//             child: new Text(_language.language),
//             value: _language.symbol,
//           );
//         }).toList());
//   }
