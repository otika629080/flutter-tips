// 変数と型推論
import 'dart:typed_data';

int age1 = 0;
var age2 = 0;

// 定数
// final修飾子またはconst修飾子を使用する
final int age3 = 37;
// age3 = 38;

final age4 = 37;

const int age5 = 37;
const age6 = 37;
// constはコンパイル時定数として扱われる。そのため、クラス変数などはconst宣言できない(静的なクラス変数であれば可能)。
// finalで宣言されたクラスのフィールドは変更可能、
// constで宣言されたクラスのフィールドは変更不可。

// いろいろな初期値の与え方
final flag = DateTime.now().hour.isEven;

// final int number;
// if (flag) {
//   number = 0;
// } else {
//   number = 255;
// }
// print(number);

// 以下のように利用時までに初期化が保証されていないコードはエラー
final userName = 'steve';

// int number2;
// if (userName == 'joe') {
//   number = 0;
// } else if (userName == 'john') {
//   number2 = 255;
// }
// print(number2);

// 遅延初期化
late String globalVariable;

void main() {
  globalVariable = 'initialized';
  print(globalVariable);
}

// 変数variableにアクセスするまで初期値を計算するhighcostFunctionを実行しない例
late String variable = highCostFunction();
highCostFunction() {}

// 組み込み型
// int - 整数型 bitサイズはプラットフォーム毎に異なる
// 昨今のiOSとAndroidなら64bit
final x = 1;
final hex = 0xFF;
final exponent = 1e5;

// double 64bit浮動小数型
final y = 1.1;
final exponent2 = 1.42e5;

// String 文字列型
// Runes UTF-16コードポイントのコレクション
// Characters (書基素クラスタによる)部分文字のコレクション

final str1 = 'Hello World';
final str2 = "Hello World2";

final name = 'dart';
final str3 = 'Hello $name';
final str4 = 'Hello, ${name.toUpperCase()}';

final message1 = 'Hello, ' 'Dart!'; // Hello, Dart!
final message2 = 'Hello, '
    'Dart!';
final message3 = 'Hello, ' + 'Dart!';

final message4 = "<div>\n <p>Hello, Dart</p>\n</div>";
final message5 = """
<div>
  <p>Hello, Dart!</p>
</div>
""";
final message6 = '''
<div>
  <p>Hello, Dart!</p>
</div>
''';

// 文字列リテラルの前にrを置くことで、改行文字などの特殊文字の解釈を無効にできる
final message7 = 'Hello, \nDart!';
final message8 = r'Hello, \nDart';

// bool 論理型
final flag1 = true;
final flag2 = false;

// List 配列
// 配列に相当する順序付きコレクション
final list1 = [0, 1, 2, 3];
final list2 = [
  0,
  1,
  2,
  3,
];

// final intList = [0, 1, 2, 3];
// intList.add(4);
// intList.add('abc');

final list = <int>[0, 1, 2, 3];
// デフォルトは可変長で、Listの名前付きコンストラクタunmodifiableを
// 使うと固定長になる
// 固定長リストの要素数を変更しようとすると実行時エラーになる
final baseList = [0, 1, 2, 3];
final fixedLengthList =
    List.unmodifiable(baseList); // baseListを元に固定長の新しいインスタンスを作成
// fixedLengthList.add(4); // 実行時エラー

// Set 集合
// 順序が保持されない、要素が重複しないコレクション
final map1 = {'Apple', 'Orange', 'Grape'};
final map2 = {
  'Apple',
  'Orange',
  'Grape',
};
// Setの要素の型は推論され、型の異なる要素を追加しようとするとコンパイルエラー
// final fruits = {'Apple', 'Orange', 'Grape'};
// fruits.add('Cherry');
// fruits.add(123); // エラー

// Setの要素の型を明示する
final fruits2 = <String>{'Apple', 'Orange', 'Grape'};

// Map 連想配列
final map3 = {200: 'OK', 403: 'access forbidden', 404: 'not found'};
final map4 = {
  200: 'OK',
  403: 'access forbidden',
  404: 'not found',
};

