import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer_demo/response_model.dart';

import 'image_shimmer.dart';

class ModelItem extends StatelessWidget {
  final ResponseModel model;

  const ModelItem({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(24),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          width: 120,
          child: Row(
            children: [
              ImageShimmer(
                url: model.thumbnailUrl,
                height: 100,
                width: 130,
              ),
              const SizedBox(width: 12,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.key,
                          size: 12,
                        ),
                        const SizedBox(width: 4,),
                        Text(
                          model.id.toString(),
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.album,
                          size: 12,
                        ),
                        const SizedBox(width: 4,),
                        Text(
                          model.albumId.toString(),
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
