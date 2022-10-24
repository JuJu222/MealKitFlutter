part of '../widgets/widgets.dart';

class RencanaList extends StatefulWidget {
  const RencanaList({super.key});

  @override
  State<RencanaList> createState() => _RencanaListState();
}

class _RencanaListState extends State<RencanaList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: double.infinity,
      child: Column(children: [
        Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                SizedBox(width: 10.0),
                Text("Telah Dipesan",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        fontFamily: "Quicksand")),
              ],
            )),
        const SizedBox(height: 2.0),
        SingleChildScrollView(
            child: Column(children: const [
          RencanaTileNoTrailing(
            menuName: "Grilled Salmon",
            menuPrice: "100.000",
            menuPreparationTime: "30",
            numberOfPeople: "4",
          ),
          RencanaTileNoTrailing(
            menuName: "Pesto pasta",
            menuPrice: "50.000",
            menuPreparationTime: "30",
            numberOfPeople: "4",
          ),
        ])),
        SizedBox(height: 15.0),
        Row(
          children: [
            SizedBox(width: 10.0),
            Text("Keranjang",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "Quicksand")),
          ],
        ),
        const SizedBox(height: 2.0),
        SingleChildScrollView(
            child: Column(children: const [
          RencanaTile(
            menuName: "Pesto Pasta Chicken",
            menuPrice: "50.000",
            menuPreparationTime: "30",
            numberOfPeople: "4",
          ),
          RencanaTile(
            menuName: "Nabe Veggie Udon",
            menuPrice: "50.000",
            menuPreparationTime: "30",
            numberOfPeople: "2",
          ),
        ]))
      ]),
    );
  }
}
