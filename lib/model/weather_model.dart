class Weather {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final String backgroundAnimationUrl;
  final String backgroundImageUrl;
  final int wind;
  final int rain;
  final int humidity;

  Weather({
    required this.city,
    required this.dateTime,
    required this.temparature,
    required this.weatherType,
    required this.iconUrl,
    required this.backgroundAnimationUrl,
    required this.backgroundImageUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final weatherList = [
  Weather(
    city: "Saint Petersburg",
    dateTime: "07:50 PM — Monday, 9 Nov 2020",
    temparature: "24\u2103",
    weatherType: "Snow",
    iconUrl: "assets/images/snow_button.png",
    backgroundAnimationUrl: "assets/lottie/snow.json",
    backgroundImageUrl: "assets/images/snow.jpg",
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  Weather(
    city: "London",
    dateTime: "02:20 PM — Monday, 9 Nov 2020",
    temparature: "15\u2103",
    weatherType: "Rain",
    iconUrl: "assets/images/rain_button.png",
    backgroundAnimationUrl: "assets/lottie/rain.json",
    backgroundImageUrl: "assets/images/rain.jpg",
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  Weather(
    city: "New York",
    dateTime: "09:20 AM — Monday, 9 Nov 2020",
    temparature: "17\u2103",
    weatherType: "Sunny",
    iconUrl: "assets/images/sunny_button.png",
    backgroundAnimationUrl: "assets/lottie/sunny.json",
    backgroundImageUrl: "assets/images/sunny.jpg",
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  Weather(
    city: "Sydney",
    dateTime: "01:20 AM — Tuesday, 10 Nov 2020",
    temparature: "10\u2103",
    weatherType: "Cloudy",
    iconUrl: "assets/images/cloudy_button.png",
    backgroundAnimationUrl: "assets/lottie/cloudy.json",
    backgroundImageUrl: "assets/images/cloudy.jpg",
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];
