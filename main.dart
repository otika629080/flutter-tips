// // 変数と型推論
// import 'dart:typed_data';

// int age1 = 0;
// var age2 = 0;

// // 定数
// // final修飾子またはconst修飾子を使用する
// final int age3 = 37;
// // age3 = 38;

// final age4 = 37;

// const int age5 = 37;
// const age6 = 37;
// // constはコンパイル時定数として扱われる。そのため、クラス変数などはconst宣言できない(静的なクラス変数であれば可能)。
// // finalで宣言されたクラスのフィールドは変更可能、
// // constで宣言されたクラスのフィールドは変更不可。

// // いろいろな初期値の与え方
// final flag = DateTime.now().hour.isEven;

// // final int number;
// // if (flag) {
// //   number = 0;
// // } else {
// //   number = 255;
// // }
// // print(number);

// // 以下のように利用時までに初期化が保証されていないコードはエラー
// final userName = 'steve';

// // int number2;
// // if (userName == 'joe') {
// //   number = 0;
// // } else if (userName == 'john') {
// //   number2 = 255;
// // }
// // print(number2);

// // 遅延初期化
// late String globalVariable;

// void main() {
//   globalVariable = 'initialized';
//   print(globalVariable);
// }

// // 変数variableにアクセスするまで初期値を計算するhighcostFunctionを実行しない例
// late String variable = highCostFunction();
// highCostFunction() {}

// // 組み込み型
// // int - 整数型 bitサイズはプラットフォーム毎に異なる
// // 昨今のiOSとAndroidなら64bit
// final x = 1;
// final hex = 0xFF;
// final exponent = 1e5;

// // double 64bit浮動小数型
// final y = 1.1;
// final exponent2 = 1.42e5;

// // String 文字列型
// // Runes UTF-16コードポイントのコレクション
// // Characters (書基素クラスタによる)部分文字のコレクション

// final str1 = 'Hello World';
// final str2 = "Hello World2";

// final name = 'dart';
// final str3 = 'Hello $name';
// final str4 = 'Hello, ${name.toUpperCase()}';

// final message1 = 'Hello, ' 'Dart!'; // Hello, Dart!
// final message2 = 'Hello, '
//     'Dart!';
// final message3 = 'Hello, ' + 'Dart!';

// final message4 = "<div>\n <p>Hello, Dart</p>\n</div>";
// final message5 = """
// <div>
//   <p>Hello, Dart!</p>
// </div>
// """;
// final message6 = '''
// <div>
//   <p>Hello, Dart!</p>
// </div>
// ''';

// // 文字列リテラルの前にrを置くことで、改行文字などの特殊文字の解釈を無効にできる
// final message7 = 'Hello, \nDart!';
// final message8 = r'Hello, \nDart';

// // bool 論理型
// final flag1 = true;
// final flag2 = false;

// // List 配列
// // 配列に相当する順序付きコレクション
// final list1 = [0, 1, 2, 3];
// final list2 = [
//   0,
//   1,
//   2,
//   3,
// ];

// // final intList = [0, 1, 2, 3];
// // intList.add(4);
// // intList.add('abc');

// final list = <int>[0, 1, 2, 3];
// // デフォルトは可変長で、Listの名前付きコンストラクタunmodifiableを
// // 使うと固定長になる
// // 固定長リストの要素数を変更しようとすると実行時エラーになる
// final baseList = [0, 1, 2, 3];
// final fixedLengthList =
//     List.unmodifiable(baseList); // baseListを元に固定長の新しいインスタンスを作成
// // fixedLengthList.add(4); // 実行時エラー

// // Set 集合
// // 順序が保持されない、要素が重複しないコレクション
// final map1 = {'Apple', 'Orange', 'Grape'};
// final map2 = {
//   'Apple',
//   'Orange',
//   'Grape',
// };
// // Setの要素の型は推論され、型の異なる要素を追加しようとするとコンパイルエラー
// // final fruits = {'Apple', 'Orange', 'Grape'};
// // fruits.add('Cherry');
// // fruits.add(123); // エラー

// // Setの要素の型を明示する
// final fruits2 = <String>{'Apple', 'Orange', 'Grape'};

// // Map 連想配列
// final map3 = {200: 'OK', 403: 'access forbidden', 404: 'not found'};
// final map4 = {
//   200: 'OK',
//   403: 'access forbidden',
//   404: 'not found',
// };

// // ListやSetと同様にキーやバリューの型は推論され、型の異なる要素を追加しようとするとコンパイルエラーになる
// final statusCodes = {200: 'OK', 403: 'access forbidden', 404: 'not found'};

// // statusCodes[204] = 'No Content';
// // statusCodes['204'] = 'No Content';

// // Mapの要素の型を明示する
// final statusCodes2 = <int, String>{
//   200: 'OK',
//   403: 'access forbidden',
//   404: 'not found'
// };

// // SetとMapはリテラルが似ているが、以下はMapとして推論される
// final setOrMap = {};
// // setOrMap is Map; true

