import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'w_t_final_walkthrough_model.dart';
export 'w_t_final_walkthrough_model.dart';

class WTFinalWalkthroughWidget extends StatefulWidget {
  const WTFinalWalkthroughWidget({super.key});

  @override
  State<WTFinalWalkthroughWidget> createState() =>
      _WTFinalWalkthroughWidgetState();
}

class _WTFinalWalkthroughWidgetState extends State<WTFinalWalkthroughWidget> {
  late WTFinalWalkthroughModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WTFinalWalkthroughModel());

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
      height: 300.0,
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
                text: 'Finally...',
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
                    '\n\nThe app is primarily designed for listening to sermons, rather than watching. However, you will find that some items may have a red video symbol next to them. You might choose to watch these rather than listen. Just tap on  the symbol and you will be taken to the original YouTube video. \n\nTo see this Tour again, scroll to the end of this page and tap on \"Run the Tour again next time\". The tour will run again the next time you open the App.\n\n\n Tap the screen to start',
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
