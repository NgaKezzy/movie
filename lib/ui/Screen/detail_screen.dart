import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';
import 'package:project_watch_movie/ui/controller/movie_controller.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.slug});
  final String slug;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  late MovieController movieController;
  void initState() {
    // TODO: implement initState
    super.initState();
    movieController = context.read<MovieController>();
    movieController.getDetailMovie(widget.slug);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_null_comparison
      body: context.watch<MovieController>().detailMovie == null
          ? SizedBox()
          : Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    context.watch<MovieController>().detailMovie.posterUrl ??
                        '',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Constants.secondaryColor,
                          Constants.primaryColor,
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 40,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.7),
                          ),
                        ),
                        Text(
                          context.watch<MovieController>().detailMovie.name ??
                              '',
                          style: const TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          context
                                  .watch<MovieController>()
                                  .detailMovie
                                  .originName ??
                              '',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.5),
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white.withOpacity(.5),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Action',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white.withOpacity(.5),
                                ),
                                child: const Center(
                                  child: Text(
                                    '16+',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.amber,
                                ),
                                child: const Center(
                                  child: Text(
                                    'IMDb 8.5',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Image.asset(
                                'assets/images/share.png',
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Image.asset('assets/images/favorite.png')
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            context
                                    .watch<MovieController>()
                                    .detailMovie
                                    .content ??
                                '',
                            style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              fontSize: 20,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Cast',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'See All',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: context
                                .watch<MovieController>()
                                .detailMovie
                                .actor
                                ?.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    width: 100,
                                    // height: 100,
                                    decoration: const BoxDecoration(
                                      // color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/person1.png'),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    context
                                            .watch<MovieController>()
                                            .detailMovie
                                            .actor?[index] ??
                                        '',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
