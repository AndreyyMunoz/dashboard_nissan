import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('Avisos', style: GoogleFonts.raleway(
        color: secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w800
      ),),
      const Spacer(),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: 250,
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: TextFormField(
          style: const TextStyle(color: textColor,
          fontSize: 12),
          decoration:  const InputDecoration(
            hintText: 'Buscar',
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              color: textColor,
            )
          ),
        ),
      ),
      const SizedBox(width: defaultPadding * 2,),
      Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: const Center(child: Icon(
          Icons.notifications, color: textColor,
        ),),
      )
    ],);
  }
}
