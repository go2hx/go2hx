package stdgo._internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
final n : stdgo.GoUInt64 = (10000i64 : stdgo.GoUInt64);
var _testString : stdgo.GoString = ("" : stdgo.GoString);
var _testBytes : stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
var _bmbuf : stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
final _space : stdgo.GoString = ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString);
var _readBytesTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(7, 7, ...[({ _buffer : stdgo.Go.str()?.__copy__(), _delim : (0 : stdgo.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _err : stdgo._internal.io.Io.eof } : T__struct_0), ({ _buffer : stdgo.Go.str("a", 0)?.__copy__(), _delim : (0 : stdgo.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str("a", 0)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : ("abbbaaaba" : stdgo.GoString), _delim : (98 : stdgo.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("ab" : stdgo.GoString), ("b" : stdgo.GoString), ("b" : stdgo.GoString), ("aaab" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : stdgo.Go.str("hello", 1, "world")?.__copy__(), _delim : (1 : stdgo.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str("hello", 1)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : ("foo\nbar" : stdgo.GoString), _delim : (0 : stdgo.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo\nbar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _err : stdgo._internal.io.Io.eof } : T__struct_0), ({ _buffer : ("alpha\nbeta\ngamma\n" : stdgo.GoString), _delim : (10 : stdgo.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("alpha\n" : stdgo.GoString), ("beta\n" : stdgo.GoString), ("gamma\n" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : ("alpha\nbeta\ngamma" : stdgo.GoString), _delim : (10 : stdgo.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("alpha\n" : stdgo.GoString), ("beta\n" : stdgo.GoString), ("gamma" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _err : stdgo._internal.io.Io.eof } : T__struct_0)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _buffer : ("" : stdgo.GoString), _delim : (0 : stdgo.GoUInt8), _expected : (null : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _abcd : stdgo.GoString = ("abcd" : stdgo.GoString);
var _faces : stdgo.GoString = ("☺☻☹" : stdgo.GoString);
var _commas : stdgo.GoString = ("1,2,3,4" : stdgo.GoString);
var _dots : stdgo.GoString = ("1....2....3....4" : stdgo.GoString);
var _indexTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>(55, 55, ...[
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fo" : stdgo.GoString), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("baz" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("foo" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("f" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("foo" : stdgo.GoString), (4 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("barfoobarfoo" : stdgo.GoString), ("foo" : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("o" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : stdgo.GoString), ("A" : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("x" : stdgo.GoString), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("x" : stdgo.GoString), ("x" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("b" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("c" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("x" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("barfoobarfooyyyzzzyyyzzzyyyzzzyyyxxxzzzyyy" : stdgo.GoString), ("x" : stdgo.GoString), (33 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofooofoboo" : stdgo.GoString), ("oo" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("ob" : stdgo.GoString), (11 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("boo" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("oboo" : stdgo.GoString), (11 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoooboo" : stdgo.GoString), ("fooo" : stdgo.GoString), (8 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("foboo" : stdgo.GoString), (10 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("fofob" : stdgo.GoString), (8 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffof" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffof" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofo" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofo" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoo" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoo" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoob" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoob" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofooba" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofooba" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobar" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobar" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarf" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarf" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfo" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfo" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfoo" : stdgo.GoString), (13 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfoo" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("ofoffofoobarfoo" : stdgo.GoString), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("ofoffofoobarfoo" : stdgo.GoString), (11 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("fofoffofoobarfoo" : stdgo.GoString), (11 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("fofoffofoobarfoo" : stdgo.GoString), (10 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foobars" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foofyfoobarfoobar" : stdgo.GoString), ("y" : stdgo.GoString), (4 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("oooooooooooooooooooooo" : stdgo.GoString), ("r" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("oxoxoxoxoxoxoxoxoxoxoxoy" : stdgo.GoString), ("oy" : stdgo.GoString), (22 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("oxoxoxoxoxoxoxoxoxoxoxox" : stdgo.GoString), ("oy" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("000000000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString), ("0000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString), (5 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest)].concat([for (i in 55 ... (55 > 55 ? 55 : 55 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.BinOpTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>);
var _lastIndexTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>(13, 13, ...[
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("fo" : stdgo.GoString), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("foo" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("f" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("f" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("foo" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("barfoobarfoo" : stdgo.GoString), ("foo" : stdgo.GoString), (9 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (3 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("o" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : stdgo.GoString), ("A" : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : stdgo.GoString), ("a" : stdgo.GoString), (6 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.BinOpTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>);
var _indexAnyTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>(17, 17, ...[
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(128)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("aaa" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("xcz" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("ab☺c" : stdgo.GoString), ("x☺yz" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("cx" : stdgo.GoString), (("a☺b☻" : stdgo.GoString).length)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("uvw☻xyz" : stdgo.GoString), (("a☺b" : stdgo.GoString).length)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("aRegExp*" : stdgo.GoString), (".(|)*+?^$[]" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(((_dots + _dots?.__copy__() : stdgo.GoString) + _dots?.__copy__() : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("012abcba210" : stdgo.GoString), stdgo.Go.str(255, "b")?.__copy__(), (4 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str("012", 128, "bcb", 128, "210")?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (3 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("0123456πabc" : stdgo.GoString), stdgo.Go.str(207, "b", 128)?.__copy__(), (10 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.BinOpTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>);
var _lastIndexAnyTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>(17, 17, ...[
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(128)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("aaa" : stdgo.GoString), ("a" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("ab" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("ab☺c" : stdgo.GoString), ("x☺yz" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("cx" : stdgo.GoString), (("a☺b☻" : stdgo.GoString).length)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("uvw☻xyz" : stdgo.GoString), (("a☺b" : stdgo.GoString).length)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a.RegExp*" : stdgo.GoString), (".(|)*+?^$[]" : stdgo.GoString), (8 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(((_dots + _dots?.__copy__() : stdgo.GoString) + _dots?.__copy__() : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("012abcba210" : stdgo.GoString), stdgo.Go.str(255, "b")?.__copy__(), (6 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str("012", 128, "bcb", 128, "210")?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (7 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest),
(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("0123456πabc" : stdgo.GoString), stdgo.Go.str(207, "b", 128)?.__copy__(), (10 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.BinOpTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>);
var _indexSizes : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (32 : stdgo.GoInt), (4096 : stdgo.GoInt), (4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
var _isRaceBuilder : Bool = stdgo._internal.strings.Strings.hasSuffix(stdgo._internal.internal.testenv.Testenv.builder()?.__copy__(), ("-race" : stdgo.GoString));
var _splittests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.SplitTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.SplitTest>(18, 18, ...[
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("bcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), ("bcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), ("z" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_commas?.__copy__(), ("," : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_dots?.__copy__(), ("..." : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), (".2" : stdgo.GoString), (".3" : stdgo.GoString), (".4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_faces?.__copy__(), ("☹" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("☺☻" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_faces?.__copy__(), ("~" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_faces?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("1 2 3 4" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3 4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("1 2" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("23" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (17 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("bT" : stdgo.GoString), ("T" : stdgo.GoString), (536870911 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("b" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(stdgo.Go.str(255, "-", 255)?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str(255)?.__copy__(), ("-" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(stdgo.Go.str(255, "-", 255)?.__copy__(), ("-" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str(255)?.__copy__(), stdgo.Go.str(255)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.SplitTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.SplitTest>);
var _splitaftertests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.SplitTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.SplitTest>(13, 13, ...[
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("bcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), ("z" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_commas?.__copy__(), ("," : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1," : stdgo.GoString), ("2," : stdgo.GoString), ("3," : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_dots?.__copy__(), ("..." : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1..." : stdgo.GoString), (".2..." : stdgo.GoString), (".3..." : stdgo.GoString), (".4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_faces?.__copy__(), ("☹" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("☺☻☹" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_faces?.__copy__(), ("~" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_faces?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("1 2 3 4" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1 " : stdgo.GoString), ("2 " : stdgo.GoString), ("3 4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("1 2 3" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1 " : stdgo.GoString), ("2 " : stdgo.GoString), ("3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("1 2" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1 " : stdgo.GoString), ("2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("23" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest),
(new stdgo._internal.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (17 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.SplitTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.SplitTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.SplitTest>);
var _fieldstests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.FieldsTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.FieldsTest>(11, 11, ...[
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest((" " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest((" \t " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("  abc  " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("1 2 3 4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("1  2  3  4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("1\t\t2\t\t3\t4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("1\u20002\u20013\u20024" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("\u2000\u2001\u2002" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("\n™\t™\n" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("™" : stdgo.GoString), ("™" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest),
(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(_faces?.__copy__(), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_faces?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.FieldsTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.FieldsTest>);
var _upperTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest>(9, 9, ...[(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str()?.__copy__(), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("ONLYUPPER" : stdgo.GoString), (("ONLYUPPER" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("abc" : stdgo.GoString), (("ABC" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("AbC123" : stdgo.GoString), (("ABC123" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("azAZ09_" : stdgo.GoString), (("AZAZ09_" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString), (("LONGSTRINGWITHMIXOFSMALLANDCAPS" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("longɐstringɐwithɐnonasciiⱯchars" : stdgo.GoString), (("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("ɐɐɐɐɐ" : stdgo.GoString), (("ⱯⱯⱯⱯⱯ" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("a\u0080\u{0010ffff}" : stdgo.GoString), (("A\u0080\u{0010ffff}" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.StringTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest>);
var _lowerTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest>(8, 8, ...[(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str()?.__copy__(), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("abc" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("AbC123" : stdgo.GoString), (("abc123" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("azAZ09_" : stdgo.GoString), (("azaz09_" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString), (("longstringwithmixofsmallandcaps" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString), (("longɐstringɐwithɐnonasciiɐchars" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("ⱭⱭⱭⱭⱭ" : stdgo.GoString), (("ɑɑɑɑɑ" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest), (new stdgo._internal.bytes_test.Bytes_test.StringTest(("A\u0080\u{0010ffff}" : stdgo.GoString), (("a\u0080\u{0010ffff}" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.StringTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest>);
var _trimSpaceTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest>(20, 20, ...[
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(("  a" : stdgo.GoString), (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(("b  " : stdgo.GoString), (("b" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(("abc" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest((" " : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(("\u3000 " : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest((" \u3000" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest((" \t\r\n \t\t\r\r\n\n " : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest((" \t\r\n x\t\t\r\r\n\n " : stdgo.GoString), (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : stdgo.GoString), (("x\t\t\r\r\ny" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(("1 \t\r\n2" : stdgo.GoString), (("1 \t\r\n2" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str(" x", 128)?.__copy__(), (stdgo.Go.str("x", 128) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str(" x", 192)?.__copy__(), (stdgo.Go.str("x", 192) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), (stdgo.Go.str("x ", 192, 192) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192)?.__copy__(), (stdgo.Go.str("x ", 192) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192, " ")?.__copy__(), (stdgo.Go.str("x ", 192) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), (stdgo.Go.str("x ", 192, 192) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ☺", 192, 192, " ")?.__copy__(), (stdgo.Go.str("x ☺", 192, 192) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest),
(new stdgo._internal.bytes_test.Bytes_test.StringTest(("x ☺ " : stdgo.GoString), (("x ☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.StringTest)].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.StringTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.StringTest>);
var _toValidUTF8Tests : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(14, 14, ...[
({ _in : stdgo.Go.str()?.__copy__(), _repl : ("�" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_3),
({ _in : ("abc" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : T__struct_3),
({ _in : ("\ufddd" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("\ufddd" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a", 255, "b")?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("a�b" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a", 255, "b�")?.__copy__(), _repl : ("X" : stdgo.GoString), _out : ("aXb�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : stdgo.Go.str()?.__copy__(), _out : ("a☺b☺c☺" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : ("日本語" : stdgo.GoString), _out : ("a☺日本語b☺日本語c☺日本語" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(192, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(224, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(237, 160, 128)?.__copy__(), _repl : ("abc" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(237, 191, 191)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(240, 128, 128, 175)?.__copy__(), _repl : ("☺" : stdgo.GoString), _out : ("☺" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(248, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(252, 128, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _repl : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
var _longString : stdgo.GoString = ((("a" : stdgo.GoString) + ((new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString);
var repeatTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.RepeatTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.RepeatTest>(9, 9, ...[(new stdgo._internal.bytes_test.Bytes_test.RepeatTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest(("-" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest(("-" : stdgo.GoString), ("-" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest(("-" : stdgo.GoString), ("----------" : stdgo.GoString), (10 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest(("abc " : stdgo.GoString), ("abc abc abc " : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest((((0 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoString), ((new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (65536 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest), (new stdgo._internal.bytes_test.Bytes_test.RepeatTest(_longString?.__copy__(), (_longString + _longString?.__copy__() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.RepeatTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.RepeatTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.RepeatTest>);
var runesTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.RunesTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.RunesTest>(7, 7, ...[(new stdgo._internal.bytes_test.Bytes_test.RunesTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), false) : stdgo._internal.bytes_test.Bytes_test.RunesTest), (new stdgo._internal.bytes_test.Bytes_test.RunesTest((" " : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(32 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), false) : stdgo._internal.bytes_test.Bytes_test.RunesTest), (new stdgo._internal.bytes_test.Bytes_test.RunesTest(("ABC" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(65 : stdgo.GoInt32), (66 : stdgo.GoInt32), (67 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), false) : stdgo._internal.bytes_test.Bytes_test.RunesTest), (new stdgo._internal.bytes_test.Bytes_test.RunesTest(("abc" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(97 : stdgo.GoInt32), (98 : stdgo.GoInt32), (99 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), false) : stdgo._internal.bytes_test.Bytes_test.RunesTest), (new stdgo._internal.bytes_test.Bytes_test.RunesTest(("日本語" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(26085 : stdgo.GoInt32), (26412 : stdgo.GoInt32), (35486 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), false) : stdgo._internal.bytes_test.Bytes_test.RunesTest), (new stdgo._internal.bytes_test.Bytes_test.RunesTest(stdgo.Go.str("ab", 128, "c")?.__copy__(), (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(97 : stdgo.GoInt32), (98 : stdgo.GoInt32), (65533 : stdgo.GoInt32), (99 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), true) : stdgo._internal.bytes_test.Bytes_test.RunesTest), (new stdgo._internal.bytes_test.Bytes_test.RunesTest(stdgo.Go.str("ab", 192, "c")?.__copy__(), (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(97 : stdgo.GoInt32), (98 : stdgo.GoInt32), (65533 : stdgo.GoInt32), (99 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), true) : stdgo._internal.bytes_test.Bytes_test.RunesTest)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.RunesTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.RunesTest>);
var _trimTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimTest>(29, 29, ...[
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("bb" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("bba" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("b" : stdgo.GoString), ("abba" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("abb" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("b" : stdgo.GoString), ("abba" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("<tag>" : stdgo.GoString), ("<>" : stdgo.GoString), ("tag" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("* listitem" : stdgo.GoString), (" *" : stdgo.GoString), ("listitem" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("\"quote\"" : stdgo.GoString), ("\"" : stdgo.GoString), ("quote" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("ⱯⱯɐɐⱯⱯ" : stdgo.GoString), ("Ɐ" : stdgo.GoString), ("ɐɐ" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str(128, "test", 255)?.__copy__(), stdgo.Go.str(255)?.__copy__(), ("test" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), (" Ġ " : stdgo.GoString), (" " : stdgo.GoString), ("Ġ" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), (" Ġİ0" : stdgo.GoString), ("0 " : stdgo.GoString), ("Ġİ" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abba" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("123" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abba" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("123" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abba" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("123" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str("☺", 192)?.__copy__(), ("☺" : stdgo.GoString), stdgo.Go.str("☺", 192)?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimPrefix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("a" : stdgo.GoString), ("abb" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimPrefix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("b" : stdgo.GoString), ("aabb" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimSuffix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("a" : stdgo.GoString), ("aabb" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimTest(("TrimSuffix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("b" : stdgo.GoString), ("aab" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TrimTest)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.TrimTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimTest>);
var _trimNilTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimNilTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimNilTest>(29, 29, ...[
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(97 : stdgo.GoUInt8), (97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(97 : stdgo.GoUInt8), (98 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("☺" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(97 : stdgo.GoUInt8), (97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(97 : stdgo.GoUInt8), (98 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("☺" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(97 : stdgo.GoUInt8), (97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("ab" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(97 : stdgo.GoUInt8), (98 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("ab" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("☺" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("☺" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest),
(new stdgo._internal.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("☺" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.bytes_test.Bytes_test.TrimNilTest)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.TrimNilTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimNilTest>);
var _isSpace : stdgo._internal.bytes_test.Bytes_test.T_predicate = (new stdgo._internal.bytes_test.Bytes_test.T_predicate(stdgo._internal.unicode.Unicode.isSpace, ("IsSpace" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.T_predicate);
var _isDigit : stdgo._internal.bytes_test.Bytes_test.T_predicate = (new stdgo._internal.bytes_test.Bytes_test.T_predicate(stdgo._internal.unicode.Unicode.isDigit, ("IsDigit" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.T_predicate);
var _isUpper : stdgo._internal.bytes_test.Bytes_test.T_predicate = (new stdgo._internal.bytes_test.Bytes_test.T_predicate(stdgo._internal.unicode.Unicode.isUpper, ("IsUpper" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.T_predicate);
var _isValidRune : stdgo._internal.bytes_test.Bytes_test.T_predicate = (new stdgo._internal.bytes_test.Bytes_test.T_predicate(function(_r:stdgo.GoRune):Bool {
        return _r != ((65533 : stdgo.GoInt32));
    }, ("IsValidRune" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.T_predicate);
var _trimFuncTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimFuncTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimFuncTest>(9, 9, ...[(new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_isSpace?.__copy__(), ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_isDigit?.__copy__(), ("๐๒12hello34๐๑" : stdgo.GoString), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("hello34๐๑" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("๐๒12hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_isUpper?.__copy__(), ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("helloEFⱯⱯGHⱯⱯ" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("ⱯⱯⱯⱯABCDhello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_not(_isSpace?.__copy__())?.__copy__(), ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_not(_isDigit?.__copy__())?.__copy__(), ("hello๐๒1234๐๑helo" : stdgo.GoString), (("๐๒1234๐๑" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("๐๒1234๐๑helo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("hello๐๒1234๐๑" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_isValidRune?.__copy__(), stdgo.Go.str("ab", 192, "a", 192, "cd")?.__copy__(), (stdgo.Go.str(192, "a", 192) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str(192, "a", 192, "cd") : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str("ab", 192, "a", 192) : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_not(_isValidRune?.__copy__())?.__copy__(), stdgo.Go.str(192, "a", 192)?.__copy__(), (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str("a", 192) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str(192, "a") : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_isSpace?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest), (new stdgo._internal.bytes_test.Bytes_test.TrimFuncTest(_isSpace?.__copy__(), (" " : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)) : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.TrimFuncTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TrimFuncTest>);
var _indexFuncTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.IndexFuncTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.IndexFuncTest>(16, 16, ...[
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str()?.__copy__(), _isValidRune?.__copy__(), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(("abc" : stdgo.GoString), _isDigit?.__copy__(), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(("0123" : stdgo.GoString), _isDigit?.__copy__(), (0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(("a1b" : stdgo.GoString), _isDigit?.__copy__(), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), _isSpace?.__copy__(), (0 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(("๐๒12hello34๐๑" : stdgo.GoString), _isDigit?.__copy__(), (0 : stdgo.GoInt), (18 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString), _isUpper?.__copy__(), (0 : stdgo.GoInt), (34 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(("12๐๒hello34๐๑" : stdgo.GoString), _not(_isDigit?.__copy__())?.__copy__(), (8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(128, "1")?.__copy__(), _isDigit?.__copy__(), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(128, "abc")?.__copy__(), _isDigit?.__copy__(), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "a", 192)?.__copy__(), _isValidRune?.__copy__(), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "a", 192)?.__copy__(), _not(_isValidRune?.__copy__())?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "☺", 192)?.__copy__(), _not(_isValidRune?.__copy__())?.__copy__(), (0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "☺", 192, 192)?.__copy__(), _not(_isValidRune?.__copy__())?.__copy__(), (0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str("ab", 192, "a", 192, "cd")?.__copy__(), _not(_isValidRune?.__copy__())?.__copy__(), (2 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo._internal.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str("a", 224, 128, "cd")?.__copy__(), _not(_isValidRune?.__copy__())?.__copy__(), (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.IndexFuncTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.IndexFuncTest>);
var replaceTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.ReplaceTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.ReplaceTest>(19, 19, ...[
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("hello" : stdgo.GoString), ("l" : stdgo.GoString), ("L" : stdgo.GoString), (0 : stdgo.GoInt), ("hello" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("hello" : stdgo.GoString), ("l" : stdgo.GoString), ("L" : stdgo.GoString), (-1 : stdgo.GoInt), ("heLLo" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("hello" : stdgo.GoString), ("x" : stdgo.GoString), ("X" : stdgo.GoString), (-1 : stdgo.GoInt), ("hello" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), ("X" : stdgo.GoString), (-1 : stdgo.GoInt), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("radar" : stdgo.GoString), ("r" : stdgo.GoString), ("<r>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<r>ada<r>" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<>" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("b<>n<>n<>" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (1 : stdgo.GoInt), ("b<>nana" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (1000 : stdgo.GoInt), ("b<>n<>n<>" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("an" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("b<><>a" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("ana" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("b<>na" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (10 : stdgo.GoInt), ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (6 : stdgo.GoInt), ("<>b<>a<>n<>a<>n<>a" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (5 : stdgo.GoInt), ("<>b<>a<>n<>a<>na" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (1 : stdgo.GoInt), ("<>banana" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("a" : stdgo.GoString), (-1 : stdgo.GoInt), ("banana" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("a" : stdgo.GoString), (1 : stdgo.GoInt), ("banana" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest),
(new stdgo._internal.bytes_test.Bytes_test.ReplaceTest(("☺☻☹" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<>☺<>☻<>☹<>" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.ReplaceTest)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.ReplaceTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.ReplaceTest>);
var titleTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TitleTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TitleTest>(9, 9, ...[(new stdgo._internal.bytes_test.Bytes_test.TitleTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("a" : stdgo.GoString), ("A" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest((" aaa aaa aaa " : stdgo.GoString), (" Aaa Aaa Aaa " : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest((" Aaa Aaa Aaa " : stdgo.GoString), (" Aaa Aaa Aaa " : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("123a456" : stdgo.GoString), ("123a456" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("double-blind" : stdgo.GoString), ("Double-Blind" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("ÿøû" : stdgo.GoString), ("Ÿøû" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("with_underscore" : stdgo.GoString), ("With_underscore" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("unicode \u2028 line separator" : stdgo.GoString), ("Unicode \u2028 Line Separator" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.TitleTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TitleTest>);
var toTitleTests : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TitleTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TitleTest>(7, 7, ...[(new stdgo._internal.bytes_test.Bytes_test.TitleTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("a" : stdgo.GoString), ("A" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest((" aaa aaa aaa " : stdgo.GoString), (" AAA AAA AAA " : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest((" Aaa Aaa Aaa " : stdgo.GoString), (" AAA AAA AAA " : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("123a456" : stdgo.GoString), ("123A456" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("double-blind" : stdgo.GoString), ("DOUBLE-BLIND" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest), (new stdgo._internal.bytes_test.Bytes_test.TitleTest(("ÿøû" : stdgo.GoString), ("ŸØÛ" : stdgo.GoString)) : stdgo._internal.bytes_test.Bytes_test.TitleTest)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.TitleTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.TitleTest>);
var equalFoldTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(11, 11, ...[
({ _s : ("abc" : stdgo.GoString), _t : ("abc" : stdgo.GoString), _out : true } : T__struct_6),
({ _s : ("ABcd" : stdgo.GoString), _t : ("ABcd" : stdgo.GoString), _out : true } : T__struct_6),
({ _s : ("123abc" : stdgo.GoString), _t : ("123ABC" : stdgo.GoString), _out : true } : T__struct_6),
({ _s : ("αβδ" : stdgo.GoString), _t : ("ΑΒΔ" : stdgo.GoString), _out : true } : T__struct_6),
({ _s : ("abc" : stdgo.GoString), _t : ("xyz" : stdgo.GoString), _out : false } : T__struct_6),
({ _s : ("abc" : stdgo.GoString), _t : ("XYZ" : stdgo.GoString), _out : false } : T__struct_6),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijX" : stdgo.GoString), _out : false } : T__struct_6),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : T__struct_6),
({ _s : ("abcdefghijK" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : T__struct_6),
({ _s : ("abcdefghijkz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : T__struct_6),
({ _s : ("abcdefghijKz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : T__struct_6)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _t : ("" : stdgo.GoString), _out : false } : T__struct_6)])) : stdgo.Slice<T__struct_6>);
var _cutTests : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(8, 8, ...[({ _s : ("abc" : stdgo.GoString), _sep : ("b" : stdgo.GoString), _before : ("a" : stdgo.GoString), _after : ("c" : stdgo.GoString), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("a" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _after : ("bc" : stdgo.GoString), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("c" : stdgo.GoString), _before : ("ab" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : ("abc" : stdgo.GoString), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _before : ("abc" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_7), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_7), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_7)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _sep : ("" : stdgo.GoString), _before : ("" : stdgo.GoString), _after : ("" : stdgo.GoString), _found : false } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
var _cutPrefixTests : stdgo.Slice<T__struct_8> = (new stdgo.Slice<T__struct_8>(6, 6, ...[({ _s : ("abc" : stdgo.GoString), _sep : ("a" : stdgo.GoString), _after : ("bc" : stdgo.GoString), _found : true } : T__struct_8), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_8), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str()?.__copy__(), _after : ("abc" : stdgo.GoString), _found : true } : T__struct_8), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _after : ("abc" : stdgo.GoString), _found : false } : T__struct_8), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_8), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_8)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _sep : ("" : stdgo.GoString), _after : ("" : stdgo.GoString), _found : false } : T__struct_8)])) : stdgo.Slice<T__struct_8>);
var _cutSuffixTests : stdgo.Slice<T__struct_9> = (new stdgo.Slice<T__struct_9>(6, 6, ...[({ _s : ("abc" : stdgo.GoString), _sep : ("bc" : stdgo.GoString), _before : ("a" : stdgo.GoString), _found : true } : T__struct_9), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_9), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str()?.__copy__(), _before : ("abc" : stdgo.GoString), _found : true } : T__struct_9), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _before : ("abc" : stdgo.GoString), _found : false } : T__struct_9), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_9), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_9)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _sep : ("" : stdgo.GoString), _before : ("" : stdgo.GoString), _found : false } : T__struct_9)])) : stdgo.Slice<T__struct_9>);
var _containsTests : stdgo.Slice<T__struct_10> = (new stdgo.Slice<T__struct_10>(4, 4, ...[({ _b : (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _subslice : (("hel" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _want : true } : T__struct_10), ({ _b : (("日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _subslice : (("日本" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _want : true } : T__struct_10), ({ _b : (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _subslice : (("Hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _want : false } : T__struct_10), ({ _b : (("東京" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _subslice : (("京東" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _want : false } : T__struct_10)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _b : (null : stdgo.Slice<stdgo.GoUInt8>), _subslice : (null : stdgo.Slice<stdgo.GoUInt8>), _want : false } : T__struct_10)])) : stdgo.Slice<T__struct_10>);
var containsAnyTests : stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(11, 11, ...[
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : T__struct_11),
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _substr : ("a" : stdgo.GoString), _expected : false } : T__struct_11),
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _substr : ("abc" : stdgo.GoString), _expected : false } : T__struct_11),
({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : T__struct_11),
({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : ("a" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("aaa" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : ("a" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : ("xyz" : stdgo.GoString), _expected : false } : T__struct_11),
({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : ("xcz" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : ("uvw☻xyz" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("aRegExp*" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : (".(|)*+?^$[]" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (((_dots + _dots?.__copy__() : stdgo.GoString) + _dots?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _substr : (" " : stdgo.GoString), _expected : false } : T__struct_11)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _b : (null : stdgo.Slice<stdgo.GoUInt8>), _substr : ("" : stdgo.GoString), _expected : false } : T__struct_11)])) : stdgo.Slice<T__struct_11>);
var containsRuneTests : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(8, 8, ...[({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _r : (97 : stdgo.GoInt32), _expected : false } : T__struct_12), ({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _r : (97 : stdgo.GoInt32), _expected : true } : T__struct_12), ({ _b : (("aaa" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _r : (97 : stdgo.GoInt32), _expected : true } : T__struct_12), ({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _r : (121 : stdgo.GoInt32), _expected : false } : T__struct_12), ({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _r : (99 : stdgo.GoInt32), _expected : true } : T__struct_12), ({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _r : (120 : stdgo.GoInt32), _expected : false } : T__struct_12), ({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _r : (9787 : stdgo.GoInt32), _expected : true } : T__struct_12), ({ _b : (("aRegExp*" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _r : (42 : stdgo.GoInt32), _expected : true } : T__struct_12)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _b : (null : stdgo.Slice<stdgo.GoUInt8>), _r : (0 : stdgo.GoInt32), _expected : false } : T__struct_12)])) : stdgo.Slice<T__struct_12>);
var _makeFieldsInput : () -> stdgo.Slice<stdgo.GoUInt8> = function():stdgo.Slice<stdgo.GoByte> {
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _x) {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = stdgo._internal.math.rand.Rand.intn((10 : stdgo.GoInt));
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo.GoInt)))) {
                            _x[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                            if (((_i > (0 : stdgo.GoInt) : Bool) && (_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) : Bool)) {
                                stdgo.Go.copySlice((_x.__slice__((_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("χ" : stdgo.GoString));
                                break;
                            };
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            _x[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        return _x;
    };
var _makeFieldsInputASCII : () -> stdgo.Slice<stdgo.GoUInt8> = function():stdgo.Slice<stdgo.GoByte> {
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _x) {
            if (stdgo._internal.math.rand.Rand.intn((10 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
                _x[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            } else {
                _x[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            };
        };
        return _x;
    };
var _bytesdata : stdgo.Slice<T__struct_13> = (new stdgo.Slice<T__struct_13>(2, 2, ...[({ _name : ("ASCII" : stdgo.GoString), _data : _makeFieldsInputASCII() } : T__struct_13), ({ _name : ("Mixed" : stdgo.GoString), _data : _makeFieldsInput() } : T__struct_13)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_13)])) : stdgo.Slice<T__struct_13>);
var _benchInputHard : stdgo.Slice<stdgo.GoUInt8> = _makeBenchInputHard();
var _compareTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(21, 21, ...[
({ _a : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _a : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _a : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (-1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abd" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abd" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (-1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (-1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (-1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("b" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (-1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abcdefgh" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abcdefgh" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abcdefghj" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (-1 : stdgo.GoInt) } : T__struct_1),
({ _a : (("abcdefghj" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _a : (null : stdgo.Slice<stdgo.GoUInt8>), _b : (null : stdgo.Slice<stdgo.GoUInt8>), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _a : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _b : (null : stdgo.Slice<stdgo.GoUInt8>), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _a : (null : stdgo.Slice<stdgo.GoUInt8>), _b : (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), _i : (0 : stdgo.GoInt) } : T__struct_1),
({ _a : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (null : stdgo.Slice<stdgo.GoUInt8>), _i : (1 : stdgo.GoInt) } : T__struct_1),
({ _a : (null : stdgo.Slice<stdgo.GoUInt8>), _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (-1 : stdgo.GoInt) } : T__struct_1)].concat([for (i in 21 ... (21 > 21 ? 21 : 21 : stdgo.GoInt).toBasic()) ({ _a : (null : stdgo.Slice<stdgo.GoUInt8>), _b : (null : stdgo.Slice<stdgo.GoUInt8>), _i : (0 : stdgo.GoInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var unreadRuneErrorTests : stdgo.Slice<T__struct_17> = (new stdgo.Slice<T__struct_17>(5, 5, ...[({ _name : ("Read" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.read((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : T__struct_17), ({ _name : ("ReadByte" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.readByte();
    } } : T__struct_17), ({ _name : ("UnreadRune" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.unreadRune();
    } } : T__struct_17), ({ _name : ("Seek" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt));
    } } : T__struct_17), ({ _name : ("WriteTo" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Buffer() : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
    } } : T__struct_17)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : T__struct_17)])) : stdgo.Slice<T__struct_17>);
@:structInit @:private @:using(stdgo._internal.bytes_test.Bytes_test.T_negativeReader_static_extension) class T_negativeReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_negativeReader();
    }
}
@:structInit @:private @:using(stdgo._internal.bytes_test.Bytes_test.T_panicReader_static_extension) class T_panicReader {
    public var _panic : Bool = false;
    public function new(?_panic:Bool) {
        if (_panic != null) this._panic = _panic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_panicReader(_panic);
    }
}
@:structInit class BinOpTest {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _i : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_i:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BinOpTest(_a, _b, _i);
    }
}
@:structInit class SplitTest {
    public var _s : stdgo.GoString = "";
    public var _sep : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public var _a : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:stdgo.GoInt, ?_a:stdgo.Slice<stdgo.GoString>) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_n != null) this._n = _n;
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_s, _sep, _n, _a);
    }
}
@:structInit class FieldsTest {
    public var _s : stdgo.GoString = "";
    public var _a : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_s:stdgo.GoString, ?_a:stdgo.Slice<stdgo.GoString>) {
        if (_s != null) this._s = _s;
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FieldsTest(_s, _a);
    }
}
@:structInit class StringTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out);
    }
}
@:structInit class RepeatTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public var _count : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RepeatTest(_in, _out, _count);
    }
}
@:structInit class RunesTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _lossy : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoInt32>, ?_lossy:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_lossy != null) this._lossy = _lossy;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RunesTest(_in, _out, _lossy);
    }
}
@:structInit class TrimTest {
    public var _f : stdgo.GoString = "";
    public var _in : stdgo.GoString = "";
    public var _arg : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_f:stdgo.GoString, ?_in:stdgo.GoString, ?_arg:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_arg != null) this._arg = _arg;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TrimTest(_f, _in, _arg, _out);
    }
}
@:structInit class TrimNilTest {
    public var _f : stdgo.GoString = "";
    public var _in : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _arg : stdgo.GoString = "";
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_f:stdgo.GoString, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_arg:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_arg != null) this._arg = _arg;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TrimNilTest(_f, _in, _arg, _out);
    }
}
@:structInit @:private class T_predicate {
    public var _f : stdgo.GoInt32 -> Bool = null;
    public var _name : stdgo.GoString = "";
    public function new(?_f:stdgo.GoInt32 -> Bool, ?_name:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_predicate(_f, _name);
    }
}
@:structInit class TrimFuncTest {
    public var _f : stdgo._internal.bytes_test.Bytes_test.T_predicate = ({} : stdgo._internal.bytes_test.Bytes_test.T_predicate);
    public var _in : stdgo.GoString = "";
    public var _trimOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _leftOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _rightOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_f:stdgo._internal.bytes_test.Bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_trimOut != null) this._trimOut = _trimOut;
        if (_leftOut != null) this._leftOut = _leftOut;
        if (_rightOut != null) this._rightOut = _rightOut;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TrimFuncTest(_f, _in, _trimOut, _leftOut, _rightOut);
    }
}
@:structInit class IndexFuncTest {
    public var _in : stdgo.GoString = "";
    public var _f : stdgo._internal.bytes_test.Bytes_test.T_predicate = ({} : stdgo._internal.bytes_test.Bytes_test.T_predicate);
    public var _first : stdgo.GoInt = 0;
    public var _last : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_f:stdgo._internal.bytes_test.Bytes_test.T_predicate, ?_first:stdgo.GoInt, ?_last:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_f != null) this._f = _f;
        if (_first != null) this._first = _first;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexFuncTest(_in, _f, _first, _last);
    }
}
@:structInit class ReplaceTest {
    public var _in : stdgo.GoString = "";
    public var _old : stdgo.GoString = "";
    public var _new : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_old:stdgo.GoString, ?_new:stdgo.GoString, ?_n:stdgo.GoInt, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_old != null) this._old = _old;
        if (_new != null) this._new = _new;
        if (_n != null) this._n = _n;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReplaceTest(_in, _old, _new, _n, _out);
    }
}
@:structInit class TitleTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TitleTest(_in, _out);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _buffer : stdgo.GoString;
    public var _delim : stdgo.GoUInt8;
    public var _expected : stdgo.Slice<stdgo.GoString>;
    public var _err : stdgo.Error;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _a : stdgo.Slice<stdgo.GoUInt8>;
    public var _b : stdgo.Slice<stdgo.GoUInt8>;
    public var _i : stdgo.GoInt;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _in : stdgo.GoString;
    public var _rune : stdgo.GoInt32;
    public var _want : stdgo.GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _in : stdgo.GoString;
    public var _repl : stdgo.GoString;
    public var _out : stdgo.GoString;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _s : stdgo.GoString;
    public var _count : stdgo.GoInt;
    public var _errStr : stdgo.GoString;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _name : stdgo.GoString;
    public var _trim : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt32 -> Bool) -> stdgo.Slice<stdgo.GoUInt8>;
    public var _out : stdgo.Slice<stdgo.GoUInt8>;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _s : stdgo.GoString;
    public var _t : stdgo.GoString;
    public var _out : Bool;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _before : stdgo.GoString;
    public var _after : stdgo.GoString;
    public var _found : Bool;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _after : stdgo.GoString;
    public var _found : Bool;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _before : stdgo.GoString;
    public var _found : Bool;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _b : stdgo.Slice<stdgo.GoUInt8>;
    public var _subslice : stdgo.Slice<stdgo.GoUInt8>;
    public var _want : Bool;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _b : stdgo.Slice<stdgo.GoUInt8>;
    public var _substr : stdgo.GoString;
    public var _expected : Bool;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _b : stdgo.Slice<stdgo.GoUInt8>;
    public var _r : stdgo.GoInt32;
    public var _expected : Bool;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _name : stdgo.GoString;
    public var _data : stdgo.Slice<stdgo.GoUInt8>;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _name : stdgo.GoString;
    public var _input : stdgo.Slice<stdgo.GoUInt8>;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _off : stdgo.GoInt64;
    public var _seek : stdgo.GoInt;
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoString;
    public var _wantpos : stdgo.GoInt64;
    public var _readerr : stdgo.Error;
    public var _seekerr : stdgo.GoString;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _off : stdgo.GoInt64;
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoString;
    public var _wanterr : stdgo.AnyInterface;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_17>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo._internal.bytes_test.Bytes_test.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader> -> Void;
};
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<Buffer>, _s:stdgo.GoString):Void {
        var _bytes = _buf.bytes();
        var _str = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_buf.len() != ((_bytes.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(buf.Bytes()) == %d" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface((_bytes.length)));
        };
        if (_buf.len() != ((_str.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(buf.String()) == %d" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface((_str.length)));
        };
        if (_buf.len() != ((_s.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(s) == %d" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface((_s.length)));
        };
        if ((_bytes : stdgo.GoString) != (_s)) {
            _t.errorf(("%s: string(buf.Bytes()) == %q, s == %q" : stdgo.GoString), stdgo.Go.toInterface(_testname), stdgo.Go.toInterface((_bytes : stdgo.GoString)), stdgo.Go.toInterface(_s));
        };
    }
function _fillString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString {
        _check(_t, (_testname + (" (fill 1)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
            var __tmp__ = _buf.writeString(_fus?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != ((_fus.length))) {
                _t.errorf((_testname + (" (fill 2): m == %d, expected %d" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((_fus.length)));
            };
            if (_err != null) {
                _t.errorf((_testname + (" (fill 3): err should always be nil, found err == %s" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
            _s = (_s + (_fus)?.__copy__() : stdgo.GoString);
            _check(_t, (_testname + (" (fill 4)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        });
        return _s?.__copy__();
    }
function _fillBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        _check(_t, (_testname + (" (fill 1)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
            var __tmp__ = _buf.write(_fub), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != ((_fub.length))) {
                _t.errorf((_testname + (" (fill 2): m == %d, expected %d" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((_fub.length)));
            };
            if (_err != null) {
                _t.errorf((_testname + (" (fill 3): err should always be nil, found err == %s" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
            _s = (_s + ((_fub : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _check(_t, (_testname + (" (fill 4)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        });
        return _s?.__copy__();
    }
function testNewBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = newBuffer(_testBytes);
        _check(_t, ("NewBuffer" : stdgo.GoString), _buf, _testString?.__copy__());
    }
function testNewBufferString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = newBufferString(_testString?.__copy__());
        _check(_t, ("NewBufferString" : stdgo.GoString), _buf, _testString?.__copy__());
    }
function _empty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoByte>):Void {
        _check(_t, (_testname + (" (empty 1)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_err != null) {
                _t.errorf((_testname + (" (empty 2): err should always be nil, found err == %s" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
            _check(_t, (_testname + (" (empty 3)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, _s?.__copy__());
        };
        _check(_t, (_testname + (" (empty 4)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _buf, stdgo.Go.str()?.__copy__());
    }
function testBasicOperations(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                _check(_t, ("TestBasicOperations (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
                _buf.reset();
                _check(_t, ("TestBasicOperations (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
                _buf.truncate((0 : stdgo.GoInt));
                _check(_t, ("TestBasicOperations (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
                var __tmp__ = _buf.write((_testBytes.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want = (1 : stdgo.GoInt);
                    if (((_err != null) || (_n != _want) : Bool)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.AnyInterface));
                    };
                };
                _check(_t, ("TestBasicOperations (4)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), ("a" : stdgo.GoString));
                _buf.writeByte(_testString[(1 : stdgo.GoInt)]);
                _check(_t, ("TestBasicOperations (5)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), ("ab" : stdgo.GoString));
                {
                    var __tmp__ = _buf.write((_testBytes.__slice__((2 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var _want = (24 : stdgo.GoInt);
                    if (((_err != null) || (_n != _want) : Bool)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.AnyInterface));
                    };
                };
                _check(_t, ("TestBasicOperations (6)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _buf.truncate((26 : stdgo.GoInt));
                _check(_t, ("TestBasicOperations (7)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _buf.truncate((20 : stdgo.GoInt));
                _check(_t, ("TestBasicOperations (8)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _empty(_t, ("TestBasicOperations (9)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _empty(_t, ("TestBasicOperations (10)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _buf.writeByte(_testString[(1 : stdgo.GoInt)]);
                var __tmp__ = _buf.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want = (_testString[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_err != null) || (_c != _want) : Bool)) {
                        _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.AnyInterface));
                    };
                };
                {
                    var __tmp__ = _buf.readByte();
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(((0 : stdgo.GoUInt8) : stdgo.GoByte)), stdgo.Go.toInterface(stdgo._internal.io.Io.eof));
                };
            });
        };
    }
function testLargeStringWrites(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _limit = (30 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _limit = (9 : stdgo.GoInt);
        };
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _limit : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _s = (_fillString(_t, ("TestLargeWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__(), (5 : stdgo.GoInt), _testString?.__copy__())?.__copy__() : stdgo.GoString);
                _empty(_t, ("TestLargeStringWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(((_testString.length) / _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        _check(_t, ("TestLargeStringWrites (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
    }
function testLargeByteWrites(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _limit = (30 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _limit = (9 : stdgo.GoInt);
        };
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _limit : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _s = (_fillBytes(_t, ("TestLargeWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__(), (5 : stdgo.GoInt), _testBytes)?.__copy__() : stdgo.GoString);
                _empty(_t, ("TestLargeByteWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(((_testString.length) / _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        _check(_t, ("TestLargeByteWrites (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
    }
function testLargeStringReads(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _s = (_fillString(_t, ("TestLargeReads (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__(), (5 : stdgo.GoInt), (_testString.__slice__((0 : stdgo.GoInt), ((_testString.length) / _i : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                _empty(_t, ("TestLargeReads (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((_testString.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        _check(_t, ("TestLargeStringReads (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
    }
function testLargeByteReads(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _s = (_fillBytes(_t, ("TestLargeReads (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__(), (5 : stdgo.GoInt), (_testBytes.__slice__((0 : stdgo.GoInt), ((_testBytes.length) / _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                _empty(_t, ("TestLargeReads (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((_testString.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        _check(_t, ("TestLargeByteReads (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
    }
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                var _wlen = (stdgo._internal.math.rand.Rand.intn((_testString.length)) : stdgo.GoInt);
                if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _s = _fillString(_t, ("TestMixedReadsAndWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (1 : stdgo.GoInt), (_testString.__slice__((0 : stdgo.GoInt), _wlen) : stdgo.GoString)?.__copy__())?.__copy__();
                } else {
                    _s = _fillBytes(_t, ("TestMixedReadsAndWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (1 : stdgo.GoInt), (_testBytes.__slice__((0 : stdgo.GoInt), _wlen) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                };
                var _rlen = (stdgo._internal.math.rand.Rand.intn((_testString.length)) : stdgo.GoInt);
                var _fub = (new stdgo.Slice<stdgo.GoUInt8>((_rlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _buf.read(_fub), _n:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
            });
        };
        _empty(_t, ("TestMixedReadsAndWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((_buf.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    }
function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = newBuffer((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _n = (_buf.cap() : stdgo.GoInt);
        if (_n != ((10 : stdgo.GoInt))) {
            _t.errorf(("expected 10, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = newBuffer((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        _buf.write((("test" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _n = (_buf.cap() : stdgo.GoInt);
        if (_n != ((10 : stdgo.GoInt))) {
            _t.errorf(("expected 10, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testNil(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo.Ref<Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        if ((_b.string() : stdgo.GoString) != (("<nil>" : stdgo.GoString))) {
            _t.errorf(("expected <nil>; got %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
    }
function testReadFrom(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _s = (_fillBytes(_t, ("TestReadFrom (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__(), (5 : stdgo.GoInt), (_testBytes.__slice__((0 : stdgo.GoInt), ((_testBytes.length) / _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                _b.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                _empty(_t, ("TestReadFrom (2)" : stdgo.GoString), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((_testString.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
    }
function testReadFromPanicReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            var __tmp__ = _buf.readFrom(stdgo.Go.asInterface((new stdgo._internal.bytes_test.Bytes_test.T_panicReader() : stdgo._internal.bytes_test.Bytes_test.T_panicReader))), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_i != ((0i64 : stdgo.GoInt64))) {
                _t.fatalf(("unexpected return from bytes.ReadFrom (1): got: %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            };
            _check(_t, ("TestReadFromPanicReader (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
            var _buf2:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    _check(_t, ("TestReadFromPanicReader (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf2) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__());
                };
                a();
            });
            _buf2.readFrom(stdgo.Go.asInterface(({ _panic : true } : stdgo._internal.bytes_test.Bytes_test.T_panicReader)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        final __type__ = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (__type__ == null) {
                            var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                            _t.fatal(stdgo.Go.toInterface(("bytes.Buffer.ReadFrom didn\'t panic" : stdgo.GoString)));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                            var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                            var _wantError = ("bytes.Buffer: reader returned negative count from Read" : stdgo.GoString);
                            if (_err.error() != (_wantError)) {
                                _t.fatalf(("recovered panic: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(_wantError));
                            };
                        } else {
                            var _err:stdgo.AnyInterface = __type__?.__underlying__();
                            _t.fatalf(("unexpected panic value: %#v" : stdgo.GoString), _err);
                        };
                    };
                };
                a();
            });
            _b.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes_test.Bytes_test.T_negativeReader)) : stdgo.Ref<stdgo._internal.bytes_test.Bytes_test.T_negativeReader>)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _s = (_fillBytes(_t, ("TestWriteTo (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), stdgo.Go.str()?.__copy__(), (5 : stdgo.GoInt), (_testBytes.__slice__((0 : stdgo.GoInt), ((_testBytes.length) / _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                _buf.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                _empty(_t, ("TestWriteTo (2)" : stdgo.GoString), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _s?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((_testString.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
    }
function testWriteAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _got:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _want:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _b = _got.availableBuffer();
                _b = stdgo._internal.strconv.Strconv.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                _want = stdgo._internal.strconv.Strconv.appendInt(_want, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                _got.write(_b);
            });
        };
        if (!equal(_got.bytes(), _want)) {
            _t.fatalf(("Bytes() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(_want));
        };
        var _n = (stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _got.reset();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                    var _b = _got.availableBuffer();
                    _b = stdgo._internal.strconv.Strconv.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                    _got.write(_b);
                });
            };
        }) : stdgo.GoFloat64);
        if ((_n > (0 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("allocations occurred while appending" : stdgo.GoString));
        };
    }
function testRuneIO(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((4000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _n = (0 : stdgo.GoInt);
        {
            var _r = (((0 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoInt32);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var _size = (stdgo._internal.unicode.utf8.Utf8.encodeRune((_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
                var __tmp__ = _buf.writeRune(_r), _nbytes:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("WriteRune(%U) error: %s" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                };
                if (_nbytes != (_size)) {
                    _t.fatalf(("WriteRune(%U) expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_nbytes));
                };
                _n = (_n + (_size) : stdgo.GoInt);
            });
        };
        _b = (_b.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        if (!equal(_buf.bytes(), _b)) {
            _t.fatalf(("incorrect result from WriteRune: %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_b));
        };
        var _p = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _r = (((0 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoInt32);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var _size = (stdgo._internal.unicode.utf8.Utf8.encodeRune(_p, _r) : stdgo.GoInt);
                var __tmp__ = _buf.readRune(), _nr:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_nr != (_r) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    _t.fatalf(("ReadRune(%U) got %U,%d not %U,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_nr), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
        _buf.reset();
        {
            var _err = (_buf.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _buf.readRune(), __40:stdgo.GoInt32 = __tmp__._0, __41:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("ReadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var _err = (_buf.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadRune after ReadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        _buf.write(_b);
        {
            var _r = (((0 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoInt32);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var __tmp__ = _buf.readRune(), _r1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, __58:stdgo.Error = __tmp__._2;
                {
                    var _err = (_buf.unreadRune() : stdgo.Error);
                    if (_err != null) {
                        _t.fatalf(("UnreadRune(%U) got error %q" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                    };
                };
                var __tmp__ = _buf.readRune(), _r2:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((((_r1 != (_r2) || _r1 != (_r) : Bool) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    _t.fatalf(("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testWriteInvalidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _r in (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
            var _buf:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            _buf.writeRune(_r);
            _check(_t, stdgo._internal.fmt.Fmt.sprintf(("TestWriteInvalidRune (%d)" : stdgo.GoString), stdgo.Go.toInterface(_r))?.__copy__(), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), ("�" : stdgo.GoString));
        };
    }
function testNext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (5 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (_i : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (5 : stdgo.GoInt) : Bool), _j++, {
                        {
                            var _k = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_k <= (6 : stdgo.GoInt) : Bool), _k++, {
                                var _buf = newBuffer((_b.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.GoUInt8>));
                                var __tmp__ = _buf.read((_tmp.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                                if (_n != (_i)) {
                                    _t.fatalf(("Read %d returned %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n));
                                };
                                var _bb = _buf.next(_k);
                                var _want = (_k : stdgo.GoInt);
                                if ((_want > (_j - _i : stdgo.GoInt) : Bool)) {
                                    _want = (_j - _i : stdgo.GoInt);
                                };
                                if ((_bb.length) != (_want)) {
                                    _t.fatalf(("in %d,%d: len(Next(%d)) == %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_bb.length)));
                                };
                                for (_l => _v in _bb) {
                                    if (_v != (((_l + _i : stdgo.GoInt) : stdgo.GoByte))) {
                                        _t.fatalf(("in %d,%d: Next(%d)[%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((_l + _i : stdgo.GoInt)));
                                    };
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testReadBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer?.__copy__());
            var _err:stdgo.Error = (null : stdgo.Error);
            for (__1 => _expected in _test._expected) {
                var _bytes:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = _buf.readBytes(_test._delim);
                    _bytes = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_bytes : stdgo.GoString) != (_expected)) {
                    _t.errorf(("expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_bytes));
                };
                if (_err != null) {
                    break;
                };
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_test._err))) {
                _t.errorf(("expected error %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err));
            };
        };
    }
function testReadString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer?.__copy__());
            var _err:stdgo.Error = (null : stdgo.Error);
            for (__1 => _expected in _test._expected) {
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_s != (_expected)) {
                    _t.errorf(("expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_s));
                };
                if (_err != null) {
                    break;
                };
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_test._err))) {
                _t.errorf(("expected error %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err));
            };
        };
    }
function benchmarkReadString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _data[(32767 : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        _b.setBytes((32768i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _buf = newBuffer(_data);
                var __tmp__ = _buf.readString((120 : stdgo.GoUInt8)), __16:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testGrow" + " skip function");
        return;
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(120 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _y = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(121 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((72 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _growLen in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt), (10000 : stdgo.GoInt), (100000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__1 => _startLen in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt), (10000 : stdgo.GoInt), (100000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _xBytes = repeat(_x, _startLen);
                var _buf = newBuffer(_xBytes);
                var __tmp__ = _buf.read(_tmp), _readBytes:stdgo.GoInt = __tmp__._0, __2:stdgo.Error = __tmp__._1;
                var _yBytes = repeat(_y, _growLen);
                var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                    _buf.grow(_growLen);
                    _buf.write(_yBytes);
                }) : stdgo.GoFloat64);
                if (_allocs != (0 : stdgo.GoFloat64)) {
                    _t.errorf(("allocation occurred during write" : stdgo.GoString));
                };
                if (!equal((_buf.bytes().__slice__((0 : stdgo.GoInt), (_startLen - _readBytes : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_xBytes.__slice__(_readBytes) : stdgo.Slice<stdgo.GoUInt8>))) {
                    _t.errorf(("bad initial data at %d %d" : stdgo.GoString), stdgo.Go.toInterface(_startLen), stdgo.Go.toInterface(_growLen));
                };
                if (!equal((_buf.bytes().__slice__((_startLen - _readBytes : stdgo.GoInt), ((_startLen - _readBytes : stdgo.GoInt) + _growLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _yBytes)) {
                    _t.errorf(("bad written data at %d %d" : stdgo.GoString), stdgo.Go.toInterface(_startLen), stdgo.Go.toInterface(_growLen));
                };
            };
        };
    }
function testGrowOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err != (stdgo.Go.toInterface(errTooLarge))) {
                            _t.errorf(("after too-large Grow, recover() = %v; want %v" : stdgo.GoString), _err, stdgo.Go.toInterface(errTooLarge));
                        };
                    };
                };
                a();
            });
            var _buf = newBuffer((new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            {};
            _buf.grow((2147483647 : stdgo.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _slice = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _b.read(_slice), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("wrong count; got %d want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testUnreadByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _b.readByte(), __8:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("ReadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte after ReadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        _b.writeString(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString));
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                _t.fatalf(("Read(nil) = %d,%v; want 0,nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte after Read(nil): got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _b.readBytes((109 : stdgo.GoUInt8)), __41:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadBytes: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("UnreadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = _b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_c != ((109 : stdgo.GoUInt8))) {
            _t.errorf(("ReadByte = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((109 : stdgo.GoInt32)));
        };
    }
function testBufferGrowth(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.write((_buf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _cap0:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5120 : stdgo.GoInt) : Bool), _i++, {
                _b.write(_buf);
                _b.read(_buf);
                if (_i == ((0 : stdgo.GoInt))) {
                    _cap0 = _b.cap();
                };
            });
        };
        var _cap1 = (_b.cap() : stdgo.GoInt);
        if ((_cap1 > (_cap0 * (3 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _t.errorf(("buffer cap = %d; too big (grew from %d)" : stdgo.GoString), stdgo.Go.toInterface(_cap1), stdgo.Go.toInterface(_cap0));
        };
    }
function benchmarkWriteByte(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _b.setBytes((4096i64 : stdgo.GoInt64));
        var _buf = newBuffer((new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4096 : stdgo.GoInt) : Bool), _i++, {
                        _buf.writeByte((120 : stdgo.GoUInt8));
                    });
                };
            });
        };
    }
function benchmarkWriteRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        {};
        _b.setBytes((((4096 : stdgo.GoInt) * stdgo._internal.unicode.utf8.Utf8.runeLen((9786 : stdgo.GoInt32)) : stdgo.GoInt) : stdgo.GoInt64));
        var _buf = newBuffer((new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4096 : stdgo.GoInt) : Bool), _i++, {
                        _buf.writeRune((9786 : stdgo.GoInt32));
                    });
                };
            });
        };
    }
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                _b.write((_buf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (5120 : stdgo.GoInt) : Bool), _i++, {
                        _b.write(_buf);
                        _b.read(_buf);
                    });
                };
            });
        };
    }
function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                _b.write(_buf);
                while (((_b.len() + (20 : stdgo.GoInt) : stdgo.GoInt) < _b.cap() : Bool)) {
                    _b.write((_buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (5120 : stdgo.GoInt) : Bool), _i++, {
                        _b.read((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _b.write((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    });
                };
            });
        };
    }
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _block = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _n in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4096 : stdgo.GoInt), (65536 : stdgo.GoInt), (1048576 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("N%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _bb:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                        while ((_bb.len() < _n : Bool)) {
                            _bb.write(_block);
                        };
                    });
                };
            });
        };
    }
function benchmarkBufferAppendNoCopy(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bb:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _bb.grow((16777216 : stdgo.GoInt));
        _b.setBytes((_bb.available() : stdgo.GoInt64));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bb.reset();
                var _b = _bb.availableBuffer();
                _b = (_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.GoUInt8>);
                _bb.write(_b);
            });
        };
    }
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_a.length) : Bool), _i++, {
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    return false;
                };
            });
        };
        return true;
    }
function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>):stdgo.Slice<stdgo.GoString> {
        var _result = (new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _v in _s) {
            _result[(_i : stdgo.GoInt)] = (_v : stdgo.GoString)?.__copy__();
        };
        return _result;
    }
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((10 : stdgo.GoInt), function():Void {
            for (__0 => _tt in _compareTests) {
                var _eql = (equal(_tt._a, _tt._b) : Bool);
                if (_eql != ((_tt._i == (0 : stdgo.GoInt)))) {
                    _t.errorf(("Equal(%q, %q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_eql));
                };
            };
        }) : stdgo.GoFloat64);
        if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("Equal allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testEqualExhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _size:stdgo.GoInt = (128 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _size = (32 : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b_init = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _a[(_i : stdgo.GoInt)] = (((17 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoByte);
                _b_init[(_i : stdgo.GoInt)] = ((((23 : stdgo.GoInt) * _i : stdgo.GoInt) + (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
            });
        };
        {
            var _len = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_len <= _size : Bool), _len++, {
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= (_size - _len : stdgo.GoInt) : Bool), _x++, {
                        {
                            var _y = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_y <= (_size - _len : stdgo.GoInt) : Bool), _y++, {
                                stdgo.Go.copySlice(_b, _b_init);
                                stdgo.Go.copySlice((_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                if ((!equal((_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) || !equal((_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                                    _t.errorf(("Equal(%d, %d, %d) = false" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testNotEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _size:stdgo.GoInt = (128 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _size = (32 : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _len = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_len <= _size : Bool), _len++, {
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= (_size - _len : stdgo.GoInt) : Bool), _x++, {
                        {
                            var _y = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_y <= (_size - _len : stdgo.GoInt) : Bool), _y++, {
                                {
                                    var _diffpos = (_x : stdgo.GoInt);
                                    stdgo.Go.cfor((_diffpos < (_x + _len : stdgo.GoInt) : Bool), _diffpos++, {
                                        _a[(_diffpos : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                                        if ((equal((_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) || equal((_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                                            _t.errorf(("NotEqual(%d, %d, %d, %d) = true" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_diffpos));
                                        };
                                        _a[(_diffpos : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function _runIndexTests(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<BinOpTest>):Void {
        for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.GoByte>);
            var _b = (_test._b : stdgo.Slice<stdgo.GoByte>);
            var _actual = (_f(_a, _b) : stdgo.GoInt);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
        var _allocTests:stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(2, 2, ...[({ _a : (("000000000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("0000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (5 : stdgo.GoInt) } : T__struct_1), ({ _a : (("000000000000000000000000000000000000000000000000000000000000000010000" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _b : (("00000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _i : (3 : stdgo.GoInt) } : T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _a : (null : stdgo.Slice<stdgo.GoUInt8>), _b : (null : stdgo.Slice<stdgo.GoUInt8>), _i : (0 : stdgo.GoInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
            {
                var _i = (index(_allocTests[(1 : stdgo.GoInt)]._a, _allocTests[(1 : stdgo.GoInt)]._b) : stdgo.GoInt);
                if (_i != (_allocTests[(1 : stdgo.GoInt)]._i)) {
                    _t.errorf(("Index([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_allocTests[(1 : stdgo.GoInt)]._a), stdgo.Go.toInterface(_allocTests[(1 : stdgo.GoInt)]._b), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_allocTests[(1 : stdgo.GoInt)]._i));
                };
            };
            {
                var _i = (lastIndex(_allocTests[(0 : stdgo.GoInt)]._a, _allocTests[(0 : stdgo.GoInt)]._b) : stdgo.GoInt);
                if (_i != (_allocTests[(0 : stdgo.GoInt)]._i)) {
                    _t.errorf(("LastIndex([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_allocTests[(0 : stdgo.GoInt)]._a), stdgo.Go.toInterface(_allocTests[(0 : stdgo.GoInt)]._b), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_allocTests[(0 : stdgo.GoInt)]._i));
                };
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function _runIndexAnyTests(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<BinOpTest>):Void {
        for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.GoByte>);
            var _actual = (_f(_a, _test._b?.__copy__()) : stdgo.GoInt);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_test._b), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
    }
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runIndexTests(_t, index, ("Index" : stdgo.GoString), _indexTests);
    }
function testLastIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runIndexTests(_t, lastIndex, ("LastIndex" : stdgo.GoString), _lastIndexTests);
    }
function testIndexAny(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runIndexAnyTests(_t, indexAny, ("IndexAny" : stdgo.GoString), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runIndexAnyTests(_t, lastIndexAny, ("LastIndexAny" : stdgo.GoString), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _indexTests) {
            if ((_tt._b.length) != ((1 : stdgo.GoInt))) {
                continue;
            };
            var _a = (_tt._a : stdgo.Slice<stdgo.GoByte>);
            var _b = (_tt._b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _pos = (indexByte(_a, _b) : stdgo.GoInt);
            if (_pos != (_tt._i)) {
                _t.errorf(("IndexByte(%q, \'%c\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_pos));
            };
            var _posp = (indexBytePortable(_a, _b) : stdgo.GoInt);
            if (_posp != (_tt._i)) {
                _t.errorf(("indexBytePortable(%q, \'%c\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_posp));
            };
        };
    }
function testLastIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>(6, 6, ...[(new stdgo._internal.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str()?.__copy__(), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest), (new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abcdef" : stdgo.GoString), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest), (new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abcdefabcdef" : stdgo.GoString), ("a" : stdgo.GoString), (("abcdef" : stdgo.GoString).length)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest), (new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("abcdefabcdef" : stdgo.GoString), ("f" : stdgo.GoString), (("abcdefabcde" : stdgo.GoString).length)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest), (new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("zabcdefabcdef" : stdgo.GoString), ("z" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest), (new stdgo._internal.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("b" : stdgo.GoString), (("a☺" : stdgo.GoString).length)) : stdgo._internal.bytes_test.Bytes_test.BinOpTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.BinOpTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.BinOpTest>);
        for (__0 => _test in _testCases) {
            var _actual = (lastIndexByte((_test._a : stdgo.Slice<stdgo.GoByte>), _test._b[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            if (_actual != (_test._i)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._a), stdgo.Go.toInterface(_test._b[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
    }
function testIndexByteBig(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _n:stdgo.GoInt = (1024 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _n = (128 : stdgo.GoInt);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _b1 = (_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_b1.length) : Bool), _j++, {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                        var _pos = (indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _pos = indexByte(_b1, (120 : stdgo.GoUInt8));
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_b1.length) : Bool), _j++, {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                        var _pos = (indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _pos = indexByte(_b1, (120 : stdgo.GoUInt8));
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__((_i / (2 : stdgo.GoInt) : stdgo.GoInt), (_n - (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_b1.length) : Bool), _j++, {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                        var _pos = (indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _pos = indexByte(_b1, (120 : stdgo.GoUInt8));
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
            });
        };
    }
function testIndexByteSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((5015 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= ((_b.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (((100 : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoByte);
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        var _p = (indexByte((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (((100 : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoByte)) : stdgo.GoInt);
                        if (_p != (_j)) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(((100 : stdgo.GoInt) + _j : stdgo.GoInt)), stdgo.Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    });
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= ((_b.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        var _p = (indexByte((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((0 : stdgo.GoUInt8) : stdgo.GoByte)) : stdgo.GoInt);
                        if (_p != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    });
                };
            });
        };
    }
function testIndexRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_2>(19, 19, ...[
({ _in : stdgo.Go.str()?.__copy__(), _rune : (97 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str()?.__copy__(), _rune : (9786 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _in : ("foo" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _in : ("foo" : stdgo.GoString), _rune : (111 : stdgo.GoInt32), _want : (1 : stdgo.GoInt) } : T__struct_2),
({ _in : ("foo☺bar" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : T__struct_2),
({ _in : ("foo☺☻☹bar" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : T__struct_2),
({ _in : ("a A x" : stdgo.GoString), _rune : (65 : stdgo.GoInt32), _want : (2 : stdgo.GoInt) } : T__struct_2),
({ _in : ("some_text=some_value" : stdgo.GoString), _rune : (61 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : T__struct_2),
({ _in : ("☺a" : stdgo.GoString), _rune : (97 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : T__struct_2),
({ _in : ("a☻☺b" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (4 : stdgo.GoInt) } : T__struct_2),
({ _in : ("�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str(255)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : T__struct_2),
({ _in : ("☻x�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152, "�")?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152, "x")?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (-1 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (55296 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (1114112 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_2)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _rune : (0 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        for (__0 => _tt in _tests) {
            {
                var _got = (indexRune((_tt._in : stdgo.Slice<stdgo.GoByte>), _tt._rune) : stdgo.GoInt);
                if (_got != (_tt._want)) {
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._rune), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack = (("test世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            {
                var _i = (indexRune(_haystack, (115 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((2 : stdgo.GoInt))) {
                    _t.fatalf(("\'s\' at %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
            {
                var _i = (indexRune(_haystack, (19990 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((4 : stdgo.GoInt))) {
                    _t.fatalf(("\'世\' at %d; want 4" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testCountByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((5015 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _windows = (new stdgo.Slice<stdgo.GoInt>(14, 14, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(15 : stdgo.GoInt),
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(31 : stdgo.GoInt),
(32 : stdgo.GoInt),
(33 : stdgo.GoInt),
(63 : stdgo.GoInt),
(64 : stdgo.GoInt),
(65 : stdgo.GoInt),
(128 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _testCountWindow = (function(_i:stdgo.GoInt, _window:stdgo.GoInt):Void {
            {
                var _j = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_j < _window : Bool), _j++, {
                    _b[(_i + _j : stdgo.GoInt)] = ((100 : stdgo.GoUInt8) : stdgo.GoByte);
                    var _p = (count((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(100 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_p != ((_j + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        _t.errorf(("TestCountByte.Count(%q, 100) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_p));
                    };
                });
            };
        } : (stdgo.GoInt, stdgo.GoInt) -> Void);
        var _maxWnd = (_windows[((_windows.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= ((2 : stdgo.GoInt) * _maxWnd : stdgo.GoInt) : Bool), _i++, {
                for (__0 => _window in _windows) {
                    if ((_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length) : Bool)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length);
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _window : Bool), _j++, {
                            _b[(_i + _j : stdgo.GoInt)] = ((0 : stdgo.GoUInt8) : stdgo.GoByte);
                        });
                    };
                };
            });
        };
        {
            var _i = ((4096 : stdgo.GoInt) - ((_maxWnd + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_b.length) : Bool), _i++, {
                for (__1 => _window in _windows) {
                    if ((_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length) : Bool)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length);
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _window : Bool), _j++, {
                            _b[(_i + _j : stdgo.GoInt)] = ((0 : stdgo.GoUInt8) : stdgo.GoByte);
                        });
                    };
                };
            });
        };
    }
function testCountByteNoMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((5015 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _windows = (new stdgo.Slice<stdgo.GoInt>(14, 14, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(15 : stdgo.GoInt),
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(31 : stdgo.GoInt),
(32 : stdgo.GoInt),
(33 : stdgo.GoInt),
(63 : stdgo.GoInt),
(64 : stdgo.GoInt),
(65 : stdgo.GoInt),
(128 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_b.length) : Bool), _i++, {
                for (__0 => _window in _windows) {
                    if ((_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length) : Bool)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length);
                    };
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _window : Bool), _j++, {
                            _b[(_i + _j : stdgo.GoInt)] = ((100 : stdgo.GoUInt8) : stdgo.GoByte);
                        });
                    };
                    var _p = (count((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_p != ((0 : stdgo.GoInt))) {
                        _t.errorf(("TestCountByteNoMatch(%q, 0) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_p));
                    };
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _window : Bool), _j++, {
                            _b[(_i + _j : stdgo.GoInt)] = ((0 : stdgo.GoUInt8) : stdgo.GoByte);
                        });
                    };
                };
            });
        };
    }
function _valName(_x:stdgo.GoInt):stdgo.GoString {
        {
            var _s = (_x >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if ((_s << (20i64 : stdgo.GoUInt64) : stdgo.GoInt) == (_x)) {
                return stdgo._internal.fmt.Fmt.sprintf(("%dM" : stdgo.GoString), stdgo.Go.toInterface(_s))?.__copy__();
            };
        };
        {
            var _s = (_x >> (10i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if ((_s << (10i64 : stdgo.GoUInt64) : stdgo.GoInt) == (_x)) {
                return stdgo._internal.fmt.Fmt.sprintf(("%dK" : stdgo.GoString), stdgo.Go.toInterface(_s))?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_x))?.__copy__();
    }
function _benchBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt) -> Void):Void {
        for (__0 => _n in _sizes) {
            if ((_isRaceBuilder && (_n > (4096 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            _b.run(_valName(_n)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                if (((_bmbuf.length) < _n : Bool)) {
                    _bmbuf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                };
                _b.setBytes((_n : stdgo.GoInt64));
                _f(_b, _n);
            });
        };
    }
function benchmarkIndexByte(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexByte));
    }
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexBytePortable));
    }
function _bmIndexByte(_index:(stdgo.Slice<stdgo.GoByte>, stdgo.GoByte) -> stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt) -> Void {
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (_index(_buf, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
                    if (_j != ((_n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
function benchmarkIndexRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRune(indexRune));
    }
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRuneASCII(indexRune));
    }
function _bmIndexRuneASCII(_index:(stdgo.Slice<stdgo.GoByte>, stdgo.GoRune) -> stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt) -> Void {
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (_index(_buf, (120 : stdgo.GoInt32)) : stdgo.GoInt);
                    if (_j != ((_n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
function _bmIndexRune(_index:(stdgo.Slice<stdgo.GoByte>, stdgo.GoRune) -> stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt) -> Void {
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.unicode.utf8.Utf8.encodeRune((_buf.__slice__((_n - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (19990 : stdgo.GoInt32));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (_index(_buf, (19990 : stdgo.GoInt32)) : stdgo.GoInt);
                    if (_j != ((_n - (3 : stdgo.GoInt) : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
function benchmarkEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
            var _buf1 = (_buf.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _buf2 = (_buf.__slice__((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _eq = (equal(_buf1, _buf2) : Bool);
                    if (!_eq) {
                        _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                    };
                });
            };
        });
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (6 : stdgo.GoInt), (9 : stdgo.GoInt), (15 : stdgo.GoInt), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (32 : stdgo.GoInt), (4096 : stdgo.GoInt), (4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _benchBytes(_b, _sizes, _bmEqual(equal));
    }
function _bmEqual(_equal:(stdgo.Slice<stdgo.GoByte>, stdgo.Slice<stdgo.GoByte>) -> Bool):(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt) -> Void {
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            if (((_bmbuf.length) < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
                _bmbuf = (new stdgo.Slice<stdgo.GoUInt8>(((2 : stdgo.GoInt) * _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _buf1 = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _buf2 = (_bmbuf.__slice__(_n, ((2 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _eq = (_equal(_buf1, _buf2) : Bool);
                    if (!_eq) {
                        _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                    };
                });
            };
            _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
function benchmarkEqualBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(64 : stdgo.GoInt), (4096 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (!_isRaceBuilder) {
            _sizes = (_sizes.__append__(...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
        };
        var _maxSize = ((2 : stdgo.GoInt) * ((_sizes[((_sizes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if (((_bmbuf.length) < _maxSize : Bool)) {
            _bmbuf = (new stdgo.Slice<stdgo.GoUInt8>((_maxSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        for (__0 => _n in _sizes) {
            for (__1 => _off in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _buf1 = (_bmbuf.__slice__(_off, (_off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                var _buf2Start = ((((_bmbuf.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) + _off : stdgo.GoInt);
                var _buf2 = (_bmbuf.__slice__(_buf2Start, (_buf2Start + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                _b.run(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_off))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    _b.setBytes((_n : stdgo.GoInt64));
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var _eq = (equal(_buf1, _buf2) : Bool);
                            if (!_eq) {
                                _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                            };
                        });
                    };
                });
                _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
    }
function benchmarkIndex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (index(_buf, (_buf.__slice__((_n - (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_j != ((_n - (7 : stdgo.GoInt) : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        });
    }
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            _buf[(_n - (7 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (index(_buf, (_buf.__slice__((_n - (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_j != ((_n - (7 : stdgo.GoInt) : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf[(_n - (7 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        });
    }
function benchmarkCount(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (count(_buf, (_buf.__slice__((_n - (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_j != ((1 : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        });
    }
function benchmarkCountEasy(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            _buf[(_n - (7 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (count(_buf, (_buf.__slice__((_n - (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_j != ((1 : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf[(_n - (7 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        });
    }
function benchmarkCountSingle(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _n:stdgo.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _step = (8 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_buf.length) : Bool), _i = (_i + (_step) : stdgo.GoInt), {
                    _buf[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                });
            };
            var _expect = ((((_buf.length) + ((_step - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) / _step : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (count(_buf, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_j != (_expect)) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_expect));
                    };
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_buf.length) : Bool), _i++, {
                    _buf[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                });
            };
        });
    }
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testSplit" + " skip function");
        return;
        for (__0 => _tt in _splittests) {
            var _a = splitN((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._sep : stdgo.Slice<stdgo.GoByte>), _tt._n);
            var _x:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if (((_tt._n == (0 : stdgo.GoInt)) || (_a.length == (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            {
                var _want = ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((_x : stdgo.GoString) != (_want)) {
                    _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                };
            };
            var _s = join(_a, (_tt._sep : stdgo.Slice<stdgo.GoByte>));
            if ((_s : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if ((_tt._n < (0 : stdgo.GoInt) : Bool)) {
                var _b = split((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._sep : stdgo.Slice<stdgo.GoByte>));
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("Split disagrees withSplitN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
            if (((_a.length) > (0 : stdgo.GoInt) : Bool)) {
                var __0 = _a[(0 : stdgo.GoInt)], __1 = _s;
var _out = __1, _in = __0;
                if (((_in.capacity == _out.capacity) && (stdgo.Go.pointer((_in.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)]) == stdgo.Go.pointer((_out.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)])) : Bool)) {
                    _t.errorf(("Join(%#v, %q) didn\'t copy" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._sep));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _splitaftertests) {
            var _a = splitAfterN((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._sep : stdgo.Slice<stdgo.GoByte>), _tt._n);
            var _x:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            {
                var _want = ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((_x : stdgo.GoString) != (_want)) {
                    _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                };
            };
            var _s = join(_a, (null : stdgo.Slice<stdgo.GoUInt8>));
            if ((_s : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if ((_tt._n < (0 : stdgo.GoInt) : Bool)) {
                var _b = splitAfter((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._sep : stdgo.Slice<stdgo.GoByte>));
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("SplitAfter disagrees withSplitAfterN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _fieldstests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.GoByte>);
            var _a = fields(_b);
            var _x:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if ((_b : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_tt._s));
            };
            if (((_tt._a.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var _want = ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if ((_x : stdgo.GoString) != (_want)) {
                        _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
    }
function testFieldsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _fieldstests) {
            var _a = fieldsFunc((_tt._s : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isSpace);
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred = (function(_c:stdgo.GoRune):Bool {
            return _c == ((88 : stdgo.GoInt32));
        } : stdgo.GoInt32 -> Bool);
        var _fieldsFuncTests:stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.FieldsTest> = (new stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.FieldsTest>(4, 4, ...[(new stdgo._internal.bytes_test.Bytes_test.FieldsTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest), (new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("XX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest), (new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("XXhiXXX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hi" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest), (new stdgo._internal.bytes_test.Bytes_test.FieldsTest(("aXXbXXXcX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.bytes_test.Bytes_test.FieldsTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes_test.Bytes_test.FieldsTest)])) : stdgo.Slice<stdgo._internal.bytes_test.Bytes_test.FieldsTest>);
        for (__9 => _tt in _fieldsFuncTests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.GoByte>);
            var _a = fieldsFunc(_b, _pred);
            var _x:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__10 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
            };
            if ((_b : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_tt._s));
            };
            if (((_tt._a.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var _want = ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if ((_x : stdgo.GoString) != (_want)) {
                        _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
    }
function _runStringTests(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:stdgo.Slice<stdgo.GoByte> -> stdgo.Slice<stdgo.GoByte>, _funcName:stdgo.GoString, _testCases:stdgo.Slice<StringTest>):Void {
        for (__0 => _tc in _testCases) {
            var _actual = _f((_tc._in : stdgo.Slice<stdgo.GoByte>));
            if (((_actual == null) && (_tc._out != null) : Bool)) {
                _t.errorf(("%s(%q) = nil; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._out));
            };
            if (((_actual != null) && (_tc._out == null) : Bool)) {
                _t.errorf(("%s(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual));
            };
            if (!equal(_actual, _tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_r:stdgo.GoRune):stdgo.GoString {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _runes) {
            _runes[(_i : stdgo.GoInt)] = _r;
        };
        return (_runes : stdgo.GoString)?.__copy__();
    }
function _rot13(_r:stdgo.GoRune):stdgo.GoRune {
        {};
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (97 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (65 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return _r;
    }
function testMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _a = (_tenRunes((97 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        var _maxRune = (function(_r:stdgo.GoRune):stdgo.GoRune {
            return (1114111 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _m = map_(_maxRune, (_a : stdgo.Slice<stdgo.GoByte>));
        var _expect = (_tenRunes((1114111 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _minRune = (function(_r:stdgo.GoRune):stdgo.GoRune {
            return (97 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = map_(_minRune, (_tenRunes((1114111 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoByte>));
        _expect = _a?.__copy__();
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map_(_rot13, (("a to zed" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _expect = ("n gb mrq" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map_(_rot13, map_(_rot13, (("a to zed" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)));
        _expect = ("a to zed" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _dropNotLatin = (function(_r:stdgo.GoRune):stdgo.GoRune {
            if (stdgo._internal.unicode.Unicode.is_(stdgo._internal.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (-1 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = map_(_dropNotLatin, (("Hello, 세계" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _expect = ("Hello" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _invalidRune = (function(_r:stdgo.GoRune):stdgo.GoRune {
            return (1114112 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = map_(_invalidRune, (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _expect = ("�" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("invalidRune: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runStringTests(_t, toUpper, ("ToUpper" : stdgo.GoString), _upperTests);
    }
function testToLower(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runStringTests(_t, toLower, ("ToLower" : stdgo.GoString), _lowerTests);
    }
function benchmarkToUpper(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _tc in _upperTests) {
            var _tin = (_tc._in : stdgo.Slice<stdgo.GoByte>);
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _actual = toUpper(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(("ToUpper(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _tc in _lowerTests) {
            var _tin = (_tc._in : stdgo.Slice<stdgo.GoByte>);
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _actual = toLower(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(("ToLower(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function testToValidUTF8(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _toValidUTF8Tests) {
            var _got = toValidUTF8((_tc._in : stdgo.Slice<stdgo.GoByte>), (_tc._repl : stdgo.Slice<stdgo.GoByte>));
            if (!equal(_got, (_tc._out : stdgo.Slice<stdgo.GoByte>))) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._repl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function testTrimSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runStringTests(_t, trimSpace, ("TrimSpace" : stdgo.GoString), _trimSpaceTests);
    }
function testRepeat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in repeatTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.GoByte>);
            var _tout = (_tt._out : stdgo.Slice<stdgo.GoByte>);
            var _a = repeat(_tin, _tt._count);
            if (!equal(_a, _tout)) {
                _t.errorf(("Repeat(%q, %d) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_tt._count), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tout));
                continue;
            };
        };
    }
function _repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_r != null) {
                            {
                                final __type__ = _r;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                    var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                    _err = _v;
                                } else {
                                    var _v:stdgo.AnyInterface = __type__?.__underlying__();
                                    _err = stdgo._internal.fmt.Fmt.errorf(("%s" : stdgo.GoString), _v);
                                };
                            };
                        };
                    };
                };
                a();
            });
            repeat(_b, _count);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = {
            var s:stdgo.GoArray<T__struct_4> = new stdgo.GoArray<T__struct_4>(7, 7, ...[for (i in 0 ... 7) ({ _s : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : ("" : stdgo.GoString) } : T__struct_4)]);
            s[0] = ({ _s : ("--" : stdgo.GoString), _count : (-2147483647 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_4);
            s[1] = ({ _s : stdgo.Go.str()?.__copy__(), _count : ((2147483647u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_4);
            s[2] = ({ _s : ("-" : stdgo.GoString), _count : (10 : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_4);
            s[3] = ({ _s : ("gopher" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_4);
            s[4] = ({ _s : ("-" : stdgo.GoString), _count : (-1 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_4);
            s[5] = ({ _s : ("--" : stdgo.GoString), _count : (-102 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_4);
            s[6] = ({ _s : ((new stdgo.Slice<stdgo.GoUInt8>((255 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _count : ((16843010u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : ("overflow" : stdgo.GoString) } : T__struct_4);
            s;
        };
        for (_i => _tt in _tests) {
            var _err = (_repeat((_tt._s : stdgo.Slice<stdgo.GoByte>), _tt._count) : stdgo.Error);
            if (_tt._errStr == (stdgo.Go.str())) {
                if (_err != null) {
                    _t.errorf(("#%d panicked %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if (((_err == null) || !stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _tt._errStr?.__copy__()) : Bool)) {
                _t.errorf(("#%d expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._errStr), stdgo.Go.toInterface(_err));
            };
        };
    }
function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        for (_i => _r in _a) {
            if (_r != (_b[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
function testRunes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in runesTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.GoByte>);
            var _a = runes(_tin);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(("Runes(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s = ((_a : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._in)) {
                    _t.errorf(("string(Runes(%q)) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tin));
                };
            };
        };
    }
function testTrim(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _toFn = (function(_name:stdgo.GoString):{ var _0 : (stdgo.Slice<stdgo.GoByte>, stdgo.GoString) -> stdgo.Slice<stdgo.GoByte>; var _1 : (stdgo.Slice<stdgo.GoByte>, stdgo.Slice<stdgo.GoByte>) -> stdgo.Slice<stdgo.GoByte>; } {
            {
                final __value__ = _name;
                if (__value__ == (("Trim" : stdgo.GoString))) {
                    return { _0 : trim, _1 : null };
                } else if (__value__ == (("TrimLeft" : stdgo.GoString))) {
                    return { _0 : trimLeft, _1 : null };
                } else if (__value__ == (("TrimRight" : stdgo.GoString))) {
                    return { _0 : trimRight, _1 : null };
                } else if (__value__ == (("TrimPrefix" : stdgo.GoString))) {
                    return { _0 : null, _1 : trimPrefix };
                } else if (__value__ == (("TrimSuffix" : stdgo.GoString))) {
                    return { _0 : null, _1 : trimSuffix };
                } else {
                    _t.errorf(("Undefined trim function %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    return { _0 : null, _1 : null };
                };
            };
        } : stdgo.GoString -> { var _0 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>; var _1 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8>; });
        for (__0 => _tc in _trimTests) {
            var _name = (_tc._f?.__copy__() : stdgo.GoString);
            var __tmp__ = _toFn(_name?.__copy__()), _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            if (((_f == null) && (_fb == null) : Bool)) {
                continue;
            };
            var _actual:stdgo.GoString = ("" : stdgo.GoString);
            if (_f != null) {
                _actual = (_f((_tc._in : stdgo.Slice<stdgo.GoByte>), _tc._arg?.__copy__()) : stdgo.GoString)?.__copy__();
            } else {
                _actual = (_fb((_tc._in : stdgo.Slice<stdgo.GoByte>), (_tc._arg : stdgo.Slice<stdgo.GoByte>)) : stdgo.GoString)?.__copy__();
            };
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
        for (__9 => _tc in _trimNilTests) {
            var _name = (_tc._f?.__copy__() : stdgo.GoString);
            var __tmp__ = _toFn(_name?.__copy__()), _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            if (((_f == null) && (_fb == null) : Bool)) {
                continue;
            };
            var _actual:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (_f != null) {
                _actual = _f(_tc._in, _tc._arg?.__copy__());
            } else {
                _actual = _fb(_tc._in, (_tc._arg : stdgo.Slice<stdgo.GoByte>));
            };
            var _report = function(_s:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
                if (_s == null) {
                    return ("nil" : stdgo.GoString);
                } else {
                    return stdgo._internal.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_s))?.__copy__();
                };
            };
            if ((_actual.length) != ((0 : stdgo.GoInt))) {
                _t.errorf(("%s(%s, %q) returned non-empty value" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_report(_tc._in)), stdgo.Go.toInterface(_tc._arg));
            } else {
                var _actualNil = (_actual == null : Bool);
                var _outNil = (_tc._out == null : Bool);
                if (_actualNil != (_outNil)) {
                    _t.errorf(("%s(%s, %q) got nil %t; want nil %t" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_report(_tc._in)), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actualNil), stdgo.Go.toInterface(_outNil));
                };
            };
        };
    }
function _not(_p:T_predicate):T_predicate {
        return (new stdgo._internal.bytes_test.Bytes_test.T_predicate(function(_r:stdgo.GoRune):Bool {
            return !_p._f(_r);
        }, (("not " : stdgo.GoString) + _p._name?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.bytes_test.Bytes_test.T_predicate);
    }
function testTrimFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _trimFuncTests) {
            var _trimmers = (new stdgo.Slice<T__struct_5>(3, 3, ...[({ _name : ("TrimFunc" : stdgo.GoString), _trim : trimFunc, _out : _tc._trimOut } : T__struct_5), ({ _name : ("TrimLeftFunc" : stdgo.GoString), _trim : trimLeftFunc, _out : _tc._leftOut } : T__struct_5), ({ _name : ("TrimRightFunc" : stdgo.GoString), _trim : trimRightFunc, _out : _tc._rightOut } : T__struct_5)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _trim : null, _out : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
            for (__1 => _trimmer in _trimmers) {
                var _actual = _trimmer._trim((_tc._in : stdgo.Slice<stdgo.GoByte>), _tc._f._f);
                if (((_actual == null) && (_trimmer._out != null) : Bool)) {
                    _t.errorf(("%s(%q, %q) = nil; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_trimmer._out));
                };
                if (((_actual != null) && (_trimmer._out == null) : Bool)) {
                    _t.errorf(("%s(%q, %q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual));
                };
                if (!equal(_actual, _trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _indexFuncTests) {
            var _first = (indexFunc((_tc._in : stdgo.Slice<stdgo.GoByte>), _tc._f._f) : stdgo.GoInt);
            if (_first != (_tc._first)) {
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_first), stdgo.Go.toInterface(_tc._first));
            };
            var _last = (lastIndexFunc((_tc._in : stdgo.Slice<stdgo.GoByte>), _tc._f._f) : stdgo.GoInt);
            if (_last != (_tc._last)) {
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_last), stdgo.Go.toInterface(_tc._last));
            };
        };
    }
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in replaceTests) {
            var _in = ((_tt._in : stdgo.Slice<stdgo.GoByte>).__append__(...(("<spare>" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _in = (_in.__slice__(0, (_tt._in.length)) : stdgo.Slice<stdgo.GoUInt8>);
            var _out = replace(_in, (_tt._old : stdgo.Slice<stdgo.GoByte>), (_tt._new : stdgo.Slice<stdgo.GoByte>), _tt._n);
            {
                var _s = ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
            if (((_in.capacity == _out.capacity) && (stdgo.Go.pointer((_in.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)]) == stdgo.Go.pointer((_out.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)])) : Bool)) {
                _t.errorf(("Replace(%q, %q, %q, %d) didn\'t copy" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n));
            };
            if (_tt._n == ((-1 : stdgo.GoInt))) {
                var _out = replaceAll(_in, (_tt._old : stdgo.Slice<stdgo.GoByte>), (_tt._new : stdgo.Slice<stdgo.GoByte>));
                {
                    var _s = ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._out)) {
                        _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
function testTitle(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in titleTests) {
            {
                var _s = ((title((_tt._in : stdgo.Slice<stdgo.GoByte>)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Title(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testToTitle(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in toTitleTests) {
            {
                var _s = ((toTitle((_tt._in : stdgo.Slice<stdgo.GoByte>)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("ToTitle(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testEqualFold(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in equalFoldTests) {
            {
                var _out = (equalFold((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._t : stdgo.Slice<stdgo.GoByte>)) : Bool);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = (equalFold((_tt._t : stdgo.Slice<stdgo.GoByte>), (_tt._s : stdgo.Slice<stdgo.GoByte>)) : Bool);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testCut(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _cutTests) {
            {
                var __tmp__ = cut((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
                if ((((_before : stdgo.GoString) != (_tt._before) || (_after : stdgo.GoString) != (_tt._after) : Bool) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _cutPrefixTests) {
            {
                var __tmp__ = cutPrefix((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._sep : stdgo.Slice<stdgo.GoByte>)), _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
                if ((((_after : stdgo.GoString) != _tt._after) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutSuffix(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _cutSuffixTests) {
            {
                var __tmp__ = cutSuffix((_tt._s : stdgo.Slice<stdgo.GoByte>), (_tt._sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
                if ((((_before : stdgo.GoString) != _tt._before) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("CutSuffix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testBufferGrowNegative(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Grow(-1) should have panicked" : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            _b.grow((-1 : stdgo.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Truncate(-1) should have panicked" : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            _b.truncate((-1 : stdgo.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Truncate(20) should have panicked" : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            _b.write((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _b.truncate((20 : stdgo.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _containsTests) {
            {
                var _got = (contains(_tt._b, _tt._subslice) : Bool);
                if (_got != (_tt._want)) {
                    _t.errorf(("Contains(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_tt._subslice), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testContainsAny(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ct in containsAnyTests) {
            if (containsAny(_ct._b, _ct._substr?.__copy__()) != (_ct._expected)) {
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsRune(_ct._b, _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsFunc(_ct._b, function(_r:stdgo.GoRune):Bool {
                return _ct._r == (_r);
            }) != (_ct._expected)) {
                _t.errorf(("ContainsFunc(%q, func(%q)) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function benchmarkFields(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _sd in _bytesdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _j = (16 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (1048576 : stdgo.GoInt) : Bool), _j = (_j << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    fields(_data);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _sd in _bytesdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _j = (16 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (1048576 : stdgo.GoInt) : Bool), _j = (_j << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    fieldsFunc(_data, stdgo._internal.unicode.Unicode.isSpace);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_14>(4, 4, ...[({ _name : ("NoTrim" : stdgo.GoString), _input : (("typical" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) } : T__struct_14), ({ _name : ("ASCII" : stdgo.GoString), _input : (("  foo bar  " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) } : T__struct_14), ({ _name : ("SomeNonASCII" : stdgo.GoString), _input : (("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) } : T__struct_14), ({ _name : ("JustNonASCII" : stdgo.GoString), _input : (("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) } : T__struct_14)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_14)])) : stdgo.Slice<T__struct_14>);
        for (__0 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        trimSpace(_test._input);
                    });
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_14>(3, 3, ...[({ _name : ("Valid" : stdgo.GoString), _input : (("typical" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) } : T__struct_14), ({ _name : ("InvalidASCII" : stdgo.GoString), _input : (stdgo.Go.str("foo", 255, "bar") : stdgo.Slice<stdgo.GoByte>) } : T__struct_14), ({ _name : ("InvalidNonASCII" : stdgo.GoString), _input : (stdgo.Go.str("日本語", 255, "日本語") : stdgo.Slice<stdgo.GoByte>) } : T__struct_14)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_14)])) : stdgo.Slice<T__struct_14>);
        var _replacement = (("�" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b.resetTimer();
        for (__8 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        toValidUTF8(_test._input, _replacement);
                    });
                };
            });
        };
    }
function _makeBenchInputHard():stdgo.Slice<stdgo.GoByte> {
        var _tokens = (new stdgo.GoArray<stdgo.GoString>(10, 10, ...[("<a>" : stdgo.GoString), ("<p>" : stdgo.GoString), ("<b>" : stdgo.GoString), ("<strong>" : stdgo.GoString), ("</a>" : stdgo.GoString), ("</p>" : stdgo.GoString), ("</b>" : stdgo.GoString), ("</strong>" : stdgo.GoString), ("hello" : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var _i = (stdgo._internal.math.rand.Rand.intn((_tokens.length)) : stdgo.GoInt);
            if ((((_x.length) + (_tokens[(_i : stdgo.GoInt)].length) : stdgo.GoInt) >= (1048576 : stdgo.GoInt) : Bool)) {
                break;
            };
            _x = (_x.__append__(...(_tokens[(_i : stdgo.GoInt)] : Array<stdgo.GoUInt8>)));
        };
        return _x;
    }
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                index(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                lastIndex(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkCountHard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                count(_benchInputHard, _sep);
            });
        };
    }
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("</pre>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<b>hello world</b>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<pre><b>hello</b><strong>world</strong></pre>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("<>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("</pre>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("<b>hello world</b>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkCountHard1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("<>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkCountHard2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("</pre>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkCountHard3(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("<b>hello world</b>" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
    }
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                split(_benchInputHard, (null : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _sep = (("/" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _sep = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _sep = (("/" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                splitN(_benchInputHard, _sep, (10 : stdgo.GoInt));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _sep = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                splitN(_benchInputHard, _sep, (10 : stdgo.GoInt));
            });
        };
    }
function benchmarkRepeat(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                repeat((("-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (80 : stdgo.GoInt));
            });
        };
    }
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = repeat((("@" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (8192 : stdgo.GoInt));
        {
            var _j = (8 : stdgo.GoInt);
            stdgo.Go.cfor((_j <= (30 : stdgo.GoInt) : Bool), _j++, {
                for (__0 => _k in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (16 : stdgo.GoInt), (4097 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                    var _s = (_s.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>);
                    var _n = ((((1 : stdgo.GoInt) << _j : stdgo.GoInt)) / _k : stdgo.GoInt);
                    if (_n == ((0 : stdgo.GoInt))) {
                        continue;
                    };
                    _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d/%d" : stdgo.GoString), stdgo.Go.toInterface(((1 : stdgo.GoInt) << _j : stdgo.GoInt)), stdgo.Go.toInterface(_k))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                repeat(_s, _n);
                            });
                        };
                        _b.setBytes(((_n * (_s.length) : stdgo.GoInt) : stdgo.GoInt64));
                    });
                };
            });
        };
    }
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _n = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (2048 : stdgo.GoInt) : Bool), _n = (_n << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                _b.run(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    var _x:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var _y:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            _x[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                        });
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            _y[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                        });
                    };
                    _b.resetTimer();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            compare(_x, _y);
                        });
                    };
                });
            });
        };
    }
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(35 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (2048 : stdgo.GoInt));
        var _cs = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        {
            var _k = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_k <= (2048 : stdgo.GoInt) : Bool), _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (64 : stdgo.GoInt) : Bool), _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    indexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(35 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (2048 : stdgo.GoInt));
        var _cs = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : stdgo.GoString);
        {
            var _k = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_k <= (2048 : stdgo.GoInt) : Bool), _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (64 : stdgo.GoInt) : Bool), _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    indexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(35 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (2048 : stdgo.GoInt));
        var _cs = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        {
            var _k = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_k <= (2048 : stdgo.GoInt) : Bool), _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (64 : stdgo.GoInt) : Bool), _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(35 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (2048 : stdgo.GoInt));
        var _cs = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : stdgo.GoString);
        {
            var _k = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_k <= (2048 : stdgo.GoInt) : Bool), _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (64 : stdgo.GoInt) : Bool), _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _cs = ("0123456789abcdef" : stdgo.GoString);
        {
            var _k = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_k <= (4096 : stdgo.GoInt) : Bool), _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (16 : stdgo.GoInt) : Bool), _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            var _x = repeat(((_cs.__slice__(0, _j) : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _k);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    trim((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimByte(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (("  the quick brown fox   " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                trim(_x, (" " : stdgo.GoString));
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _key = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _skip in (new stdgo.GoArray<stdgo.GoInt>(6, 6, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("IndexPeriodic%d" : stdgo.GoString), stdgo.Go.toInterface(_skip))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_buf.length) : Bool), _i = (_i + (_skip) : stdgo.GoInt), {
                        _buf[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    });
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        index(_buf, _key);
                    });
                };
            });
        };
    }
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testClone" + " skip function");
        return;
        var _cloneTests:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(7, 7, ...[((null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Slice<stdgo.GoByte>), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), clone((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), ((stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoByte>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoByte>).__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (("short" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoByte>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _input in _cloneTests) {
            var _clone = clone(_input);
            if (!equal(_clone, _input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_clone), stdgo.Go.toInterface(_input));
            };
            if (((_input == null) && (_clone != null) : Bool)) {
                _t.errorf(("Clone(%#v) return value should be equal to nil slice." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if (((_input != null) && (_clone == null) : Bool)) {
                _t.errorf(("Clone(%#v) return value should not be equal to nil slice." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if (((_input.capacity != (0 : stdgo.GoInt)) && (stdgo._internal.unsafe.Unsafe.sliceData(_input) == stdgo._internal.unsafe.Unsafe.sliceData(_clone)) : Bool)) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
        };
    }
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _compareTests) {
            var _numShifts = (16 : stdgo.GoInt);
            var _buffer = (new stdgo.Slice<stdgo.GoUInt8>(((_tt._b.length) + _numShifts : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _offset = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_offset <= _numShifts : Bool), _offset++, {
                    var _shiftedB = (_buffer.__slice__(_offset, ((_tt._b.length) + _offset : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    stdgo.Go.copySlice(_shiftedB, _tt._b);
                    var _cmp = (compare(_tt._a, _shiftedB) : stdgo.GoInt);
                    if (_cmp != (_tt._i)) {
                        _t.errorf(("Compare(%q, %q), offset %d = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_cmp), stdgo.Go.toInterface(_tt._i));
                    };
                });
            };
        };
    }
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        if (compare(_b, _b) != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("b != b" : stdgo.GoString)));
        };
        if (compare(_b, (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("b > b[:1] failed" : stdgo.GoString)));
        };
    }
function testCompareBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testCompareBytes" + " skip function");
        return;
        var _lengths = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (128 : stdgo.GoInt) : Bool), _i++, {
                _lengths = (_lengths.__append__(_i));
            });
        };
        _lengths = (_lengths.__append__((256 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt), (1333 : stdgo.GoInt), (4095 : stdgo.GoInt), (4096 : stdgo.GoInt), (4097 : stdgo.GoInt)));
        if (!stdgo._internal.testing.Testing.short()) {
            _lengths = (_lengths.__append__((65535 : stdgo.GoInt), (65536 : stdgo.GoInt), (65537 : stdgo.GoInt), (99999 : stdgo.GoInt)));
        };
        var _n = (_lengths[((_lengths.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_n + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _len in _lengths) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _len : Bool), _i++, {
                    _a[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
                    _b[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
                });
            };
            {
                var _i = (_len : stdgo.GoInt);
                stdgo.Go.cfor((_i <= _n : Bool), _i++, {
                    _a[(_i : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                    _b[(_i : stdgo.GoInt)] = (9 : stdgo.GoUInt8);
                });
            };
            var _cmp = (compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            if (_cmp != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareIdentical(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
            };
            if ((_len > (0 : stdgo.GoInt) : Bool)) {
                _cmp = compare((_a.__slice__(0, (_len - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>));
                if (_cmp != ((-1 : stdgo.GoInt))) {
                    _t.errorf(("CompareAshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
                _cmp = compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, (_len - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                if (_cmp != ((1 : stdgo.GoInt))) {
                    _t.errorf(("CompareBshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
            };
            {
                var _k = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_k < _len : Bool), _k++, {
                    _b[(_k : stdgo.GoInt)] = (_a[(_k : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_cmp != ((1 : stdgo.GoInt))) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.GoInt)] = (_a[(_k : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_cmp != ((-1 : stdgo.GoInt))) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.GoInt)] = _a[(_k : stdgo.GoInt)];
                });
            };
        };
    }
function testEndianBaseCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((512 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((512 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (512 : stdgo.GoInt) : Bool), _i++, {
                _a[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
                _b[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
            });
        };
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (512 : stdgo.GoInt) : Bool), _i = (_i << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _j++, {
                        _a[(_j : stdgo.GoInt)] = (_b[(_j : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        var _cmp = (compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        if (_cmp != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_cmp));
                        };
                        _a[(_j : stdgo.GoInt)] = (_b[(_j : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _cmp = compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                        if (_cmp != ((1 : stdgo.GoInt))) {
                            _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_cmp));
                        };
                        _a[(_j : stdgo.GoInt)] = _b[(_j : stdgo.GoInt)];
                        _a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = _b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)];
                    });
                };
            });
        };
    }
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _b2 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _b2:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((1 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 > b2 failed" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _b1 = (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>);
        var _b2 = _b1;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _b2 = _b1;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _b2 = (("Hello, Gophers" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((-1 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 < b2 failed" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _b2 = (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((-1 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 < b2 failed" : stdgo.GoString)));
                };
            });
        };
    }
function _benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _offset:stdgo.GoInt):Void {
        _b.stopTimer();
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...(("Hello Gophers!" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        var _b2 = (((("12345678" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>).__slice__(0, _offset) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_b1 : Array<stdgo.GoUInt8>)));
        _b.startTimer();
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < _b.n : Bool), _j++, {
                if (compare(_b1, (_b2.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : stdgo.GoInt64));
    }
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                _b.run(stdgo._internal.fmt.Fmt.sprintf(("offset=%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    _benchmarkCompareBytesBigUnaligned(_b, _i);
                });
            });
        };
    }
function _benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _offset:stdgo.GoInt):Void {
        _b.stopTimer();
        var _pattern = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((1048576 : stdgo.GoInt) + (_pattern.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...(_pattern : Array<stdgo.GoUInt8>)));
        };
        var _b2 = (new stdgo.Slice<stdgo.GoUInt8>((_b1.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_b2, _b1);
        _b.startTimer();
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < _b.n : Bool), _j++, {
                if (compare((_b1.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>), (_b2.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes(((_b1.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>).length : stdgo.GoInt64));
    }
function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                _b.run(stdgo._internal.fmt.Fmt.sprintf(("offset=%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    _benchmarkCompareBytesBigBothUnaligned(_b, _i);
                });
            });
        };
    }
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...(("Hello Gophers!" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        var _b2 = ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_b1 : Array<stdgo.GoUInt8>)));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : stdgo.GoInt64));
    }
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _b1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (1048576 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_b1.length) < (1048576 : stdgo.GoInt) : Bool)) {
            _b1 = (_b1.__append__(...(("Hello Gophers!" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        var _b2 = _b1;
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : stdgo.GoInt64));
    }
function exampleBuffer():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _b.write((("Hello " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("world!" : stdgo.GoString));
        _b.writeTo(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
    }
function exampleBuffer_reader():Void {
        var _buf = stdgo._internal.bytes.Bytes.newBufferString(("R29waGVycyBydWxlIQ==" : stdgo.GoString));
        var _dec = (stdgo._internal.encoding.base64.Base64.newDecoder(stdgo._internal.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(_buf)) : stdgo._internal.io.Io.Reader);
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _dec);
    }
function exampleBuffer_Bytes():Void {
        var _buf = (new stdgo._internal.bytes.Bytes.Buffer() : stdgo._internal.bytes.Bytes.Buffer);
        _buf.write((new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(104 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(119 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(100 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_AvailableBuffer():Void {
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                var _b = _buf.availableBuffer();
                _b = stdgo._internal.strconv.Strconv.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                _b = (_b.__append__((32 : stdgo.GoUInt8)));
                _buf.write(_b);
            });
        };
        stdgo._internal.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_Cap():Void {
        var _buf1 = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _buf2 = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_buf1.cap()));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_buf2.cap()));
    }
function exampleBuffer_Grow():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.GoInt));
        var _bb = _b.bytes();
        _b.write((("64 bytes or fewer" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.fmt.Fmt.printf(("%q" : stdgo.GoString), stdgo.Go.toInterface((_bb.__slice__(0, _b.len()) : stdgo.Slice<stdgo.GoUInt8>)));
    }
function exampleBuffer_Len():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.fmt.Fmt.printf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_b.len()));
    }
function exampleBuffer_Next():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString)));
    }
function exampleBuffer_Read():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _rdbuf = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _b.read(_rdbuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_n));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_rdbuf : stdgo.GoString)));
    }
function exampleBuffer_ReadByte():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var __tmp__ = _b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_c));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
    }
function exampleClone():Void {
        var _b = (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _clone = stdgo._internal.bytes.Bytes.clone(_b);
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
        _clone[(0 : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
    }
function exampleCompare():Void {
        var __0:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
var _b = __1, _a = __0;
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) < (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) <= (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) > (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes.compare(_a, _b) >= (0 : stdgo.GoInt) : Bool)) {};
        if (stdgo._internal.bytes.Bytes.equal(_a, _b)) {};
        if (!stdgo._internal.bytes.Bytes.equal(_a, _b)) {};
    }
function exampleCompare_search():Void {
        var _needle:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _haystack:stdgo.Slice<stdgo.Slice<stdgo.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _i = (stdgo._internal.sort.Sort.search((_haystack.length), function(_i:stdgo.GoInt):Bool {
            return (stdgo._internal.bytes.Bytes.compare(_haystack[(_i : stdgo.GoInt)], _needle) >= (0 : stdgo.GoInt) : Bool);
        }) : stdgo.GoInt);
        if (((_i < (_haystack.length) : Bool) && stdgo._internal.bytes.Bytes.equal(_haystack[(_i : stdgo.GoInt)], _needle) : Bool)) {};
    }
function exampleContains():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.contains((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleContainsAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("fÄo!" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("去是伟大的." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsAny((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), stdgo.Go.str()?.__copy__())));
    }
function exampleContainsRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (102 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (246 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (22823 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (33 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.containsRune((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (64 : stdgo.GoInt32))));
    }
function exampleCount():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.count((("cheese" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("e" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.count((("five" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleCut():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes.cut((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo._internal.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("Badger" : stdgo.GoString));
    }
function exampleCutPrefix():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes.cutPrefix((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
function exampleCutSuffix():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes.cutSuffix((_s : stdgo.Slice<stdgo.GoByte>), (_sep : stdgo.Slice<stdgo.GoByte>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
function exampleEqual():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("C++" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleEqualFold():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equalFold((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleFields():Void {
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.fields((("  foo bar  baz   " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleFieldsFunc():Void {
        var _f = (function(_c:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_c) && !stdgo._internal.unicode.Unicode.isNumber(_c) : Bool);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.fieldsFunc((("  foo1;bar2,baz3..." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
    }
function exampleHasPrefix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("C" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleHasSuffix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("O" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("Ami" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("ken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("dmr" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((107 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((103 : stdgo.GoUInt8) : stdgo.GoByte))));
    }
function exampleIndexFunc():Void {
        var _f = (function(_c:stdgo.GoRune):Bool {
            return stdgo._internal.unicode.Unicode.is_(stdgo._internal.unicode.Unicode.han, _c);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexFunc((("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexFunc((("Hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _f)));
    }
function exampleIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexAny((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("aeiouy" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexAny((("crwth" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("aeiouy" : stdgo.GoString))));
    }
function exampleIndexRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (107 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (100 : stdgo.GoInt32))));
    }
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, ...[(("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("baz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.join(_s, ((", " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleLastIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.index((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("rodent" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleLastIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("MüQp" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexAny((("go 地鼠" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("地大" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("z,!." : stdgo.GoString))));
    }
function exampleLastIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((103 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((114 : stdgo.GoUInt8) : stdgo.GoByte))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ((122 : stdgo.GoUInt8) : stdgo.GoByte))));
    }
function exampleLastIndexFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber)));
    }
function exampleMap():Void {
        var _rot13 = (function(_r:stdgo.GoRune):stdgo.GoRune {
            if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((65 : stdgo.GoInt32) + ((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32);
            } else if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((97 : stdgo.GoInt32) + ((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32);
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.map_(_rot13, (("\'Twas brillig and the slithy gopher..." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleReader_Len():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.newReader((("Hi!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)).len()));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.newReader((("こんにちは!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)).len()));
    }
function exampleRepeat():Void {
        stdgo._internal.fmt.Fmt.printf(("ba%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.repeat((("na" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
    }
function exampleReplace():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("k" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("ky" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.replaceAll((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleRunes():Void {
        var _rs = stdgo._internal.bytes.Bytes.runes((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        for (__0 => _r in _rs) {
            stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
    }
function exampleSplit():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split((("a man a plan a canal panama" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("a " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split(((" xyz " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.split((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (("Bernardo O\'Higgins" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleSplitN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
        var _z = stdgo._internal.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (0 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.splitAfter((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleSplitAfterN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.splitAfterN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (2 : stdgo.GoInt))));
    }
function exampleTitle():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.title((("her royal highness" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleToTitle():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toTitle((("loud noises" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toTitle((("хлеб" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleToTitleSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo._internal.bytes.Bytes.toTitleSpecial(stdgo._internal.unicode.Unicode.azeriCase, _str);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ToTitle : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
function exampleToValidUTF8():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toValidUTF8((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("�" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toValidUTF8((stdgo.Go.str("a", 255, "b", 192, 175, "c", 255) : stdgo.Slice<stdgo.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toValidUTF8((stdgo.Go.str(237, 160, 128) : stdgo.Slice<stdgo.GoByte>), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleTrim():Void {
        stdgo._internal.fmt.Fmt.printf(("[%q]" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.trim(((" !!! Achtung! Achtung! !!! " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("! " : stdgo.GoString))));
    }
function exampleTrimFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("\"go-gopher!\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
function exampleTrimLeft():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeft((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
function exampleTrimLeftFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeftFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeftFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimLeftFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
function exampleTrimPrefix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Goodbye,, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.bytes.Bytes.trimPrefix(_b, (("Goodbye," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = stdgo._internal.bytes.Bytes.trimPrefix(_b, (("See ya," : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.fmt.Fmt.printf(("Hello%s" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
function exampleTrimSpace():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.trimSpace(((" \t\n a lone gopher \n\t\r\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleTrimSuffix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Hello, goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.bytes.Bytes.trimSuffix(_b, (("goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = stdgo._internal.bytes.Bytes.trimSuffix(_b, (("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b = (_b.__append__(...(stdgo._internal.bytes.Bytes.trimSuffix((("world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("x!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : Array<stdgo.GoUInt8>)));
        stdgo._internal.os.Os.stdout.write(_b);
    }
function exampleTrimRight():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRight((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
function exampleTrimRightFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRightFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRightFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes.trimRightFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), stdgo._internal.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
function exampleToLower():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toLower((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleToLowerSpecial():Void {
        var _str = (("AHOJ VÝVOJÁRİ GOLANG" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo._internal.bytes.Bytes.toLowerSpecial(stdgo._internal.unicode.Unicode.azeriCase, _str);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ToLower : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
function exampleToUpper():Void {
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.toUpper((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleToUpperSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _totitle = stdgo._internal.bytes.Bytes.toUpperSpecial(stdgo._internal.unicode.Unicode.azeriCase, _str);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ToUpper : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _tests = (new stdgo.Slice<T__struct_15>(9, 9, ...[({ _seek : (0 : stdgo.GoInt), _off : (0i64 : stdgo.GoInt64), _n : (20 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15), ({ _seek : (0 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _want : ("1" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (3i64 : stdgo.GoInt64), _n : (2 : stdgo.GoInt), _want : ("34" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15), ({ _seek : (0 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _seekerr : ("bytes.Reader.Seek: negative position" : stdgo.GoString), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error) } : T__struct_15), ({ _seek : (0 : stdgo.GoInt), _off : (8589934592i64 : stdgo.GoInt64), _wantpos : (8589934592i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io.eof, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : T__struct_15), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (8589934593i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io.eof, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : T__struct_15), ({ _seek : (0 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("01234" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15), ({ _seek : (1 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("56789" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15), ({ _seek : (2 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _wantpos : (9i64 : stdgo.GoInt64), _want : ("9" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _seek : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15)])) : stdgo.Slice<T__struct_15>);
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_tt._seekerr != stdgo.Go.str()) : Bool)) {
                _t.errorf(("%d. want seek error %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if (((_err != null) && (_err.error() != _tt._seekerr) : Bool)) {
                _t.errorf(("%d. seek error = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if (((_tt._wantpos != (0i64 : stdgo.GoInt64)) && (_tt._wantpos != _pos) : Bool)) {
                _t.errorf(("%d. pos = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_tt._wantpos));
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_tt._n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt._readerr))) {
                _t.errorf(("%d. read = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._readerr));
                continue;
            };
            var _got = (((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {
            var __tmp__ = _r.seek((2147483653i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("Read = %d, %v; want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function testReaderAt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _tests = (new stdgo.Slice<T__struct_16>(6, 6, ...[({ _off : (0i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : T__struct_16), ({ _off : (1i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : stdgo.Go.toInterface(stdgo._internal.io.Io.eof) } : T__struct_16), ({ _off : (1i64 : stdgo.GoInt64), _n : (9 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : T__struct_16), ({ _off : (11i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(stdgo._internal.io.Io.eof) } : T__struct_16), ({ _off : (0i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : (null : stdgo.AnyInterface) } : T__struct_16), ({ _off : (-1i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(("bytes.Reader.ReadAt: negative offset" : stdgo.GoString)) } : T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : T__struct_16)])) : stdgo.Slice<T__struct_16>);
        for (_i => _tt in _tests) {
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((_tt._n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got = (((_b.__slice__(0, _rn) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
            if (stdgo._internal.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err)) != (stdgo._internal.fmt.Fmt.sprintf(("%v" : stdgo.GoString), _tt._wanterr))) {
                _t.errorf(("%d. got error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), _tt._wanterr);
            };
        };
    }
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                            _r.readAt((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoInt64));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a(_i);
                });
            });
        };
        _wg.wait_();
    }
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                _wg.add((2 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                            _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            _r.read((null : stdgo.Slice<stdgo.GoUInt8>));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
function testReaderWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt), {
                var _l:stdgo.GoInt = (0 : stdgo.GoInt);
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _l = ((_testString.length) / _i : stdgo.GoInt);
                };
                var _s = ((_testString.__slice__(0, _l) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _r = newReader((_testBytes.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                var _b:Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect = (_s.length : stdgo.GoInt64);
                    if (_n != (_expect)) {
                        _t.errorf(("got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(("for length %d: got error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_err));
                };
                if ((_b.string() : stdgo.GoString) != (_s)) {
                    _t.errorf(("got string %q; want %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(_s));
                };
                if (_r.len() != ((0 : stdgo.GoInt))) {
                    _t.errorf(("reader contains %v bytes; want 0" : stdgo.GoString), stdgo.Go.toInterface(_r.len()));
                };
            });
        };
    }
function testReaderLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _r = newReader((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {
            var __0 = (_r.len() : stdgo.GoInt), __1 = (11 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (10 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Read failed: read %d %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0 = (_r.len() : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Read failed: read %d %v; want 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0 = (_r.len() : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            {
                var __tmp__ = _reader.readRune(), __1:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err = (_reader.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.errorf(("Unreading after %s: expected error" : stdgo.GoString), stdgo.Go.toInterface(_tt._name));
            };
        };
    }
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = newBuffer((("groucho" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {
            var __tmp__ = _buf.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_buf.unreadByte() : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_buf.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte: expected error, got nil" : stdgo.GoString)));
            };
        };
    }
@:structInit class T_testReaderCopyNothing___localname___nErr_5822 {
    public var _n : stdgo.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.GoInt64, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___nErr_5822(_n, _err);
    }
}
@:structInit @:using(stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justReader_5869_static_extension) class T_testReaderCopyNothing___localname___justReader_5869 {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?reader:stdgo._internal.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return reader.read(__0);
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___justReader_5869(reader);
    }
}
@:structInit @:using(stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justWriter_5910_static_extension) class T_testReaderCopyNothing___localname___justWriter_5910 {
    @:embedded
    public var writer : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?writer:stdgo._internal.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return writer.write(__0);
    public function __copy__() {
        return new T_testReaderCopyNothing___localname___justWriter_5910(writer);
    }
}
function testReaderCopyNothing(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        {};
        var _discard = (new stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justWriter_5910(stdgo._internal.io.Io.discard) : stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justWriter_5910);
        var __0:T_testReaderCopyNothing___localname___nErr_5822 = ({} : stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___nErr_5822), __1:T_testReaderCopyNothing___localname___nErr_5822 = ({} : stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___nErr_5822);
var _withOut = __1, _with = __0;
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_discard), stdgo.Go.asInterface(newReader((null : stdgo.Slice<stdgo.GoUInt8>))));
            _with._n = __tmp__._0;
            _with._err = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_discard), stdgo.Go.asInterface((new stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justReader_5869(stdgo.Go.asInterface(newReader((null : stdgo.Slice<stdgo.GoUInt8>)))) : stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justReader_5869)));
            _withOut._n = __tmp__._0;
            _withOut._err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_with) != stdgo.Go.toInterface(_withOut)) {
            _t.errorf(("behavior differs: with = %#v; without: %#v" : stdgo.GoString), stdgo.Go.toInterface(_with), stdgo.Go.toInterface(_withOut));
        };
    }
function testReaderLenSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testReaderLenSize" + " skip function");
        return;
        var _r = newReader((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.io.Io.copyN(stdgo._internal.io.Io.discard, stdgo.Go.asInterface(_r), (1i64 : stdgo.GoInt64));
        if (_r.len() != ((2 : stdgo.GoInt))) {
            _t.errorf(("Len = %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_r.len()));
        };
        if (_r.size() != ((3i64 : stdgo.GoInt64))) {
            _t.errorf(("Size = %d; want 3" : stdgo.GoString), stdgo.Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader((("世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {
            var __tmp__ = _r.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(("ReadRune: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {};
        _r.reset((("abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {
            var _err = (_r.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.errorf(("UnreadRune: expected error, got nil" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo._internal.io.Io.readAll(stdgo.Go.asInterface(_r)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadAll: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("abcdef" : stdgo.GoString))) {
                _t.errorf(("ReadAll: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("abcdef" : stdgo.GoString)));
            };
        };
    }
function testReaderZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _l = ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).len() : stdgo.GoInt);
            if (_l != ((0 : stdgo.GoInt))) {
                _t.errorf(("Len: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).readAt((null : stdgo.Slice<stdgo.GoUInt8>), (11i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_b != (0 : stdgo.GoUInt8)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).readRune(), _ch:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != ((0 : stdgo.GoInt32)) || _size != ((0 : stdgo.GoInt)) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_ch), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).seek((11i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _offset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_offset != (11i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                _t.errorf(("Seek: got %d, %v; want 11, nil" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _s = ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).size() : stdgo.GoInt64);
            if (_s != ((0i64 : stdgo.GoInt64))) {
                _t.errorf(("Size: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        if ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).unreadByte() == null) {
            _t.errorf(("UnreadByte: got nil, want error" : stdgo.GoString));
        };
        if ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).unreadRune() == null) {
            _t.errorf(("UnreadRune: got nil, want error" : stdgo.GoString));
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader() : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>).writeTo(stdgo._internal.io.Io.discard), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
@:keep var _ = {
        try {
            _testBytes = (new stdgo.Slice<stdgo.GoUInt8>((10000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                    _testBytes[(_i : stdgo.GoInt)] = ((97 : stdgo.GoUInt8) + ((_i % (26 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) : stdgo.GoUInt8);
                });
            };
            _testString = (_testBytes : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_negativeReader_asInterface {
    @:keep
    public dynamic function read(_0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_negativeReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T_negativeReader_asInterface) class T_negativeReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_negativeReader>, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_negativeReader> = _r;
        return { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
class T_panicReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_panicReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T_panicReader_asInterface) class T_panicReader_static_extension {
    @:keep
    static public function read( _r:T_panicReader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:T_panicReader = _r?.__copy__();
        if (_r._panic) {
            throw stdgo.Go.toInterface(("oops" : stdgo.GoString));
        };
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
    }
}
class T_testReaderCopyNothing___localname___justReader_5869_asInterface {
    @:embedded
    public dynamic function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testReaderCopyNothing___localname___justReader_5869>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justReader_5869_asInterface) class T_testReaderCopyNothing___localname___justReader_5869_static_extension {
    @:embedded
    public static function read( __self__:T_testReaderCopyNothing___localname___justReader_5869, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
}
class T_testReaderCopyNothing___localname___justWriter_5910_asInterface {
    @:embedded
    public dynamic function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testReaderCopyNothing___localname___justWriter_5910>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes_test.Bytes_test.T_testReaderCopyNothing___localname___justWriter_5910_asInterface) class T_testReaderCopyNothing___localname___justWriter_5910_static_extension {
    @:embedded
    public static function write( __self__:T_testReaderCopyNothing___localname___justWriter_5910, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(__0);
}
