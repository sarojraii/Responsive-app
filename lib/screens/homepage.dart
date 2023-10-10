import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _size = 60;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              OrientationBuilder(
                builder: (context, orientation) {
                  return orientation == Orientation.portrait
                      ? Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'image/JokerPoster.jpg',
                              ),
                              colorFilter: ColorFilter.mode(
                                  Colors.black26, BlendMode.darken),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'image/joker2.jpg',
                              ),
                              colorFilter: ColorFilter.mode(
                                  Colors.black26, BlendMode.darken),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                },
              ),
              OrientationBuilder(builder: (context, orientation) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Image.asset(
                                    'image/settings.png',
                                    scale: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            orientation == Orientation.portrait
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: SizedBox(
                                      width: 250,
                                      child: Expanded(
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            suffixIcon: const Icon(
                                              Icons.search,
                                              color: Colors.white,
                                            ),
                                            hintText: 'Search Products...',
                                            hintStyle: const TextStyle(
                                                color: Colors.white),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: Center(
                                      child: SizedBox(
                                        height: 70,
                                        width: 400,
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            suffixIcon: const Icon(
                                              Icons.search,
                                              color: Colors.white,
                                            ),
                                            hintText: 'Search Products...',
                                            hintStyle: const TextStyle(
                                                color: Colors.white),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      orientation == Orientation.portrait
                          ? const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'NEW · MOVIE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Text(
                                    'JOKER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          : const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'NEW · MOVIE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Text(
                                    'JOKER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 60,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                      orientation == Orientation.portrait
                          ? Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.black54),
                                    child: const Center(
                                      child: Text(
                                        'POPULAR WITH FRIENDS',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.black54),
                                    child: const Center(
                                      child: Text(
                                        '15+',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.yellow),
                                    child: const Center(
                                      child: Text(
                                        '8.7 / 10',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 270,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.black54),
                                  child: const Center(
                                    child: Text(
                                      'POPULAR WITH FRIENDS',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Text(
                                      '15+',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.yellow),
                                  child: const Center(
                                    child: Text(
                                      '8.7 / 10',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      const SizedBox(
                        height: 20,
                      ),
                      orientation == Orientation.portrait
                          ? const Text(
                              '2019 · Crime, Drama, Thriller · Datasat, Dolby Digital',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )
                          : const Text(
                              '2019 · Crime, Drama, Thriller · Datasat, Dolby Digital',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                      const SizedBox(
                        height: 10,
                      ),
                      orientation == Orientation.portrait
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  _size = _size == 60 ? 80 : 60;
                                  _color = _color == Colors.red
                                      ? Colors.red.shade300
                                      : Colors.red;
                                });
                              },
                              child: AnimatedContainer(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: _color,
                                ),
                                curve: Curves.easeIn,
                                height: _size,
                                duration: const Duration(milliseconds: 500),
                                width: 140,
                                child: const Center(
                                  child: Text(
                                    'BUY TICKET',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              height: 60,
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red),
                              child: const Center(
                                child: Text(
                                  'BUY TICKET',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                      const SizedBox(
                        height: 40,
                      ),
                      orientation == Orientation.portrait
                          ? CarouselSlider(
                              items: [1, 2, 3, 4, 5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(18.0)),
                                            child: Image.asset(
                                                'image/joker.jpg')));
                                  },
                                );
                              }).toList(),
                              options: CarouselOptions(
                                height: 230,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                viewportFraction: 0.5,
                              ),
                            )
                          : CarouselSlider(
                              items: [1, 2, 3, 4, 5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(18.0)),
                                            child: Image.asset(
                                                'image/joker.jpg')));
                                  },
                                );
                              }).toList(),
                              options: CarouselOptions(
                                height: 250,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                viewportFraction: 0.10,
                              ),
                            )
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
