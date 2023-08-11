import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/no_image.jpg'),
        ),
      ),
    );
  }
}
