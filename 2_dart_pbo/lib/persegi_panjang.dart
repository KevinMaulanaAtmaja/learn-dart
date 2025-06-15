class PersegiPanjang {
  // rumus luas
  double? _panjang, _lebar;

  // jenis setter & getter (lebih rekomend yg property)
  // getter & setter property
  double get panjang => _panjang!;

  set panjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  // getter & setter method
  double getLebar() => _lebar!;

  setLebar(double value) {
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  double get luas {
    return _panjang! * _lebar!;
  }
}
