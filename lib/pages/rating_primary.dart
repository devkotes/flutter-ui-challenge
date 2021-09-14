part of 'pages.dart';

class RatingPrimary extends StatefulWidget {
  @override
  _RatingPrimaryState createState() => _RatingPrimaryState();
}

class _RatingPrimaryState extends State<RatingPrimary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181925),
      body: Container(
        padding: EdgeInsets.all(40),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/img/rs_image.png'),
              SizedBox(
                height: 20,
              ),
              Text('Pizza Balado',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: 4,
              ),
              Text('\$90',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 90,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Was it delicious?',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/img/rs_btn1.png'),
                  Image.asset('assets/img/rs_btn2.png'),
                  Image.asset('assets/img/rs_btn3.png'),
                  Image.asset('assets/img/rs_btn4.png'),
                ],
              ),
              SizedBox(height: 90),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => RatingSecondary()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF34D186),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 67),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60)))),
                  child: Text('Rate Now',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)))
            ],
          ),
        ),
      ),
    );
  }
}
