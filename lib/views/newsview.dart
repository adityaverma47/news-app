// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class NewsView extends StatefulWidget {
//   String url;
//   NewsView(this.url, {super.key});
//   @override
//   NewsViewState createState() => NewsViewState();
// }
//
// class NewsViewState extends State<NewsView> {
//   late String finalUrl;
//   final Completer<WebViewController> controller =
//       Completer<WebViewController>();
//   @override
//   void initState() {
//     if (widget.url.toString().contains("http://")) {
//       finalUrl = widget.url.toString().replaceAll("http://", "https://");
//     } else {
//       finalUrl = widget.url;
//     }
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var JavascriptMode;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Food Recipe App"),
//       ),
//       body: Container(
//         child: WebView(
//           initialUrl: finalUrl,
//           javascriptMode: JavascriptMode.unrestricted,
//           onWebViewCreated: (WebViewController webViewController) {
//             setState(() {
//               controller.complete(webViewController);
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
//
// WebView(
//     {required String initialUrl,
//     required javascriptMode,
//     required Null Function(WebViewController webViewController)
//         onWebViewCreated}) {}
