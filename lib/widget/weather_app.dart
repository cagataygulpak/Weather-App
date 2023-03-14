// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/constant/constant.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/widget/slider_dot.dart';
import 'package:weather_app/widget/weather_detail.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int _currentIndex = 0;
  late final PageController pageViewController;

  @override
  void initState() {
    super.initState();
    pageViewController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(""),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
            iconSize: 30.w,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_outlined),
              iconSize: 30.w,
            ),
          ],
        ),
        body: Stack(
          children: [
            ...List.generate(
              weatherList.length,
              (index) => AnimatedOpacity(
                opacity: _currentIndex == index ? 1 : 0,
                duration: const Duration(milliseconds: 350),
                child: Stack(
                  children: [
                    Image.asset(
                      weatherList[index].backgroundImageUrl,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Lottie.asset(
                      weatherList[index].backgroundAnimationUrl,
                      fit: BoxFit.fitWidth,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.w, 100.w, 0, 20.w),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                for (int i = 0; i < weatherList.length; i++)
                                  if (i == _currentIndex)
                                    const SliderDot(controlActive: true)
                                  else
                                    const SliderDot(controlActive: false)
                              ],
                            ),
                            10.0.w.sizedBoxHeight,
                            Text(
                              weatherList[index].city,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 30.sp,
                              ),
                            ),
                            250.0.w.sizedBoxHeight,
                            Text(
                              weatherList[index].temparature,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 80.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  weatherList[index].iconUrl,
                                  color: Colors.white,
                                  height: 30.w,
                                  width: 30.w,
                                ),
                                10.0.sizedBoxWidth,
                                Text(
                                  weatherList[index].weatherType,
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                  ),
                                )
                              ],
                            ),
                            100.0.w.sizedBoxHeight,
                            Divider(
                              color: Colors.white,
                              indent: 4.w,
                              endIndent: 20.w,
                              thickness: 3,
                            ),
                            20.0.w.sizedBoxHeight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                windSpecification(index),
                                rainSpecification(index),
                                humiditySpecification(index),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            PageView(
              padEnds: true,
              controller: pageViewController,
              onPageChanged: (i) => setState(() => _currentIndex = i),
              children:
                  weatherList.map((e) => WeatherDetail(weather: e)).toList(),
            ),
          ],
        ));
  }

  Column windSpecification(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Wind",
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Text(
          weatherList[index].wind.toString(),
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Text(
          "%",
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Stack(
          children: [
            Container(height: 5, width: 50, color: Colors.white38),
            Container(
                height: 5,
                width: (weatherList[index].wind / 2).toDouble(),
                color: Colors.white),
          ],
        )
      ],
    );
  }

  Column rainSpecification(int index) {
    return Column(
      children: [
        Text(
          "Rain",
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Text(
          weatherList[index].rain.toString(),
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Text(
          "%",
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Stack(
          children: [
            Container(height: 5, width: 50, color: Colors.white38),
            Container(
                height: 5,
                width: (weatherList[index].rain / 2).toDouble(),
                color: Colors.white),
          ],
        )
      ],
    );
  }

  Column humiditySpecification(int index) {
    return Column(
      children: [
        Text(
          "Humidity",
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Text(
          weatherList[index].humidity.toString(),
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Text(
          "%",
          style: GoogleFonts.lato(
            color: Colors.white,
          ),
        ),
        Stack(
          children: [
            Container(height: 5, width: 50, color: Colors.white38),
            Container(
                height: 5,
                width: (weatherList[index].humidity / 2).toDouble(),
                color: Colors.white),
          ],
        )
      ],
    );
  }
}
