import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class WebViewScreen extends StatefulWidget {
  final String webUrl;
  final String webName;
  const WebViewScreen(this.webUrl,this.webName);
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}
class _WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
  }
  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('${widget.webName}'),
        centerTitle: true,
      ),
      url: widget.webUrl,
      javascriptChannels: jsChannels,
      mediaPlaybackRequiresUserGesture: false,
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
    );
  }
}
