part of 'pages.dart';

class EmptyStatePrimary extends StatefulWidget {
  @override
  _EmptyStatePrimaryState createState() => _EmptyStatePrimaryState();
}

class _EmptyStatePrimaryState extends State<EmptyStatePrimary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 65),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Image.asset('assets/img/es_image.png'),
              SizedBox(
                height: 100,
              ),
              Text(
                'Success Order',
                style: GoogleFonts.poppins(
                    color: Color(0xFF0E1954),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'We will delivery your package\nas soon as possible',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Color(0xFF0E1954)),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => EmptyStateSecondary()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(17))),
                      primary: Color(0xFFF94593),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 77)),
                  child: Text(
                    'Done',
                    style: GoogleFonts.openSans(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
