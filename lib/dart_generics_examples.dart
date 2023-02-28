class Tuple<E> {
  final E? _a; // Nullable private field
  final E? _b;
  final E? _c;

  E? get first => _a; // Nullable getter
  E? get second => _b;
  E? get third => _c;

  const Tuple(this._a, this._b, this._c); // Nullable constructor

  Tuple.fromList(List<E> list)
      : _a = list.asMap().containsKey(0) ? list[0] : null,
        _b = list.asMap().containsKey(1) ? list[1] : null,
        _c = list.asMap().containsKey(2) ? list[2] : null;

  Tuple<num> operator +(Tuple<num> t) {
    if (this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! + t._a!, thisAsTupleNum._b! + t._b!,
          thisAsTupleNum._c! + t._c!);
    }
    return const Tuple(0, 0, 0);
  }

  Tuple<num> operator -(Tuple<num> t) {
    if (this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! - t._a!, thisAsTupleNum._b! - t._b!,
          thisAsTupleNum._c! - t._c!);
    }
    return const Tuple(0, 0, 0);
  }

  @override
  String toString() => 'Tuple(first: $first, second: $second, third: $third)';
}

dynamic genericsDisplay(List<String> arguments) {
  const Tuple tuple1 = Tuple(1, 2, 3);
  final Tuple tuple2 = Tuple.fromList([4, 5, 6]);
  final Tuple tuple3 = Tuple.fromList([7]);

  print('tuple1 --> $tuple1');
  print('tuple2 --> $tuple2');
  print('tuple3 --> $tuple3');

  const t1 = Tuple(1, 2, 3);
  const t2 = Tuple(4, 5, 6);
  const t3 = Tuple('a', 'b', 'c');
  const t4 = Tuple(Object(), Object(), Object());
  final t5 = Tuple.fromList(['Hello', 'World!']);
  final tSum = t1 + t2;
  final tDiff = t1 - t2;

  print('tSum --> $tSum');
  print('tDiff --> $tDiff');
  print('t3 --> $t3');
  print('t4 --> $t4');
  print('t5 --> $t5');
}
