
import 'point.dart';
import 'vector_3d.dart';

void main(List<String> arguments) {
    var point = Point(39.0, 100.0);
    var point2 = Point(40.0, 55.4);
    
    point.move(point, point2);
    
    point.display(point);

    point.move(Point(323.3, 1234.3), Point(54.3, 675.2));

    point.display(point);

    Vector3D vector1 = Vector3D(2, 2, 2);
    Vector3D vector2 = Vector3D(2, 2, 2);

    print(Vector3D.coincide(vector1, vector2));
}
