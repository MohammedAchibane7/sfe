import 'package:flutter/material.dart';

int selectedimage = 0;

class ProductImages extends StatefulWidget {
  final List<String> images;
  const ProductImages({super.key, required this.images});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          SizedBox(
            height: 280,
            width: 250,
            child: AspectRatio(aspectRatio: 1,child: Image.asset(widget.images[selectedimage])),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                widget.images.length,
                (index) => GestureDetector(
                  onTap: () {
                    print("clicked $index");
                    setState(() {
                      selectedimage = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.all(2),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: selectedimage == index
                              ? Colors.orange
                              : Colors.transparent),
                      color: Colors.white,
                    ),
                    child: Image.asset(widget.images[index]),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