// // Record タプル
// // 複数の値を集約した不変の匿名型
// final record1 = (300, 'cake');

// // Recordの型注釈
// final (int, String) record2 = record1;

// // 名前付きフィールド
// // 名前を付けないフィールドを位置フィールドという
// final record3 = (price: 300, name: 'cake');
// // 型注釈では名前付きフィールドを中括弧で囲う
// final ({int price, String name}) record4 = (price: 300, name: 'cake');
// // 名前付きフィールドの記述順は等値性に影響を与えません
// final record5 = (price: 300, name: 'cake');
// final record6 = (name: 'cake', price: 300);
// // print(record5 == record6);
// final (int price, String name) record7 = (300, 'cake');
// final (int x, String y) record8 = (300, 'cake');
// // 名前付きフィールドと位置フィールドを混在させることができる
// // 型注釈では位置フィールドが常に先頭に配置される
// final record9 = (price: 300, name: 'cake', 99);
// final (int count, {String name, int price}) record10 = record9;

// final record12 = (price: 300, name: 'cake', 99);
// // record12.price;
// // record12.name;
// // record12.$1;

// // Objectクラス　すべてのクラスのスーパークラス
// // 代表的な用途は、型の異なる要素を持ったコレクションを扱う場合
// // この例では、変数listXはList<Object>型に推論される
// final listX = [0, 'abc', true];
// // dynamic型：コンパイル時に型のチェックが行われない
// final List<dynamic> listY = [0, 'abc', true];

// final List<int> intList2 = [0, 1, 2];
// final stringList2 = <String>['a', 'b', 'c'];

// // ジェネリッククラス
// class Foo<T> {
//   // フィールド '_value'の型をパラメーターで宣言
//   T _value;
//   Foo(this._value);

//   // 戻り値の型をパラメーター名Tで宣言
//   T getValue() {
//     return _value;
//   }
// }

// final intFoo = Foo(3);
// final stringFoo = Foo('hoge');

// // ジェネリック関数
// // T?はT型またはnullを表す
// T? firstOrNull<T>(List<T> list) {
//   if (list.isEmpty) {
//     return null;
//   }
//   return list[0];
// }

// final list20 = [1, 2, 3];
// final list30 = <String>[];

// // 算術演算子、比較演算子、三項演算子は他言語と同じ

// // カスケード記法
// // 同じオブジェクトに対して、繰り返し操作を行うときに便利な記述方法
// // オブジェクトのメソッドやプロパティへドット2つでアクセスすると、
// // そのオブジェクトそのものが戻り値となる
// final sb = StringBuffer()..write('Hello');
// // 上の例ではStringBufferのインスタンスを生成しwriteメソッドを呼び出している。
// // writeメソッドの戻り値はvoid型だが、カスケード記法で呼び出しているため、変数sbにはStringBufferのインスタンスが代入される

// // 以下のように同じインスタンスに繰り返しアクセスする場合に便利
// final sb2 = StringBuffer()..write('Hello')..write(', ')..write('Dart!');

// // コレクションのオペレーター
// // List, Set, Mapのリテラルでのみ利用できるオペレーター

// // Spread演算子
// final list40 = [0, 1, 2, 3];
// final list50 = [-1, ...list40];

// // 制御構文演算子
// // flagがtrueの時のみ、3を追加
// final list60 = [0, 1, 2, if (flag) 3];
// final list70 = [1, 2, 3];

// // list70の要素を2倍したものを追加
// final list80 = [1, 2, 3];
// final list90 = [0, for (var i in list80) i * 2];

// // if文は他言語と同じ

// // if-case文：パターンのマッチングと併せて変数へ分解する文法
// // Recordのフィールドがnullでないことを判定し、変数messageと変数statuscodeに分解している
// // いずれかがnullの場合にはelse節が実行される
// // final (String?, int?) response = ('OK', 200);
// // if (response case (String message, int statusCode)) {
// //   print('Response: message = $message, statusCode = $statusCode');
// // } else {
// //   print('No response received');
// // }
// // Response: message = OK, statusCode = 200

// // final (String?, int?) response = ('OK', 200);
// // if (response case (String message, int statusCode) when statusCode == 200) {
// //   // messageが非nullかつ、statusCodeが200のときのみ、メッセージを出力
// //   print('Response: message = $message, statusCode = $statusCode');
// // } else {
// //   print('No response received');
// // }

// // switch文
// // returnの他、throwも使える

// // final String color = "略";

// // switch(color) {
// //   case 'red':
// //     doSomethingRed();
// //   case 'blue':
// //     doSomethingBlue();
// //   case 'black':
// //     break;
// //   case 'green':
// //   case 'yellow':
// //     doSomethingIfGreenOrYellow();
// //   default:
// //     throw 'Unexpected color';
// // }

// // final int? statusCode = null;
// // switch (statusCode) {
// //   case (int statusCode) when 100 <= statusCode && statusCode < 200:
// //     print('information');
// //   case (int statusCode) when 200 <= statusCode && statusCode < 300:
// //     print('successful');
// //   case (int statusCode) when 300 <= statusCode && statusCode < 400:
// //     print('redirection');
// //   case (int statusCode) when 400 <= statusCode && statusCode < 500:
// //     print('server error');
// //   case (null):
// //     print('no response received');
// //   default:
// //     print('unknown status code');
// // }