// ListやSetと同様にキーやバリューの型は推論され、型の異なる要素を追加しようとするとコンパイルエラーになる
final statusCodes = {200: 'OK', 403: 'access forbidden', 404: 'not found'};

// statusCodes[204] = 'No Content';
// statusCodes['204'] = 'No Content';

// Mapの要素の型を明示する
final statusCodes2 = <int, String>{
  200: 'OK',
  403: 'access forbidden',
  404: 'not found'
};

// SetとMapはリテラルが似ているが、以下はMapとして推論される
final setOrMap = {};
// setOrMap is Map; true

// Record タプル
// 複数の値を集約した不変の匿名型
final record1 = (300, 'cake');

// Recordの型注釈
final (int, String) record2 = record1;

// 名前付きフィールド
// 名前を付けないフィールドを位置フィールドという
final record3 = (price: 300, name: 'cake');
// 型注釈では名前付きフィールドを中括弧で囲う
final ({int price, String name}) record4 = (price: 300, name: 'cake');
// 名前付きフィールドの記述順は等値性に影響を与えません
final record5 = (price: 300, name: 'cake');
final record6 = (name: 'cake', price: 300);
// print(record5 == record6);
final (int price, String name) record7 = (300, 'cake');
final (int x, String y) record8 = (300, 'cake');
// 名前付きフィールドと位置フィールドを混在させることができる
// 型注釈では位置フィールドが常に先頭に配置される
final record9 = (price: 300, name: 'cake', 99);
final (int count, {String name, int price}) record10 = record9;

final record12 = (price: 300, name: 'cake', 99);
// record12.price;
// record12.name;
// record12.$1;

// Objectクラス　すべてのクラスのスーパークラス
// 代表的な用途は、型の異なる要素を持ったコレクションを扱う場合
// この例では、変数listXはList<Object>型に推論される
final listX = [0, 'abc', true];
// dynamic型：コンパイル時に型のチェックが行われない
final List<dynamic> listY = [0, 'abc', true];

final List<int> intList2 = [0, 1, 2];
final stringList2 = <String>['a', 'b', 'c'];

// ジェネリッククラス
class Foo<T> {
  // フィールド '_value'の型をパラメーターで宣言
  T _value;
  Foo(this._value);

  // 戻り値の型をパラメーター名Tで宣言
  T getValue() {
    return _value;
  }
}

final intFoo = Foo(3);
final stringFoo = Foo('hoge');

// ジェネリック関数
// T?はT型またはnullを表す
T? firstOrNull<T>(List<T> list) {
  if (list.isEmpty) {
    return null;
  }
  return list[0];
}

final list20 = [1, 2, 3];
final list30 = <String>[];

// 算術演算子、比較演算子、三項演算子は他言語と同じ

// カスケード記法
// 同じオブジェクトに対して、繰り返し操作を行うときに便利な記述方法
// オブジェクトのメソッドやプロパティへドット2つでアクセスすると、
// そのオブジェクトそのものが戻り値となる
final sb = StringBuffer()..write('Hello');
// 上の例ではStringBufferのインスタンスを生成しwriteメソッドを呼び出している。
// writeメソッドの戻り値はvoid型だが、カスケード記法で呼び出しているため、変数sbにはStringBufferのインスタンスが代入される

// 以下のように同じインスタンスに繰り返しアクセスする場合に便利
final sb2 = StringBuffer()..write('Hello')..write(', ')..write('Dart!');

// コレクションのオペレーター
// List, Set, Mapのリテラルでのみ利用できるオペレーター

// Spread演算子
final list40 = [0, 1, 2, 3];
final list50 = [-1, ...list40];

// 制御構文演算子
// flagがtrueの時のみ、3を追加
final list60 = [0, 1, 2, if (flag) 3];
final list70 = [1, 2, 3];

// list70の要素を2倍したものを追加
final list80 = [1, 2, 3];
final list90 = [0, for (var i in list80) i * 2];

// if文は他言語と同じ

