import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:genshinfan/src/home/controllers/layout_controller.dart';
import 'package:genshinfan/utils/theme.dart';
import 'package:genshinfan/utils/tool.dart';
import 'package:genshinfan/widgets/image_failure.dart';
import 'package:genshinfan/widgets/progress.dart';
import 'package:get/get.dart';

class ItemGame extends StatefulWidget {
  final String title;
  final String? linkImage;
  final Widget? iconLeft;
  final Widget? iconRight;
  final dynamic rarity;
  final bool? star;
  final VoidCallback? onTap;
  final double? size;
  final bool noData;
  final String? contentIfNotImage;

  const ItemGame({
    super.key,
    required this.title,
    this.linkImage,
    this.iconLeft,
    this.iconRight,
    this.rarity,
    this.star,
    this.onTap,
    this.size,
    this.noData = false,
    this.contentIfNotImage,
  });

  @override
  State<ItemGame> createState() => _ItemGameState();
}

class _ItemGameState extends State<ItemGame> with TickerProviderStateMixin {
  double squareScaleA = 1;
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.96,
      upperBound: 1.0,
      value: 1,
      duration: const Duration(milliseconds: 10),
    );
    _controller?.addListener(() {
      setState(() {
        squareScaleA = _controller?.value ?? 1.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    LayoutController layoutController = Get.find<LayoutController>();
    double sizeItem = widget.size ?? layoutController.widthItem.value;

    return Center(
      child: widget.noData
          ? Container(
              margin: const EdgeInsets.all(2),
              width: sizeItem,
              height: sizeItem * 1.215,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(sizeItem * 0.05),
                  border: Border.all(color: Colors.grey, width: 2)),
            )
          : GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                _controller?.reverse();
                if (widget.onTap != null) widget.onTap!();
              },
              onTapDown: (dp) {
                _controller?.reverse();
              },
              onTapUp: (dp) {
                Timer(const Duration(milliseconds: 150), () {
                  _controller?.fling();
                });
              },
              onTapCancel: () {
                _controller?.fling();
              },
              // borderRadius: BorderRadius.circular(sizeItem * 0.05),
              child: Transform.scale(
                scale: squareScaleA,
                child: Container(
                  margin: const EdgeInsets.all(2),
                  width: sizeItem,
                  height: sizeItem * 1.215,
                  child: Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(sizeItem * 0.05),
                        ),
                        child: Image.asset(
                          Tool.getBackground(widget.rarity),
                          fit: BoxFit.cover,
                          height: sizeItem * 1.215,
                          width: sizeItem,
                        ),
                      ),

                      // image, name
                      Column(
                        children: [
                          Expanded(
                            // image
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(sizeItem * 0.2),
                                  topLeft: Radius.circular(sizeItem * 0.05),
                                  topRight: Radius.circular(sizeItem * 0.05),
                                ),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: widget.linkImage ?? "",
                                fit: BoxFit.cover,
                                progressIndicatorBuilder:
                                    (context, url, progress) {
                                  return const CircularProgressApp();
                                },
                                errorWidget: (context, url, error) {
                                  return widget.contentIfNotImage == null
                                      ? const ImageFailure()
                                      : Center(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const ImageFailure(size: 20),
                                              Text(
                                                widget.contentIfNotImage!,
                                                textAlign: TextAlign.center,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: ThemeApp.textStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                },
                              ),
                            ),
                          ),

                          // name
                          Container(
                            margin: const EdgeInsets.only(left: 4, right: 4),
                            height: sizeItem * 0.205,
                            width: sizeItem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(sizeItem * 0.05),
                                bottomRight: Radius.circular(sizeItem * 0.05),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                widget.title,
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey[850],
                                  fontSize: sizeItem * 0.14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // icon left
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          height: sizeItem * 0.3,
                          width: sizeItem * 0.3,
                          child: widget.iconLeft ?? const SizedBox(),
                        ),
                      ),

                      // icon right
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          height: sizeItem * 0.3,
                          width: sizeItem * 0.3,
                          child: widget.iconRight ?? const SizedBox(),
                        ),
                      ),

                      // độ hiếm - rarity
                      widget.rarity == null || widget.star == null
                          ? const SizedBox()
                          : Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin:
                                    EdgeInsets.only(bottom: sizeItem * 0.15),
                                child: Image.asset(
                                  Tool.getRarityStar(widget.rarity),
                                  height: sizeItem * 1.215 * 0.18,
                                  width: sizeItem * 0.85,
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