// // final int? statusCode = //
// // final message = switch(color) {
// //   >= 100 && < 200 => 'information',
// //   >= 200 && < 300 => 'successful',
// //   >= 300 && < 400 => 'redirection',
// //   >= 400 && < 500 => 'client server',
// //   >= 500 && < 600 => 'server error'
// // }

// // final record100 = {'cake', 300};
// // final (name, price) = record100;

// // final { 200: successful, 404: notFound } = {
// //   200 : 'ok',
// //   404: 'Not Found',
// //   500: 'Internal Server Error'
// // };
// // print('200 -> $successful, 404 ->$notFound');

// // final record1000 = (name: 'cake', price: 300);
// // final (name:n, price:p) = record200;

// // final (String name, int price) = record300;

// // フィールド名を変数で推論させる
// // final record400 = (nbame: 'cake', price: 300);

// // Object
// // クラスのゲッタから分解宣言
// // class SomeClass {
// //   const SomeClass(this.x);
// //   final int x;
// // }

// // final someInstance = SomeClass(123);
// // final SomeClass(x: number) = someInstance;
// // print('x = $number');

// // class SomeClass {
// //   const SomeClass(this.x);
// //   final int x;
// // }

// // final someInstance = SomeClass(123);
// // final someClass(:x) = someInstance;
// // print('x = $x');

// // final variable = //
// // switch (variable) {
// //   case SomeClass():
// //     print('SomeClass');
// //   case String():
// //     print('String');
// // };

// // for-in文での分解宣言
// // final sweets = [
// //   (name: 'cake', price: 300),
// //   (name: 'dango', price: 250),
// // ];

// // for (final (:name, :price) in sweets) {
// //   print('name = $name, price = $price')
// // }

// // MapはIterableのサブクラスではないため、for-in文でループを回すことができない
// // ただし、Mapのentriesプロパティを使えば、キーとバリューのペアを変数にバインドしてループをまわうことができる
// // final map = {
// //   200: 'OK',
// //   404: 'Not Found',
// //   500: 'Internal Server Error',
// // };

// // entriesプロパティでIterable<MapEntry>を取得できる
// // for (var MapEntry(key: key, value: value) in map.entries) {
// //   print('code: $key, $value');
// // }

// // キャスト
// // キャストに失敗すると実行時エラー
// final List<Object> listObj = [0, 'one'];
// final [number as int, str as String] = listObj;

// // nullチェック
// int? code = //
// switch (code) {
//   case final i? when i >= 0:
//     doSomething();
//   default:
//     print('code is null or negative');
// }

// // nullアサーション
// // 値がnullだった場合に実行時エラーとなる。変数名の後ろに!を付与する
// int? code = //
// switch (code) {
//   case final i! when i >= 0:
//     doSomething();
//   default:
//     print('code is negative');
// };

// ワイルドカード
// final record = ('cake', 300);
// final (name, _) = record;

// final variable = //
// switch (variable) {
//   case SomeClass _:
//     print('SomeClass');
//   case String _:
//     print('String');
// }

// final record = ('cake', 300);
// final (name, _) = record;

// flutterはフレームワークが例外を補足する機構を持っているため、
// 例外がスローされてもアプリは終了しない。

// 例外
// void doSomething() {
//   throw MyException();
// }

// try {
//   doSomething();
// } catch (e) {
//   print(e);
// }

// 補足する例外の型を指定する
// try {
//   doSomething();
// } on MyException {
//   print('catch MyException');
// }

// 例外オブジェクトを受け取りたい場合はcatchキーワードを使用する。
// catchの第一引数は例外オブジェクト、第二引数はスタックトレースで、
// 第二引数は省略可能

// try {
//   doSomething();
// } catch(e, st) {
//   print('catch $e');
//   print('stackTrace $st');
// }

// スタックトレース (stack trace) とは、プログラムの実行中にエラーや例外が発生した際、そのエラーが発生した位置や、プログラムがどのような呼び出し経路をたどったかを示す情報のことです。スタックトレースは、エラーのデバッグや原因の特定に役立ちます。

// 補足する型を指定しつつ、例外オブジェクトを受け取る場合はonとcatchを併用する
// try {
//   doSomething();
// } on MyException catch(e) {
//   print('catch $e');
// }

// 例外の再スロー
// try {
//   doSomething();
// } on MyException catch(e) {
//   print('catch $e');
// }

// final variable = nonNullObject();
// assert(variable != null);
// assert(variable != null, 'variable should not be null');

// flutterではdebugビルドのときにだけassert文が処理されるので、
// その特徴を利用して、debugビルドの時だけ実行したい処理を以下のように記述することも可能
// assert(() {
//   print('debug mode');
//   return true;
// }());

