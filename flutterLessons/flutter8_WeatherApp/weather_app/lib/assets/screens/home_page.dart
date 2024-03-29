import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/assets/app_colors.dart';
import 'package:weather_app/assets/app_images.dart';
import '../../providers/weather_provider.dart';
import '../app_fonts.dart';

class WeatherPage extends StatelessWidget {
  WeatherPage({super.key});

  String apiKey = "ecd90844dbbf9ac0ad94178ad6f8631f";
  String location = "Paris";
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<WeatherProvider>();

    vm.getWeather(apiKey: apiKey, location: location);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.darkBlue, AppColors.blue, AppColors.blue],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    child: TextField(
                      style: AppFonts.w700s20.copyWith(color: AppColors.white),
                      onChanged: (val) {
                        timer?.cancel();
                        timer = Timer(
                          const Duration(seconds: 1),
                          () {
                            (val.length >= 2 && location != val);
                            vm.getWeather(apiKey: apiKey, location: val);
                            location = val;
                          },
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkBlue,
                        fixedSize: const Size(30, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Icon(
                        Icons.search,
                        size: 30,
                        color: AppColors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 207,
                width: 284,
                child: Image.asset(AppImages.cloud),
              ),
              Text(
                "${vm.model?.temp ?? "100"}°",
                style: AppFonts.w600s64.copyWith(color: AppColors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Precipitations",
                style: AppFonts.w400s18.copyWith(color: AppColors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Max.: ${vm.model?.tempMax ?? "100"}",
                    style: AppFonts.w400s18.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Min.: ${vm.model?.tempMin ?? "100"}",
                    style: AppFonts.w400s18.copyWith(color: AppColors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 343,
                height: 47,
                decoration: const BoxDecoration(
                  color: AppColors.darkBlue,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(
                        Icons.water_drop,
                        size: 14,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      "${vm.model?.pressure ?? "5"}%",
                      style: AppFonts.w700s14.copyWith(color: AppColors.white),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Icon(
                      Icons.device_thermostat_outlined,
                      size: 14,
                      color: AppColors.white,
                    ),
                    Text(
                      "${vm.model?.humidity ?? "90"}%",
                      style: AppFonts.w700s14.copyWith(color: AppColors.white),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Icon(
                      Icons.air_outlined,
                      size: 14,
                      color: AppColors.white,
                    ),
                    Text(
                      "${vm.model?.wind ?? "19"} km/h",
                      style: AppFonts.w700s14.copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 343,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: AppColors.darkBlue,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Today: ",
                        style:
                            AppFonts.w700s20.copyWith(color: AppColors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${vm.model?.temp ?? "100"}°",
                        style:
                            AppFonts.w700s14.copyWith(color: AppColors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        child: Image.asset(AppImages.cloud),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "hours: ",
                        style:
                            AppFonts.w700s14.copyWith(color: AppColors.white),
                      ),
                    ],
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
