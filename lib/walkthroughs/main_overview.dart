import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/walkthrough_components/w_t_start/w_t_start_widget.dart';
import '/pages/walkthrough_components/w_t_light_dark_switch/w_t_light_dark_switch_widget.dart';
import '/pages/walkthrough_components/w_t_songs_button/w_t_songs_button_widget.dart';
import '/pages/walkthrough_components/w_to_tn_t_buttons/w_to_tn_t_buttons_widget.dart';
import '/pages/walkthrough_components/w_to_tn_t_buttons2/w_to_tn_t_buttons2_widget.dart';
import '/pages/walkthrough_components/w_t_live_stream/w_t_live_stream_widget.dart';
import '/pages/walkthrough_components/w_t_topic_button/w_t_topic_button_widget.dart';
import '/pages/walkthrough_components/w_t_search_button/w_t_search_button_widget.dart';
import '/pages/walkthrough_components/w_t_final_walkthrough/w_t_final_walkthrough_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final textNz9h9dfu = GlobalKey();
final switchJjbgs9fo = GlobalKey();
final containerLcs4z5nc = GlobalKey();
final containerC139f3hw = GlobalKey();
final containerX8ptdwxo = GlobalKey();
final textLx7nmaz0 = GlobalKey();
final containerGdxifdf6 = GlobalKey();
final containerX2qggtga = GlobalKey();
final imageDxz2trsl = GlobalKey();

/// MainOverview
///
/// This is a short overview of the main features of the app.
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textNz9h9dfu,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).primaryText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WTStartWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: switchJjbgs9fo,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.right,
            builder: (context, __) => WTLightDarkSwitchWidget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: containerLcs4z5nc,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WTSongsButtonWidget(),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerC139f3hw,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WToTnTButtonsWidget(),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: containerX8ptdwxo,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WToTnTButtons2Widget(),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textLx7nmaz0,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WTLiveStreamWidget(),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: containerGdxifdf6,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.right,
            builder: (context, __) => WTTopicButtonWidget(),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: containerX2qggtga,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WTSearchButtonWidget(),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: imageDxz2trsl,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WTFinalWalkthroughWidget(),
          ),
        ],
      ),
    ];
