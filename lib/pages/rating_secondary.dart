part of 'pages.dart';

class RatingSecondary extends StatefulWidget {
  @override
  _RatingSecondaryState createState() => _RatingSecondaryState();
}

class _RatingSecondaryState extends State<RatingSecondary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 28),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset('assets/img/rs_image2.png'),
              SizedBox(
                height: 50,
              ),
              Text('Enjoy Your Meal',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFF121622))),
              SizedBox(
                height: 6,
              ),
              Text(
                'Please rate our experience',
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Color(0xFF808EAB)),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/img/stars.png'),
              SizedBox(
                height: 36,
              ),
              TextFormField(
                style: GoogleFonts.poppins(color: Color(0xFF808EAB)),
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Your Message',
                  hintStyle: GoogleFonts.poppins(color: Colors.grey),
                  fillColor: Color(0xFFF8F8F8),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(color: Color(0xFFF8F8F8))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(color: Color(0xFFF8F8F8))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      elevation: 0,
                      primary: Color(0xFF4074E6),
                      padding:
                          EdgeInsets.symmetric(horizontal: 77, vertical: 15)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => PricePrimary()));
                  },
                  child: Text(
                    'Submit Review',
                    style:
                        GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
