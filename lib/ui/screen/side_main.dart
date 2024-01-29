import 'package:dashboard_dpxd/locator.dart';
import 'package:dashboard_dpxd/models/main_side.dart';
import 'package:dashboard_dpxd/models/main_side_setting.dart';
import 'package:dashboard_dpxd/services/navigaton_service.dart';
import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMain extends StatefulWidget {
  const SideMain({Key? key}) : super(key: key);

  @override
  State<SideMain> createState() => _SideMainState();
}

class _SideMainState extends State<SideMain> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: primaryColor, boxShadow: [
        BoxShadow(
            color: Colors.black87,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 5))
      ]),
      child: Column(
        children: [
          const SizedBox(
            height: defaultPadding,
          ),
          // SizedBox(
          //   height: 30,
          //   width: 225,
          //   child: Text(
          //     'Nissan Dashboard',
          //     style: GoogleFonts.raleway(
          //       color: Colors.white,
          //       fontSize: 24,
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          // ),
          SizedBox(
              height: 150,
              width: 200,
              child: Image.network(
                'assets/nissanLogo2.png',
                width: 150,
                height: 150,
              )),
          const SizedBox(
            height: defaultPadding * 1,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: demoMainSide.length,
                itemBuilder: (context, index) {
                  return listTitle1(index, demoMainSide[index]);
                }),
          ),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                itemCount: demoMainSideSetting.length,
                itemBuilder: (context, index) {
                  return listTitle2(index, demoMainSideSetting[index]);
                }),
          ),
        ],
      ),
    );
  }

  Container listTitle1(int index, MainSide mainSide) {
    return Container(
      decoration: BoxDecoration(
          color: _selectedIndex == index
              ? const Color.fromARGB(255, 255, 255, 255)
              : Colors.transparent,
          gradient: const LinearGradient(
              colors: [gradientStart, gradientEnd],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: ListTile(
        hoverColor: const Color.fromARGB(255, 255, 255, 255),
        onTap: () {
          setState(() {
            _selectedIndex = mainSide.index;
          });
          switch (mainSide.index) {
            case 0:
              locator<NavigationService>().navigateTo('/dashboard');
              break;
            case 1:
              locator<NavigationService>().navigateTo('/liftTruck');
              // Navigator.pushNamed(context, '/liftTruck');
              break;
            case 2:
              locator<NavigationService>().navigateTo('/tractor');
              break;
            case 3:
              locator<NavigationService>().navigateTo('/productivity');
              break;
            case 4:
              locator<NavigationService>().navigateTo('/notices');
              break;
            default:
              locator<NavigationService>().navigateTo('/dashboard');
              break;
          }
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding * 1.5),
          child: SizedBox(
            height: 30,
            width: 30,
            child: Icon(
              mainSide.icon,
              color: _selectedIndex == index ? Colors.black : Colors.white,
            ),
          ),
        ),
        title: Text(
          mainSide.title,
          style: GoogleFonts.raleway(
              color: _selectedIndex == index ? Colors.black : Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Container listTitle2(int index, MainSideSetting mainSideSetting) {
    return Container(
        decoration: BoxDecoration(
            color: _selectedIndex == mainSideSetting.index
                ? const Color(0xFFCCEDDD)
                : Colors.transparent,
            gradient: const LinearGradient(
                colors: [gradientMiddle, gradientMiddle],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: ListTile(
          hoverColor: const Color(0xFFCCEDDD),
          onTap: () {
            setState(() {
              _selectedIndex = mainSideSetting.index;
            });
            switch (mainSideSetting.index) {
              case 5:
                locator<NavigationService>().navigateTo('/settings');
                break;
              case 6:
                locator<NavigationService>().navigateTo('/login');
                break;
              default:
                locator<NavigationService>().navigateTo('/dashboard');
                break;
            }
          },
          leading: Padding(
            padding: const EdgeInsets.only(left: defaultPadding * 1.5),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                mainSideSetting.icon,
                color: _selectedIndex == mainSideSetting.index
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
          title: Text(
            mainSideSetting.title,
            style: GoogleFonts.raleway(
                color: _selectedIndex == mainSideSetting.index
                    ? Colors.black
                    : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
