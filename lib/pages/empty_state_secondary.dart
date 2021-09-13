part of 'pages.dart';

class EmptyStateSecondary extends StatefulWidget {
  @override
  _EmptyStateSecondaryState createState() => _EmptyStateSecondaryState();
}

class _EmptyStateSecondaryState extends State<EmptyStateSecondary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1B33),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/img/es_image1.png'),
              SizedBox(
                height: 70,
              ),
              Text(
                'Boost Profit!',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Our tools are helping business\nto grow much faster',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 60,
              ),
              Image.asset('assets/img/es_btn.png')
            ],
          ),
        ),
      ),
    );
  }
}
