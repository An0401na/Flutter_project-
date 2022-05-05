import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/all.dart';
import 'package:flutter/cupertino.dart';

class KakaoLoginPage extends StatefulWidget {
  @override
  State<KakaoLoginPage> createState() => _KakaoLoginPageState();
}

class _KakaoLoginPageState extends State<KakaoLoginPage> {
  Future<void> _loginButtonPressed() async {
    print('AAuth Code');
    String authCode = AuthCodeClient.instance.request() as String;
    print('코드 : ');
    print(authCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
              child: Text(
                '카카오 로그인',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              color: Colors.yellow,
              onPressed: _loginButtonPressed,
            ),
          )
        ],
      ),
    ));
  }
}

//https://dev-vlog200ok.tistory.com/25
//https://domdom.tistory.com/entry/flutter-%ED%94%8C%EB%9F%AC%ED%84%B0-%EC%B9%B4%EC%B9%B4%EC%98%A4-%EB%A1%9C%EA%B7%B8%EC%9D%B8-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0
//openssl => https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=dntjd207&logNo=220564518845
