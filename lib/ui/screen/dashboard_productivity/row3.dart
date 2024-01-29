import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Row3 extends StatelessWidget {
  const Row3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 300,
            decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Productividad',
                      style: GoogleFonts.raleway(
                        color: textColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: defaultPadding * 2,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 300,
            decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Productividad',
                      style: GoogleFonts.raleway(
                        color: textColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.title,
    required this.number,
    required this.persontage,
  });

  final String title, number;
  final double persontage;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              title,
              style: GoogleFonts.raleway(
                color: textColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            RichText(
                text: TextSpan(
                    text: number,
                    style: GoogleFonts.raleway(color: Colors.white),
                    children: <TextSpan>[
                  TextSpan(
                      text: '/100',
                      style: GoogleFonts.raleway(
                          color: Colors.white54,
                          fontSize: 12,
                          fontWeight: FontWeight.w600)),
                ])),
          ])),
      SizedBox(
        height: 7,
        width: double.infinity,
        child: GFProgressBar(
          margin: const EdgeInsets.only(left: 0),
          percentage: persontage,
          backgroundColor: textColor,
          linearGradient: LinearGradient(
            colors: persontage > .75
                ? [gradientStartWF, gradientMiddleWF]
                : [gradientStartWF, gradientEndWF],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      )
    ]);
  }
}
