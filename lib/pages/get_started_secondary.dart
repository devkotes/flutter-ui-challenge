part of 'pages.dart';

class GetStartedSecondary extends StatefulWidget {
  @override
  _GetStartedSecondaryState createState() => _GetStartedSecondaryState();
}

class _GetStartedSecondaryState extends State<GetStartedSecondary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Health First.',
                        style: GoogleFonts.poppins(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Exercise together with our best community fit in the world',
                        style: GoogleFonts.poppins(fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Image.asset('assets/img/gs_gallery.png'),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 85),
                        primary: Color(0xFFAFEA0D)),
                    onPressed: () {},
                    child: Text('Shape My Body',
                        style: GoogleFonts.lato(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Terms & Conditions',
                  style: GoogleFonts.poppins(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: Color(0xFF757575)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
