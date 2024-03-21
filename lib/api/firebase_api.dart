import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:jivosdk_plugin/bridge.dart';

class FireBaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    Jivo.notifications.setPushToken(fCMToken!);
  }
}
