import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_design/application/home_page/home_page_cubit.dart';
import 'package:rent_design/domain/offer.dart';
import 'package:rent_design/presentation/colors.dart';
import 'package:rent_design/presentation/sizes.dart';
import 'package:rent_design/presentation/styles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(
      create: (context) => HomePageCubit()
        ..find()
        ..findUser(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) => Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: colorWhite(),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ]),
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/icons/home_search_icon.svg',
                  width: 25,
                  height: 25,
                ),
                SvgPicture.asset(
                  'assets/icons/love_icon.svg',
                  width: 25,
                  height: 25,
                  color: colorGreyDark(),
                ),
                SvgPicture.asset(
                  'assets/icons/location_icon.svg',
                  width: 25,
                  height: 25,
                  color: colorGreyDark(),
                ),
                SvgPicture.asset(
                  'assets/icons/chat_icon.svg',
                  width: 25,
                  height: 25,
                  color: colorGreyDark(),
                ),
              ],
            ),
          ),
          backgroundColor: colorBlueLightForBackground(),
          body: state.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.only(
                          right: 30,
                          left: 30,
                          top: 30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipOval(
                                  child: Image.network(
                                    state.currentUser.photoUrl,
                                    width: 45,
                                    height: 45,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/location_icon.svg'),
                                    wSpace(5),
                                    Text(
                                      state.currentUser.location,
                                      style: styleT12().copyWith(
                                        color: colorPrimary(),
                                      ),
                                    ),
                                    wSpace(5),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: colorPrimary(),
                                      size: 18,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/bell_icon.svg',
                                      color: colorPrimary(),
                                    ),
                                    wSpace(30),
                                    SvgPicture.asset(
                                        'assets/icons/settings_icon.svg')
                                  ],
                                )
                              ],
                            ),
                            hSpace(40),
                            Text(
                              'Hello, ${state.currentUser.name}',
                              style: styleT20().copyWith(
                                color: colorGreyLight(),
                              ),
                            ),
                            Text(
                              'Start looking for your house',
                              style: styleT20().copyWith(
                                color: colorPrimary(),
                              ),
                            ),
                            hSpace(30),
                            Container(
                              decoration: BoxDecoration(
                                color: colorWhite(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'What are you looking for?',
                                  labelStyle: styleT15().copyWith(
                                      color: colorSecondary().withOpacity(.6)),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(12),
                                    child: SvgPicture.asset(
                                      'assets/icons/search_icon.svg',
                                      width: 5,
                                    ),
                                  ),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: SvgPicture.asset(
                                        'assets/icons/adjust_icon.svg'),
                                  ),
                                ),
                              ),
                            ),
                            hSpace(20),
                            Container(
                              height: 110,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildSelectionIcon(
                                    context,
                                    selectedIndex: state.selectedIndex,
                                    asset: 'assets/icons/home_icon.svg',
                                    name: 'Home',
                                    index: 0,
                                  ),
                                  _buildSelectionIcon(
                                    context,
                                    selectedIndex: state.selectedIndex,
                                    asset: 'assets/icons/appartment_icon.svg',
                                    name: 'Office',
                                    index: 1,
                                  ),
                                  _buildSelectionIcon(
                                    context,
                                    selectedIndex: state.selectedIndex,
                                    asset: 'assets/icons/keys_icon.svg',
                                    name: 'For sale',
                                    index: 2,
                                  ),
                                  _buildSelectionIcon(
                                    context,
                                    selectedIndex: state.selectedIndex,
                                    asset: 'assets/icons/discounts_icon.svg',
                                    name: 'Discounts',
                                    index: 3,
                                  ),
                                ],
                              ),
                            ),
                            hSpace(20),
                            ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: state.offers.length,
                              itemBuilder: (context, index) {
                                return _buildViewForEveryOffer(
                                    state.offers[index]);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildSelectionIcon(
    BuildContext context, {
    @required selectedIndex,
    String name,
    String asset,
    int index,
  }) {
    return GestureDetector(
      onTap: () => context.bloc<HomePageCubit>().changedSelectedIcon(index),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 200,
        ),
        curve: Curves.easeInOut,
        width: selectedIndex == index ? 80 : 75,
        height: selectedIndex == index ? 110 : 75,
        decoration: BoxDecoration(
          color: selectedIndex == index ? colorFifth() : colorWhite(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              asset,
              color: selectedIndex == index ? colorWhite() : colorGrey(),
            ),
            if (selectedIndex == index)
              Text(
                name,
                style: styleT16().copyWith(
                  color: colorWhite(),
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildViewForEveryOffer(Offer offer) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: colorBlack().withOpacity(.25),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    Image.network(
                      offer.photosUrls.first,
                      fit: BoxFit.cover,
                      height: 360,
                    ),
                    Positioned(
                      top: 30,
                      left: 25,
                      child: Container(
                        width: 125,
                        height: 26,
                        decoration: BoxDecoration(
                          color: colorWhite().withOpacity(.66),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/location_icon.svg'),
                            wSpace(4),
                            Text(
                              offer.location,
                              style: styleT12().copyWith(
                                color: colorPrimary(),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                hSpace(255),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      height: 105,
                      decoration: BoxDecoration(
                        color: colorWhite(),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                offer.title,
                                style: styleT20().copyWith(
                                  color: colorPrimary(),
                                  shadows: [
                                    Shadow(
                                      color: colorBlack().withOpacity(.25),
                                      offset: Offset(0, 4),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                              hSpace(10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipOval(
                                    child: Image.network(
                                      offer.owner.photoUrl,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  wSpace(7),
                                  Text(
                                    '${offer.owner.name} ${offer.owner.surname}',
                                    style: styleT15().copyWith(
                                      color: colorPrimary(),
                                      letterSpacing: .3,
                                    ),
                                  )
                                ],
                              ),
                              hSpace(7),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  for (var i = 0; i < offer.rate; i++)
                                    SvgPicture.asset(
                                      'assets/icons/star_filled_icon.svg',
                                      width: 14,
                                    ),
                                  for (var i = 0; i < 5 - offer.rate; i++)
                                    SvgPicture.asset(
                                      'assets/icons/star_empty_icon.svg',
                                      width: 14,
                                    ),
                                  wSpace(10),
                                  Text(
                                    '20 opinions',
                                    style: styleT11().copyWith(
                                      color: colorGrey(),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          wSpace(40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '\$${offer.price.round()} usd',
                                style: styleT20().copyWith(
                                  color: colorPrimary(),
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: colorBlack().withOpacity(.25),
                                      offset: Offset(0, 4),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                              ),
                              hSpace(12),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/rooms_icon.svg'),
                                  wSpace(3),
                                  Text(
                                    offer.rooms.toString(),
                                    style: styleT12().copyWith(
                                      color: colorGreyDark(),
                                    ),
                                  ),
                                  wSpace(13),
                                  SvgPicture.asset(
                                      'assets/icons/bathrooms_icon.svg'),
                                  wSpace(3),
                                  Text(
                                    offer.bathrooms.toString(),
                                    style: styleT12().copyWith(
                                      color: colorGreyDark(),
                                    ),
                                  ),
                                  wSpace(13),
                                  SvgPicture.asset(
                                      'assets/icons/living_icon.svg'),
                                  wSpace(3),
                                  Text(
                                    offer.livings.toString(),
                                    style: styleT12().copyWith(
                                      color: colorGreyDark(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 30,
                      top: -15,
                      child: Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 30,
                              color: colorShadowLoveIcon(),
                            )
                          ],
                          color: colorWhite(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/love_icon.svg',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        hSpace(15),
      ],
    );
  }
}
