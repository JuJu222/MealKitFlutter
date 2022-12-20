part of 'pages.dart';

class WebviewMidtrans extends StatefulWidget {
  static const routeName = '/checkout_web';

  WebviewMidtrans({
    super.key,
  });

  @override
  State<WebviewMidtrans> createState() => _WebviewMidtransState();
}

class _WebviewMidtransState extends State<WebviewMidtrans> {
  // String? url;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    List<Pesan> tempList = data["tempListKeranjang"];
    Uri basicUrl = Uri.parse("https://kukoki.com/login");
    return Scaffold(
        body: WebView(
      initialUrl: data["snapUrl"],
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
      navigationDelegate: (NavigationRequest request) {
        if (request.url.startsWith(data["snapUrl"])) {
          //You can do anything

          //Prevent that url works
          return NavigationDecision.prevent;
        } else if (request.url.contains("https://kukoki.com/login")) {
          Navigator.pop(context);
          return NavigationDecision.prevent;
        } else if (request.url.contains("https://kukoki.com/register")) {
          setState(() {
            listPesan.insertAll(0, tempList);
            for (var item in tempList) {
              listKeranjang.removeWhere((element) => element == item);
            }
          });
          Navigator.pushReplacementNamed(context, PembayaranBerhasil.routeName,
              arguments: {
                "totalPembayaran": data["totalPembayaran"],
                "waktuTransaksi": DateTime.now()
              });
          return NavigationDecision.prevent;
        }
        //Any other url works

        return NavigationDecision.navigate;
      },
    ));
  }
}
