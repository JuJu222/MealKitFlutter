part of 'widgets.dart';

class CardBeranda extends StatefulWidget {
  final Resep resep;

  CardBeranda({
    super.key,
    required this.resep,
  });

  @override
  State<CardBeranda> createState() => _CardBerandaState();
}

class _CardBerandaState extends State<CardBeranda> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: widget.resep.color,
      child: Container(
        // color: Colors.red,
        width: 190,
        height: 200,
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              "${widget.resep.nama}",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontFamily: "Quicksand",
                  color: Colors.black),
            ),
          ),
          Positioned(
              top: 49,
              left: 50,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${widget.resep.images}"),
                        fit: BoxFit.cover)),
              )),
        ]),
      ),
    );
  }
}

class CardBerandaLong extends StatefulWidget {
  final Resep resep;

  CardBerandaLong({
    super.key,
    required this.resep,
  });

  @override
  State<CardBerandaLong> createState() => _CardBerandaLongState();
}

class _CardBerandaLongState extends State<CardBerandaLong> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: widget.resep.color,
      child: Container(
        // color: Colors.red,
        width: 190,
        height: 250,
        child: Stack(children: [
          Positioned(
              top: 100,
              left: 30,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${widget.resep.images}"),
                        fit: BoxFit.cover)),
              )),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              "${widget.resep.nama}",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontFamily: "Quicksand",
                  color: Colors.black),
            ),
          ),
        ]),
      ),
    );
  }
}