// Flutterアプリはフレームワークが例外を補足する機構を持っており、
// 例外がスローされてもプログラムが終了するとは限らない。
// Flutterは2つの例外ハンドラを提供しており、
// 1つはFlutterのフレームワーク自身がトリガーするコールバックで発生した例外はFlutterError.onErrorにルーティングされる

// void main() {
//   FlutterError.onError = (details) {

//   };
// }

// もう一つはFlutter内で発生した例外(ボタンのタップイベントハンドラなど)はPlatformDispatcherでハンドリングする
// void main() {
//   PlatformDispatcher.instance.onError = (error, stack) {
//     print(error);
//     return true;
//   };
//   runApp(const MyApp());
// }

// ドキュメントコメントもサポートしている
///または/**で開始するコメントはドキュメントコメントとして扱われる
///を採用することが推奨されている
///クラスや関数、引数名などを[]で囲うとその定義へジャンプできるようになる

///
/// 引数の値を倍にして返す
/// この関数は、引数の値を2倍にして返す関数です
/// 引数を半分にする仮数を返す関数として[half]関数があります
// int doubleValue(int value) {
//   return value * 2;
// }

/**
 * 引数の値を半分にして返す
 * 
 * この関数は、引数の値を半分にして返す関数です。
 * 引数を2倍にする関数として[doubleValue]関数があります
 */

// double half(double value) {
//   return value * 2;
// }

// null安全
// Dartではデフォルトが非null許容型
// 変数をnull許容型で宣言する時は型注釈の末尾に?を付与する
// null許容型の変数は初期値を省略するとnullで初期化される
// int? num;

// int nonnullNumber;
// nonnullNumber = null;

// int? nullableNumber;
// nullableNumber = null;

// null認識演算子
// String? str;
// print(str?.length);

// nullアサーション許容型
// 変数の最後に!を付与することで、非null許容型にキャストできる
// ただし、変数がnullの場合は実行時エラーとなる
// String? str = '';

// タイププロモーション
// if文などでnullチェックを行い、変数が必ずnullでないことが明らかな場合は自動的に非null許容型として扱うことができる
// String? str;
// if(str == null) {
//   return;
// }

// そのほかの便利なnull関連演算子
// String? str1 = 'some string';
// String? str2 = null;
// print(str2 ?? 'null');

// ??=オペレーターは変数がnullの場合にだけ代入が実行される
// String? str3 = 'some string';
// String? str4 = null;

// str1 ??= 'new string';
// str2 ??= 'new string';

// Dartでは1つのDartファイルをライブラリと呼ぶ
// 外部の名前空間にアクセスするにはimport命令を使用する
// デフォルトがpublicで、_で始めるとprivateとして扱う
// import 'dart:math';
// import 'package:path/to/file.dart';

// 省略可能引数
// void makeColor(int red, int green, int blue, [int? alpha]) {

// }

// // 名前付き引数
// void makeColor2({int? red, int? green}) {}
// void makeColor3({{required int red}}){}

// アロー演算子
// int doubleValue(int x) => x * 2;

// 関数を変数fに代入
// int doubleValue(int x) {
//   return x * 2;
// }

// final int Function(int) f = doubleValue;
// final result = f(8);

// 関数オブジェクトの型
// 戻り値の型 Function(引数リストの型)

// 匿名関数
// final int Function(int) f = (x) {
//   return x * 2;
// };

// Dartの匿名関数はクロージャの性質を持つ
// 以下の関数はmultiple関数で、引数をキャプチャしたクロージャを生成する
// Function multiple(int i) {
//   return (x) => x * i;
// }

// final f1 = multiple(3);
// final f2 = multiple(7);

// Dartのすべてのオブジェクトはクラスのインスタンスであり、
// null以外のすべてのクラスはObjectクラスのサブクラス
// コンストラクタの引数
// class Point {
//   Point(int xPosition, int yPosition) : x = xPosition, yPosition;

//   int x;
//   int y;
// }

// class Point {
//   Point(this.x, this.y);

//   int x;
//   int y;
// }

// コンストラクタに本体を持たせることも可能ですが、
// 本体が実行される前に非null許容型のクラス変数は初期化済みである必要があります。
// 下記のPointクラスではコンパイルエラーになります。
// class Point {
//   Point(int xPosition, int yPosition) {
//     x = xPosition;
//     y = yPosition;
//   }

//   int x;
//   int y;
// }

// 初期化リストでパラメーターのアサーションを記述することができる
// class Point {
//   Point(this.x, this.y) : assert(x >= 0), assert(y >= 0);
//   final int x;
//   final int y;
// }

// // ゲッタとセッタ
// class User {
//   User(this.id, this._password);

//   final int id;
//   String _password;

//   String get password => '******';

//   set password(String newPassword) {
//     _password = hash(newPassword);
//   }
// }

// constantコンストラクタ
// // クラスインスタンスをコンパイル時定数として扱うためにはconstantコンストラクタが必要です。コンストラクタにconstキーワードを付与します。インスタンス変数はすべて再代入不可なfinalである必要があります。
// class Point {
//   const Point(this.x, this.y);

