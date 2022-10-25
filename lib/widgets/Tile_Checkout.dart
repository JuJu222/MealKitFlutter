part of '../widgets/widgets.dart';

class CheckoutTile extends StatelessWidget {
  final String menuName;
  final String numberOfPeople;
  final String menuPrice;
  const CheckoutTile(
      {super.key,
      required this.menuName,
      required this.numberOfPeople,
      required this.menuPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: GFListTile(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0.0),
        avatar: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network('https://picsum.photos/250?image=9',
              width: 79, height: 79),
        ),
        title: Row(
          children: [
            Row(
              children: [
                SizedBox(width: 5.0),
                Text(menuName,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "Quicksand")),
              ],
            ),
          ],
        ),
        subTitle: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5.0),
                Row(
                  children: [
                    const Icon(Icons.verified_user, size: 22),
                    Text("$numberOfPeople orang",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            fontFamily: "Quicksand")),
                  ],
                ),
                const SizedBox(width: 16.0),
              ],
            ),
            const SizedBox(height: 4.0),
            Row(
              children: [
                SizedBox(width: 5.0),
                Text("Rp.$menuPrice",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        fontFamily: "Quicksand",
                        color: Color(0xFF1C9FE2))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}