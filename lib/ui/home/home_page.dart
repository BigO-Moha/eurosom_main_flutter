import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/auth/auth_bloc.dart';
import 'package:eurosom/logic/eurosom/eurosom_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/auth_model/auth_model.dart';
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/services/eurosom/euro_api.dart';
import 'package:eurosom/ui/home/fragments/home_fragment.dart';
import 'package:eurosom/ui/home/models/menu_model.dart';
import 'package:eurosom/ui/main/AppColors.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class HomeDrawer extends StatefulWidget {
  static String tag = '/drawer_screen5';
  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  List<SampleListModel> getData = [];

  late int isSelected = 0;
  late AuthModel? user;

  double value = 0;

  bool d1Open = false;

  List<dynamic> router = [
    HomeDrawer(),
  ];

  @override
  void initState() {
    user = getIt<IAuthFacade>().getSignedUser().fold((l) => null, (r) => r);
    setStatusBarColor(appStore.scaffoldBackground!);

    getData.add(
      SampleListModel(
        title: "Home",
        icon: Icons.home,
        launchWidget:
            Text("Home View", style: boldTextStyle(size: 24)).center(),
      ),
    );
    getData.add(
      SampleListModel(
        title: "Apps",
        icon: Icons.apps,
        launchWidget:
            Text("Apps View", style: boldTextStyle(size: 24)).center(),
      ),
    );
    getData.add(
      SampleListModel(
        title: "Setings",
        icon: Icons.settings,
        launchWidget:
            Text("Notification View", style: boldTextStyle(size: 24)).center(),
      ),
    );

    getData.add(
      SampleListModel(
        onTap: () {},
        title: "signout",
        icon: Icons.logout,
        launchWidget:
            Text("Signo View", style: boldTextStyle(size: 24)).center(),
      ),
    );

    init();
    super.initState();
  }

  void closeDrawer() {
    value = 0;
    d1Open = false;
    setStatusBarColor(appStore.scaffoldBackground!);
  }

  openDrawer() {
    value = 1;
    d1Open = true;
    setStatusBarColor(Colors.transparent);
    setState(() {});
  }

  void init() async {
    // await Future.delayed(const Duration(seconds: 1))
    //     .then((value) => openDrawer());
  }

  @override
  void dispose() {
    setStatusBarColor(appStore.scaffoldBackground!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            unAuthenticated: (e) {
              context.replaceRoute(const SignWithEmailInRoute());
            });
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade400,
                    Colors.blue.shade800,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      40.height,
                      Icon(Icons.account_circle, color: Colors.white, size: 70),
                      8.height,
                      Text(user!.user!.name!,
                          style: boldTextStyle(color: Colors.white, size: 20)),
                    ],
                  ).paddingLeft(16),
                  32.height,
                  Column(
                    children: [
                      ...List.generate(
                        getData.length,
                        (index) {
                          SampleListModel data = getData[index];
                          return SettingItemWidget(
                            title: data.title.validate(),
                            titleTextStyle: primaryTextStyle(
                                color: isSelected == index
                                    ? Colors.white
                                    : Colors.white54),
                            leading: Icon(
                              data.icon,
                              color: isSelected == index
                                  ? Colors.white
                                  : Colors.white54,
                            ),
                            onTap: () {
                              isSelected = index;
                              closeDrawer();

                              setState(() {});
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ).paddingAll(8),
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 250),
              builder: (_, double val, __) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: GestureDetector(
                    onTap: () {
                      closeDrawer();
                      setState(() {});
                    },
                    onPanUpdate: (d) {
                      closeDrawer();
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: d1Open ? radius(16) : radius(0),
                        color: context.scaffoldBackgroundColor,
                      ),
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                      d1Open ? Icons.arrow_back : Icons.menu,
                                      size: 24),
                                  onPressed: () {
                                    if (d1Open) {
                                      closeDrawer();
                                    } else {
                                      value = 1;
                                      d1Open = true;
                                      setStatusBarColor(Colors.blue.shade800);
                                    }
                                    setState(() {});
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width -
                                          150),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          toast("logging out");
                                          context.replaceRoute(
                                              const SignWithEmailInRoute());
                                          context
                                              .read<AuthBloc>()
                                              .add(const AuthEvent.signOut());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          decoration:
                                              boxDecorationWithRoundedCorners(
                                            border: Border.all(
                                                color: appStore.isDarkModeOn
                                                    ? white
                                                    : gray.withOpacity(0.4)),
                                            boxShape: BoxShape.circle,
                                            backgroundColor: Colors.white,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Icon(Icons.logout,
                                                  size: 24,
                                                  color: primaryColor),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 2, top: 3),
                                                width: 6,
                                                height: 6,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      8.width,
                                      GestureDetector(
                                        onTap: () {
                                          toast("Notification");
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          decoration:
                                              boxDecorationWithRoundedCorners(
                                            border: Border.all(
                                                color: appStore.isDarkModeOn
                                                    ? white
                                                    : gray.withOpacity(0.4)),
                                            boxShape: BoxShape.circle,
                                            backgroundColor: Colors.white,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Icon(Icons.notifications_none,
                                                  size: 24,
                                                  color: primaryColor),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 2, top: 3),
                                                decoration:
                                                    boxDecorationWithRoundedCorners(
                                                        boxShape:
                                                            BoxShape.circle,
                                                        backgroundColor:
                                                            Colors.red),
                                                width: 6,
                                                height: 6,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      8.width,
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    height:
                                        MediaQuery.of(context).size.height - 72,
                                    child: BlocProvider<EurosomBloc>(
                                      create: (context) => getIt<EurosomBloc>()
                                        ..add(const EurosomEvent
                                            .getAllApplications()),
                                      child: HomeFragment(),
                                    )),
                              ],
                            ).center(),
                            0.height,
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
