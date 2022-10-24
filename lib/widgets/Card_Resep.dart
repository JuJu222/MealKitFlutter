part of 'widgets.dart';

class CardResep extends StatefulWidget {
  final Resep resep;
  final ValueChanged<bool> onSelected;

  CardResep({
    super.key,
    required this.resep,
    required this.onSelected,
  });

  @override
  State<CardResep> createState() => _CardResepState();
}

class _CardResepState extends State<CardResep> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: widget.resep.nama == "Makanan Laut" ||
                widget.resep.nama == "Menu Diet"
            ? _buildLandScape(context)
            : _buildPortrait(context));
  }

  Widget _buildPortrait(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          _isSelected = !_isSelected;
          widget.onSelected(_isSelected);
        });
      }),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: _isSelected
                ? BorderSide(color: Color(0XFF1C9FE2), width: 3)
                : BorderSide(color: Colors.transparent, width: 0)),
        color: widget.resep.color,
        child: Container(
          width: 93,
          height: 151,
          child: Stack(children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                "${widget.resep.nama}",
                style: Theme.of(context)!
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                top: 49,
                child: Container(
                  width: 102,
                  height: 102,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("${widget.resep.images}"),
                          fit: BoxFit.cover)),
                )),
          ]),
        ),
      ),
    );
  }

  Widget _buildLandScape(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        _isSelected = !_isSelected;
        widget.onSelected(_isSelected);
      }),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: _isSelected
                ? BorderSide(color: Color(0XFF1C9FE2), width: 3)
                : BorderSide(color: Colors.transparent, width: 0)),
        color: widget.resep.color,
        child: Container(
            width: 147,
            height: 88,
            child: Stack(children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        child: Text(
                          "${widget.resep.nama}",
                          style: Theme.of(context)!
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      )),
                      Expanded(child: Container())
                    ],
                  )),
              Positioned(
                  top: 12,
                  left: 58,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("${widget.resep.images}"),
                            fit: BoxFit.cover)),
                  )),
            ])),
      ),
    );
  }
}
