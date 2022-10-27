part of '../widgets/widgets.dart';

class CheckoutTile extends StatelessWidget {
  final Pesan pesan;
  const CheckoutTile({super.key, required this.pesan});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: GFListTile(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0.0),
        avatar: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset('${pesan.images}', width: 79, height: 79),
        ),
        title: Row(
          children: [
            Row(
              children: [
                SizedBox(width: 5.0),
                Text(pesan.menuName!,
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
                    const Icon(Icons.group, size: 22, color: Color(0xFF6A6A6A)),
                    Text("${pesan.numberOfPeople} orang",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xFF6A6A6A),
                            fontFamily: "Quicksand")),
                  ],
                ),
                const SizedBox(width: 16.0),
                Row(
                  children: [
                    const Icon(Icons.date_range_outlined,
                        size: 22, color: Color(0xFF6A6A6A)),
                    Text("${pesan.date}",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color(0xFF6A6A6A),
                            fontFamily: "Quicksand")),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            Row(
              children: [
                SizedBox(width: 5.0),
                Text("Rp.${pesan.menuPrice}",
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

class CheckoutTileWithIcon extends StatelessWidget {
  final Pesan pesan;
  const CheckoutTileWithIcon({super.key, required this.pesan});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: GFListTile(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0.0),
          avatar: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset('${pesan.images}', width: 79, height: 79),
          ),
          title: Row(
            children: [
              Row(
                children: [
                  SizedBox(width: 5.0),
                  Text(pesan.menuName!,
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
                      const Icon(Icons.group,
                          size: 22, color: Color(0xFF6A6A6A)),
                      Text("${pesan.numberOfPeople} orang",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xFF6A6A6A),
                                  fontFamily: "Quicksand")),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Row(
                    children: [
                      const Icon(Icons.date_range_outlined,
                          size: 22, color: Color(0xFF6A6A6A)),
                      Text("${pesan.date}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xFF6A6A6A),
                                  fontFamily: "Quicksand")),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  SizedBox(width: 5.0),
                  Text("Rp.${pesan.menuPrice}",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          fontFamily: "Quicksand",
                          color: Color(0xFF1C9FE2))),
                ],
              ),
            ],
          ),
          icon: CircleAvatar(
              backgroundColor: Color(0xFF703900),
              child: Icon(Icons.delete_outline_rounded, color: Colors.white))),
    );
  }
}
