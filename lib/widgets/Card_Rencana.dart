part of '../widgets/widgets.dart';

class CardRencana extends StatefulWidget {
  bool isSelected;
  int index;
  VoidCallback onSelect;
  final String day;
  final String date;
  CardRencana({
    super.key,
    required this.index,
    required this.day,
    required this.date,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  State<CardRencana> createState() => _CardRencanaState();
}

class _CardRencanaState extends State<CardRencana> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: GestureDetector(
          onTap: widget.onSelect,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            color: (widget.isSelected)
                ? const Color(0xFF1C9FE2)
                : Color(0xF2F2F2).withOpacity(1),
            elevation: 0.0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(children: [
                Text(widget.day,
                    style: (widget.isSelected)
                        ? Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white)
                        : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xF6A6A6A).withOpacity(1.0))),
                SizedBox(height: 3.0),
                Text(widget.date,
                    style: (widget.isSelected)
                        ? Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white)
                        : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xF6A6A6A).withOpacity(1.0))),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
