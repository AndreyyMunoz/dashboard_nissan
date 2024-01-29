import 'package:dashboard_dpxd/locator.dart';
import 'package:dashboard_dpxd/services/navigaton_service.dart';
import 'package:dashboard_dpxd/shared/app_colors.dart';
import 'package:dashboard_dpxd/shared/app_styles.dart';
import 'package:flutter/material.dart';

import '../../responsive_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ResponsiveWidget.isSmallScreen(context)
                  ? const SizedBox()
                  : Expanded(
                      child: Container(
                      height: height,
                      color: AppColors.blueDarkColor,
                      child: Center(
                        child: Text(
                          'Bienvenido Usuario',
                          style: ralewayStyle.copyWith(
                            fontSize: 48.0,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )),
              Expanded(
                  child: Container(
                      height: height,
                      margin: EdgeInsets.symmetric(horizontal: height * 0.12),
                      color: AppColors.backColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.2),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Hola! Para Acceder ',
                                style: ralewayStyle.copyWith(
                                  fontSize: 25.0,
                                  color: AppColors.blueDarkColor,
                                  fontWeight: FontWeight.normal,
                                )),
                            TextSpan(
                                text: 'Inicia Sesión!',
                                style: ralewayStyle.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.blueDarkColor,
                                    fontSize: 26.0)),
                          ])),
                          SizedBox(height: height * 0.015),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Te damos la bienvenida a ',
                                style: ralewayStyle.copyWith(
                                  fontSize: 14.0,
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.normal,
                                )),
                            TextSpan(
                                text: 'Nissan Dashboard!',
                                style: ralewayStyle.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.textColor,
                                    fontSize: 14.0)),
                          ])),
                          Text(
                            'Por favor introduce tus datos en el siguiente formulario:',
                            style: ralewayStyle.copyWith(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                                color: AppColors.textColor),
                          ),
                          SizedBox(height: height * 0.05),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('Usuario',
                                style: ralewayStyle.copyWith(
                                    fontSize: 14.0,
                                    color: AppColors.blueDarkColor,
                                    fontWeight: FontWeight.w700)),
                          ),
                          const SizedBox(height: 6.0),
                          Container(
                            height: 45.0,
                            width: width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: AppColors.whiteColor),
                            child: TextFormField(
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.textColor,
                                fontSize: 13.0,
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.email_outlined),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 16.0),
                                  hintText: 'Introduzca su tipo de usuario',
                                  hintStyle: ralewayStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.textColor.withOpacity(0.5),
                                    fontSize: 13.0,
                                  )),
                            ),
                          ),
                          SizedBox(height: height * 0.045),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('Contraseña',
                                style: ralewayStyle.copyWith(
                                    fontSize: 14.0,
                                    color: AppColors.blueDarkColor,
                                    fontWeight: FontWeight.w700)),
                          ),
                          const SizedBox(height: 6.0),
                          Container(
                            height: 45.0,
                            width: width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: AppColors.whiteColor),
                            child: TextFormField(
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.textColor,
                                fontSize: 14.0,
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      const Icon(Icons.remove_red_eye_sharp);
                                    },
                                    icon: const Icon(
                                        Icons.remove_red_eye_outlined),
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.lock),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 16.0),
                                  hintText: 'Introduzca su contraseña',
                                  hintStyle: ralewayStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.textColor.withOpacity(0.6),
                                    fontSize: 14.0,
                                  )),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  '¿Olvidaste tu contraseña?',
                                  style: ralewayStyle.copyWith(
                                    fontSize: 13.0,
                                    color: AppColors.mainBlueColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                          SizedBox(height: height * 0.01),
                          Material(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                locator<NavigationService>()
                                    .navigateTo('/dashboard');
                              },
                              borderRadius: BorderRadius.circular(25.0),
                              child: Ink(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 57.0, vertical: 14.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: AppColors.mainBlueColor,
                                ),
                                child: Text(
                                  'Acceder',
                                  style: ralewayStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor,
                                    fontSize: 15.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
            ]),
      ),
    );
  }
}
