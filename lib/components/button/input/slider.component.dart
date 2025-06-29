import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIntSlider extends StatefulWidget {
  final String label;
  final int min;
  final int max;
  final int value;
  final ValueChanged<int>? onChanged;

  const CustomIntSlider({
    super.key,
    required this.label,
    required this.min,
    required this.max,
    required this.value,
    this.onChanged,
  });

  @override
  State<CustomIntSlider> createState() => _CustomIntSliderState();
}

class _CustomIntSliderState extends State<CustomIntSlider> {
  late double _sliderValue;

  @override
  void initState() {
    super.initState();
    _sliderValue = widget.value.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final isDisabled = widget.onChanged == null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.label}: ${_sliderValue.round()}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: isDisabled ? Colors.grey : const Color(0xffE15B42),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Slider(
                  value: _sliderValue,
                  min: widget.min.toDouble(),
                  max: widget.max.toDouble(),
                  divisions: widget.max - widget.min,
                  activeColor: Colors.white,
                  inactiveColor: Colors.white.withOpacity(0.3),
                  thumbColor: Colors.white,
                  onChanged: isDisabled
                      ? null
                      : (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                    widget.onChanged?.call(value.round());
                  },
                ),
              ),
              const SizedBox(width: 10),
              const FaIcon(
                FontAwesomeIcons.arrowRight,
                color: Colors.white,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
