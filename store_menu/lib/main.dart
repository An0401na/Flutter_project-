import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/FlutterFlowTheme.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({required Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://picsum.photos/seed/564/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '가게 이름 ',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    ),
                          ),
                          Text(
                            '최소주문가격 ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            '배달요금 ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://picsum.photos/seed/564/600',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '가게 이름 ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        '최소주문가격 ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        '배달요금 ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://picsum.photos/seed/564/600',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '가게 이름 ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        '최소주문가격 ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        '배달요금 ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://picsum.photos/seed/564/600',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '가게 이름 ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        '최소주문가격 ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        '배달요금 ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
