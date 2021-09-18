import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = '813cc553a2bb60c8d23e2110946a4c87';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getLocationData();

    super.initState();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(weatherData: weatherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
