import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator(this.value, {super.key, this.onTap});

  final BottomNavigatorItem value;
  final ValueSetter<BottomNavigatorItem>? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigatorContainer(
      navigatorItems: BottomNavigatorItem.values.map((item) {
        if (item == value) {
          return BottomNavigatorButton.selected(
            tooltip: item.tooltip,
            icon: item.icon,
          );
        }

        return BottomNavigatorButton(
          onTap: () => onTap?.call(item),
          tooltip: item.tooltip,
          icon: item.icon,
        );
      }).toList(),
    );
  }
}

class BottomNavigatorContainer extends StatelessWidget {
  const BottomNavigatorContainer({super.key, required this.navigatorItems});

  final List<BottomNavigatorButton> navigatorItems;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.brightnessOf(context) == .dark;

    return SizedBox(
      height: kBottomNavigationBarHeight + 50,

      child: Center(
        child: Container(
          margin: const .symmetric(horizontal: 20),
          padding: const .all(5),

          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSecondary,
            borderRadius: const .all(.circular(50)),

            boxShadow: isDarkMode
                ? [
                    const BoxShadow(
                      color: Color.fromARGB(116, 255, 255, 255),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ]
                : [
                    const BoxShadow(
                      color: Color.fromARGB(126, 71, 76, 89),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                    ),
                  ],
          ),

          child: Row(mainAxisSize: .min, spacing: 5, children: navigatorItems),
        ),
      ),
    );
  }
}

class BottomNavigatorButton extends StatelessWidget {
  const BottomNavigatorButton({
    super.key,
    required this.tooltip,
    required this.icon,
    this.onTap,
  }) : selected = false;

  const BottomNavigatorButton.selected({
    super.key,
    required this.tooltip,
    required this.icon,
  }) : selected = true,
       onTap = null;

  final VoidCallback? onTap;
  final String tooltip;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final backgroundColor = selected ? color.onPrimary : null;
    final foregroundColor = selected ? color.onSecondary : color.onPrimary;

    return Material(
      color: Colors.transparent,
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          onTap: onTap,
          borderRadius: const .all(.circular(100)),

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            padding: const .all(10),

            decoration: BoxDecoration(color: backgroundColor, shape: .circle),

            child: Icon(icon, color: foregroundColor),
          ),
        ),
      ),
    );

    return IconButton(
      onPressed: onTap,
      style: IconButton.styleFrom(
        disabledBackgroundColor: backgroundColor,
        disabledForegroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        fixedSize: const Size(50, 50),
      ),
      icon: Icon(icon),
    );
  }
}

enum BottomNavigatorItem {
  search(icon: CupertinoIcons.search, tooltip: 'Search'),
  compass(icon: CupertinoIcons.compass, tooltip: 'Navigate'),
  globe(icon: CupertinoIcons.globe, tooltip: 'Browse'),
  infinite(icon: CupertinoIcons.infinite, tooltip: 'History');

  final IconData icon;
  final String tooltip;

  const BottomNavigatorItem({required this.icon, required this.tooltip});
}
