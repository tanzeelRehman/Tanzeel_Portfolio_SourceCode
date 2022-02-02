import 'package:url_launcher/url_launcher.dart';

class HandleUrl {
  static void launchUrl(String url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not open the site';
  }
}