//   final int x;
//   final int y;
// }

// const point = Point(1, 2);

// constantコンストラクタは常にコンパイル時定数を生成するとは限りません。
// constantコンストラクタの前にconstキーワードを付与する、
// またはconst変数に代入した場合に、常に同じインスタンスが使われます。
// 無駄なインスタンス生成を避けることができるため、Flutterのパフォーマンス向上に役立ちます。
// class Point {
//   const Point(this.x, this.y);

//   finai int x;
//   final int y;
// }
// final point1 = const Point(1, 2);
// const point2 = Point(1, 2);
// final point3 = Point(1, 2);

// 名前付きコンストラクタ
// class Point {
//   const Point(this.x, this.y);
//   const Point.zero() : x = 0, y = 0;
//   final int x;
//   final int y;
// }
// また、コンストラクタから自クラスの別のコンストラクタを呼び出すことも可能
// class Point {
//   const Point(this.x, this.y);
//   const Point.zero() : this(0, 0);
//   final int x;
//   final int y;
// }

// factoryコンストラクタ
// class UserData {
//   static final Map<int, UserData> _cache = {};

//   factory UserData.fromCache(int userId) {
//     final cache = _cache[userId];
//     if (cache != null) {
//       return cache;
//     }

//   // キャッシュがなかったので新しいインスタンスを生成して返す
//   final newInstance = UserData();
//   _cache[userId] = newInstance;
//   return newInstance;
//   }
// }

// 継承
// class Animal {
//   String greet() => 'hello';
// }

// class Dog extends Animal {
//   String sayHello() => super.greet();
// }

// スーパークラスのメソッドをオーバーライドする際は、
// @overrideアノテーションを付与することが推奨されている

// class Animal {
//   String greet() => 'hello';
// }

// class Dog extends Animal {
//   @override
//   String greet() => 'borrow';
// }

// メソッドのオーバーライドにはいくつかの条件があります
// ・戻り値の型がスーパークラスのメソッドの戻り値の型と同じ、またはそのサブタイプである
// ・引数の型がスーパークラスのメソッドの引数の型と同じ、またはそのスーパークラスである
// ・位置パラメーターの数が同じである
// ・ジェネリックメソッドを非ジェネリックメソッドでオーバーライドできない、また非ジェネリックメソッドをジェネリックメソッドでオーバーライドできない

// また、戻り値の型が非null許容型のメソッドを非null許容型のメソッドでオーバーライドすることもできる
// class Animal {
//   String? greet() => null;
// }

// class Dog extends Animal {
//   @override
//   String greet() => 'borrow';
// }

// スーパークラスのコンストラクタ
// class Animal {
//   Animal(this.name);
//   final String name;
// }

// class Dog extends Animal {
//   Dog(String name): super(name);
// }

// class Animal {
//   Animal(this.name);
//   final String name;
// }

// class Dog extends Animal {
//   Dog(super.name);
// }

// 暗黙のインターフェース
// Dartではすべてのクラスは暗黙的にインターフェースが定義されている
// そのクラスのすべての関数とインスタンスメンバを持ったインターフェース
// implementsキーワードに続けてインターフェースとして実装する型名を記述します。
// class Animal {
//   String greet() => 'hello';
// }

// class Dog implements Animal {
//   @override
//   String greet() => 'borrow';
// }

// すべてのインスタンスメンバ、メソッドをオーバーライドしなければならない点が、extendsキーワードで継承する時の違い

// extension <拡張名> on <拡張対象の型> {}
// extension SwapList<T> on List<T> {
//   void swap(int index1, int index2) {
//     final tmp = this[index1];
//     this[index1] = this[index2];
//     this[index2] = tmp;
//   }
// }

// final list = [1, 2, 3];
// list.swap(0, 2);

// extension SwapList<T> on List<T> {
//   static bool noNeedToSwap(List<T> list) {
//     return list.isEmpty;
//   }

//   void swap(int index1, int index2) {
//     if (noNeedToSwap(this)) {
//       return;
//     }

//     final tmp = this[index1];
//     this[index1] = this[index2];
//     this[index2] = tmp;
//   }
// }

// Dartは多重継承を許可していませんが、それに似た言語使用としてmixin(ミックスイン)があります。withキーワードに続けてミックスイン名を記述します。
// mixin Horse {
//   void run() {
//     print('run');
//   }
// }

// mixin Bird {
//   void fly() {
//     print('fly');
//   }
// }

// class Pegasus with Bird, Horse {

// }

// final pegasus = Pegasus();
// pegasus.run();
// pegasus.fly();

// クラスとの違いは、
// ・インスタンス化できないこと
// ・extendsキーワードを使って他のクラスから継承できないこと
// ・コンストラクタを宣言できないこと

// onキーワードでミックスインを宣言する際に使用するクラスを制限する
// class Animal {
//   String greet() => 'hello';
// }

// onキーワードで使用可能なクラスをAnimalに制限
// mixin Horse on Animal {
//   void run() {
//     greet();
//     print('run');
//   }
// }

