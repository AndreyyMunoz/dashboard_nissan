import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_main/chart_column.dart';
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
                      'Productos Defectuosos',
                      style: GoogleFonts.raleway(
                        color: textColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Enero 2024',
                      style: GoogleFonts.raleway(
                        color: Colors.white54,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(Icons.arrow_drop_down, color: textColor)
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Expanded(child: ChartColumn()),
                const SizedBox(
                  height: defaultPadding,
                )
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
                      'Flujo de Trabajo',
                      style: GoogleFonts.raleway(
                        color: textColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Hoy',
                      style: GoogleFonts.raleway(
                        color: Colors.white54,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(Icons.arrow_drop_down, color: textColor)
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const ProgressBar(
                  title: 'Dato 1',
                  persontage: 0.5,
                  number: '50',
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const ProgressBar(
                  title: 'Dato 2',
                  persontage: 0.8,
                  number: '80',
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const ProgressBar(
                  title: 'Dato 3',
                  persontage: 0.2,
                  number: '20',
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const ProgressBar(
                  title: 'Dato 4',
                  persontage: 1,
                  number: '100',
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const ProgressBar(
                  title: 'Dato 5',
                  persontage: 0.1,
                  number: '10',
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
