import 'package:app/features/shop/screens/coomunity/education/expanded_widget.dart';
import 'package:flutter/material.dart';

class ArticalCard extends StatefulWidget {
  const ArticalCard(
      {Key? key,
      required this.articleTitle,
      required this.articleCategory,
      required this.articleImage,
      required this.articleText,
      required this.url})
      : super(key: key);
  final String articleTitle;
  final String articleCategory;
  final String articleImage;
  final String articleText;
  final String url;

  @override
  _ArticalCardState createState() => _ArticalCardState();
}

class _ArticalCardState extends State<ArticalCard> {
  bool showComments = false;
  bool showFullDescription = false;

  @override
  Widget build(BuildContext context) {
    final mediaqueryWidth = MediaQuery.of(context).size.width;
    final mediaqueryHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        setState(() {
          showComments = !showComments;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Post Section
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.articleTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(
                      height: mediaqueryHeight * .005,
                    ),
                    Row(
                      children: [
                        Text('Category:',
                            style: Theme.of(context).textTheme.bodySmall),
                        const SizedBox(width: 4),
                        Text(widget.articleCategory,
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                    SizedBox(height: mediaqueryHeight * 0.005),
                    Image(
                      image: AssetImage(widget.articleImage),
                      width: mediaqueryWidth,
                      height: mediaqueryHeight * .25,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 8),
                    ExpandedTextWidget(
                      text: widget.articleText,
                      textLength: 100,
                      url: widget.url,
                    ),
                    SizedBox(
                      height: mediaqueryHeight * .01,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
