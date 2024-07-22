import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CollectionTopBar extends StatelessWidget {
  const CollectionTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'My collection',
                      style:Theme.of(context).textTheme.headlineLarge?.apply(
                          color: Theme.of(context).colorScheme.onPrimary,
                      )
                  )),
                  Stack(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bell,
                        size: 30,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      Positioned(
                        bottom: 5,
                        right: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red
                          ),
                        )
                      ),
                    ],
                  )
                ],
              ),
            ),
    );
  }
}