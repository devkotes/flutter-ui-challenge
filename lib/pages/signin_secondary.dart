part of 'pages.dart';

class SigninSecondary extends StatefulWidget {
  @override
  _SigninSecondaryState createState() => _SigninSecondaryState();
}

class _SigninSecondaryState extends State<SigninSecondary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 28),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 64,
              ),
              Center(child: Image.asset('assets/img/signin_image.png')),
              SizedBox(
                height: 55,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: GoogleFonts.openSans(color: Color(0xFF17171A)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      style: GoogleFonts.openSans(
                          fontSize: 16, color: Color(0xff17171A)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        fillColor: Color(0xffF3F3F3),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(70))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(70))),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: GoogleFonts.openSans(color: Color(0xFF17171A)),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: GoogleFonts.openSans(
                          fontSize: 16, color: Color(0xff17171A)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        fillColor: Color(0xffF3F3F3),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(70))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(70))),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Color(0xFF5468FF),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60))),
                        padding: EdgeInsets.symmetric(vertical: 15)),
                    onPressed: () {},
                    child: Text('Log In',
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFFF8F8F8)))),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        side: BorderSide(color: Color(0xFFD3D3D3)),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => EmptyStatePrimary()));
                    },
                    child: Text(
                      'Create New Account',
                      style: GoogleFonts.openSans(
                          fontSize: 18, color: Color(0xFFD3D3D3)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
