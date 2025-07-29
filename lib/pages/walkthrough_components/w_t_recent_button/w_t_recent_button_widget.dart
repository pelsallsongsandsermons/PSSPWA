import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'w_t_recent_button_model.dart';
export 'w_t_recent_button_model.dart';

class WTRecentButtonWidget extends StatefulWidget {
  const WTRecentButtonWidget({super.key});

  @override
  State<WTRecentButtonWidget> createState() => _WTRecentButtonWidgetState();
}

class _WTRecentButtonWidgetState extends State<WTRecentButtonWidget> {
  late WTRecentButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WTRecentButtonModel());

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
      height: 150.0,
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
                text: 'The Recent Button',
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
                    '\n\nThis will show a list of the last 20 sermons preached, by date.\n\n\n Tap the screen to proceed',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              )
            ],
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'podbean',
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                ),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
