import 'package:flutter/material.dart';
import 'package:yogaui/myhomepage.dart';

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise>
    with SingleTickerProviderStateMixin {
  List<String> images = [
    "assets/y2.png",
    "assets/y3.png",
    "assets/y4.png",
    "assets/y5.png",
    "assets/y6.png",
    "assets/y7.png",
    "assets/y8.png",
    "assets/y9.png"
  ];

  List<String> text = [
    "Easy Pose \ncan be calming and\n relaxing—if \nyou're able to sit \nin it comfortably.",
    "Boat pose\nopens the chest and\n engages the \nmusclesin your core \nwhile also\n strengthening the\n hip flexors ",
    "Bow Pose Improves\n hip flexors. Bow pose\n opens up the hip \nflexors, which\n are often\n weak from underuse.",
    "Rest Pose is\n to reduce back \npain by limiting\nmuscle spasms\n, strengthening\n postural muscles",
    "Crow Pose \nstrengthensthe wrist, \nforearms,abdomen \nwhile stretching \nyour upper back. ...",
    "May reduce\n symptoms of\ndepression,\nand relieve lower \nback pain.",
    "Plough Pose\nCalms the mind\n and reduces stress and\n fatigue",
    "Different Pose \nTones the liver,\nspleen,kidneys and\nthe abdominal region. "
  ];
  List<String> text1 = [
    "Easy pose",
    "Boat pose",
    "Bow pose",
    "Rest pose",
    "Crow pose",
    "Cobra pose",
    "Plough pose",
    "Different pose"
  ];
  List<String> images1 = [
    "assets/m1.png",
    "assets/m3.png",
    "assets/m4.png",
    "assets/m5.png",
    "assets/m6.png",
    "assets/m7.png",
    "assets/m8.png",
    "assets/m9.png"
  ];

  List<String> name = [
    "Push up is Burning\ncalories Protecting\nand lower\nback from injuries",
    "Planks Build \nCore Strength,\nImproves Flexibility\nImproves Metabolis",
    "Single-leg deadlifts\nSingle leg deadlift\nstrengthens the \nposterior\nchain namely the\ncore muscles.",
    "Dumbbell rows\nDumbbell rows help\nyou build stronger \nback.Dumbbell rows\nwork in yourupper \nbody...",
    "Squats burn \ncalories and might \nhelp you lose \nweight.Also lower \nyour chances\nof injuring your knees",
    "This intense \nmuscle isolation \nmakes them\npopular exercise \nfor people trying\nto get six-pack.",
    "Lat Pull-Down\nLatissimus \ndorsi (muscles\n of the upper back on\neither side of the spine\nconnecting the arms)",
    "Deadlift activate\nyourhip extensors.\nDeadlifts are\namong the best \nexercises for training\nyour hip extensors. ..."
  ];
  List<String> name1 = [
    "Push ups",
    "Planks",
    "Leg deadlift",
    "Dumbbell row",
    "Squats",
    "Abdomibal ",
    "Lat pull-down",
    "Deadlift"
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 240,
                width: double.infinity,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 32, right: 260),
                      child: Text(
                        "Welcome back",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "Lobster_Regular"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 200),
                      child: Text(
                        "Samantha william",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontFamily: "Lobster_Regular"),
                      ),
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28),
                    ),
                    color: Color.fromARGB(255, 2, 75, 66)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Center(
                  child: Container(
                    height: 130,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromARGB(255, 202, 199, 199),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 14, right: 130),
                            child: Text(
                              "continue your exrecise",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: "Lobster_Regular"),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return const MyHomePage();
                                      }),
                                    );
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      image: const DecorationImage(
                                        image: AssetImage("assets/y10.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  children: const [
                                    Text(
                                      "Yoga Asthanga",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontFamily: "Lobster_Regular"),
                                    ),
                                    Text(
                                      "Limit minutes 1.30",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontFamily: "Lobster_Regular"),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 90),
                                const Icon(Icons.play_circle),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 220, top: 20),
            child: Text(
              "Yoga Exercise",
              style: TextStyle(fontSize: 26, fontFamily: "Lobster_Regular"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 135),
            child: Text(
              "The power of moving your body",
              style: TextStyle(fontSize: 18, fontFamily: "Lobster_Regular"),
            ),
          ),
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            tabs: const [
              Tab(
                  child: Text(
                "YOGA",
                style: TextStyle(fontSize: 20, fontFamily: "Lobster_Regular"),
              )),
              Tab(
                  child: Text(
                "GYM",
                style: TextStyle(fontSize: 20, fontFamily: "Lobster_Regular"),
              )),
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListView.builder(
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return listItem(
                        images: images[index],
                        text: text[index],
                        text1: text1[index],
                      );
                    }),
                ListView.builder(
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return listItemm(
                        images1: images1[index],
                        name: name[index],
                        name1: name1[index],
                      );
                    }),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

Widget listItem({String? images, String? text, String? text1}) {
  return Stack(
    children: [
      Card(
        child: Row(
          children: [
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images!), fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  text1!,
                  style: const TextStyle(
                      fontSize: 24, fontFamily: "Lobster_Regular"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text!,
                  style: const TextStyle(
                      fontSize: 18, fontFamily: "Lobster_Regular"),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget listItemm({String? images1, String? name, String? name1}) {
  return Stack(
    children: [
      Card(
        child: Row(
          children: [
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images1!), fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  name1!,
                  style: const TextStyle(
                      fontSize: 24, fontFamily: "Lobster_Regular"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name!,
                  style: const TextStyle(
                      fontSize: 18, fontFamily: "Lobster_Regular"),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
