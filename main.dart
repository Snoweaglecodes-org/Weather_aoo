import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:weather_icons/weather_icons.dart';

void main() => runApp(MyWeatherApp());

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherHome(),
    );
  }
}

class WeatherHome extends StatefulWidget {
  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: Text( 'Flutter Weather App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: PointsClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.15,
                    decoration: BoxDecoration(
                      color: Colors.cyan,

                    ),
                  ),
                ),
                Align(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        'Clear',
                        style: TextStyle(fontSize: 29.9,),
                      ),
                      Icon(
                        Icons.wb_sunny,size: 65.0,color: Colors.yellowAccent,
                      ),
                      Text(
                        '23°C',
                        style: TextStyle(fontSize: 80),
                      ),
                      Text(
                        'Please follow the COVID 19 guidelines while entering into public spaces.',
                        style: TextStyle(fontSize: 22,color: Colors.redAccent,fontWeight: FontWeight.bold),

                      ),

                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'New York City',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  WeatherSmall(
                    text: 'Now',
                    icon: WeatherIcons.night_clear,

                  ),
                  WeatherSmall(
                    text: '13:00',
                    icon: WeatherIcons.night_clear,
                  ),
                  WeatherSmall(
                    text: '14:00',
                    icon: WeatherIcons.cloud,
                  ),
                  WeatherSmall(
                    text: '15:00',
                    icon: WeatherIcons.cloudy_windy,
                  ),
                  WeatherSmall(
                    text: '16:00',
                    icon: WeatherIcons.night_cloudy_gusts,
                  ),
                  WeatherSmall(
                    text: '17:00',
                    icon: WeatherIcons.cloudy_windy,
                  ),
                  WeatherSmall(
                    text: '18:30',
                    icon: WeatherIcons.day_lightning,
                  ),

                ],
              ),
            ),
            DefaultTabController(
              length: 1,
              initialIndex: 0,
              child: Column(
                children: <Widget>[
                  TabBar(
                    tabs: [
                      Tab(text: 'THIS WEEK'),
                    ],
                  ),
                  Container(
                    height: 350,
                    child: TabBarView(children: [
                      TabbarPageView(),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabbarPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
         RowOfDayWeather(
          day: 'Friday',
          temp: '24 °C, 32°C',
          icon: WeatherIcons.day_thunderstorm,
        ),
        RowOfDayWeather(
          day: 'Saturday',
          temp: '36°C, 38°C',
          icon: WeatherIcons.day_windy,
        ),
        RowOfDayWeather(
          day: 'Sunday',
          temp: '28°C, 35°C',
          icon: WeatherIcons.day_showers,
        ),
        RowOfDayWeather(
          day: 'Monday',
          temp: '35°C, 41°C',
          icon: WeatherIcons.day_sunny_overcast,
        ),
        RowOfDayWeather(
          day: 'Tuesday',
          temp: '28°C, 31°C',
          icon: WeatherIcons.day_sleet_storm,
        ),
        RowOfDayWeather(
          day: 'Wednesday',
          temp: '29°C, 34°C',
          icon: WeatherIcons.day_hail,
        ),
        RowOfDayWeather(
          day: 'Thursday',
          temp: '25°C, 28°C',
          icon: WeatherIcons.day_thunderstorm ,

        ),
      ],
    );
  }
}

class RowOfDayWeather extends StatelessWidget {
  final String day;
  final String temp;
  final IconData icon;
  RowOfDayWeather({this.icon, this.day, this.temp});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(day),
        BoxedIcon(icon),
        Text(temp),
      ],
    );
  }
}

class WeatherSmall extends StatelessWidget {
  final String text;
  final IconData icon;
  WeatherSmall({this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      height: 60,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          BoxedIcon(icon,size: 25.0,),
        ],
      ),
    );
  }
}
