import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  initNotifications() {
    _firebaseMessaging.requestNotificationPermissions();

    _firebaseMessaging.getToken().then((token) {
      print("===== FCM Token =====");

      print(token);
      //dy2CjS63QsWLiO67bUwZZQ:APA91bF1rYR5rrSKBREMMO4Cst-m9lb5y_wtJ3JcNDj3jcZ-BoePV3kfd6CgIwruKFcT8G0pfysmpvUeTDydEFqOEhsisXznJHIjyAH48Y-xJYlMd9-cgVtPS7nWM8Y8Pe71sDEv-A_h
    });

    _firebaseMessaging.configure(onMessage: (info) {
      print("======== On message =========");
      print(info);
    }, onLaunch: (info) {
      print("======= On Launch =======");
      print(info);
    }, onResume: (info) {
      print("======== On Resume ======");
      print(info);

      // final noti = info["data"]["comida"];
      // print(noti);
    });
  }
}
