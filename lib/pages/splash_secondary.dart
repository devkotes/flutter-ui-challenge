part of 'pages.dart';

class SplashSecondary extends StatefulWidget {
  @override
  _SplashSecondaryState createState() => _SplashSecondaryState();
}

class _SplashSecondaryState extends State<SplashSecondary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/img/bg_splash.png'),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => GetStartedPrimary()));
                      },
                      child: Image.asset('assets/img/logo_splash.png'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
