import 'package:flutter/material.dart';
import 'Services.dart';
import 'Res.dart';

class JsonParseDemo extends StatefulWidget {
  JsonParseDemo() : super();

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  late List<Res> _res;
  late bool _loading;

  void initState() {
    super.initState();
    _loading = true;
    Services.getUsers().then((Res1) {
      setState(() {
        _res = Res1;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_loading ? 'Loading ... ' 'Json Parsing' : 'Users'),
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: null == _res ? 0 : _res.length,
              itemBuilder: (context, index) {
                Res res = _res[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(res.resName),
                    Text(res.resLocation),
                    Text(res.resCategory),
                    Text(res.resInformation),
                    Text(res.resMinOrderPrice.toString()),
                    Container(
                      height: 1.0,
                      width: 500,
                      color: Colors.black,
                    )
                  ],
                );
              }),
        ));
  }
}
