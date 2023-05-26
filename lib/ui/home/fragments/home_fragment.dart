import 'dart:io';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/eurosom/eurosom_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/appsmodel/appsmodel.dart';
import 'package:eurosom/models/appsmodel/datum.dart' as am;
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/ui/home/pricing_screen.dart';
import 'package:eurosom/ui/home/widgets/apps_widget.dart';
import 'package:eurosom/ui/utils/colors.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:eurosom/ui/utils/constant.dart';
import 'package:eurosom/ui/utils/images.dart';
import 'package:eurosom/ui/utils/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../routes/app_router.gr.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  bool isActive = true;

  @override
  void initState() {
    super.initState();
    isActive = true;

    init();
  }

  void init() async {
    setStatusBarColor(primaryColor, delayInMilliSeconds: 300);
    setState(() {
      isActive = false;
    });
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<EurosomBloc>(context).add(const EurosomEvent.getAllApplications());
    // am.Datum? appModel;
    final user =
        getIt<IAuthFacade>().getSignedUser().fold((l) => null, (r) => r);
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: boxDecorationWithRoundedCorners(
                backgroundColor: primaryColor, borderRadius: BorderRadius.zero),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Hi, ${user!.user!.name}',
                                style: boldTextStyle(color: white)),
                            8.width,
                            CommonCachedNetworkImage(ic_hello,
                                height: 20, width: 20, fit: BoxFit.cover),
                          ],
                        ),
                        8.height,
                        Text('Welcome back to Eurosom!',
                            style: secondaryTextStyle(
                                color: white.withOpacity(0.5))),
                      ],
                    ).expand(),
                  ],
                ),
                16.height,
                Container(
                  padding: const EdgeInsets.all(24),
                  width: context.width(),
                  decoration: boxDecorationWithRoundedCorners(
                      backgroundColor: Colors.green.withOpacity(0.8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('welcome to Eurosom',
                          style: secondaryTextStyle(
                              color: white.withOpacity(0.6))),
                      8.height,
                      Row(
                        children: [
                          Text('Explore unlimited applications',
                              style: boldTextStyle(color: white, size: 22)),
                          4.width,
                          CommonCachedNetworkImage(ic_show,
                              height: 12,
                              width: 12,
                              color: white.withOpacity(0.4)),
                        ],
                      ),
                      8.height,
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            margin: const EdgeInsets.only(right: 4),
                            decoration: boxDecorationWithRoundedCorners(
                                boxShape: BoxShape.circle,
                                backgroundColor: white),
                            child:
                                const Icon(Icons.keyboard_arrow_up, size: 16),
                          ),
                          Text(
                              'Technology is best when it brings people together.',
                              style: secondaryTextStyle(
                                  color: white.withOpacity(0.6))),
                        ],
                      ),
                      16.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              paymentComponent(amazon_logo),
                              Positioned(
                                  right: -24,
                                  child: paymentComponent(whatsapp_logo,
                                      logo_color: Colors.black)),
                              Positioned(
                                  right: -48,
                                  child: paymentComponent(zoom_logo,
                                      logo_color: sandyBrown)),
                            ],
                          ),
                          16.width,
                          CommonCachedNetworkImage(graph,
                              color: white,
                              fit: BoxFit.cover,
                              height: 30,
                              width: 60)
                        ],
                      ),
                    ],
                  ),
                ),
                16.height,
                Row(
                  children: [
                    // AppButton(
                    //   color: appStore.isDarkModeOn
                    //       ? cardDarkColor
                    //       : gray.withOpacity(0.4),
                    //   onTap: () {
                    //     //
                    //   },
                    //   elevation: 0.0,
                    //   width: context.width(),
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 0, horizontal: 16),
                    //   shapeBorder: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(8)),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       // Container(
                    //       //   padding: const EdgeInsets.all(2),
                    //       //   margin: const EdgeInsets.only(right: 4),
                    //       //   decoration: boxDecorationWithRoundedCorners(
                    //       //     boxShape: BoxShape.circle,
                    //       //     backgroundColor: Colors.transparent,
                    //       //     border: Border.all(color: white),
                    //       //   ),
                    //       //   child: Icon(Icons.keyboard_arrow_up,
                    //       //       size: 16, color: white),
                    //       // ),
                    //       // 8.width,
                    //       // Text('Deposit', style: boldTextStyle(color: white)),
                    //     ],
                    //   ),
                    // ).expand(),
                    // 16.width,
                    // OutlinedButton(
                    //   onPressed: () {
                    //     //
                    //   },
                    //   style: OutlinedButton.styleFrom(
                    //     onSurface: Colors.white, //<-- SEE HERE
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //         padding: EdgeInsets.all(2),
                    //         margin: EdgeInsets.only(right: 4),
                    //         decoration: boxDecorationWithRoundedCorners(
                    //           boxShape: BoxShape.circle,
                    //           backgroundColor: Colors.transparent,
                    //           border: Border.all(color: white),
                    //         ),
                    //         child: Icon(Icons.download_outlined,
                    //             size: 16, color: white),
                    //       ),
                    //       8.width,
                    //       Text('Withdraw', style: boldTextStyle(color: white)),
                    //     ],
                    //   ),
                    // ).expand(),
                  ],
                ),
              ],
            ),
          ),
          16.height,
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Eurosom Applications',
                    style: boldTextStyle(size: headingTextSize))
                .paddingOnly(left: 16, bottom: 16),
            BlocBuilder<EurosomBloc, EurosomState>(
              builder: (context, state) {
                return state.maybeMap(
                  getApplicationsSuccess: (e) {
                    return Container(
                      height: 600,
                      child: GridView.builder(
                          itemCount: e.apps.data!.length,
                          itemBuilder: (context, index) {
                            return AppsWidget(e.apps.data![index]);
                          },
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 5.0,
                          )

                          // Container(
                          //   margin: EdgeInsets.all(16),
                          //   padding: EdgeInsets.all(16),
                          //   decoration: boxDecorationWithRoundedCorners(
                          //       backgroundColor: primaryColor),
                          //   child: CommonCachedNetworkImage(dashboard,
                          //       fit: BoxFit.cover, height: 150, width: context.width()),
                          // ),
                          ),
                    );
                  },
                  orElse: () {
                    // context
                    //     .read<EurosomBloc>()
                    //     .add(const EurosomEvent.getAllApplications());
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          ])
        ],
      ),
    );
  }
}
