import 'package:dice_app/utils/colors.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatefulWidget {
  const GradientBackground({
    super.key,
    this.child,
    this.colors = defaultColors,
  });

  final List<Color> colors;
  final Widget? child;

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: defaultColors.first,
      end: defaultColors.last,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                _colorAnimation.value!.withOpacity(0.6),
                _colorAnimation.value!,
                _colorAnimation.value!.withOpacity(0.4),
              ],
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}
