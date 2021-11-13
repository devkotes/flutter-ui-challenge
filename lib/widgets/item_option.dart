part of 'widgets.dart';

class ItemOption extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String imageUrl;
  final String title;
  final String description;
  final String subDescription;
  final Function onTap;

  ItemOption(
      {this.index,
      this.selectedIndex,
      this.imageUrl,
      this.title,
      this.description,
      this.subDescription,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0XFF6050E7)
                    : Color(0xFFD9DEEA)),
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Row(
          children: [
            Image.asset(imageUrl),
            SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600)),
                Text.rich(TextSpan(
                    text: description,
                    style: GoogleFonts.poppins(
                      color: Color(0xFFA3A8B8),
                      fontWeight: FontWeight.w300,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: subDescription,
                        style: GoogleFonts.poppins(
                          color: Color(0xFF5343C2),
                        ),
                      )
                    ])),
              ],
            ),
            SizedBox(
              width: 40,
            ),
            selectedIndex == index
                ? Icon(Icons.check_circle_outline_sharp,
                    color: Color(0XFF6050E7))
                : Container(),
          ],
        ),
      ),
    );
  }
}
