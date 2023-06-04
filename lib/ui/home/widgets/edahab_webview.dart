import 'package:auto_route/auto_route.dart';
import 'package:eurosom/logic/eurosom/eurosom_bloc.dart';
import 'package:eurosom/ui/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:eurosom/models/pricing_model/datum.dart' as pm;

@RoutePage()
class DahaPayment extends StatelessWidget {
  final String invoiceid;
  final String number;
  final double price;
  final pm.Datum pricingmodel;
  final int appid;
  const DahaPayment(
      {super.key,
      required this.invoiceid,
      required this.number,
      required this.price,
      required this.pricingmodel,
      required this.appid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(const Color(0x00000000))
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {
                // Update loading bar.
              },
              onPageStarted: (String url) {},
              onPageFinished: (String url) {
                // context.pop();
              },
              onWebResourceError: (WebResourceError error) {},
              onNavigationRequest: (NavigationRequest request) {
                if (request.url.startsWith(
                    'https://edahab.net/API/Payment/TransactionComplete')) {
                  // payment success
                  context.read<EurosomBloc>().add(
                      EurosomEvent.createSubscription(
                          number, price, pricingmodel, appid));
                  context.replaceRoute(ChattingRoute());
                }
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(
            Uri.parse('https://edahab.net/api/payment?invoiceId=$invoiceid'),
          ),
      ),
    );
  }
}
