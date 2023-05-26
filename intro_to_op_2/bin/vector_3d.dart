
class Vector3D {
  late double _x, _y, _z;

  Vector3D(this._x, this._y, this._z);

  Vector3D.same(double point) {
    _x = point;
    _y = point;
    _z = point;
  }

  @override
  bool operator ==(other) {
    return other is Vector3D && other._x == _x && other._y == _y && other._z == _z;
  }

  static bool coincide(Vector3D vector1, Vector3D vector2) {
    return vector1 == vector2;
  }
}