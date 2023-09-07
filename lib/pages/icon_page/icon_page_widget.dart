import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_page_model.dart';
export 'icon_page_model.dart';

class IconPageWidget extends StatefulWidget {
  const IconPageWidget({Key? key}) : super(key: key);

  @override
  _IconPageWidgetState createState() => _IconPageWidgetState();
}

class _IconPageWidgetState extends State<IconPageWidget>
    with TickerProviderStateMixin {
  late IconPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 0.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.goNamed('landing');
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'HeadSafe',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
            ),
          ],
        ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
      ),
    );
  }
}
