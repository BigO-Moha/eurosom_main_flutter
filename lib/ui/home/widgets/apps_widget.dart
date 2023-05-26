import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/eurosom/eurosom_bloc.dart';
import 'package:eurosom/models/absatractions/auth.dart';
import 'package:eurosom/models/appsmodel/datum.dart' as dt;
import 'package:eurosom/services/core/config.dart';
import 'package:eurosom/services/core/injection.dart';
import 'package:eurosom/ui/model/stock_invest_model.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:eurosom/ui/utils/colors.dart';
import 'package:eurosom/ui/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class AppsWidget extends StatelessWidget {
  final dt.Datum data;

  AppsWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.pushRoute(Pricingshow(appId: data.id!));
        context.pushRoute(CheckSubscription(appId: data.id!));
      },
      child: Container(
          decoration: commonDecoration(),
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              paymentComponent("${Config.mainUrl}${data.image!.url!}",
                  logo_color: primaryColor),
              16.height,
              Text(data.title!.validate(), style: boldTextStyle()),
              8.height,
              Row(
                children: [
                  // Text(data.stockPrice.validate(), style: secondaryTextStyle()),
                  16.width,
                  Row(
                    children: const [
                      // Container(
                      //   padding: EdgeInsets.all(2),
                      //   margin: EdgeInsets.only(right: 4),
                      //   decoration: boxDecorationWithRoundedCorners(
                      //     boxShape: BoxShape.circle,
                      //     backgroundColor: data.priceColor!,
                      //     border: Border.all(color: white),
                      //   ),
                      //   child: data.icon,
                      // ),
                      // Text(data.stockScale.validate(),
                      //     style: primaryTextStyle(color: data.priceColor)),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
