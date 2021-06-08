import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image(
              width: width,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/header2.png'),
            ),
          ),
          SizedBox(height: 14),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      CardImage(image: 'assets/images/card1.png'),
                      CardImage(image: 'assets/images/card2.png'),
                      CardImage(image: 'assets/images/card3.png'),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Expanded(
                  child: Row(
                    children: [
                      CardImage(image: 'assets/images/card4.png'),
                      CardImage(image: 'assets/images/card5.png'),
                      CardImage(image: 'assets/images/card6.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SociaLIcon(icon: 'assets/images/whatsapp.png'),
                          SociaLIcon(icon: 'assets/images/youtube.png'),
                          SociaLIcon(icon: 'assets/images/instagram.png'),
                          SociaLIcon(icon: 'assets/images/twitter.png'),
                          SociaLIcon(icon: 'assets/images/medium.png'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: JoinButton(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class JoinButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'JOIN OUR TELEGRAM',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SociaLIcon(
            icon: 'assets/images/telegram.png',
          ),
        ],
      ),
    );
  }
}

class SociaLIcon extends StatelessWidget {
  const SociaLIcon({this.icon});
  final icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          padding: EdgeInsets.all(4),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Colors.black,
            ),
            shape: BoxShape.circle,
          ),
          child: Image(
            height: 20,
            width: 20,
            color: Colors.black,
            fit: BoxFit.contain,
            image: AssetImage(icon),
          ),
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  CardImage({this.image});
  final image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