// mixin Bird on Animal {
//   void fly() {
//     greet();
//     print('fly');
//   }
// }

// class Pegasus extends Animal with Bird, Horse {

// }

// 列挙型
// enum Shape {
//   circle, triangle, square
// }

// フィールドやメソッド、constantコンストラクタを持った高機能なEnumも宣言できる。通常のクラスに似た構文ですが、いくつかの条件がある

// 1つ以上のインスタンス全てが冒頭で宣言されていなくてはならない
// インスタンス変数はfinalでなければならない
// コンストラクタをはconstantコンストラクタまたはfactoryコンストラクタが宣言可能
// 他のクラスを宣言することはできない
// index, hashCode, ==演算子をオーバーライドすることはできない
// valuesという名前のメンバを宣言することができない

// フィールドやfactoryコンストラクタを持ったEnum
// enum Shape {
//   circle(corner: 0),
//   triangle(corner: 3),
//   square(corner: 4);

//   final int corner;

//   const Shape({
//     required this.corner,
//   })

//   factory Shape.ellipse() {
//     return circle;
//   }
// }

// final ellipse = Shape.ellipse();
// final myShape = Shape.circle;
// assert(myShape == Shape.circle);

// 各列挙子には宣言された順にindexが振られ、ゲッタから取得できる。
// また、列挙子の名前をString型で取得できるnameプロパティも生成される。
// final myShape = Shape.index;
// print(myShape.index);
// print(myShape.name);
// Shape.values.forEach((shape) {
//   print(shape.name);
// });

// クラス修飾子
// ・タイプ1
// インスタンス化、extendsキーワードによる継承、implementsキーワードによる実装、これらに制限を与える
// ・タイプ2
// タイプ1以外の効果を持つ修飾子(タイプ1の効果を併せ持つ場合もある)

// インスタンス化：X
// extendsキーワードによる継承：〇
// implementsキーワードによる実装：〇
// abstract class Animal {
//   String greet();
// }

// class Dog extends Animal {
//   @override
//   String greet() => 'borrow';
// }

// インスタンス化：〇
// extendsキーワードによる継承：〇
// implementsキーワードによる実装：X
// base class Animal {
//   String greet() {
//     return 'Hello';
//   }
// }

// base class Dog extends Animal {

// }

// final Animal = Animal();
// final dog = Dog();

// implementsキーワードを使ったクラスの実装が自身のライブラリ内に限定されるため、プライベートメソッドも含めて実装を強制することになります。
// base修飾子を使う目的はプライベートメソッドまで含めて全体の整合性を保つことにあります。そのため、base修飾子を使って宣言されたクラスはライブラリ外でもbase修飾子か、同じように実装を制限するクラス修飾子を付与しなければならない
// base class Animal {
//   void _sleep() {
//     print('sleep');
//   }

//   String greet() {
//     return 'hello';
//   }
// }

// base class Cat implements Animal {
//   @override
//   void _sleep() {

//   }

//   @override
//   String greet() {
//     return 'bowwow';
//   }
// }

// インスタンス化：〇
// extendsキーワードによる継承：X
// implementsキーワードによる実装：〇
// interface class Animal {
//   String greet() {
//     return 'hello';
//   }
// }

// class Cat implements Animal {
//   @override
//   String greet() => 'new';
// }

// final animal = Animal();
// final dog = Dog();

// インスタンス化：〇
// extendsキーワードによる継承：X
// implementsキーワードによる実装：X
// final class Animal {
//   String greet() {
//     return 'hello';
//   }
// }

// final animal = Animal();

// mixin
// mixin修飾子を使って宣言されたクラスはミックスインのように扱うことが可能でありながら、クラスなのでインスタンス化することができる。ただし、ミックスインと同様にextendsは使えずコンストラクタも宣言できません
// mixin class Horse {

// }

// mixin Bird {}

// class Pegasus with Bird, Horse {}

// final horse = Horse();

// seald修飾子を使うとサブタイプをEnumのように扱うことができます。
// seald修飾子を使って宣言されたクラスは、自身が宣言されたライブラリ以外ではすべてのサブタイプ化を禁止します。
// この点はfinalと共通していますが、さらにクラス自身が暗黙的にabstractクラスとして扱われます。

// seald class Shape {
//   abstract int corner;
// }

// class Rectangle extends Shape {
//   @override
//   int corner = 4;
// }

// class Triangle extends Shape {
//   @override
//   int corner = 3;
// }

// class Circle extends Shape {
//   @override
//   int corner = 0;
// }

// switch文ですべてのサブタイプが網羅されていなければ、
// コンパイラが警告を出します。

// final Shape shape = getShape();

// switch (shape) {
//   case Rectangle():
//     print('Rectangle');
//   case Triangle():
//     print('Triangle');
//   case Circle():
//     print('Circle');
// }

// Dartには非同期処理の結果を取り扱うFuture型があります。
// import 'dart:io';

// void main() {
//   Future<String> content = File('file.txt').readAsString();
//   content.then((content) {
//     print(content);
//   });
// }