// if-case文：パターンのマッチングと併せて変数へ分解する文法
// Recordのフィールドがnullでないことを判定し、変数messageと変数statuscodeに分解している
// いずれかがnullの場合にはelse節が実行される
// final (String?, int?) response = ('OK', 200);
// if (response case (String message, int statusCode)) {
//   print('Response: message = $message, statusCode = $statusCode');
// } else {
//   print('No response received');
// }
// Response: message = OK, statusCode = 200

// final (String?, int?) response = ('OK', 200);
// if (response case (String message, int statusCode) when statusCode == 200) {
//   // messageが非nullかつ、statusCodeが200のときのみ、メッセージを出力
//   print('Response: message = $message, statusCode = $statusCode');
// } else {
//   print('No response received');
// }

// switch文
// returnの他、throwも使える

// final String color = "略";

// switch(color) {
//   case 'red':
//     doSomethingRed();
//   case 'blue':
//     doSomethingBlue();
//   case 'black':
//     break;
//   case 'green':
//   case 'yellow':
//     doSomethingIfGreenOrYellow();
//   default:
//     throw 'Unexpected color';
// }

// final int? statusCode = null;
// switch (statusCode) {
//   case (int statusCode) when 100 <= statusCode && statusCode < 200:
//     print('information');
//   case (int statusCode) when 200 <= statusCode && statusCode < 300:
//     print('successful');
//   case (int statusCode) when 300 <= statusCode && statusCode < 400:
//     print('redirection');
//   case (int statusCode) when 400 <= statusCode && statusCode < 500:
//     print('server error');
//   case (null):
//     print('no response received');
//   default:
//     print('unknown status code');
// }

// final int? statusCode = //
// final message = switch(color) {
//   >= 100 && < 200 => 'information',
//   >= 200 && < 300 => 'successful',
//   >= 300 && < 400 => 'redirection',
//   >= 400 && < 500 => 'client server',
//   >= 500 && < 600 => 'server error'
// }

// final record100 = {'cake', 300};
// final (name, price) = record100;

// final { 200: successful, 404: notFound } = {
//   200 : 'ok',
//   404: 'Not Found',
//   500: 'Internal Server Error'
// };
// print('200 -> $successful, 404 ->$notFound');

// final record1000 = (name: 'cake', price: 300);
// final (name:n, price:p) = record200;

// final (String name, int price) = record300;

// フィールド名を変数で推論させる
// final record400 = (nbame: 'cake', price: 300);

// Object
// クラスのゲッタから分解宣言
// class SomeClass {
//   const SomeClass(this.x);
//   final int x;
// }

// final someInstance = SomeClass(123);
// final SomeClass(x: number) = someInstance;
// print('x = $number');

// class SomeClass {
//   const SomeClass(this.x);
//   final int x;
// }

// final someInstance = SomeClass(123);
// final someClass(:x) = someInstance;
// print('x = $x');

// final variable = //
// switch (variable) {
//   case SomeClass():
//     print('SomeClass');
//   case String():
//     print('String');
// };


// for-in文での分解宣言
// final sweets = [
//   (name: 'cake', price: 300),
//   (name: 'dango', price: 250),
// ];

// for (final (:name, :price) in sweets) {
//   print('name = $name, price = $price')
// }

// MapはIterableのサブクラスではないため、for-in文でループを回すことができない
// ただし、Mapのentriesプロパティを使えば、キーとバリューのペアを変数にバインドしてループをまわうことができる
// final map = {
//   200: 'OK',
//   404: 'Not Found',
//   500: 'Internal Server Error',
// };

// entriesプロパティでIterable<MapEntry>を取得できる
// for (var MapEntry(key: key, value: value) in map.entries) {
//   print('code: $key, $value');
// }


// キャスト
// キャストに失敗すると実行時エラー
final List<Object> listObj = [0, 'one'];
final [number as int, str as String] = listObj;

// nullチェック
int? code = //
switch (code) {
  case final i? when i >= 0:
    doSomething();
  default:
    print('code is null or negative');
}

// nullアサーション
// 値がnullだった場合に実行時エラーとなる。変数名の後ろに!を付与する
int? code = //
switch (code) {
  case final i! when i >= 0:
    doSomething();
  default:
    print('code is negative');
};
