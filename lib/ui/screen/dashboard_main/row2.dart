import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_main/chart_spline_area.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Row2 extends StatelessWidget {
  const Row2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 320,
            decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(10))),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Montacargas',
                    style: GoogleFonts.raleway(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF54AFBC),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: defaultPadding / 2),
                    child: Text(
                      'Eficiencia',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding * 2,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF9644FF),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: defaultPadding / 2),
                    child: Text(
                      'Oportunidad',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              const Expanded(
                  child: ChartSplineArea())
            ]),
          ),
        ),
      ],
    );
  }
}