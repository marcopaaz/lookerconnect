import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchUserByIDWidget extends StatefulWidget {
  const SearchUserByIDWidget({Key? key}) : super(key: key);

  @override
  _SearchUserByIDWidgetState createState() => _SearchUserByIDWidgetState();
}

class _SearchUserByIDWidgetState extends State<SearchUserByIDWidget> {
  ApiCallResponse? out;
  TextEditingController? queryUserIDController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    queryUserIDController = TextEditingController(text: '2222');
  }

  @override
  void dispose() {
    queryUserIDController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: LookerGroup.getCurrentUserDataCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final searchUserByIDGetCurrentUserDataResponse = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              'Search User By ID',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 30),
                    child: TextFormField(
                      controller: queryUserIDController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'queryUserIDController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'User ID',
                        hintText: '2222',
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        suffixIcon: queryUserIDController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  queryUserIDController?.clear();
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      out = await LookerGroup.getUserIDCall.call(
                        userId: int.tryParse(queryUserIDController!.text),
                      );

                      context.pushNamed(
                        'UserDetails',
                        queryParams: {
                          'avatarURL': serializeParam(
                            LookerGroup.getUserIDCall.avatar(
                              (out?.jsonBody ?? ''),
                            ),
                            ParamType.String,
                          ),
                          'firstName': serializeParam(
                            LookerGroup.getUserIDCall
                                .firstname(
                                  (out?.jsonBody ?? ''),
                                )
                                .toString(),
                            ParamType.String,
                          ),
                          'lastName': serializeParam(
                            LookerGroup.getUserIDCall
                                .lastname(
                                  (out?.jsonBody ?? ''),
                                )
                                .toString(),
                            ParamType.String,
                          ),
                          'email': serializeParam(
                            LookerGroup.getUserIDCall
                                .email(
                                  (out?.jsonBody ?? ''),
                                )
                                .toString(),
                            ParamType.String,
                          ),
                          'isEnabled': serializeParam(
                            LookerGroup.getUserIDCall.disabled(
                              (out?.jsonBody ?? ''),
                            ),
                            ParamType.bool,
                          ),
                          'userID': serializeParam(
                            getJsonField(
                              (out?.jsonBody ?? ''),
                              r'''$.id''',
                            ),
                            ParamType.int,
                          ),
                        }.withoutNulls,
                      );

                      setState(() {});
                    },
                    text: 'Submit',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
