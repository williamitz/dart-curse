import 'classes/monitor.dart';

void main() {
  final robot1 = Monitor();
  final robot2 = Monitor();

  robot1.code = 'VEN';
  robot1.country = 'Venezuela';

  print( robot1 == robot2 );
  print( robot2.code );

}