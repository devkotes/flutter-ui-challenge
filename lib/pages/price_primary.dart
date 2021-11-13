part of 'pages.dart';

class PricePrimary extends StatefulWidget {
  @override
  _PricePrimaryState createState() => _PricePrimaryState();
}

class _PricePrimaryState extends State<PricePrimary> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/img/ps_image.png'),
              SizedBox(
                height: 48,
              ),
              Text(
                'Which one you wish\nto Upgrade?',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 50,
              ),
              ItemOption(
                index: 1,
                selectedIndex: selectedIndex,
                imageUrl: 'assets/img/ps_item1.png',
                title: 'Money Security',
                description: 'Support ',
                subDescription: '24/7',
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),
              SizedBox(
                height: 24,
              ),
              ItemOption(
                index: 2,
                selectedIndex: selectedIndex,
                imageUrl: 'assets/img/ps_item2.png',
                title: 'Automation',
                description: 'We provide  ',
                subDescription: 'invoice',
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
              ),
              SizedBox(
                height: 24,
              ),
              ItemOption(
                index: 3,
                selectedIndex: selectedIndex,
                imageUrl: 'assets/img/ps_item3.png',
                title: 'Balance Report',
                description: 'can up to ',
                subDescription: '10k',
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
        color: Color(0xFF6050E7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Upgrade Now',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Image.asset('assets/img/ic_ar2.png')
          ],
        ),
      ),
    );
  }
}
