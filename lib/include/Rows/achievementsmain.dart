import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const dateTextStyle = TextStyle(color: Colors.blueAccent);
const proyectTextStyle = TextStyle(color: Colors.blueGrey);

class ProyectWidget extends StatelessWidget {
  final String date;
  final String proyectName;
  final String proyectHeader;
  final String proyectDescription;
  final String url;
  final String image;
  final List<String> technologies;
  final String playStoreUrl;
  final double imageHeight;
  const ProyectWidget(
      {Key key,
      this.date,
      this.proyectName,
      this.proyectHeader,
      this.proyectDescription,
      this.url,
      this.image,
      this.technologies,
      this.playStoreUrl,
      this.imageHeight = 450})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(20.0),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.4),
          boxShadow: [
            new BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5.0,
              spreadRadius: 5,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          date,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        ),
                        Text("  "),
                        Text(
                          proyectName,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                              color: Colors.blueGrey.withOpacity(0.8)),
                        ),
                      ]),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  Text(proyectHeader,
                      style: TextStyle(
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.left),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(proyectDescription,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left),
                  const SizedBox(
                    height: 140,
                  ),
                  if (url != null && url != "")
                    FlatButton.icon(
                        onPressed: () {
                          js.context.callMethod("open", [url]);
                        },
                        icon: Icon(FontAwesomeIcons.github),
                        label: Text(
                          "View on Github",
                          style: TextStyle(fontSize: 25),
                        )),
                  if (playStoreUrl != null && playStoreUrl != "")
                    FlatButton.icon(
                        onPressed: () {
                          js.context.callMethod("open", [playStoreUrl]);
                        },
                        icon: Icon(FontAwesomeIcons.googlePlay),
                        label: Text(
                          "View on the Play Store",
                          style: TextStyle(fontSize: 25),
                        )),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: [
                      for (var tech in technologies)
                        Chip(
                          label: Text(tech),
                        )
                    ],
                  ),
                ]),
          ),
          if (MediaQuery.of(context).size.width > 1300.0)
            Container(
                padding: EdgeInsets.only(left: 20),
                height: imageHeight,
                alignment: Alignment.centerRight,
                child: Image.asset(image))
        ],
      ),
    );
  }
}

var proyects = [
  Text(
    'Proyects 🏆',
    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
  ),
  SizedBox(
    height: 10,
  ),
  Text(
    'These are some of the proyects I have make during the last years !',
    style: TextStyle(color: Colors.grey, fontSize: 22),
  ),
  SizedBox(
    height: 25,
  ),
  ProyectWidget(
    proyectName: "OPC UA Historian",
    proyectHeader: """Complete data historization tool""",
    proyectDescription:
        """It allows you to connect to any OPC UA server, explore the data available, configure how it's going to be saved and visualize the recorded data with a powerful interface.
It provides a web client to configure the platform, everything can be done using an easy interface, additionally it also provides a way to import/export the configuration in CSV. 
The data is stored in an optimized database for this use case, InfluxDB.
Although the web client provides a light way data visualization tool, Grafana is integrated with the project, through a custom datasource plugin, and it allows a highly customizable data analysis.
It has been built with Docker to provide a fast deployment.
It doesn’t have big computing requirements; it can even run in a Raspberry Pi.""",
    date: "2020",
    image: 'assets/images/Historian.png',
    imageHeight: 580,
    technologies: [
      "HTML5",
      "CSS3",
      "VUE.JS",
      "NODE.JS",
      "PYTHON",
      "DOCKER",
      "SQLITE",
      "INFLUXDB",
      "GRAFANA",
    ],
  ),
  SizedBox(
    height: 35,
  ),
  ProyectWidget(
    proyectName: "Chronos",
    proyectHeader: "Time tracker desktop app build with Vue/Electron.",
    proyectDescription:
        "Simple app to track the time spent in the proyects I'm working with.",
    date: "2020",
    url: "https://github.com/csanz91/Chronos",
    image: 'assets/images/ChronosMain.png',
    technologies: ["HTML5", "CSS3", "VUE.JS", "NODE.JS"],
  ),
  SizedBox(
    height: 35,
  ),
  ProyectWidget(
    proyectName: "OkMyKey",
    proyectHeader: "Macro keyboard",
    proyectDescription:
        "Programmable macro keyboard which helps to improve the workflow by providing a quick access to your most used keyboard shortcuts and texts.",
    date: "2019",
    url: "https://github.com/csanz91/OkMyKey",
    image: 'assets/images/OkMyKey.jpg',
    technologies: [
      "HTML5",
      "CSS3",
      "VUE.JS",
      "NODE.JS",
      "C",
      "ARDUINO",
      "PCB DESIGN",
      "3D MODELING AND PRINTING"
    ],
  ),
  SizedBox(
    height: 35,
  ),
  ProyectWidget(
    proyectName: "eMeter",
    proyectHeader: "Realtime energy meter",
    proyectDescription: """
Android app that shows in realtime the electric power consumed in your house.
It retrieves the data from the electricity provider meter.
Only works for Iberdrola Distribución in Spain""",
    date: "2019",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=es.csm.monitor_energia",
    image: 'assets/images/eMeter.png',
    technologies: ["DART/FLUTTER", "ANDROID"],
  ),
  SizedBox(
    height: 35,
  ),
  ProyectWidget(
    proyectName: "IotCloud",
    proyectHeader: "Iot platform",
    proyectDescription: """
Open-source home automation platform that allows you to control, program and historize data from devices like lights, RGB leds strips, doors, blinds, thermostats...
It also provides Google Home integration. 
Any device based on the ESP8266 can run the IotCloud firmware. 
A custom PCB has been developed to upgrade regular devices to smart ones easily""",
    date: "2018",
    url: "https://github.com/csanz91/IotCloud",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=com.csm.iotcloud",
    image: 'assets/images/IotCloud.png',
    imageHeight: 400,
    technologies: [
      "DART/FLUTTER",
      "ANDROID",
      "IOS",
      "PYTHON",
      "MQTT",
      "DOCKER",
      "MONGODB",
      "INFLUXDB",
      "GRAFANA",
      "GOLANG",
      "GOOGLE HOME",
      "AMAZON AWS",
      "AUTH0",
      "ESP8266",
      "PCB DESIGN"
    ],
  ),
  SizedBox(
    height: 35,
  ),
  ProyectWidget(
    proyectName: "OBD on-board computer",
    proyectHeader: "Portable on-board computer to display travel statistics.",
    proyectDescription:
        "Device composed by a microcontroller and a LCD display, which connects to the OBD connector of any car to retrieve and show useful information about the current trip.",
    date: "2014",
    url: "https://github.com/csanz91/OBD",
    image: 'assets/images/OrdenadorAbordo.jpg',
    technologies: ["ATMEGA328P", "C"],
  ),
  SizedBox(
    height: 35,
  ),
];

class AchieveDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: proyects);
  }
}

class AchieveTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: proyects);
  }
}

class AchieveMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: proyects);
  }
}
