import 'dart:ui';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/eurosom/eurosom_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/absatractions/eurosom.dart';
import 'package:eurosom/models/post_subscription/post_subscription.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/models/pricing_model/datum.dart' as pm;
import 'package:eurosom/models/subscription_model/subscription_model.dart';
import 'package:eurosom/models/post_subscription/data.dart' as dm;
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/services/eurosom/euro_api.dart';
import 'package:eurosom/services/eurosom/euro_facade.dart';
import 'package:eurosom/ui/home/utils/T14Colors.dart';
import 'package:eurosom/ui/home/widgets/T14Widget.dart';
import 'package:eurosom/ui/main/AppColors.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_card/image_card.dart';
import 'package:just_bottom_sheet/drag_zone_position.dart';
import 'package:just_bottom_sheet/just_bottom_sheet.dart';
import 'package:just_bottom_sheet/just_bottom_sheet_configuration.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class Pricingshow extends StatefulWidget {
  final int appId;

  const Pricingshow({super.key, required this.appId});
  @override
  _PricingshowState createState() => _PricingshowState();
}

class _PricingshowState extends State<Pricingshow> {
  final scrollController = ScrollController();
  pm.Datum? price;

  int? i;

  @override
  void initState() {
    super.initState();
    // context.read<EurosomBloc>().add(EurosomEvent.getAppPricing(widget.appId));

    init();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController evcNumber = TextEditingController();
    final user =
        getIt<IAuthFacade>().getSignedUser().fold((l) => null, (r) => r);
    bool checkBox = true;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: t14_colorWhite,
        title:
            Text("Pricing plans", style: boldTextStyle(color: t14_colorBlue)),
        centerTitle: true,
        actions: [
          // IconButton(
          //     icon: Icon(AntDesign.closecircleo, size: 20),
          //     onPressed: () {
          //       finish(context);
          //     })
        ],
      ),
      body: BlocBuilder<EurosomBloc, EurosomState>(
          builder: (context, state) => state.maybeMap(getPricingsSuccess: (e) {
                return Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("subsbcriptions",
                              style: boldTextStyle(
                                  size: 20, color: t14_colorBlue)),
                          16.height,
                          Text("select any plan you need",
                              style: secondaryTextStyle(color: t14_colorBlue)),
                          ListView.builder(
                              itemCount: 1,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var data = e.pricings.data![index].features!
                                    .split('-');
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.green[400],
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.green[400]!,
                                            ),
                                            shape: BoxShape.circle),
                                        child: Theme(
                                          data: ThemeData(
                                              unselectedWidgetColor:
                                                  Colors.transparent),
                                          child: Checkbox(
                                            value: checkBox,
                                            onChanged: (state) {
                                              setState(() {
                                                checkBox = state!;
                                              });
                                            },
                                            activeColor: Colors.transparent,
                                            checkColor: t14_colorWhite,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize.padded,
                                          ),
                                        ),
                                      ),
                                      16.width,
                                      Text(data[index],
                                          style: boldTextStyle(size: 16)),
                                    ],
                                  ),
                                ).onTap(() {
                                  checkBox = checkBox;
                                  setState(() {});
                                });
                              }),
                          ListView.builder(
                              itemCount: e.pricings.data!.length,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var data = e.pricings.data![index];
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 8),
                                  padding: EdgeInsets.all(16),
                                  decoration: boxDecorationWithRoundedCorners(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    backgroundColor: i == index
                                        ? t14_choosePlan_bgColor
                                        : white,
                                    border: Border.all(
                                        color: t14_colorBlue.withOpacity(0.2),
                                        width: 0.8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(data.duration!,
                                          style: primaryTextStyle(size: 16)),
                                      Text("${data.price.toString()} \$",
                                          style: primaryTextStyle(size: 14)),
                                    ],
                                  ),
                                ).onTap(() {
                                  price = data;
                                  i = index;
                                  setState(() {});
                                });
                              }),
                          50.height,
                        ],
                      ).paddingAll(16),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: t14AppButton(
                        onPress: () {
                          bool isExpanded = false;
                          String dropdownValue = 'UK';

                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    radiusOnly(topLeft: 32, topRight: 32)),
                            context: context,
                            builder: (builder) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payout',
                                    style: boldTextStyle(
                                        size: 30, weight: FontWeight.w400),
                                  ),
                                  4.height,
                                  Text(
                                    'Pay out your balance now',
                                    style: secondaryTextStyle(),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: radius(),
                                      color: appColorPrimary.withAlpha(100),
                                    ),
                                    child: ExpansionTile(
                                      childrenPadding: EdgeInsets.all(8),
                                      leading: Container(
                                        child: Icon(Icons.payment_outlined,
                                            color: Colors.white, size: 30),
                                        padding: EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                            borderRadius: radius(100),
                                            color: const Color(0xFFD51A18)),
                                      ),
                                      title: Text.rich(
                                        TextSpan(
                                          text: ' Evc plus',
                                          style: boldTextStyle(),
                                          children: <InlineSpan>[
                                            // TextSpan(
                                            //     text: ' *5138',
                                            //     style: primaryTextStyle()),
                                            // TextSpan(
                                            //     text: ' is Expired',
                                            //     style: boldTextStyle()),
                                          ],
                                        ),
                                      ),
                                      subtitle: Text(
                                          'Enter your account number',
                                          style: secondaryTextStyle(size: 12)),
                                      trailing: isExpanded
                                          ? Container(
                                              child: Icon(
                                                  Icons.keyboard_arrow_up,
                                                  color: context.iconColor,
                                                  size: 30),
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                  borderRadius: radius(100),
                                                  color: context.accentColor
                                                      .withAlpha(32)),
                                            )
                                          : Icon(Icons.keyboard_arrow_down,
                                              color: context.iconColor,
                                              size: 30),
                                      onExpansionChanged: (t) {
                                        isExpanded = !isExpanded;
                                        setState(() {});
                                      },
                                      children: [
                                        Container(
                                          decoration: boxDecorationDefault(
                                              color: context.cardColor,
                                              boxShadow: null),
                                          padding: EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              10.height,
                                              AppTextField(
                                                controller: evcNumber,
                                                textFieldType:
                                                    TextFieldType.PHONE,
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                      Icons.payment,
                                                      color: context.iconColor),
                                                  labelText: 'Evc Number',
                                                  suffixIcon: Icon(
                                                      Icons.camera_alt_outlined,
                                                      color: context.iconColor),
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            ],
                                          ).paddingAll(8),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  AppButton(
                                      text: 'pay',
                                      textStyle: primaryTextStyle(
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                      color: Colors.deepOrange,
                                      width: context.width(),
                                      shapeBorder: RoundedRectangleBorder(
                                          borderRadius: radius(32)),
                                      onTap: () async {
                                        Map<String, int> val = {
                                          "monthly": 1,
                                          "yearly": 12
                                        };
                                        if (evcNumber.text.length > 5 &&
                                            price != null) {
                                          var evc = await getIt<IEurosomRepo>()
                                              .payEvc(evcNumber.text,
                                                  price!.price!.toDouble());
                                          print(evc);

                                          if (evc!.isRight()) {
                                            int type = val[price!.duration!]!;
                                            var cDate = DateTime.now();
                                            context.read<EurosomBloc>().add(
                                                EurosomEvent.createSubscription(
                                                    PostSubscription(
                                                        data: dm.Data(
                                                            account: evcNumber
                                                                .text,
                                                            amount: price!
                                                                .price!,
                                                            user: user!
                                                                .user!.id!
                                                                .toString(),
                                                            paymentMethod:
                                                                'EVC',
                                                            startDate:
                                                                cDate
                                                                    .toString(),
                                                            expiryDate: DateTime(
                                                                    cDate.year,
                                                                    cDate.month +
                                                                        type,
                                                                    cDate.day)
                                                                .toString(),
                                                            app: widget.appId
                                                                .toString(),
                                                            status: 'active'))));
                                            context
                                                .replaceRoute(ChattingRoute());
                                          }
                                        } else {
                                          FlushbarHelper.createError(
                                                  message: "payment error")
                                              .show(context);
                                        }
                                      }).center(),
                                  8.height,
                                  AppButton(
                                    text: 'Never Mind',
                                    textStyle: primaryTextStyle(size: 15),
                                    width: context.width(),
                                    color: context.cardColor,
                                    shapeBorder: RoundedRectangleBorder(
                                        borderRadius: radius(32)),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ).center(),
                                ],
                              ).paddingAll(16);
                            },
                          );
                        },
                        context,
                        btnText: "start subscription",
                        bgColor: t14_btn_subscription,
                        width: context.width(),
                        shape: 10.0,
                        txtColor: t14_colorBlue,
                      ).paddingAll(16),
                    ),
                  ],
                );
              }, orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              })),
    );
  }
}
