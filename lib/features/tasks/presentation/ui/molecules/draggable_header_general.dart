
import 'package:flutter/material.dart';

import '../../../../../shared/presentation/ui/ui.dart';
import '../atoms/drag_handle.dart';

class DraggableHeaderGeneral extends StatelessWidget {
  const DraggableHeaderGeneral(
      {super.key,
      this.title = '',
      this.centerTitle = true,
      this.headerButtons = const []});

  final String title;
  final bool centerTitle;
  final List<Widget> headerButtons;

  @override
  Widget build(BuildContext context) {
    return centerTitle
        ? Stack(
            children: [
              Column(
                children: [
                  const DragHandle(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppSizes.s10,
                      bottom: AppSizes.s10,
                    ),
                    child: Text(title,
                        style: AppFont.getSemiBoldStyle(
                            fontSize: AppSizes.s16)),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: AppSizes.s6,
                  ),
                ],
              ),
              Positioned(
                right: 10,
                top: 22,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              )
            ],
          )
        : Column(
            children: [
              const DragHandle(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSizes.s18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        style: AppFont.getSemiBoldStyle(
                            fontSize: AppSizes.s16)),
                    Row(
                      children: [
                        ...headerButtons,
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
  }
}
