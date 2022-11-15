part of 'widgets.dart';

class CardBeranda extends StatefulWidget {
  final Preferensi preferensi;

  CardBeranda({
    super.key,
    required this.preferensi,
  });

  @override
  State<CardBeranda> createState() => _CardBerandaState();
}

class _CardBerandaState extends State<CardBeranda> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: widget.preferensi.color,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, DaftarResepPage.routeName,
              arguments: widget.preferensi);
        },
        child: Container(
          // color: Colors.red,
          width: 170,
          height: 200,
          child: Stack(children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Text(
                "${widget.preferensi.nama}",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Quicksand",
                    color: Colors.black),
              ),
            ),
            Positioned(
                top: 49,
                left: 20,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("${widget.preferensi.images}"),
                          fit: BoxFit.fill)),
                )),
          ]),
        ),
      ),
    );
  }
}

class CardBerandaLong extends StatefulWidget {
  final Preferensi preferensi;

  CardBerandaLong({
    super.key,
    required this.preferensi,
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
      color: widget.preferensi.color,
      child: Container(
        // color: Colors.red,
        width: 170,
        height: 250,
        child: Stack(children: [
          Positioned(
              top: 100,
              left: 50,
              child: Container(
                width: widget.preferensi.nama == "Makanan Laut" ? 180 : 150,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${widget.preferensi.images}"),
                        fit: BoxFit.cover)),
              )),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              "${widget.preferensi.nama}",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "Quicksand",
                  color: Colors.black),
            ),
          ),
        ]),
      ),
    );
  }
}
