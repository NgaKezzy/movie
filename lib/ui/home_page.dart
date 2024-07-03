// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';
import 'package:project_watch_movie/ui/Screen/detail_screen.dart';
import 'package:project_watch_movie/ui/controller/movie_controller.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MovieController movieController;
  void initState() {
    super.initState();
    movieController = context.read<MovieController>();
    movieController.getDataMovieInformation();
  }

  final PageController _pageController = PageController();
  final PageController _pageControllerTwo = PageController();
  final List<String> listMovie =
      List.generate(4, (index) => "ListMovie $index");
  List<String> iconMovie = [
    'assets/images/content1.png',
    'assets/images/content2.png',
    'assets/images/content3.png',
    'assets/images/content4.png',
  ];
  List<String> content = [
    'Genres',
    'TV series',
    'Movies',
    'In Theatre',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Constants.secondaryColor, Constants.primaryColor],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 78, right: 64, left: 64),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello, ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Jana!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage('assets/images/chuong.png'),
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    width: size.width * .8,
                    // ignore: sort_child_properties_last
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: const AssetImage('assets/images/search.png'),
                          width: 22,
                          height: 22,
                          color: Colors.white.withOpacity(0.75),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Expanded(
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(.5)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                          ),
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        Image(
                          image: const AssetImage('assets/images/mic.png'),
                          color: Colors.white.withOpacity(.5),
                          width: 16,
                          height: 22,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(.1),
                          Colors.white.withOpacity(.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white.withOpacity(.2)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: const Text(
                    'Most Popular',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                context.watch<MovieController>().movieInformation.isNotEmpty
                    ? Consumer<MovieController>(
                        builder: (context, value, child) => SizedBox(
                          // padding: const EdgeInsets.symmetric(horizontal: 0),
                          height: 141,
                          child: CarouselSlider.builder(
                            itemCount: context
                                .watch<MovieController>()
                                .movieInformation
                                .length,
                            itemBuilder: (context, index, realIndex) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: SizedBox(
                                  // color: Colors.amber,
                                  width: 328,
                                  height: 141,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailScreen(
                                                  slug: context
                                                          .watch<
                                                              MovieController>()
                                                          .movieInformation[
                                                              index]
                                                          .slug ??
                                                      '',
                                                )),
                                      );
                                    },
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  context
                                                          .watch<
                                                              MovieController>()
                                                          .movieInformation[
                                                              index]
                                                          .posterUrl ??
                                                      '',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 26, bottom: 15, right: 26),
                                          width: 328,
                                          height: 141,
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [
                                                Colors.black,
                                                Colors.transparent
                                              ],
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      movieController
                                                          .movieInformation[
                                                              index]
                                                          .name!,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          color: Colors.amber),
                                                      width: 44.61,
                                                      height: 16,
                                                      child: const Center(
                                                        child: Text(
                                                          'IMDb 8.5',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              height: 141,
                              autoPlay: false,
                              viewportFraction: 0.60,
                              enlargeCenterPage: true,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayAnimationDuration:
                                  const Duration(seconds: 1),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 17,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: context
                        .watch<MovieController>()
                        .movieInformation
                        .length,
                    effect: JumpingDotEffect(
                      activeDotColor: Colors.white.withOpacity(.5),
                      dotColor: Colors.white.withOpacity(.2),
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  height: 95,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listMovie.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 69,
                        margin: const EdgeInsets.symmetric(horizontal: 17),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white.withOpacity(.3), width: 1),
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [
                            const Color(0xffA1F3FE).withOpacity(.3),
                            Colors.white.withOpacity(.4),
                          ]),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                iconMovie[index],
                                width: 31,
                                height: 31,
                                color: Colors.white.withOpacity(0.75),
                              ),
                              Text(
                                content[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: const Text(
                    'Upcoming releases',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  // padding: const EdgeInsets.symmetric(horizontal: 33),
                  height: 215,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: context
                        .watch<MovieController>()
                        .movieInformation
                        .length,
                    controller: _pageControllerTwo,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        // margin: const EdgeInsets.symmetric(horizontal: 19),
                        width: 165,
                        // height: 160,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  slug: context
                                          .watch<MovieController>()
                                          .movieInformation[index]
                                          .slug ??
                                      '',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 19),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  context
                                          .watch<MovieController>()
                                          .movieInformation[index]
                                          .posterUrl ??
                                      '',
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageControllerTwo,
                    count: 3,
                    effect: JumpingDotEffect(
                      activeDotColor: Colors.white.withOpacity(.5),
                      dotColor: Colors.white.withOpacity(.2),
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
