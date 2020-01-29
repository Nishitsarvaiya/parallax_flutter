import 'package:flutter/material.dart';
import 'package:parallex_flutter/parallax_card.dart';

class Parallax extends StatefulWidget {
  @override
  _ParallaxState createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  PageController _pageController;
  double _pageOffset = 0;

  List<String> images = [
    'https://i.pinimg.com/originals/9d/36/79/9d3679333d3d9b43962eb742bc468799.jpg',
    'https://wallpapercave.com/wp/wp2623667.jpg',
    'https://wallpaperplay.com/walls/full/d/7/7/137298.jpg',
    'https://www.itl.cat/pngfile/big/14-146530_3d-abstract-wallpapers-background-awesome-wallpapers-tech-wallpaper.jpg',
    'https://wallpaperaccess.com/full/514275.jpg',
    'https://images2.alphacoders.com/720/thumb-1920-72092.jpg',
    'https://i.pinimg.com/originals/c3/12/16/c31216424b811a9770b5b7dacb06fa3e.jpg',
    'https://www.elsetge.cat/myimg/f/38-385246_fractal-dark-abstract-wallpaper-darkness.jpg'
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
    _pageController.addListener(() {
      setState(() {
        _pageOffset = _pageController.page;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: PageView(
            controller: _pageController,
            children: images.map((i) {
              return ParallaxCard(
                image: i,
                offset: _pageOffset--,
                controller: _pageController,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
