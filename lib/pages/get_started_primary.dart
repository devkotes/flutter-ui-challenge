part of 'pages.dart';

class GetStartedPrimary extends StatefulWidget {
  @override
  _GetStartedPrimaryState createState() => _GetStartedPrimaryState();
}

class _GetStartedPrimaryState extends State<GetStartedPrimary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset('assets/img/gs_bg.png')),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Maximize Revenue',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 16,
                ),
                Text(
                    'Gain more profit from cryptocurrency\nwithout any risk involved',
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 16)),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => GetStartedSecondary()));
                    },
                    child: Image.asset('assets/img/gs_btn.png')),
                SizedBox(
                  height: 55,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
