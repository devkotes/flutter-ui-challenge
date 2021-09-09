part of 'pages.dart';

class SplashPrimary extends StatefulWidget {
  @override
  _SplashPrimaryState createState() => _SplashPrimaryState();
}

class _SplashPrimaryState extends State<SplashPrimary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131E),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SplashSecondary()));
              },
              child: Image.asset(
                'assets/img/splash_1.png',
                width: 140,
                height: 140,
              ),
            ),
            SizedBox(
              height: 170,
            ),
            Text(
              'VENTURE',
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 32, color: Colors.white),
            )
          ],
        ),
      )),
    );
  }
}
