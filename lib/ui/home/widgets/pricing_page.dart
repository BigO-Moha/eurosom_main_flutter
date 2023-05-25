import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/eurosom/eurosom_bloc.dart';
import 'package:eurosom/main.dart';
import 'package:eurosom/models/pricing_model/pricing_model.dart';
import 'package:eurosom/ui/home/utils/T14Colors.dart';
import 'package:eurosom/ui/home/widgets/T14Widget.dart';
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

  int? i;

  @override
  void initState() {
    super.initState();
    context.read<EurosomBloc>().add(EurosomEvent.getAppPricing(widget.appId));
    init();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EurosomBloc>(context)
        .add(EurosomEvent.getAppPricing(widget.appId));
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
        builder: (context, state) {
          return state.maybeMap(getPricingsSuccess: (e) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("subsbcriptions",
                          style: boldTextStyle(size: 20, color: t14_colorBlue)),
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
                            var data =
                                e.pricings.data![index].features!.split('-');
                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
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
                                backgroundColor:
                                    i == index ? t14_choosePlan_bgColor : white,
                                border: Border.all(
                                    color: t14_colorBlue.withOpacity(0.2),
                                    width: 0.8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data.duration!,
                                      style: primaryTextStyle(size: 16)),
                                  Text("${data.price.toString()} \$",
                                      style: primaryTextStyle(size: 14)),
                                ],
                              ),
                            ).onTap(() {
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
                      showJustBottomSheet(
                        context: context,
                        dragZoneConfiguration:
                            JustBottomSheetDragZoneConfiguration(
                          dragZonePosition: DragZonePosition.outside,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Container(
                              height: 4,
                              width: 30,
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.grey[300]
                                  : Colors.white,
                            ),
                          ),
                        ),
                        configuration: JustBottomSheetPageConfiguration(
                          height: MediaQuery.of(context).size.height - 200,
                          builder: (context) {
                            return Column(
                              children: [
                                const SizedBox(height: 15),
                                const Material(
                                  child: Center(
                                      child: Text(
                                    'select payment method',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )),
                                ),
                                const SizedBox(height: 15),
                                Container(
                                  height: 300,
                                  child: GridView(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 20.0,
                                        mainAxisSpacing: 20.0,
                                      ),
                                      children: [
                                        Material(
                                          child: InkWell(
                                            onTap: () {
                                              // var formated = doc[
                                              //         'ussd']
                                              //     .replaceAll(
                                              //         'usd',
                                              //         _selectedPrice
                                              //             .toString());
                                              // launchUrl(Uri(
                                              //     scheme: 'tel',
                                              //     path: formated));
                                            },
                                            child: const FillImageCard(
                                              title: Text("evc plus"),
                                              contentPadding: EdgeInsets.all(0),
                                              width: 100,
                                              height: 100,
                                              imageProvider: AssetImage(
                                                  'assets/images/evcp.png'),
                                            ),
                                          ),
                                        ),
                                      ]),
                                )
                              ],
                            );
                          },
                          scrollController: scrollController,
                          closeOnScroll: true,
                          cornerRadius: 16,
                          backgroundColor:
                              Theme.of(context).canvasColor.withOpacity(0.5),
                          backgroundImageFilter: ImageFilter.blur(
                            sigmaX: 30,
                            sigmaY: 30,
                          ),
                        ),
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
          });
        },
      ),
    );
  }
}
