import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'w_t_light_dark_switch_model.dart';
export 'w_t_light_dark_switch_model.dart';

class WTLightDarkSwitchWidget extends StatefulWidget {
  const WTLightDarkSwitchWidget({super.key});

  @override
  State<WTLightDarkSwitchWidget> createState() =>
      _WTLightDarkSwitchWidgetState();
}

class _WTLightDarkSwitchWidgetState extends State<WTLightDarkSwitchWidget> {
  late WTLightDarkSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WTLightDarkSwitchModel());

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
      height: 200.0,
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
                text: 'The Light/Dark mode switch\n',
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
                    '\nUse this switch to toggle the display between light and dark mode. Your preferred mode will be remembered.\n\n Tap the screen to proceed',
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