// readAsStringメソッドは非同期にファイルの内容を読み取り、文字列として返します。戻り値の型はFuture<String>型です。Futureのthenメソッドには処理が完了したときに呼び出されるコールバックを渡します。
// Futureクラスはasync、awaitキーワードと組み合わせることで、同期的なコードのように記述できる
// import 'dart:io';

// Future<void> main() async {
//   String content = await File('file.txt').readAsString();
//   print(content);
// }

// readAsStringメソッドの呼び出しにawaitキーワードを付与しました。これにより、readAsStringが終了するまで待機します。また、戻り値のFuture<String>型をString型に自動的に変換します。コールバックのネストが減り、コードが簡潔になります。
// 重要なポイントとしてawaitキーワードはasyncキーワードを付与したメソッド内でしか使えません。また、asyncキーワードを付与したメソッドの戻り値は暗黙的にFutureクラスでラップされます。main()の本体にasyncキーワードを付与し、戻り値はFuture<void>に変更しています。

// エラーハンドリング
// Future<String> fetchUserName() {
//   var str = Future.delayed(
//     const Duration(seconds: 1),
//     () => throw 'User not found.'
//   );
//   return str;
// }

// fetchUserName().then((name) {
//   print('User name is $name');
// }).catchError((e) {
//   print(e);
// });

// async-awaitで実行した非同期処理はtry-catch構文で例外を補足する
// Future<String> fetchUserName() {
//   var str = Future.delayed(
//     const Duration(seconds: 1),
//     () => throw 'User not found'
//   );
//   return str;
// }

// try {
//   final name = await fetchUserName();
//   print('User name = $name');
// } catch (e) {
//   print(e);
// }

// 例外発生時に返す代替の値がある場合はthenメソッドの引数onErrorで処理する方法があります
// Future<String> fetchUserName() {
//   var str = Future.delayed(
//     const Duration(seconds: 1),
//     () => throw 'User not found.'
//   );
//   return str;
// }

// final result = await fetchUserName().then((name) {
//   return 'User name is $name';
// },
// onError: (e, st) {
//   return 'Unknown user';
// },
// );

// Stream型　非同期に連続した値を扱う
// import 'dart:io';

// void main() {
//   final file = File('file.txt');
//   final Stream<List<int>> stream = file.openRead();
//   stream.listen((data) {
//     print('data: ${data.length} bytes');
//   });
// }

// Streamはlistenメソッドで購読し、データが通知された時に呼び出されるコールバックを登録する
// Futureクラスと同様にasyncとawait forキーワードと組み合わせることで、同期的なコードのように記述できる

// import 'dart:io';

// Future<void> main() async {
//   final file = File('file.txt');
//   final Stream<List<int>> stream = file.openRead();
//   await for (final data in stream) {
//     print('data: ${data.length} bytes');
//   };
// }

// Streamの購読をキャンセル、一時停止する
// listenメソッドの戻り値はStreamSubscription型です。cancelメソッドで購読をキャンセルできます

// import 'dart:io';

// void main() async {
//   final file = File('file.txt');
//   final subscription = file.openRead().listen((data) {
//     print('data: ${data.length} bytes');
//   });

//   await Future.delayed(const Duration(seconds: 1));
//   subscription.pause(); // 購読を一時停止
//   await Future.delayed(const Duration(seconds: 4));
//   subscription.resume(); // 購読を再開
// }

// Stream型を生成する関数
// Stream型を返す関数を実装するにはasyncキーワードを使います。関数が呼び出されるとStreamが生成され、Streamが購読されると関数の本体が実行されます
// import 'dart:io';

// Stream<String> languages() async* {
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Dart';
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Kotlin';
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Swift';
//   await Future.delayed(const Duration(seconds: 1));
//   yield* Stream.fromIterable(['Javascript', 'C++', 'Go']);
// }

// String型のStreamを生成する関数の例です。yieldに続いてStringを記述すると、その値が戻り値のStreamに通知されます。yield*に続いてStreamを記述すると、そのStreamの値が戻り値のStreamに通知されます。購読がキャンセルされた際は、次のyield文が実行されると関数の実行が中断されます。

// Streramの終わり
// Streamの終了時に処理を実行するにはlitenメソッドのonDoneにコールバックを渡します。
// Stream<String> languages() async* {
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Dart';
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Kotlin';
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Swift';
//   await Future.delayed(const Duration(seconds: 1));
//   yield* Stream.fromIterable(['Javascript', 'C++', 'Go']);
// }

// void main() async {
//   languages().listen((language) {
//     print(language);
//   }, onDone: () {
//     print('Done');
//   });
// }

// Future<void> main() async {
//   await for (final language in languages()) {
//     print(language);
//   }
//   print('Done');
// }

