import 'package:flutter/material.dart';
import 'package:go_mart/src/utils/utils.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const .symmetric(horizontal: 20),
        child: Row(
          spacing: 10,
          crossAxisAlignment: .center,

          children: [
            const SizedBox(
              height: 44,
              width: 44,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: .circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile-picture.png'),
                    fit: .cover,
                  ),
                ),
              ),
            ),

            const Expanded(
              child: Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    'Good morning',
                    style: TextStyle(
                      color: Palette.secondary,
                      letterSpacing: .1,
                      fontSize: 15,
                    ),
                  ),

                  Text(
                    'Shahzaib Ahmad',
                    style: TextStyle(
                      fontWeight: .w600,
                      letterSpacing: .1,
                      fontSize: 16,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {},
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: .circle,
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromARGB(45, 158, 158, 158),
                      spreadRadius: .5,
                      blurRadius: 4,
                    ),
                  ],
                  color: Theme.of(context).colorScheme.onPrimary,
                ),

                child: const Padding(
                  padding: .all(8),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              ),
            ),

            /* IconButton.filled(
              onPressed: () {},
              style: IconButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.onSecondary,
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              icon: const Icon(Icons.shopping_cart_outlined
            ), */
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
