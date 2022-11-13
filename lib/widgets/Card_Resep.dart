part of 'widgets.dart';

class CardResep extends StatelessWidget {
  Resep? resep;
  CardResep({super.key, required this.resep});

  @override
  Widget build(BuildContext context) {
    Color near_black = Color(0xFF2A2A2A);
    Color blue = Color(0xFF1C9FE2);

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, InformasiResepPage.routeName);
      },
      child: Column(
        // mainAxisAlignment: Alignment.,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${resep!.menuImage}"),
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${resep!.menuName}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: near_black,
                      )),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(Icons.kitchen, size: 10),
                        ),
                        TextSpan(
                          text: "${resep!.menuDuration}",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Quicksand',
                            color: near_black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                width: double.infinity,
                height: 12,
                child: Container(
                  child: Center(
                    child: Text("${resep!.menuPrice} /${resep!.menuPortion}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        )),
                  ),
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                )
                // padding: const EdgeInsets.symmetric(
                // vertical: 12, horizontal: 8),
                // color: Colors.teal[100],
                // child: const Text(
                // "He'd have you all unravel at the"),
                ),
          ),
        ],
      ),
    );
  }
}
