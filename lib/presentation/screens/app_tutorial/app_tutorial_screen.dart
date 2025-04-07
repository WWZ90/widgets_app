import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Look for food',
    'Pariatur occaecat quis nostrud voluptate aliquip consequat laborum ullamco. Aute reprehenderit nostrud dolor commodo adipisicing ullamco eu laborum quis sit dolore fugiat sit cillum. Non commodo eu do nulla ex in adipisicing cillum quis ut amet occaecat dolore. Enim irure do ut et sint. Cillum voluptate minim ad duis cillum nostrud labore nisi voluptate eu aute. Occaecat et qui exercitation minim elit duis ut exercitation. Ex culpa Lorem irure tempor minim officia occaecat laborum labore proident sunt aute amet.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Fast delivery',
    'Anim magna cupidatat id occaecat occaecat exercitation eiusmod nisi duis aute et. Mollit aliquip ut ex aliqua duis. Eiusmod officia eu ipsum quis sunt esse. Anim do tempor ipsum laboris sunt veniam id proident irure id velit dolor officia. Culpa ex excepteur ipsum est nisi quis fugiat. Do duis nostrud enim quis id dolore esse nostrud labore quis.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Enjoy your food',
    'Eu sit deserunt cillum officia ad ut. Non voluptate in tempor ad ipsum eu eiusmod aute sint. Et id et in non et commodo laborum anim. Nostrud in cupidatat reprehenderit nulla enim excepteur pariatur ex fugiat. Est reprehenderit occaecat velit sint. Duis aliquip est voluptate pariatur incididunt in aute duis magna culpa cupidatat consequat id laboris.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
      print('$endReached');
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: BouncingScrollPhysics(),
            children:
                slides
                    .map(
                      (slideData) => _Slide(
                        title: slideData.title,
                        caption: slideData.caption,
                        imageUrl: slideData.imageUrl,
                      ),
                    )
                    .toList(),
          ),
          Positioned(
            top: 40,
            right: 10,
            child: TextButton(
              onPressed: () => {context.pop()},
              child: Text('Skip'),
            ),
          ),
          endReached
              ? Positioned(
                bottom: 30,
                right: 30,
                child: FadeInRight(
                  from: 15,
                  delay: Duration(milliseconds: 500),
                  child: FilledButton(
                    onPressed: () => {context.pop()},
                    child: Text('Start'),
                  ),
                ),
              )
              : SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            SizedBox(height: 20),
            Text(title, style: titleStyle),
            SizedBox(height: 20),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
