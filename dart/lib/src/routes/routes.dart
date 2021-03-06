import 'dart:io';
import 'dart:async';
import 'package:dartvsnode/src/models/models.dart' as models;
import 'package:dartvsnode/src/utils/fake.dart';
import 'dart:convert' show json;

final countHumans = 1000;

void test1(HttpRequest request) {
  request.response
    ..write('Hello, world!')
    ..close();
}

void test2(HttpRequest request) {
  final humans = List<models.Human>();

  for (int i = 0; i < countHumans; i++) {
    humans.add(models.Human(i, getRandomLiterals(firstnames),
        getRandomLiterals(lastnames), rand.nextInt(60), rand.nextBool()));
  }

  request.response.headers.contentType = ContentType.json;

  request.response
    ..write(json.encode(humans))
    ..close();
}

Future<String> test3() {
  final humans = List<models.Human>();

  for (int i = 0; i < countHumans; i++) {
    humans.add(models.Human(i, getRandomLiterals(firstnames),
        getRandomLiterals(lastnames), rand.nextInt(60), rand.nextBool()));
  }
  return Future.value(json.encode(humans));
}

void defaultHandler(HttpRequest request) {
  request.response
    ..write('DartVsNodejs')
    ..close();
}
