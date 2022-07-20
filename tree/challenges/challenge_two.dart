class Widget {}

class Column extends Widget {
  Column({this.children});

  List<Widget>? children;
}

class Padding extends Widget {
  Padding({this.child});

  Widget? child;
}

class Text extends Widget {
  Text([this.value = '']);

  String value;
}

void main() {
  final tree = Column(children: [
    Padding(
      child: Text('One'),
    ),
    Padding(
      child: Text('Two'),
    ),
    Padding(
      child: Text('Three'),
    ),
    Text('Four'),
  ]);

  print(tree);
}
