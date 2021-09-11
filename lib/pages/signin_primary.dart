part of 'pages.dart';

class SignPrimary extends StatefulWidget {
  @override
  _SignPrimaryState createState() => _SignPrimaryState();
}

class _SignPrimaryState extends State<SignPrimary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 70),
                  child: Image.asset('assets/img/signin_logo.png')),
              Text(
                'Welcome Back.\nLet\'s make money',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 70,
              ),
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    fillColor: Color(0xFF262A34),
                    filled: true,
                    hintText: 'Email',
                    hintStyle: GoogleFonts.openSans(color: Color(0xFF6F7075)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF262A34)),
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF262A34)),
                        borderRadius: BorderRadius.all(Radius.circular(17)))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    fillColor: Color(0xFF262A34),
                    filled: true,
                    hintText: 'Password',
                    suffixIcon:
                        Icon(Icons.remove_red_eye, color: Color(0xFF6F7075)),
                    hintStyle: GoogleFonts.openSans(color: Color(0xFF6F7075)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF262A34)),
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF262A34)),
                        borderRadius: BorderRadius.all(Radius.circular(17)))),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot My Password',
                  style: GoogleFonts.poppins(color: Color(0xFF6A6B70)),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFCAC15),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(17))),
                        padding: EdgeInsets.symmetric(vertical: 14)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SigninSecondary()));
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.openSans(
                          fontSize: 18,
                          color: Color(0xFF6B4909),
                          fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have account? ',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  Text('Sign Up',
                      style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
