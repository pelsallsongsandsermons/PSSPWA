import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'w_t_start_model.dart';
export 'w_t_start_model.dart';

class WTStartWidget extends StatefulWidget {
  const WTStartWidget({super.key});

  @override
  State<WTStartWidget> createState() => _WTStartWidgetState();
}

class _WTStartWidgetState extends State<WTStartWidget> {
  late WTStartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WTStartModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 350.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(14.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryText,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Welcome to Pelsall Songs and Sermons.\n\n',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'podbean',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text:
                    'To skip this tour just tap on \"Skip\" below.\n\nPlay and sing along to worship songs, and listen to sermons from several speakers who have ministered over the years at\nPelsall Evangelical Church.\n\nNote: Songs and sermons will be streamed to your device when requested. This will use some of your network mobile  data allowance if you are not connected to wifi. \nThe app does not require any special permissions, or use any personal information.\n\n Tap the screen (outside of this message) to proceed',
                style: TextStyle(),
              )
            ],
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'podbean',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
