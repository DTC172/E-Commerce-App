import 'package:e_commerce_app/common/widgets/customs_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TCuredEdgeWidget extends StatelessWidget {
  const TCuredEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
