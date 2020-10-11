import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_design/application/login/login_cubit.dart';
import 'package:rent_design/presentation/colors.dart';
import 'package:rent_design/presentation/sizes.dart';
import 'package:rent_design/presentation/styles.dart';
import 'package:rent_design/presentation/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) => state.successLogin.fold(
            () => null,
            (a) => a
                ? Navigator.pushNamed(context, 'homePage')
                : Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Email or password incorrect'),
                    ),
                  ),
          ),
          builder: (context, state) => SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  color: colorFifth(),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 70,
                        bottom: 500,
                      ),
                      child:
                          SvgPicture.asset('assets/icons/find_home_logo.svg'),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    hSpace(MediaQuery.of(context).size.height * .35),
                    Transform.rotate(
                      angle: pi / 4,
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * .82,
                          height: MediaQuery.of(context).size.width * .82,
                          decoration: BoxDecoration(
                            color: colorBlueLightForBackground(),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    hSpace(
                      MediaQuery.of(context).size.height * .55,
                    ),
                    Container(
                      color: colorBlueLightForBackground(),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .35,
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          hSpace(MediaQuery.of(context).size.height * .45),
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 40,
                              color: colorSecondary(),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'Login for enjoy findhome',
                            style: TextStyle(
                              fontSize: 20,
                              color: colorGreyLight(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hSpace(MediaQuery.of(context).size.height * .58),
                      Text(
                        'Email',
                        style: styleT14().copyWith(
                          color: colorSecondary(),
                        ),
                      ),
                      hSpace(10),
                      TextFieldWidget(
                        onChanged: (value) =>
                            context.bloc<LoginCubit>().emailChanged(value),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 13.0),
                          child: Image.asset(
                              'assets/icons/home_checked_blue_sky.png'),
                        ),
                      ),
                      hSpace(15),
                      Text(
                        'Password',
                        style: styleT14().copyWith(
                          color: colorSecondary(),
                        ),
                      ),
                      hSpace(10),
                      TextFieldWidget(
                        obscureText: !state.showPassword,
                        onChanged: (value) =>
                            context.bloc<LoginCubit>().passwordChanged(value),
                        suffixIcon: state.showPassword
                            ? GestureDetector(
                                onTap: () => context
                                    .bloc<LoginCubit>()
                                    .showHidePasswordPressed(),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 14.0),
                                  child: Icon(Icons.visibility_off),
                                ))
                            : GestureDetector(
                                onTap: () => context
                                    .bloc<LoginCubit>()
                                    .showHidePasswordPressed(),
                                child: Image.asset('assets/icons/eye.png')),
                      ),
                      hSpace(30),
                      state.isLoading
                          ? Center(child: CircularProgressIndicator())
                          : FractionallySizedBox(
                              widthFactor: 1,
                              child: FlatButton(
                                  onPressed: () {
                                    context
                                        .bloc<LoginCubit>()
                                        .loginButtonPressed();
                                  },
                                  color: colorSecondary(),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 17,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'LOGIN',
                                      style: styleT14()
                                          .copyWith(color: colorWhite()),
                                    ),
                                  )),
                            ),
                      hSpace(36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Forgot your password?',
                            style: styleT14(),
                          ),
                          Text(
                            'Create new account',
                            style: styleT14().copyWith(
                              color: colorSecondary(),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
