import 'dart:collection';

const Map<String, String> dictionary = <String, String>{
  '34': 'thirty-four',
  '90': 'ninety',
  '91': 'ninety-one',
  '21': 'twenty-one',
  '61': 'sixty-one',
  '9': 'nine',
  '2': 'two',
  '6': 'six',
  '3': 'three',
  '8': 'eight',
  '80': 'eighty',
  '81': 'eighty-one',
  'Ninety-Nine': '99',
  'nine-hundred': '900'
};

Map<String, String> getSortedDictionary({
  required Map<String, String> inputMap,
}) {
  final Map<String, String> sorted = SplayTreeMap<String, String>.from(
    inputMap,
    (String a, String b) => a.compareTo(b),
  );

  return sorted;
}
