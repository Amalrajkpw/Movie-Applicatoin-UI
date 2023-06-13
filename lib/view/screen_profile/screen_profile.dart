import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mod_application/view/screen_login/screen_login.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';
import 'package:movie_mod_application/view/screen_profile/widgets/options_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/controller/login_controller.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions:const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.grey,
            ),
          )
        ],
        title: BasicFont(
          bold: FontWeight.w600,
          size: 20,
          title: 'Profile',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(controller
                                      .googleAccount.value?.photoUrl ??
                                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.blue,
                                  border: Border.all(color: Colors.white)),
                              height: 20,
                              width: 20,
                              child:const Icon(
                                Icons.edit,
                                size: 13,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      WSize10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BasicFont(
                            title:
                                controller.googleAccount.value?.displayName ??
                                    'Name',
                            size: 16,
                            bold: FontWeight.bold,
                            color: Colors.white,
                          ),
                          BasicFont(
                            title: 'Lv 1 moviebuff',
                            size: 12,
                            bold: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        BasicFont(
                          title: 'Edit profile',
                          size: 12,
                          bold: FontWeight.normal,
                          color: Colors.grey,
                        ),
                        WSize10,
                      const  Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 13,
                        )
                      ]),
                )
              ],
            ),
            HSize30,
            Row(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BasicFont(
                        title: 'Rank #332',
                        size: 11,
                        bold: FontWeight.w500,
                        color: Colors.white,
                      ),
                  const    SizedBox(
                        width: 90,
                      ),
                      BasicFont(
                        title: 'XP 66/100',
                        size: 11,
                        bold: FontWeight.w500,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            HSize10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 3,
                  width: 130,
                   decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 4, 62, 109),
                      Color.fromARGB(255, 77, 128, 200),
                    ],
                  )),
                ),
                BasicFont(
                  title: 'View Progress',
                  size: 10,
                  bold: FontWeight.normal,
                  color: Colors.blue,
                )
              ],
            ),
            HSize10,
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: BasicFont(
                title: 'Watch History',
                size: 14,
                bold: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BasicFont(
                  title: '23',
                  size: 16,
                  bold: FontWeight.w600,
                  color: Colors.white,
                ),
                BasicFont(
                  title: 'movies',
                  size: 12,
                  bold: FontWeight.normal,
                  color: Colors.grey,
                ),
                WSize20,
                BasicFont(
                  title: '5',
                  size: 16,
                  bold: FontWeight.w600,
                  color: Colors.white,
                ),
                BasicFont(
                  title: 'series',
                  size: 12,
                  bold: FontWeight.normal,
                  color: Colors.grey,
                ),
                WSize20,
                BasicFont(
                  title: '5',
                  size: 16,
                  bold: FontWeight.w600,
                  color: Colors.white,
                ),
                BasicFont(
                  title: 'series',
                  size: 12,
                  bold: FontWeight.normal,
                  color: Colors.grey,
                )
              ],
            ),
            HSize30,
            OptionsCard(
                icon: Icons.business_center, title: 'Rewards & referrals'),
            HSize10,
            OptionsCard(icon: Icons.watch_later_outlined, title: 'Watch Later'),
            HSize10,
            OptionsCard(
                icon: Icons.favorite_border_outlined, title: 'My Favourites'),
            HSize10,
            OptionsCard(icon: Icons.leaderboard_outlined, title: 'Leaderboard'),
            HSize10,
            OptionsCard(
                icon: Icons.interests_outlined, title: 'Manage Interests'),
            HSize10,
            OptionsCard(icon: Icons.payment_outlined, title: 'Payment Methods'),
            HSize10,
            OptionsCard(
                icon: Icons.language_outlined, title: 'Change Language'),
            HSize10,
            OptionsCard(icon: Icons.people_alt_outlined, title: 'Refer & Earn'),
            HSize10,
            OptionsCard(icon: Icons.star_border_outlined, title: 'Rater Us'),
            HSize30,
            HSize20,
            InkWell(
              onTap: (() async {
                final sharedPref = await SharedPreferences.getInstance();
                final userLoggedIn = sharedPref.setBool(SAVE_KEY, false);
                controller.logOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ScreenLogin()));
              }),
              child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue, width: 1)),
                  child: Center(
                      child: BasicFont(
                    title: 'LOG OUT',
                    size: 15,
                    bold: FontWeight.bold,
                    color: Colors.white,
                  ))),
            ),
            HSize30,
          ],
        ),
      ),
    );
  }
}
