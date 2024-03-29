import 'package:agro_sanoat/allpages/add_page/add_page.dart';
import 'package:agro_sanoat/allpages/benefit_page/benefit_page.dart';
import 'package:agro_sanoat/allpages/home_page/heme_page.dart';
import 'package:agro_sanoat/allpages/income_page/add_income/add_income.dart';
import 'package:agro_sanoat/allpages/income_page/income_page.dart';
import 'package:agro_sanoat/allpages/info_page/info_page.dart';
import 'package:agro_sanoat/allpages/info_page/widgets/big_image_info.dart';
import 'package:agro_sanoat/allpages/info_page/widgets/big_view_info.dart';
import 'package:agro_sanoat/allpages/info_page/widgets/video_pler.dart';
import 'package:agro_sanoat/allpages/job_type/job_type.dart';
import 'package:agro_sanoat/allpages/login_page/login_page.dart';
import 'package:agro_sanoat/allpages/my_info/my_infon.dart';
import 'package:agro_sanoat/allpages/news_page/widgets/big_image.dart';
import 'package:agro_sanoat/allpages/news_page/widgets/big_view_news.dart';
import 'package:agro_sanoat/allpages/person_info/map_marker/map_marker.dart';
import 'package:agro_sanoat/allpages/person_info/person_info.dart';
import 'package:agro_sanoat/allpages/person_info/setInfo/set_info.dart';
import 'package:agro_sanoat/allpages/splash_page/splash_page.dart';
import 'package:agro_sanoat/allpages/statistic_page/statistic_page.dart';
import 'package:agro_sanoat/allpages/statistic_page/store_page.dart';
import 'package:flutter/material.dart';

class RouteGeneration {
  static const homepage = "/home_page";
  static const addpage = "/add_page";
  static const store = "/store_page";
  static const statistic = "/statistic_page";
  static const income = "/income_page";
  static const info = "/info_page";
  static const setInfo = "/set_info";
  static const login = "/login_page";
  static const benefit = "/benefit_page";
  static const addIncome = "/add_income";
  static const map_marker = "/map_marker";
  static const personInfo = "/person_info";
  static const splashpage = "/splash_page";
  static const bigviewinfo = "/big_view_info";
  static const bigviewnews = "/big_view_news";
  static const bigImageNews = "/big_image";
  static const myInfo = "/my_info";
  static const video = "/video_pler";
  static const jobType = "/job_type";
  static const bigImageInfo = "/big_image_info";

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomePage());
      case splashpage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashPage());
      case statistic:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Statistic());
      case income:
        return MaterialPageRoute(
            builder: (BuildContext context) => const IncomePage());
      case setInfo:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SetInfo());
      case addIncome:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                AddIncome(type: args.toString()));
      case store:
        return MaterialPageRoute(
            builder: (BuildContext context) => StorePage(id: args));
      case map_marker:
        return MaterialPageRoute(
            builder: (BuildContext context) => MapMarker(latlng: args));
      case personInfo:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PersonInfo());
      case benefit:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BenifitPage());
      case info:
        return MaterialPageRoute(
            builder: (BuildContext context) => const InfoPage());
      case addpage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddPage());
      case bigviewinfo:
        return MaterialPageRoute(
            builder: (BuildContext context) => BigviewInfo(item: args));
      case bigviewnews:
        return MaterialPageRoute(
            builder: (BuildContext context) => BigViewNews(item: args));
      case myInfo:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MyInfo());
      case login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());
      case jobType:
        return MaterialPageRoute(
            builder: (BuildContext context) => const JobType());
      case video:
        return MaterialPageRoute(
            builder: (BuildContext context) => VideoPlyer(videoUrl: args));
      case bigImageNews:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                BigImageNews(imageURL: args.toString()));
      case bigImageInfo:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                BigImageInfo(imageURL: args.toString()));
    }
    return null;
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Ma`lumot uzatishda xatolik"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 100,
                  color: Colors.red.shade400,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Error!',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.red.shade400,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
