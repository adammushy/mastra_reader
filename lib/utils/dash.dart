import 'package:mastra_reader/exports.dart';

myDash() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: Card(
      elevation: 5.0,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/txt.png"),
                              // height: 30,
                              // width: 30,
                            ),
                            Text(
                              "40",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),),
                  ),
                ),
                 InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/txt.png"),
                              // height: 30,
                              // width: 30,
                            ),
                            Text(
                              "40",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),),
                  ),
                ), InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/txt.png"),
                              // height: 30,
                              // width: 30,
                            ),
                            Text(
                              "40",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 50,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Image.asset("assets/images/txt.png"),
                            // height: 30,
                            // width: 30,
                          ),
                          Text(
                            "40",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                )),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 50,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Image.asset("assets/images/txt.png"),
                            // height: 30,
                            // width: 30,
                          ),
                          Text(
                            "40",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                )),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 50,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Image.asset("assets/images/txt.png"),
                            // height: 30,
                            // width: 30,
                          ),
                          Text(
                            "40",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                )),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
