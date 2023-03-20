import 'package:flutter/cupertino.dart';

class Person {
  void asyncFutureTest() {
    Future.delayed(const Duration(seconds: 2), () {
      return "hello future";
    }).then((value) {
      debugPrint("data");
    }, onError: (e) {
      debugPrint(e);
    }).catchError((onError) {
      debugPrint(onError);
    }).whenComplete(() {
      // 无论成功还是失败，都会执行到这里；
    });
  }

  // 等待两个接口的数据返回
  void asyncFutureWait() {
    Future.wait([
      Future.delayed(const Duration(seconds: 2), () {
        return "hello";
      }),
      Future.delayed(const Duration(seconds: 3), () {
        return "Flutter";
      })
    ]).then((results) => {debugPrint(results[0] + results[1])}, onError: (e) {
      debugPrint(e);
    }).catchError((e) {
      debugPrint(e);
    });

    userAsyncAwait();
  }

  Future<String> login(String userName, String pwd) {
    return Future.delayed(const Duration(seconds: 2));
  }

  Future<String> getUserInfo(String id) {
    return Future.delayed(const Duration(seconds: 3));
  }

  Future saveUserInfo(String userInfo) {
    return Future.delayed(const Duration(seconds: 4));
  }

  // 消除回调地狱

  void removeCalls() {
    login("userName", "pwd")
        .then((id) {
          return getUserInfo(id);
        })
        .then((userInfo) {
          return saveUserInfo(userInfo);
        })
        .then((value) => {})
        .catchError((e) {
          debugPrint(e);
        });
  }

  // 使用async和await消除cb
  void userAsyncAwait() async {
    try {
      String id = await login("userName", "pwd");
      String userInfo = await getUserInfo(id);
      await saveUserInfo(userInfo);
    } catch (e) {
      print(e);
    }
  }

  //
  void streamTest() {
    Stream.fromFutures([
      Future.delayed(const Duration(seconds: 1), () {
        return "Hello1";
      }),
      Future.delayed(const Duration(seconds: 2), () {
        throw AssertionError("Error");
      }),
      Future.delayed(const Duration(seconds: 3), () {
        return "Hello 3";
      })
    ]).listen((data) {
      print(data);
    }, onError: (e) {
      print(e.message);
    }, onDone: () {});
  }
}
