import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Ambhuja Mess"),
            Text(
              "Home Kitchen",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("3.7\nRating"),
                  Text("10AM to 10PM\nTiming"),
                  Text("100\nAvg. Price"),
                ],
              ),
            ),
            Text("Serving Now:",style: TextStyle(fontSize: 20),),
            Text("Sev Tamatar,Roti,Moong Dal,Fry Rice",style: TextStyle( color: Color.fromARGB(255, 196, 195, 195)),),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // Navigation logic for the Full Menu container
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FullMenuPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 196, 195, 195),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Full Menu", style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigation logic for the Vote container
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VotePage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 196, 195, 195),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Vote", style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigation logic for the Mark Interest container
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MarkInterestPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 196, 195, 195),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Mark Interest", style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigation logic for the Rate container
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RatePage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 196, 195, 195),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Rate", style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("Contact:8871566671"),
            Text("Email:care@guruji.com")
          ],
        ),
      ),
    );
  }
}

// New pages for navigation
class FullMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Menu Page"),
      ),
      body: Center(
        child: Text("Full Menu Page"),
      ),
    );
  }
}

class VotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vote Page"),
      ),
      body: Center(
        child: Text("Vote Page"),
      ),
    );
  }
}

class MarkInterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mark Interest Page"),
      ),
      body: Center(
        child: Text("Mark Interest Page"),
      ),
    );
  }
}

class RatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate Page"),
      ),
      body: Center(
        child: Text("Rate Page"),
      ),
    );
  }
}