// Streamは購読をキャンセルしない限り終了しない特性を持ったものもあり得ます。たとえば、Stream.periodicコンストラクタから得られるStreamは一定の間隔で繰り返し値を通知するStreamを生成します。このような終了しないStreamでasync - await forを用いると以降の処理が実行されないので注意が必要です。
// Future<void> main() async {
//   await for (final count in Stream<int>.periodic(const Duration(seconds: 1), (i) => {
//     print(count);
//   }
//   print('Done');
//   ))
// }

// エラーハンドリング
// Streamの例外を処理するにはlistenメソッドのonErrorにコールバックを渡します
// Stream<String> languages() async* {
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Dart';
//   await Future.delayed(const Duration(seconds: 1));
//   throw Exception('Some eroor');
// }

// void main() {
//   languages().listen((language) {
//     print(language);
//   }, onError: (e) {
//     print(e);
//   });
// }

// Stream<String> languages() async* {
//   await Future.delayed(const Duration(seconds: 1));
//   yield 'Dart';
//   await Future.delayed(const Duration(seconds: 1));
//   throw Exception('Some Error');
// }

// Future<void> main() async {
//   try {
//     await for (final language in languages()) {
//       print(language);
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// async*関数よりも簡単にStreamを生成する方法としてStreamControllerクラスがあります

// import 'dart:async';

// class Counter {
//   int _count = 0;
//   StreamController<int> _controller = StreamController<int>();

//   Stream<int> get stream => _controller.stream;

//   void increment() {
//     _count++;
//     _controller.add(_count);
//   }
// }

// Future<void> main() async {
//   final counter = Counter();
//   counter.increment();
//   counter.increment();

//   counter.stream.listen((i) {
//     print('count: $i');
//   });

//   counter.increment();
// }

// Counterクラスは内部にStreamControllerを持ち、incrementメソッドが呼び出されるとStreamControllerに値を送信します。StreamControllerへの値の送信はaddメソッドで行います。async*関数では関数内でyieldを使ってイベントを送信しましたが、StreamControllerでは外部からイベントを送信できるため、より柔軟にStreamを扱うことができます。
// このほか、例外を送信するaddErrorメソッドや、購読されているかどうかを判定するhasListernerプロパティなどがあります。
// async*は購読されるまで関数の本体が実行されません。しかし、StreamControllerは購読されていなくてもaddメソッドで値を送信することができ、その値はバッファリングされ購読されたとき一斉に通知されます。
// 購読の一時停止も同様にバッファリングされます。
// そのため、用途によりメモリを消費する可能性があるので注意が必要です。

// ブロードキャスト
// 1つのStremに対して複数回購読すると例外が発生します。複数の購読者へイベントを通知するには、asBroadcastStremメソッドを使います。

// import 'dart:async';

// Stream<String> languages() async* {
//   await Future.delayed(const Duration(milliseconds: 500));
//   yield 'Dart';
//   await Future.delayed(const Duration(milliseconds: 500));
//   yield 'Kotlin';
//   await Future.delayed(const Duration(microseconds: 500));
//   yield* Stream.fromIterable(['JavaScript', 'C++', 'Go']);
// }

// Future<void> main() async {
//   final broadcastStream = languages().asBroadcastStream();
//   await Future.delayed(const Duration(milliseconds: 1000));

//   broadcastStream.listen((i) {
//     print('listener 1:  $i');
//   });

//   await Future.delayed(const Duration(milliseconds: 1100));

//   broadcastStream.listen((i) {
//     print('listerner 2: $i');
//   });
// }

// Streamを変更する
// ・Streamの値を変換するmap
// ・Streamの値をフィルタするwhere
// ・Streamの値の最大値を制限するtake
// import 'dart:io';

// Stream<int> numberStream() {
//   return Stream.fromIterable(List.generate(10, (index) => index));

//   void main() {
//     numberStream().where((num) => num % 2 == 0)
//     .map((num) => num * 2)
//     .take(3)
//     .listen((num) {
//       print(num);
//     });
//   }
// }

// Zone - 非同期処理のコンテキスト管理
// DartにはZoneという非同期処理のコンテキストを管理する仕組みがあります。
// その機能の1つに非同期処理で補足されなかった例外のハンドリングがあります。
// import 'dart:async';

// Future<String> fetchUserName() {
//   var str = Future.delayed(const Duration(seconds: 1), () => throw 'User not found.');
//   return str;
// }

// void main() {
//   fetchUserName().then((data) {
//     print(data);
//   });
// }

// Futureへ例外発生時のコールバックを登録していません。
// 実行するとプログラムが強制終了します。
// 続いて、Zoneを使って例外をハンドリングする例です。
// import 'dart:async';

// Future<String> fetchUserName() {
//   var str = Future.delayed(const Duration(seconds: 1), () => throw 'User not found.');
//   return str;
// }

// void main() {
//   runZonedGuarded(() {
//     fetchUserName().then((data) {
//       print(data);
//     });
//   }, (error, stackTrace) {
//     print('Caught: $error');
//   });
// }

// アイソレート
// スレッドやプロセスのような仕組み
// ・専用のヒープメモリを持つ
// ・専用の単一スレッドを持ち、イベントループを実行する
// ・アイソレート間でメモリの共有はできない
