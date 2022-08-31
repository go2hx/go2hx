package stdgo.bytes_test;
import stdgo.bytes.Bytes;
import stdgo.bytes.Bytes;
import stdgo.bytes.Bytes;
import stdgo.bytes.Bytes;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _readBytesTests : Slice<T__struct_0> = (new Slice<T__struct_0>(0, 0, ({ _buffer : (Go.str() : GoString), _delim : (0 : GoUInt8), _expected : (new Slice<GoString>(0, 0, (Go.str() : GoString)) : Slice<GoString>), _err : stdgo.io.Io.eof } : T__struct_0), ({ _buffer : (Go.str("a", 0) : GoString), _delim : (0 : GoUInt8), _expected : (new Slice<GoString>(0, 0, (Go.str("a", 0) : GoString)) : Slice<GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : (Go.str("abbbaaaba") : GoString), _delim : ("b".code : GoUInt8), _expected : (new Slice<GoString>(0, 0, (Go.str("ab") : GoString), (Go.str("b") : GoString), (Go.str("b") : GoString), (Go.str("aaab") : GoString)) : Slice<GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : (Go.str("hello", 1, "world") : GoString), _delim : (1 : GoUInt8), _expected : (new Slice<GoString>(0, 0, (Go.str("hello", 1) : GoString)) : Slice<GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : (Go.str("foo\nbar") : GoString), _delim : (0 : GoUInt8), _expected : (new Slice<GoString>(0, 0, (Go.str("foo\nbar") : GoString)) : Slice<GoString>), _err : stdgo.io.Io.eof } : T__struct_0), ({ _buffer : (Go.str("alpha\nbeta\ngamma\n") : GoString), _delim : ("\n".code : GoUInt8), _expected : (new Slice<GoString>(0, 0, (Go.str("alpha\n") : GoString), (Go.str("beta\n") : GoString), (Go.str("gamma\n") : GoString)) : Slice<GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : (Go.str("alpha\nbeta\ngamma") : GoString), _delim : ("\n".code : GoUInt8), _expected : (new Slice<GoString>(0, 0, (Go.str("alpha\n") : GoString), (Go.str("beta\n") : GoString), (Go.str("gamma") : GoString)) : Slice<GoString>), _err : stdgo.io.Io.eof } : T__struct_0)) : Slice<T__struct_0>);
var _abcd : GoString = (Go.str("abcd") : GoString);
var _faces : GoString = (Go.str("☺☻☹") : GoString);
var _commas : GoString = (Go.str("1,2,3,4") : GoString);
var _dots : GoString = (Go.str("1....2....3....4") : GoString);
var _indexTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str() : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("foo") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fo") : GoString), (Go.str("foo") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str("baz") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str("foo") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("oofofoofooo") : GoString), (Go.str("f") : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("oofofoofooo") : GoString), (Go.str("foo") : GoString), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("barfoobarfoo") : GoString), (Go.str("foo") : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str() : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str("o") : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abcABCabc") : GoString), (Go.str("A") : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("x") : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("x") : GoString), (Go.str("x") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("a") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("b") : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("c") : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("x") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("barfoobarfooyyyzzzyyyzzzyyyzzzyyyxxxzzzyyy") : GoString), (Go.str("x") : GoString), (33 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofooofoboo") : GoString), (Go.str("oo") : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofoboo") : GoString), (Go.str("ob") : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofoboo") : GoString), (Go.str("boo") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofoboo") : GoString), (Go.str("oboo") : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoooboo") : GoString), (Go.str("fooo") : GoString), (8 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofoboo") : GoString), (Go.str("foboo") : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofoboo") : GoString), (Go.str("fofob") : GoString), (8 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffof") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffof") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofo") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofo") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofoo") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofoo") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofoob") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofoob") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofooba") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofooba") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofoobar") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofoobar") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofoobarf") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofoobarf") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofoobarfo") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofoobarfo") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foffofoobarfoo") : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("foffofoobarfoo") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("ofoffofoobarfoo") : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("ofoffofoobarfoo") : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("fofoffofoobarfoo") : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofofofoffofoobarfoo") : GoString), (Go.str("fofoffofoobarfoo") : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fofofofofoofofoffofoobarfoo") : GoString), (Go.str("foobars") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foofyfoobarfoobar") : GoString), (Go.str("y") : GoString), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("oooooooooooooooooooooo") : GoString), (Go.str("r") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("oxoxoxoxoxoxoxoxoxoxoxoy") : GoString), (Go.str("oy") : GoString), (22 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("oxoxoxoxoxoxoxoxoxoxoxox") : GoString), (Go.str("oy") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("000000000000000000000000000000000000000000000000000000000000000000000001") : GoString), (Go.str("0000000000000000000000000000000000000000000000000000000000000000001") : GoString), (5 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
var _lastIndexTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str() : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("foo") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("fo") : GoString), (Go.str("foo") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str("foo") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str("f") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("oofofoofooo") : GoString), (Go.str("f") : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("oofofoofooo") : GoString), (Go.str("foo") : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("barfoobarfoo") : GoString), (Go.str("foo") : GoString), (9 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str() : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("foo") : GoString), (Go.str("o") : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abcABCabc") : GoString), (Go.str("A") : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abcABCabc") : GoString), (Go.str("a") : GoString), (6 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
var _indexAnyTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("abc") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a") : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a") : GoString), (Go.str("a") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str(128) : GoString), (Go.str(255, "b") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("aaa") : GoString), (Go.str("a") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("xyz") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("xcz") : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("ab☺c") : GoString), (Go.str("x☺yz") : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("cx") : GoString), ((Go.str("a☺b☻") : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("uvw☻xyz") : GoString), ((Go.str("a☺b") : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("aRegExp*") : GoString), (Go.str(".(|)*+?^$$[]") : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (Go.str(" ") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("012abcba210") : GoString), (Go.str(255, "b") : GoString), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("012", 128, "bcb", 128, "210") : GoString), (Go.str(255, "b") : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("0123456", 207, 128, "abc") : GoString), (Go.str(207, "b", 128) : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
var _lastIndexAnyTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("abc") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a") : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a") : GoString), (Go.str("a") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str(128) : GoString), (Go.str(255, "b") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("aaa") : GoString), (Go.str("a") : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("xyz") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abc") : GoString), (Go.str("ab") : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("ab☺c") : GoString), (Go.str("x☺yz") : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("cx") : GoString), ((Go.str("a☺b☻") : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("uvw☻xyz") : GoString), ((Go.str("a☺b") : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a.RegExp*") : GoString), (Go.str(".(|)*+?^$$[]") : GoString), (8 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (Go.str(" ") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("012abcba210") : GoString), (Go.str(255, "b") : GoString), (6 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("012", 128, "bcb", 128, "210") : GoString), (Go.str(255, "b") : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("0123456", 207, 128, "abc") : GoString), (Go.str(207, "b", 128) : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
var _indexSizes : Slice<GoInt> = (new Slice<GoInt>(0, 0, (10 : GoInt), (32 : GoInt), (4096 : GoInt), (4194304 : GoInt), (67108864 : GoInt)) : Slice<GoInt>);
var _isRaceBuilder : Bool = stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), (Go.str("-race") : GoString));
var _splittests : Slice<stdgo.bytes_test.Bytes_test.SplitTest> = (new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str() : GoString), (Go.str() : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str("a") : GoString), (0 : GoInt), (null : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str() : GoString), (2 : GoInt), (new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("bcd") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str("a") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str() : GoString), (Go.str("bcd") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str("z") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("abcd") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str() : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString), (Go.str("c") : GoString), (Go.str("d") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_commas, (Go.str(",") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString), (Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_dots, (Go.str("...") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str(".2") : GoString), (Go.str(".3") : GoString), (Go.str(".4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, (Go.str("☹") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("☺☻") : GoString), (Go.str() : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, (Go.str("~") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, (Go.str() : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("☺") : GoString), (Go.str("☻") : GoString), (Go.str("☹") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("1 2 3 4") : GoString), (Go.str(" ") : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3 4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("1 2") : GoString), (Go.str(" ") : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("123") : GoString), (Go.str() : GoString), (2 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("23") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("123") : GoString), (Go.str() : GoString), (17 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("bT") : GoString), (Go.str("T") : GoString), (536870911 : GoInt), (new Slice<GoString>(0, 0, (Go.str("b") : GoString), (Go.str() : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest)) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>);
var _splitaftertests : Slice<stdgo.bytes_test.Bytes_test.SplitTest> = (new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str("a") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("bcd") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str("z") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("abcd") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, (Go.str() : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString), (Go.str("c") : GoString), (Go.str("d") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_commas, (Go.str(",") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1,") : GoString), (Go.str("2,") : GoString), (Go.str("3,") : GoString), (Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_dots, (Go.str("...") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1...") : GoString), (Go.str(".2...") : GoString), (Go.str(".3...") : GoString), (Go.str(".4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, (Go.str("☹") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("☺☻☹") : GoString), (Go.str() : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, (Go.str("~") : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, (Go.str() : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, (Go.str("☺") : GoString), (Go.str("☻") : GoString), (Go.str("☹") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("1 2 3 4") : GoString), (Go.str(" ") : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1 ") : GoString), (Go.str("2 ") : GoString), (Go.str("3 4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("1 2 3") : GoString), (Go.str(" ") : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1 ") : GoString), (Go.str("2 ") : GoString), (Go.str("3") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("1 2") : GoString), (Go.str(" ") : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1 ") : GoString), (Go.str("2") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("123") : GoString), (Go.str() : GoString), (2 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("23") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest((Go.str("123") : GoString), (Go.str() : GoString), (17 : GoInt), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest)) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>);
var _fieldstests : Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = (new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str() : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str(" ") : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str(" \t ") : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("  abc  ") : GoString), (new Slice<GoString>(0, 0, (Go.str("abc") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("1 2 3 4") : GoString), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString), (Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("1  2  3  4") : GoString), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString), (Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("1\t\t2\t\t3\t4") : GoString), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString), (Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("1\u20002\u20013\u20024") : GoString), (new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString), (Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("\u2000\u2001\u2002") : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("\n™\t™\n") : GoString), (new Slice<GoString>(0, 0, (Go.str("™") : GoString), (Go.str("™") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(_faces, (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest)) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>);
var _upperTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = (new Slice<stdgo.bytes_test.Bytes_test.StringTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str() : GoString), ((Go.str() : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("ONLYUPPER") : GoString), ((Go.str("ONLYUPPER") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("abc") : GoString), ((Go.str("ABC") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("AbC123") : GoString), ((Go.str("ABC123") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("azAZ09_") : GoString), ((Go.str("AZAZ09_") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("longStrinGwitHmixofsmaLLandcAps") : GoString), ((Go.str("LONGSTRINGWITHMIXOFSMALLANDCAPS") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("long\u0250string\u0250with\u0250nonascii\u2C6Fchars") : GoString), ((Go.str("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("\u0250\u0250\u0250\u0250\u0250") : GoString), ((Go.str("\u2C6F\u2C6F\u2C6F\u2C6F\u2C6F") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("a\u0080\u{0010FFFF}") : GoString), ((Go.str("A\u0080\u{0010FFFF}") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : Slice<stdgo.bytes_test.Bytes_test.StringTest>);
var _lowerTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = (new Slice<stdgo.bytes_test.Bytes_test.StringTest>(0, 0, (new stdgo.bytes_test.Bytes_test.StringTest((Go.str() : GoString), ((Go.str() : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest((Go.str("abc") : GoString), ((Go.str("abc") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest((Go.str("AbC123") : GoString), ((Go.str("abc123") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest((Go.str("azAZ09_") : GoString), ((Go.str("azaz09_") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest((Go.str("longStrinGwitHmixofsmaLLandcAps") : GoString), ((Go.str("longstringwithmixofsmallandcaps") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest((Go.str("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS") : GoString), ((Go.str("long\u0250string\u0250with\u0250nonascii\u0250chars") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest((Go.str("\u2C6D\u2C6D\u2C6D\u2C6D\u2C6D") : GoString), ((Go.str("\u0251\u0251\u0251\u0251\u0251") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest((Go.str("A\u0080\u{0010FFFF}") : GoString), ((Go.str("a\u0080\u{0010FFFF}") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : Slice<stdgo.bytes_test.Bytes_test.StringTest>);
var _trimSpaceTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = (new Slice<stdgo.bytes_test.Bytes_test.StringTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("  a") : GoString), ((Go.str("a") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("b  ") : GoString), ((Go.str("b") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("abc") : GoString), ((Go.str("abc") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString), ((Go.str("abc") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str(" ") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("\u3000 ") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str(" \u3000") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str(" \t\r\n \t\t\r\r\n\n ") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str(" \t\r\n x\t\t\r\r\n\n ") : GoString), ((Go.str("x") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str(" \u2000\t\r\n x\t\t\r\r\ny\n \u3000") : GoString), ((Go.str("x\t\t\r\r\ny") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("1 \t\r\n2") : GoString), ((Go.str("1 \t\r\n2") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str(" x", 128) : GoString), ((Go.str("x", 128) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str(" x", 192) : GoString), ((Go.str("x", 192) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("x ", 192, 192, " ") : GoString), ((Go.str("x ", 192, 192) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("x ", 192) : GoString), ((Go.str("x ", 192) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("x ", 192, " ") : GoString), ((Go.str("x ", 192) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("x ", 192, 192, " ") : GoString), ((Go.str("x ", 192, 192) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("x ☺", 192, 192, " ") : GoString), ((Go.str("x ☺", 192, 192) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((Go.str("x ☺ ") : GoString), ((Go.str("x ☺") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : Slice<stdgo.bytes_test.Bytes_test.StringTest>);
var _toValidUTF8Tests : Slice<T__struct_3> = (new Slice<T__struct_3>(
0,
0,
({ _in : (Go.str() : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str() : GoString) } : T__struct_3),
({ _in : (Go.str("abc") : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("abc") : GoString) } : T__struct_3),
({ _in : (Go.str("\uFDDD") : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("\uFDDD") : GoString) } : T__struct_3),
({ _in : (Go.str("a", 255, "b") : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("a\uFFFDb") : GoString) } : T__struct_3),
({ _in : (Go.str("a", 255, "b\uFFFD") : GoString), _repl : (Go.str("X") : GoString), _out : (Go.str("aXb\uFFFD") : GoString) } : T__struct_3),
({ _in : (Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255) : GoString), _repl : (Go.str() : GoString), _out : (Go.str("a☺b☺c☺") : GoString) } : T__struct_3),
({ _in : (Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255) : GoString), _repl : (Go.str("日本語") : GoString), _out : (Go.str("a☺日本語b☺日本語c☺日本語") : GoString) } : T__struct_3),
({ _in : (Go.str(192, 175) : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("\uFFFD") : GoString) } : T__struct_3),
({ _in : (Go.str(224, 128, 175) : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("\uFFFD") : GoString) } : T__struct_3),
({ _in : (Go.str(237, 160, 128) : GoString), _repl : (Go.str("abc") : GoString), _out : (Go.str("abc") : GoString) } : T__struct_3),
({ _in : (Go.str(237, 191, 191) : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("\uFFFD") : GoString) } : T__struct_3),
({ _in : (Go.str(240, 128, 128, 175) : GoString), _repl : (Go.str("☺") : GoString), _out : (Go.str("☺") : GoString) } : T__struct_3),
({ _in : (Go.str(248, 128, 128, 128, 175) : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("\uFFFD") : GoString) } : T__struct_3),
({ _in : (Go.str(252, 128, 128, 128, 128, 175) : GoString), _repl : (Go.str("\uFFFD") : GoString), _out : (Go.str("\uFFFD") : GoString) } : T__struct_3)) : Slice<T__struct_3>);
var repeatTests : Slice<stdgo.bytes_test.Bytes_test.RepeatTest> = (new Slice<stdgo.bytes_test.Bytes_test.RepeatTest>(0, 0, (new stdgo.bytes_test.Bytes_test.RepeatTest((Go.str() : GoString), (Go.str() : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest), (new stdgo.bytes_test.Bytes_test.RepeatTest((Go.str() : GoString), (Go.str() : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest), (new stdgo.bytes_test.Bytes_test.RepeatTest((Go.str() : GoString), (Go.str() : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest), (new stdgo.bytes_test.Bytes_test.RepeatTest((Go.str("-") : GoString), (Go.str() : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest), (new stdgo.bytes_test.Bytes_test.RepeatTest((Go.str("-") : GoString), (Go.str("-") : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest), (new stdgo.bytes_test.Bytes_test.RepeatTest((Go.str("-") : GoString), (Go.str("----------") : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest), (new stdgo.bytes_test.Bytes_test.RepeatTest((Go.str("abc ") : GoString), (Go.str("abc abc abc ") : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest)) : Slice<stdgo.bytes_test.Bytes_test.RepeatTest>);
var runesTests : Slice<stdgo.bytes_test.Bytes_test.RunesTest> = (new Slice<stdgo.bytes_test.Bytes_test.RunesTest>(0, 0, (new stdgo.bytes_test.Bytes_test.RunesTest((Go.str() : GoString), (new Slice<GoInt32>(0, 0) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((Go.str(" ") : GoString), (new Slice<GoInt32>(0, 0, (32 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((Go.str("ABC") : GoString), (new Slice<GoInt32>(0, 0, (65 : GoInt32), (66 : GoInt32), (67 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((Go.str("abc") : GoString), (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((Go.str("\u65e5\u672c\u8a9e") : GoString), (new Slice<GoInt32>(0, 0, (26085 : GoInt32), (26412 : GoInt32), (35486 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((Go.str("ab", 128, "c") : GoString), (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), true) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((Go.str("ab", 192, "c") : GoString), (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), true) : stdgo.bytes_test.Bytes_test.RunesTest)) : Slice<stdgo.bytes_test.Bytes_test.RunesTest>);
var _trimTests : Slice<stdgo.bytes_test.Bytes_test.TrimTest> = (new Slice<stdgo.bytes_test.Bytes_test.TrimTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str("abba") : GoString), (Go.str("a") : GoString), (Go.str("bb") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str("abba") : GoString), (Go.str("ab") : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimLeft") : GoString), (Go.str("abba") : GoString), (Go.str("ab") : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimRight") : GoString), (Go.str("abba") : GoString), (Go.str("ab") : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimLeft") : GoString), (Go.str("abba") : GoString), (Go.str("a") : GoString), (Go.str("bba") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimLeft") : GoString), (Go.str("abba") : GoString), (Go.str("b") : GoString), (Go.str("abba") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimRight") : GoString), (Go.str("abba") : GoString), (Go.str("a") : GoString), (Go.str("abb") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimRight") : GoString), (Go.str("abba") : GoString), (Go.str("b") : GoString), (Go.str("abba") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str("<tag>") : GoString), (Go.str("<>") : GoString), (Go.str("tag") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str("* listitem") : GoString), (Go.str(" *") : GoString), (Go.str("listitem") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), ("\"quote\"" : GoString), ("\"" : GoString), (Go.str("quote") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str("\u2C6F\u2C6F\u0250\u0250\u2C6F\u2C6F") : GoString), (Go.str("\u2C6F") : GoString), (Go.str("\u0250\u0250") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str(128, "test", 255) : GoString), (Go.str(255) : GoString), (Go.str("test") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str(" Ġ ") : GoString), (Go.str(" ") : GoString), (Go.str("Ġ") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str(" Ġİ0") : GoString), (Go.str("0 ") : GoString), (Go.str("Ġİ") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str("abba") : GoString), (Go.str() : GoString), (Go.str("abba") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str() : GoString), (Go.str("123") : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("Trim") : GoString), (Go.str() : GoString), (Go.str() : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimLeft") : GoString), (Go.str("abba") : GoString), (Go.str() : GoString), (Go.str("abba") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimLeft") : GoString), (Go.str() : GoString), (Go.str("123") : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimLeft") : GoString), (Go.str() : GoString), (Go.str() : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimRight") : GoString), (Go.str("abba") : GoString), (Go.str() : GoString), (Go.str("abba") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimRight") : GoString), (Go.str() : GoString), (Go.str("123") : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimRight") : GoString), (Go.str() : GoString), (Go.str() : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimRight") : GoString), (Go.str("☺", 192) : GoString), (Go.str("☺") : GoString), (Go.str("☺", 192) : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimPrefix") : GoString), (Go.str("aabb") : GoString), (Go.str("a") : GoString), (Go.str("abb") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimPrefix") : GoString), (Go.str("aabb") : GoString), (Go.str("b") : GoString), (Go.str("aabb") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimSuffix") : GoString), (Go.str("aabb") : GoString), (Go.str("a") : GoString), (Go.str("aabb") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest((Go.str("TrimSuffix") : GoString), (Go.str("aabb") : GoString), (Go.str("b") : GoString), (Go.str("aab") : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest)) : Slice<stdgo.bytes_test.Bytes_test.TrimTest>);
var _trimNilTests : Slice<stdgo.bytes_test.Bytes_test.TrimNilTest> = (new Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("Trim") : GoString), (null : Slice<GoUInt8>), (Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("Trim") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), (Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("Trim") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("Trim") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8), ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("Trim") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("ab") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("Trim") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8), ("b".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("ab") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("Trim") : GoString), ((Go.str("☺") : GoString) : Slice<GoByte>), (Go.str("☺") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimLeft") : GoString), (null : Slice<GoUInt8>), (Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimLeft") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), (Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimLeft") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimLeft") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8), ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimLeft") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("ab") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimLeft") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8), ("b".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("ab") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimLeft") : GoString), ((Go.str("☺") : GoString) : Slice<GoByte>), (Go.str("☺") : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimRight") : GoString), (null : Slice<GoUInt8>), (Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimRight") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), (Go.str() : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimRight") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimRight") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8), ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimRight") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("ab") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimRight") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8), ("b".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("ab") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimRight") : GoString), ((Go.str("☺") : GoString) : Slice<GoByte>), (Go.str("☺") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimPrefix") : GoString), (null : Slice<GoUInt8>), (Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimPrefix") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), (Go.str() : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimPrefix") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimPrefix") : GoString), ((Go.str("☺") : GoString) : Slice<GoByte>), (Go.str("☺") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimSuffix") : GoString), (null : Slice<GoUInt8>), (Go.str() : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimSuffix") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), (Go.str() : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimSuffix") : GoString), (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), (Go.str("a") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest((Go.str("TrimSuffix") : GoString), ((Go.str("☺") : GoString) : Slice<GoByte>), (Go.str("☺") : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest)) : Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>);
var _isSpace : stdgo.bytes_test.Bytes_test.T_predicate = (new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isSpace, (Go.str("IsSpace") : GoString)) : stdgo.bytes_test.Bytes_test.T_predicate);
var _isDigit : stdgo.bytes_test.Bytes_test.T_predicate = (new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isDigit, (Go.str("IsDigit") : GoString)) : stdgo.bytes_test.Bytes_test.T_predicate);
var _isUpper : stdgo.bytes_test.Bytes_test.T_predicate = (new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isUpper, (Go.str("IsUpper") : GoString)) : stdgo.bytes_test.Bytes_test.T_predicate);
var _isValidRune : stdgo.bytes_test.Bytes_test.T_predicate = (new stdgo.bytes_test.Bytes_test.T_predicate(function(_r:GoRune):Bool {
        return _r != (65533 : GoInt32);
    }, (Go.str("IsValidRune") : GoString)) : stdgo.bytes_test.Bytes_test.T_predicate);
var _trimFuncTests : Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest> = (new Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString), ((Go.str("hello") : GoString) : Slice<GoByte>), ((Go.str("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString) : Slice<GoByte>), ((Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isDigit == null ? null : _isDigit.__copy__()), (Go.str("\u0e50\u0e5212hello34\u0e50\u0e51") : GoString), ((Go.str("hello") : GoString) : Slice<GoByte>), ((Go.str("hello34\u0e50\u0e51") : GoString) : Slice<GoByte>), ((Go.str("\u0e50\u0e5212hello") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isUpper == null ? null : _isUpper.__copy__()), (Go.str("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F") : GoString), ((Go.str("hello") : GoString) : Slice<GoByte>), ((Go.str("helloEF\u2C6F\u2C6FGH\u2C6F\u2C6F") : GoString) : Slice<GoByte>), ((Go.str("\u2C6F\u2C6F\u2C6F\u2C6FABCDhello") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()), (Go.str("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello") : GoString), ((Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString) : Slice<GoByte>), ((Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello") : GoString) : Slice<GoByte>), ((Go.str("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), (Go.str("hello\u0e50\u0e521234\u0e50\u0e51helo") : GoString), ((Go.str("\u0e50\u0e521234\u0e50\u0e51") : GoString) : Slice<GoByte>), ((Go.str("\u0e50\u0e521234\u0e50\u0e51helo") : GoString) : Slice<GoByte>), ((Go.str("hello\u0e50\u0e521234\u0e50\u0e51") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isValidRune == null ? null : _isValidRune.__copy__()), (Go.str("ab", 192, "a", 192, "cd") : GoString), ((Go.str(192, "a", 192) : GoString) : Slice<GoByte>), ((Go.str(192, "a", 192, "cd") : GoString) : Slice<GoByte>), ((Go.str("ab", 192, "a", 192) : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (Go.str(192, "a", 192) : GoString), ((Go.str("a") : GoString) : Slice<GoByte>), ((Go.str("a", 192) : GoString) : Slice<GoByte>), ((Go.str(192, "a") : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), (Go.str() : GoString), (null : Slice<GoUInt8>), (null : Slice<GoUInt8>), ((Go.str() : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), (Go.str(" ") : GoString), (null : Slice<GoUInt8>), (null : Slice<GoUInt8>), ((Go.str() : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest)) : Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>);
var _indexFuncTests : Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest> = (new Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str() : GoString), (_isValidRune == null ? null : _isValidRune.__copy__()), (-1 : GoInt), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("abc") : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (-1 : GoInt), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("0123") : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (0 : GoInt), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("a1b") : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (1 : GoInt), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString), (_isSpace == null ? null : _isSpace.__copy__()), (0 : GoInt), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("\u0e50\u0e5212hello34\u0e50\u0e51") : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (0 : GoInt), (18 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F") : GoString), (_isUpper == null ? null : _isUpper.__copy__()), (0 : GoInt), (34 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("12\u0e50\u0e52hello34\u0e50\u0e51") : GoString), (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), (8 : GoInt), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str(128, "1") : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (1 : GoInt), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str(128, "abc") : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (-1 : GoInt), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str(192, "a", 192) : GoString), (_isValidRune == null ? null : _isValidRune.__copy__()), (1 : GoInt), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str(192, "a", 192) : GoString), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (0 : GoInt), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str(192, "☺", 192) : GoString), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (0 : GoInt), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str(192, "☺", 192, 192) : GoString), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (0 : GoInt), (5 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("ab", 192, "a", 192, "cd") : GoString), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (2 : GoInt), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest((Go.str("a", 224, 128, "cd") : GoString), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (1 : GoInt), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest)) : Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>);
var replaceTests : Slice<stdgo.bytes_test.Bytes_test.ReplaceTest> = (new Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("hello") : GoString), (Go.str("l") : GoString), (Go.str("L") : GoString), (0 : GoInt), (Go.str("hello") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("hello") : GoString), (Go.str("l") : GoString), (Go.str("L") : GoString), (-1 : GoInt), (Go.str("heLLo") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("hello") : GoString), (Go.str("x") : GoString), (Go.str("X") : GoString), (-1 : GoInt), (Go.str("hello") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str() : GoString), (Go.str("x") : GoString), (Go.str("X") : GoString), (-1 : GoInt), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("radar") : GoString), (Go.str("r") : GoString), (Go.str("<r>") : GoString), (-1 : GoInt), (Go.str("<r>ada<r>") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str() : GoString), (Go.str() : GoString), (Go.str("<>") : GoString), (-1 : GoInt), (Go.str("<>") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str("a") : GoString), (Go.str("<>") : GoString), (-1 : GoInt), (Go.str("b<>n<>n<>") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str("a") : GoString), (Go.str("<>") : GoString), (1 : GoInt), (Go.str("b<>nana") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str("a") : GoString), (Go.str("<>") : GoString), (1000 : GoInt), (Go.str("b<>n<>n<>") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str("an") : GoString), (Go.str("<>") : GoString), (-1 : GoInt), (Go.str("b<><>a") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str("ana") : GoString), (Go.str("<>") : GoString), (-1 : GoInt), (Go.str("b<>na") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str() : GoString), (Go.str("<>") : GoString), (-1 : GoInt), (Go.str("<>b<>a<>n<>a<>n<>a<>") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str() : GoString), (Go.str("<>") : GoString), (10 : GoInt), (Go.str("<>b<>a<>n<>a<>n<>a<>") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str() : GoString), (Go.str("<>") : GoString), (6 : GoInt), (Go.str("<>b<>a<>n<>a<>n<>a") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str() : GoString), (Go.str("<>") : GoString), (5 : GoInt), (Go.str("<>b<>a<>n<>a<>na") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str() : GoString), (Go.str("<>") : GoString), (1 : GoInt), (Go.str("<>banana") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str("a") : GoString), (Go.str("a") : GoString), (-1 : GoInt), (Go.str("banana") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("banana") : GoString), (Go.str("a") : GoString), (Go.str("a") : GoString), (1 : GoInt), (Go.str("banana") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest((Go.str("☺☻☹") : GoString), (Go.str() : GoString), (Go.str("<>") : GoString), (-1 : GoInt), (Go.str("<>☺<>☻<>☹<>") : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest)) : Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>);
var titleTests : Slice<stdgo.bytes_test.Bytes_test.TitleTest> = (new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str() : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("a") : GoString), (Go.str("A") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str(" aaa aaa aaa ") : GoString), (Go.str(" Aaa Aaa Aaa ") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str(" Aaa Aaa Aaa ") : GoString), (Go.str(" Aaa Aaa Aaa ") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("123a456") : GoString), (Go.str("123a456") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("double-blind") : GoString), (Go.str("Double-Blind") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("ÿøû") : GoString), (Go.str("Ÿøû") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("with_underscore") : GoString), (Go.str("With_underscore") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("unicode ", 226, 128, 168, " line separator") : GoString), (Go.str("Unicode ", 226, 128, 168, " Line Separator") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest)) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>);
var toTitleTests : Slice<stdgo.bytes_test.Bytes_test.TitleTest> = (new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(0, 0, (new stdgo.bytes_test.Bytes_test.TitleTest((Go.str() : GoString), (Go.str() : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("a") : GoString), (Go.str("A") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((Go.str(" aaa aaa aaa ") : GoString), (Go.str(" AAA AAA AAA ") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((Go.str(" Aaa Aaa Aaa ") : GoString), (Go.str(" AAA AAA AAA ") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("123a456") : GoString), (Go.str("123A456") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("double-blind") : GoString), (Go.str("DOUBLE-BLIND") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((Go.str("ÿøû") : GoString), (Go.str("ŸØÛ") : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest)) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>);
var equalFoldTests : Slice<T__struct_6> = (new Slice<T__struct_6>(
0,
0,
({ _s : (Go.str("abc") : GoString), _t : (Go.str("abc") : GoString), _out : true } : T__struct_6),
({ _s : (Go.str("ABcd") : GoString), _t : (Go.str("ABcd") : GoString), _out : true } : T__struct_6),
({ _s : (Go.str("123abc") : GoString), _t : (Go.str("123ABC") : GoString), _out : true } : T__struct_6),
({ _s : (Go.str("αβδ") : GoString), _t : (Go.str("ΑΒΔ") : GoString), _out : true } : T__struct_6),
({ _s : (Go.str("abc") : GoString), _t : (Go.str("xyz") : GoString), _out : false } : T__struct_6),
({ _s : (Go.str("abc") : GoString), _t : (Go.str("XYZ") : GoString), _out : false } : T__struct_6),
({ _s : (Go.str("abcdefghijk") : GoString), _t : (Go.str("abcdefghijX") : GoString), _out : false } : T__struct_6),
({ _s : (Go.str("abcdefghijk") : GoString), _t : (Go.str("abcdefghij\u212A") : GoString), _out : true } : T__struct_6),
({ _s : (Go.str("abcdefghijK") : GoString), _t : (Go.str("abcdefghij\u212A") : GoString), _out : true } : T__struct_6),
({ _s : (Go.str("abcdefghijkz") : GoString), _t : (Go.str("abcdefghij\u212Ay") : GoString), _out : false } : T__struct_6),
({ _s : (Go.str("abcdefghijKz") : GoString), _t : (Go.str("abcdefghij\u212Ay") : GoString), _out : false } : T__struct_6)) : Slice<T__struct_6>);
var _cutTests : Slice<T__struct_7> = (new Slice<T__struct_7>(0, 0, ({ _s : (Go.str("abc") : GoString), _sep : (Go.str("b") : GoString), _before : (Go.str("a") : GoString), _after : (Go.str("c") : GoString), _found : true } : T__struct_7), ({ _s : (Go.str("abc") : GoString), _sep : (Go.str("a") : GoString), _before : (Go.str() : GoString), _after : (Go.str("bc") : GoString), _found : true } : T__struct_7), ({ _s : (Go.str("abc") : GoString), _sep : (Go.str("c") : GoString), _before : (Go.str("ab") : GoString), _after : (Go.str() : GoString), _found : true } : T__struct_7), ({ _s : (Go.str("abc") : GoString), _sep : (Go.str("abc") : GoString), _before : (Go.str() : GoString), _after : (Go.str() : GoString), _found : true } : T__struct_7), ({ _s : (Go.str("abc") : GoString), _sep : (Go.str() : GoString), _before : (Go.str() : GoString), _after : (Go.str("abc") : GoString), _found : true } : T__struct_7), ({ _s : (Go.str("abc") : GoString), _sep : (Go.str("d") : GoString), _before : (Go.str("abc") : GoString), _after : (Go.str() : GoString), _found : false } : T__struct_7), ({ _s : (Go.str() : GoString), _sep : (Go.str("d") : GoString), _before : (Go.str() : GoString), _after : (Go.str() : GoString), _found : false } : T__struct_7), ({ _s : (Go.str() : GoString), _sep : (Go.str() : GoString), _before : (Go.str() : GoString), _after : (Go.str() : GoString), _found : true } : T__struct_7)) : Slice<T__struct_7>);
var _containsTests : Slice<T__struct_8> = (new Slice<T__struct_8>(0, 0, ({ _b : ((Go.str("hello") : GoString) : Slice<GoByte>), _subslice : ((Go.str("hel") : GoString) : Slice<GoByte>), _want : true } : T__struct_8), ({ _b : ((Go.str("日本語") : GoString) : Slice<GoByte>), _subslice : ((Go.str("日本") : GoString) : Slice<GoByte>), _want : true } : T__struct_8), ({ _b : ((Go.str("hello") : GoString) : Slice<GoByte>), _subslice : ((Go.str("Hello, world") : GoString) : Slice<GoByte>), _want : false } : T__struct_8), ({ _b : ((Go.str("東京") : GoString) : Slice<GoByte>), _subslice : ((Go.str("京東") : GoString) : Slice<GoByte>), _want : false } : T__struct_8)) : Slice<T__struct_8>);
var containsAnyTests : Slice<T__struct_9> = (new Slice<T__struct_9>(
0,
0,
({ _b : ((Go.str() : GoString) : Slice<GoByte>), _substr : (Go.str() : GoString), _expected : false } : T__struct_9),
({ _b : ((Go.str() : GoString) : Slice<GoByte>), _substr : (Go.str("a") : GoString), _expected : false } : T__struct_9),
({ _b : ((Go.str() : GoString) : Slice<GoByte>), _substr : (Go.str("abc") : GoString), _expected : false } : T__struct_9),
({ _b : ((Go.str("a") : GoString) : Slice<GoByte>), _substr : (Go.str() : GoString), _expected : false } : T__struct_9),
({ _b : ((Go.str("a") : GoString) : Slice<GoByte>), _substr : (Go.str("a") : GoString), _expected : true } : T__struct_9),
({ _b : ((Go.str("aaa") : GoString) : Slice<GoByte>), _substr : (Go.str("a") : GoString), _expected : true } : T__struct_9),
({ _b : ((Go.str("abc") : GoString) : Slice<GoByte>), _substr : (Go.str("xyz") : GoString), _expected : false } : T__struct_9),
({ _b : ((Go.str("abc") : GoString) : Slice<GoByte>), _substr : (Go.str("xcz") : GoString), _expected : true } : T__struct_9),
({ _b : ((Go.str("a☺b☻c☹d") : GoString) : Slice<GoByte>), _substr : (Go.str("uvw☻xyz") : GoString), _expected : true } : T__struct_9),
({ _b : ((Go.str("aRegExp*") : GoString) : Slice<GoByte>), _substr : (Go.str(".(|)*+?^$$[]") : GoString), _expected : true } : T__struct_9),
({ _b : ((_dots + _dots) + _dots : Slice<GoByte>), _substr : (Go.str(" ") : GoString), _expected : false } : T__struct_9)) : Slice<T__struct_9>);
var containsRuneTests : Slice<T__struct_10> = (new Slice<T__struct_10>(0, 0, ({ _b : ((Go.str() : GoString) : Slice<GoByte>), _r : ("a".code : GoInt32), _expected : false } : T__struct_10), ({ _b : ((Go.str("a") : GoString) : Slice<GoByte>), _r : ("a".code : GoInt32), _expected : true } : T__struct_10), ({ _b : ((Go.str("aaa") : GoString) : Slice<GoByte>), _r : ("a".code : GoInt32), _expected : true } : T__struct_10), ({ _b : ((Go.str("abc") : GoString) : Slice<GoByte>), _r : ("y".code : GoInt32), _expected : false } : T__struct_10), ({ _b : ((Go.str("abc") : GoString) : Slice<GoByte>), _r : ("c".code : GoInt32), _expected : true } : T__struct_10), ({ _b : ((Go.str("a☺b☻c☹d") : GoString) : Slice<GoByte>), _r : ("x".code : GoInt32), _expected : false } : T__struct_10), ({ _b : ((Go.str("a☺b☻c☹d") : GoString) : Slice<GoByte>), _r : ("☻".code : GoInt32), _expected : true } : T__struct_10), ({ _b : ((Go.str("aRegExp*") : GoString) : Slice<GoByte>), _r : ("*".code : GoInt32), _expected : true } : T__struct_10)) : Slice<T__struct_10>);
var _makeFieldsInput : () -> Slice<GoUInt8> = function():Slice<GoByte> {
        var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_i => _ in _x) {
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn((10 : GoInt)) == (0 : GoInt))) {
                        _x[_i] = (" ".code : GoUInt8);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn((10 : GoInt)) == (1 : GoInt))) {
                        if ((_i > (0 : GoInt)) && (_x[_i - (1 : GoInt)] == ("x".code : GoUInt8))) {
                            Go.copySlice((_x.__slice__(_i - (1 : GoInt)) : Slice<GoUInt8>), (Go.str("χ") : GoString));
                            break;
                        };
                        @:fallthrough {
                            __switchIndex__ = 2;
                            continue;
                        };
                        break;
                    } else {
                        _x[_i] = ("x".code : GoUInt8);
                        break;
                    };
                    break;
                };
            };
        };
        return _x;
    };
var _makeFieldsInputASCII : () -> Slice<GoUInt8> = function():Slice<GoByte> {
        var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_i => _ in _x) {
            if (stdgo.math.rand.Rand.intn((10 : GoInt)) == (0 : GoInt)) {
                _x[_i] = (" ".code : GoUInt8);
            } else {
                _x[_i] = ("x".code : GoUInt8);
            };
        };
        return _x;
    };
var _bytesdata : Slice<T__struct_11> = (new Slice<T__struct_11>(0, 0, ({ _name : (Go.str("ASCII") : GoString), _data : _makeFieldsInputASCII() } : T__struct_11), ({ _name : (Go.str("Mixed") : GoString), _data : _makeFieldsInput() } : T__struct_11)) : Slice<T__struct_11>);
var _benchInputHard : Slice<GoUInt8> = _makeBenchInputHard();
var _compareTests : Slice<T__struct_1> = (new Slice<T__struct_1>(
0,
0,
({ _a : ((Go.str() : GoString) : Slice<GoByte>), _b : ((Go.str() : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : ((Go.str("a") : GoString) : Slice<GoByte>), _b : ((Go.str() : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : ((Go.str() : GoString) : Slice<GoByte>), _b : ((Go.str("a") : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abc") : GoString) : Slice<GoByte>), _b : ((Go.str("abc") : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abd") : GoString) : Slice<GoByte>), _b : ((Go.str("abc") : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abc") : GoString) : Slice<GoByte>), _b : ((Go.str("abd") : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("ab") : GoString) : Slice<GoByte>), _b : ((Go.str("abc") : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abc") : GoString) : Slice<GoByte>), _b : ((Go.str("ab") : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("x") : GoString) : Slice<GoByte>), _b : ((Go.str("ab") : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("ab") : GoString) : Slice<GoByte>), _b : ((Go.str("x") : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("x") : GoString) : Slice<GoByte>), _b : ((Go.str("a") : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("b") : GoString) : Slice<GoByte>), _b : ((Go.str("x") : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abcdefgh") : GoString) : Slice<GoByte>), _b : ((Go.str("abcdefgh") : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abcdefghi") : GoString) : Slice<GoByte>), _b : ((Go.str("abcdefghi") : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abcdefghi") : GoString) : Slice<GoByte>), _b : ((Go.str("abcdefghj") : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : ((Go.str("abcdefghj") : GoString) : Slice<GoByte>), _b : ((Go.str("abcdefghi") : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (null : Slice<GoUInt8>), _b : (null : Slice<GoUInt8>), _i : (0 : GoInt) } : T__struct_1),
({ _a : ((Go.str() : GoString) : Slice<GoByte>), _b : (null : Slice<GoUInt8>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (null : Slice<GoUInt8>), _b : ((Go.str() : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : ((Go.str("a") : GoString) : Slice<GoByte>), _b : (null : Slice<GoUInt8>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (null : Slice<GoUInt8>), _b : ((Go.str("a") : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1)) : Slice<T__struct_1>);
var unreadRuneErrorTests : Slice<T__struct_15> = (new Slice<T__struct_15>(0, 0, ({ _name : (Go.str("Read") : GoString), _f : function(_r:Reader):Void {
        _r.read((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>));
    } } : T__struct_15), ({ _name : (Go.str("ReadByte") : GoString), _f : function(_r:Reader):Void {
        _r.readByte();
    } } : T__struct_15), ({ _name : (Go.str("UnreadRune") : GoString), _f : function(_r:Reader):Void {
        _r.unreadRune();
    } } : T__struct_15), ({ _name : (Go.str("Seek") : GoString), _f : function(_r:Reader):Void {
        _r.seek((0 : GoInt64), (1 : GoInt));
    } } : T__struct_15), ({ _name : (Go.str("WriteTo") : GoString), _f : function(_r:Reader):Void {
        _r.writeTo({
            final __self__ = new Buffer_wrapper((new Buffer() : Buffer));
            __self__.bytes = #if !macro function():Slice<GoUInt8> return (new Buffer() : Buffer).bytes() #else null #end;
            __self__.cap = #if !macro function():GoInt return (new Buffer() : Buffer).cap() #else null #end;
            __self__.grow = #if !macro function(__0:GoInt):Void (new Buffer() : Buffer).grow(__0) #else null #end;
            __self__.len = #if !macro function():GoInt return (new Buffer() : Buffer).len() #else null #end;
            __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return (new Buffer() : Buffer).next(__0) #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (new Buffer() : Buffer).read(__0) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return (new Buffer() : Buffer).readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return (new Buffer() : Buffer).readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return (new Buffer() : Buffer).readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return (new Buffer() : Buffer).readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return (new Buffer() : Buffer).readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void (new Buffer() : Buffer).reset() #else null #end;
            __self__.string = #if !macro function():GoString return (new Buffer() : Buffer).string() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt):Void (new Buffer() : Buffer).truncate(__0) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return (new Buffer() : Buffer).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return (new Buffer() : Buffer).unreadRune() #else null #end;
            __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (new Buffer() : Buffer).write(__0) #else null #end;
            __self__.writeByte = #if !macro function(_delim:GoUInt8):stdgo.Error return (new Buffer() : Buffer).writeByte(_delim) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return (new Buffer() : Buffer).writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return (new Buffer() : Buffer).writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return (new Buffer() : Buffer).writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return (new Buffer() : Buffer)._empty() #else null #end;
            __self__._grow = #if !macro function(__0:GoInt):GoInt return (new Buffer() : Buffer)._grow(__0) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return (new Buffer() : Buffer)._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return (new Buffer() : Buffer)._tryGrowByReslice(__0) #else null #end;
            __self__;
        });
    } } : T__struct_15)) : Slice<T__struct_15>);
var n : GoUnTypedInt = (10000 : GoUnTypedInt);
var _testString : GoString = ("" : GoString);
var _testBytes : Slice<GoByte> = (null : Slice<GoUInt8>);
var _bmbuf : Slice<GoByte> = (null : Slice<GoUInt8>);
var _space : GoString = (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString);
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_negativeReader_static_extension) private class T_negativeReader {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_negativeReader();
    }
}
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_panicReader_static_extension) private class T_panicReader {
    public var _panic : Bool = false;
    public function new(?_panic:Bool) {
        if (_panic != null) this._panic = _panic;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_panicReader(_panic);
    }
}
@:structInit class BinOpTest {
    public var _a : GoString = "";
    public var _b : GoString = "";
    public var _i : GoInt = 0;
    public function new(?_a:GoString, ?_b:GoString, ?_i:GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_i != null) this._i = _i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BinOpTest(_a, _b, _i);
    }
}
@:structInit class SplitTest {
    public var _s : GoString = "";
    public var _sep : GoString = "";
    public var _n : GoInt = 0;
    public var _a : Slice<GoString> = (null : Slice<GoString>);
    public function new(?_s:GoString, ?_sep:GoString, ?_n:GoInt, ?_a:Slice<GoString>) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_n != null) this._n = _n;
        if (_a != null) this._a = _a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_s, _sep, _n, _a);
    }
}
@:structInit class FieldsTest {
    public var _s : GoString = "";
    public var _a : Slice<GoString> = (null : Slice<GoString>);
    public function new(?_s:GoString, ?_a:Slice<GoString>) {
        if (_s != null) this._s = _s;
        if (_a != null) this._a = _a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FieldsTest(_s, _a);
    }
}
@:structInit class StringTest {
    public var _in : GoString = "";
    public var _out : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public function new(?_in:GoString, ?_out:Slice<GoUInt8>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out);
    }
}
@:structInit class RepeatTest {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public var _count : GoInt = 0;
    public function new(?_in:GoString, ?_out:GoString, ?_count:GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_count != null) this._count = _count;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RepeatTest(_in, _out, _count);
    }
}
@:structInit class RunesTest {
    public var _in : GoString = "";
    public var _out : Slice<GoInt32> = (null : Slice<GoInt32>);
    public var _lossy : Bool = false;
    public function new(?_in:GoString, ?_out:Slice<GoInt32>, ?_lossy:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_lossy != null) this._lossy = _lossy;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RunesTest(_in, _out, _lossy);
    }
}
@:structInit class TrimTest {
    public var _f : GoString = "";
    public var _in : GoString = "";
    public var _arg : GoString = "";
    public var _out : GoString = "";
    public function new(?_f:GoString, ?_in:GoString, ?_arg:GoString, ?_out:GoString) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_arg != null) this._arg = _arg;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TrimTest(_f, _in, _arg, _out);
    }
}
@:structInit class TrimNilTest {
    public var _f : GoString = "";
    public var _in : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _arg : GoString = "";
    public var _out : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public function new(?_f:GoString, ?_in:Slice<GoUInt8>, ?_arg:GoString, ?_out:Slice<GoUInt8>) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_arg != null) this._arg = _arg;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TrimNilTest(_f, _in, _arg, _out);
    }
}
@:structInit private class T_predicate {
    public var _f : GoInt32 -> Bool = null;
    public var _name : GoString = "";
    public function new(?_f:GoInt32 -> Bool, ?_name:GoString) {
        if (_f != null) this._f = _f;
        if (_name != null) this._name = _name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_predicate(_f, _name);
    }
}
@:structInit class TrimFuncTest {
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = ({  } : stdgo.bytes_test.Bytes_test.T_predicate);
    public var _in : GoString = "";
    public var _trimOut : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _leftOut : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _rightOut : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public function new(?_f:stdgo.bytes_test.Bytes_test.T_predicate, ?_in:GoString, ?_trimOut:Slice<GoUInt8>, ?_leftOut:Slice<GoUInt8>, ?_rightOut:Slice<GoUInt8>) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_trimOut != null) this._trimOut = _trimOut;
        if (_leftOut != null) this._leftOut = _leftOut;
        if (_rightOut != null) this._rightOut = _rightOut;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TrimFuncTest(_f, _in, _trimOut, _leftOut, _rightOut);
    }
}
@:structInit class IndexFuncTest {
    public var _in : GoString = "";
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = ({  } : stdgo.bytes_test.Bytes_test.T_predicate);
    public var _first : GoInt = 0;
    public var _last : GoInt = 0;
    public function new(?_in:GoString, ?_f:stdgo.bytes_test.Bytes_test.T_predicate, ?_first:GoInt, ?_last:GoInt) {
        if (_in != null) this._in = _in;
        if (_f != null) this._f = _f;
        if (_first != null) this._first = _first;
        if (_last != null) this._last = _last;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new IndexFuncTest(_in, _f, _first, _last);
    }
}
@:structInit class ReplaceTest {
    public var _in : GoString = "";
    public var _old : GoString = "";
    public var _new : GoString = "";
    public var _n : GoInt = 0;
    public var _out : GoString = "";
    public function new(?_in:GoString, ?_old:GoString, ?_new:GoString, ?_n:GoInt, ?_out:GoString) {
        if (_in != null) this._in = _in;
        if (_old != null) this._old = _old;
        if (_new != null) this._new = _new;
        if (_n != null) this._n = _n;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ReplaceTest(_in, _old, _new, _n, _out);
    }
}
@:structInit class TitleTest {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public function new(?_in:GoString, ?_out:GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TitleTest(_in, _out);
    }
}
@:local typedef T__struct_0 = {
    public var _buffer : GoString;
    public var _delim : GoUInt8;
    public var _expected : Slice<GoString>;
    public var _err : stdgo.Error;
};
@:local typedef T__struct_1 = {
    public var _a : Slice<GoUInt8>;
    public var _b : Slice<GoUInt8>;
    public var _i : GoInt;
};
@:local typedef T__struct_2 = {
    public var _in : GoString;
    public var _rune : GoInt32;
    public var _want : GoInt;
};
@:local typedef T__struct_3 = {
    public var _in : GoString;
    public var _repl : GoString;
    public var _out : GoString;
};
@:local typedef T__struct_4 = {
    public var _s : GoString;
    public var _count : GoInt;
    public var _errStr : GoString;
};
@:local typedef T__struct_5 = {
    public var _name : GoString;
    public var _trim : (Slice<GoUInt8>, GoInt32 -> Bool) -> Slice<GoUInt8>;
    public var _out : Slice<GoUInt8>;
};
@:local typedef T__struct_6 = {
    public var _s : GoString;
    public var _t : GoString;
    public var _out : Bool;
};
@:local typedef T__struct_7 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _before : GoString;
    public var _after : GoString;
    public var _found : Bool;
};
@:local typedef T__struct_8 = {
    public var _b : Slice<GoUInt8>;
    public var _subslice : Slice<GoUInt8>;
    public var _want : Bool;
};
@:local typedef T__struct_9 = {
    public var _b : Slice<GoUInt8>;
    public var _substr : GoString;
    public var _expected : Bool;
};
@:local typedef T__struct_10 = {
    public var _b : Slice<GoUInt8>;
    public var _r : GoInt32;
    public var _expected : Bool;
};
@:local typedef T__struct_11 = {
    public var _name : GoString;
    public var _data : Slice<GoUInt8>;
};
@:local typedef T__struct_12 = {
    public var _name : GoString;
    public var _input : Slice<GoUInt8>;
};
@:local typedef T__struct_13 = {
    public var _off : GoInt64;
    public var _seek : GoInt;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wantpos : GoInt64;
    public var _readerr : stdgo.Error;
    public var _seekerr : GoString;
};
@:local typedef T__struct_14 = {
    public var _off : GoInt64;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wanterr : AnyInterface;
};
@:local typedef T__struct_15 = {
    public var _name : GoString;
    public var _f : Ref<Reader> -> Void;
};
/**
    // Verify that contents of buf match the string s.
**/
function _check(_t:stdgo.testing.Testing.T, _testname:GoString, _buf:Buffer, _s:GoString):Void {
        var _bytes = _buf.bytes();
        var _str:GoString = (_buf.string() : GoString);
        if (_buf.len() != (_bytes.length)) {
            _t.errorf((Go.str("%s: buf.Len() == %d, len(buf.Bytes()) == %d") : GoString), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_bytes.length)));
        };
        if (_buf.len() != (_str.length)) {
            _t.errorf((Go.str("%s: buf.Len() == %d, len(buf.String()) == %d") : GoString), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_str.length)));
        };
        if (_buf.len() != (_s.length)) {
            _t.errorf((Go.str("%s: buf.Len() == %d, len(s) == %d") : GoString), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_s.length)));
        };
        if ((_bytes : GoString) != _s) {
            _t.errorf((Go.str("%s: string(buf.Bytes()) == %q, s == %q") : GoString), Go.toInterface(_testname), Go.toInterface((_bytes : GoString)), Go.toInterface(_s));
        };
    }
/**
    // Fill buf through n writes of string fus.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
function _fillString(_t:stdgo.testing.Testing.T, _testname:GoString, _buf:Buffer, _s:GoString, _n:GoInt, _fus:GoString):GoString {
        _check(_t, _testname + (Go.str(" (fill 1)") : GoString), _buf, _s);
        Go.cfor(_n > (0 : GoInt), _n--, {
            var __tmp__ = _buf.writeString(_fus), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != (_fus.length)) {
                _t.errorf(_testname + (Go.str(" (fill 2): m == %d, expected %d") : GoString), Go.toInterface(_m), Go.toInterface((_fus.length)));
            };
            if (_err != null) {
                _t.errorf(_testname + (Go.str(" (fill 3): err should always be nil, found err == %s") : GoString), Go.toInterface(_err));
            };
            _s = _s + (_fus);
            _check(_t, _testname + (Go.str(" (fill 4)") : GoString), _buf, _s);
        });
        return _s;
    }
/**
    // Fill buf through n writes of byte slice fub.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
function _fillBytes(_t:stdgo.testing.Testing.T, _testname:GoString, _buf:Buffer, _s:GoString, _n:GoInt, _fub:Slice<GoByte>):GoString {
        _check(_t, _testname + (Go.str(" (fill 1)") : GoString), _buf, _s);
        Go.cfor(_n > (0 : GoInt), _n--, {
            var __tmp__ = _buf.write(_fub), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != (_fub.length)) {
                _t.errorf(_testname + (Go.str(" (fill 2): m == %d, expected %d") : GoString), Go.toInterface(_m), Go.toInterface((_fub.length)));
            };
            if (_err != null) {
                _t.errorf(_testname + (Go.str(" (fill 3): err should always be nil, found err == %s") : GoString), Go.toInterface(_err));
            };
            _s = _s + ((_fub : GoString));
            _check(_t, _testname + (Go.str(" (fill 4)") : GoString), _buf, _s);
        });
        return _s;
    }
function testNewBuffer(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(_testBytes);
        _check(_t, (Go.str("NewBuffer") : GoString), _buf, _testString);
    }
function testNewBufferString(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBufferString(_testString);
        _check(_t, (Go.str("NewBufferString") : GoString), _buf, _testString);
    }
/**
    // Empty buf through repeated reads into fub.
    // The initial contents of buf corresponds to the string s.
**/
function _empty(_t:stdgo.testing.Testing.T, _testname:GoString, _buf:Buffer, _s:GoString, _fub:Slice<GoByte>):Void {
        _check(_t, _testname + (Go.str(" (empty 1)") : GoString), _buf, _s);
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n == (0 : GoInt)) {
                break;
            };
            if (_err != null) {
                _t.errorf(_testname + (Go.str(" (empty 2): err should always be nil, found err == %s") : GoString), Go.toInterface(_err));
            };
            _s = (_s.__slice__(_n) : GoString);
            _check(_t, _testname + (Go.str(" (empty 3)") : GoString), _buf, _s);
        };
        _check(_t, _testname + (Go.str(" (empty 4)") : GoString), _buf, (Go.str() : GoString));
    }
function testBasicOperations(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _check(_t, (Go.str("TestBasicOperations (1)") : GoString), _buf, (Go.str() : GoString));
                _buf.reset();
                _check(_t, (Go.str("TestBasicOperations (2)") : GoString), _buf, (Go.str() : GoString));
                _buf.truncate((0 : GoInt));
                _check(_t, (Go.str("TestBasicOperations (3)") : GoString), _buf, (Go.str() : GoString));
                var __tmp__ = _buf.write((_testBytes.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:GoInt = (1 : GoInt);
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf((Go.str("Write: got (%d, %v), want (%d, %v)") : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), (null : AnyInterface));
                    };
                };
                _check(_t, (Go.str("TestBasicOperations (4)") : GoString), _buf, (Go.str("a") : GoString));
                _buf.writeByte(_testString[(1 : GoInt)]);
                _check(_t, (Go.str("TestBasicOperations (5)") : GoString), _buf, (Go.str("ab") : GoString));
                {
                    var __tmp__ = _buf.write((_testBytes.__slice__((2 : GoInt), (26 : GoInt)) : Slice<GoUInt8>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var _want:GoInt = (24 : GoInt);
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf((Go.str("Write: got (%d, %v), want (%d, %v)") : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), (null : AnyInterface));
                    };
                };
                _check(_t, (Go.str("TestBasicOperations (6)") : GoString), _buf, (_testString.__slice__((0 : GoInt), (26 : GoInt)) : GoString));
                _buf.truncate((26 : GoInt));
                _check(_t, (Go.str("TestBasicOperations (7)") : GoString), _buf, (_testString.__slice__((0 : GoInt), (26 : GoInt)) : GoString));
                _buf.truncate((20 : GoInt));
                _check(_t, (Go.str("TestBasicOperations (8)") : GoString), _buf, (_testString.__slice__((0 : GoInt), (20 : GoInt)) : GoString));
                _empty(_t, (Go.str("TestBasicOperations (9)") : GoString), _buf, (_testString.__slice__((0 : GoInt), (20 : GoInt)) : GoString), new Slice<GoUInt8>((5 : GoInt).toBasic(), 0, ...[for (i in 0 ... (5 : GoInt).toBasic()) (0 : GoUInt8)]));
                _empty(_t, (Go.str("TestBasicOperations (10)") : GoString), _buf, (Go.str() : GoString), new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0 ... (100 : GoInt).toBasic()) (0 : GoUInt8)]));
                _buf.writeByte(_testString[(1 : GoInt)]);
                var __tmp__ = _buf.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:GoUInt8 = _testString[(1 : GoInt)];
                    if ((_err != null) || (_c != _want)) {
                        _t.errorf((Go.str("ReadByte: got (%q, %v), want (%q, %v)") : GoString), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(_want), (null : AnyInterface));
                    };
                };
                {
                    var __tmp__ = _buf.readByte();
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != stdgo.io.Io.eof) {
                    _t.errorf((Go.str("ReadByte: got (%q, %v), want (%q, %v)") : GoString), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(((0 : GoUInt8) : GoByte)), Go.toInterface(stdgo.io.Io.eof));
                };
            });
        };
    }
function testLargeStringWrites(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        var _limit:GoInt = (30 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _limit = (9 : GoInt);
        };
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < _limit, _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillString(_t, (Go.str("TestLargeWrites (1)") : GoString), _buf, (Go.str() : GoString), (5 : GoInt), _testString);
                _empty(_t, (Go.str("TestLargeStringWrites (2)") : GoString), _buf, _s, new Slice<GoUInt8>(((_testString.length) / _i : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_testString.length) / _i : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, (Go.str("TestLargeStringWrites (3)") : GoString), _buf, (Go.str() : GoString));
    }
function testLargeByteWrites(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        var _limit:GoInt = (30 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _limit = (9 : GoInt);
        };
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < _limit, _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, (Go.str("TestLargeWrites (1)") : GoString), _buf, (Go.str() : GoString), (5 : GoInt), _testBytes);
                _empty(_t, (Go.str("TestLargeByteWrites (2)") : GoString), _buf, _s, new Slice<GoUInt8>(((_testString.length) / _i : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_testString.length) / _i : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, (Go.str("TestLargeByteWrites (3)") : GoString), _buf, (Go.str() : GoString));
    }
function testLargeStringReads(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillString(_t, (Go.str("TestLargeReads (1)") : GoString), _buf, (Go.str() : GoString), (5 : GoInt), (_testString.__slice__((0 : GoInt), (_testString.length) / _i) : GoString));
                _empty(_t, (Go.str("TestLargeReads (2)") : GoString), _buf, _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, (Go.str("TestLargeStringReads (3)") : GoString), _buf, (Go.str() : GoString));
    }
function testLargeByteReads(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, (Go.str("TestLargeReads (1)") : GoString), _buf, (Go.str() : GoString), (5 : GoInt), (_testBytes.__slice__((0 : GoInt), (_testBytes.length) / _i) : Slice<GoUInt8>));
                _empty(_t, (Go.str("TestLargeReads (2)") : GoString), _buf, _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, (Go.str("TestLargeByteReads (3)") : GoString), _buf, (Go.str() : GoString));
    }
function testMixedReadsAndWrites(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        var _s:GoString = (Go.str() : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (50 : GoInt), _i++, {
                var _wlen:GoInt = stdgo.math.rand.Rand.intn((_testString.length));
                if ((_i % (2 : GoInt)) == (0 : GoInt)) {
                    _s = _fillString(_t, (Go.str("TestMixedReadsAndWrites (1)") : GoString), _buf, _s, (1 : GoInt), (_testString.__slice__((0 : GoInt), _wlen) : GoString));
                } else {
                    _s = _fillBytes(_t, (Go.str("TestMixedReadsAndWrites (1)") : GoString), _buf, _s, (1 : GoInt), (_testBytes.__slice__((0 : GoInt), _wlen) : Slice<GoUInt8>));
                };
                var _rlen:GoInt = stdgo.math.rand.Rand.intn((_testString.length));
                var _fub = new Slice<GoUInt8>((_rlen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_rlen : GoInt).toBasic()) (0 : GoUInt8)]);
                var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _0:stdgo.Error = __tmp__._1;
                _s = (_s.__slice__(_n) : GoString);
            });
        };
        _empty(_t, (Go.str("TestMixedReadsAndWrites (2)") : GoString), _buf, _s, new Slice<GoUInt8>((_buf.len() : GoInt).toBasic(), 0, ...[for (i in 0 ... (_buf.len() : GoInt).toBasic()) (0 : GoUInt8)]));
    }
function testCapWithPreallocatedSlice(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]));
        var _n:GoInt = _buf.cap();
        if (_n != (10 : GoInt)) {
            _t.errorf((Go.str("expected 10, got %d") : GoString), Go.toInterface(_n));
        };
    }
function testCapWithSliceAndWrittenData(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(new Slice<GoUInt8>((0 : GoInt).toBasic(), (10 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]));
        _buf.write(((Go.str("test") : GoString) : Slice<GoByte>));
        var _n:GoInt = _buf.cap();
        if (_n != (10 : GoInt)) {
            _t.errorf((Go.str("expected 10, got %d") : GoString), Go.toInterface(_n));
        };
    }
function testNil(_t:stdgo.testing.Testing.T):Void {
        var _b:Buffer = (null : Buffer);
        if ((_b.string() : GoString) != (Go.str("<nil>") : GoString)) {
            _t.errorf((Go.str("expected <nil>; got %q") : GoString), Go.toInterface((_b.string() : GoString)));
        };
    }
function testReadFrom(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, (Go.str("TestReadFrom (1)") : GoString), _buf, (Go.str() : GoString), (5 : GoInt), (_testBytes.__slice__((0 : GoInt), (_testBytes.length) / _i) : Slice<GoUInt8>));
                var _b:Buffer = ({  } : Buffer);
                _b.readFrom({
                    final __self__ = new Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
                    __self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
                    __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                    __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(__0) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
                    __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                    __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
                    __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
                    __self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                    __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(__0) #else null #end;
                    __self__.writeByte = #if !macro function(_delim:GoUInt8):stdgo.Error return _buf.writeByte(_delim) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                    __self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
                    __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(__0) #else null #end;
                    __self__;
                });
                _empty(_t, (Go.str("TestReadFrom (2)") : GoString), _b, _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
    }
/**
    // Make sure that an empty Buffer remains empty when
    // it is "grown" before a Read that panics
**/
function testReadFromPanicReader(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:Buffer = ({  } : Buffer);
            var __tmp__ = _buf.readFrom({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_panicReader_wrapper((new stdgo.bytes_test.Bytes_test.T_panicReader() : stdgo.bytes_test.Bytes_test.T_panicReader));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (new stdgo.bytes_test.Bytes_test.T_panicReader() : stdgo.bytes_test.Bytes_test.T_panicReader).read(__0) #else null #end;
                __self__;
            }), _i:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_i != (0 : GoInt64)) {
                _t.fatalf((Go.str("unexpected return from bytes.ReadFrom (1): got: %d, want %d") : GoString), Go.toInterface(_i), Go.toInterface((0 : GoInt)));
            };
            _check(_t, (Go.str("TestReadFromPanicReader (1)") : GoString), _buf, (Go.str() : GoString));
            var _buf2:Buffer = ({  } : Buffer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    ({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    });
                    _check(_t, (Go.str("TestReadFromPanicReader (2)") : GoString), _buf2, (Go.str() : GoString));
                };
                a();
            });
            _buf2.readFrom({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_panicReader_wrapper(({ _panic : true } : stdgo.bytes_test.Bytes_test.T_panicReader));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ({ _panic : true } : stdgo.bytes_test.Bytes_test.T_panicReader).read(__0) #else null #end;
                __self__;
            });
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testReadFromNegativeReader(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _b:Buffer = ({  } : Buffer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    if (({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }) == null) {
                        var _err:AnyInterface = ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__();
                        _t.fatal(Go.toInterface((Go.str("bytes.Buffer.ReadFrom didn\'t panic") : GoString)));
                    } else if (Go.assertable(({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    } : Error))) {
                        var _err:stdgo.Error = ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__() == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__().value;
                        var _wantError:GoString = (Go.str("bytes.Buffer: reader returned negative count from Read") : GoString);
                        if (_err.error() != _wantError) {
                            _t.fatalf((Go.str("recovered panic: got %v, want %v") : GoString), Go.toInterface(_err.error()), Go.toInterface(_wantError));
                        };
                    } else {
                        var _err:AnyInterface = ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__();
                        _t.fatalf((Go.str("unexpected panic value: %#v") : GoString), Go.toInterface(_err));
                    };
                };
                a();
            });
            _b.readFrom({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_negativeReader_wrapper(({  } : stdgo.bytes_test.Bytes_test.T_negativeReader));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ({  } : stdgo.bytes_test.Bytes_test.T_negativeReader).read(__0) #else null #end;
                __self__;
            });
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testWriteTo(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = ({  } : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, (Go.str("TestWriteTo (1)") : GoString), _buf, (Go.str() : GoString), (5 : GoInt), (_testBytes.__slice__((0 : GoInt), (_testBytes.length) / _i) : Slice<GoUInt8>));
                var _b:Buffer = ({  } : Buffer);
                _buf.writeTo({
                    final __self__ = new Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap = #if !macro function():GoInt return _b.cap() #else null #end;
                    __self__.grow = #if !macro function(__0:GoInt):Void _b.grow(__0) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _b.next(__0) #else null #end;
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(__0) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_delim) #else null #end;
                    __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_delim) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.truncate = #if !macro function(__0:GoInt):Void _b.truncate(__0) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(__0) #else null #end;
                    __self__.writeByte = #if !macro function(_delim:GoUInt8):stdgo.Error return _b.writeByte(_delim) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(__0:GoInt):GoInt return _b._grow(__0) #else null #end;
                    __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_delim) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(__0) #else null #end;
                    __self__;
                });
                _empty(_t, (Go.str("TestWriteTo (2)") : GoString), _b, _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
    }
function testRuneIO(_t:stdgo.testing.Testing.T):Void {
        var nrune:GoUnTypedInt = (1000 : GoUnTypedInt);
        var _b = new Slice<GoUInt8>((4000 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4000 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _buf:Buffer = ({  } : Buffer);
        var _n:GoInt = (0 : GoInt);
        {
            var _r:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_r < (1000 : GoInt32), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_b.__slice__(_n) : Slice<GoUInt8>), _r);
                var __tmp__ = _buf.writeRune(_r), _nbytes:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf((Go.str("WriteRune(%U) error: %s") : GoString), Go.toInterface(_r), Go.toInterface(_err));
                };
                if (_nbytes != _size) {
                    _t.fatalf((Go.str("WriteRune(%U) expected %d, got %d") : GoString), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_nbytes));
                };
                _n = _n + (_size);
            });
        };
        _b = (_b.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
        if (!equal(_buf.bytes(), _b)) {
            _t.fatalf((Go.str("incorrect result from WriteRune: %q not %q") : GoString), Go.toInterface(_buf.bytes()), Go.toInterface(_b));
        };
        var _p = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _r:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_r < (1000 : GoInt32), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_p, _r);
                var __tmp__ = _buf.readRune(), _nr:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((_nr != _r || _nbytes != _size) || (_err != null)) {
                    _t.fatalf((Go.str("ReadRune(%U) got %U,%d not %U,%d (err=%s)") : GoString), Go.toInterface(_r), Go.toInterface(_nr), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
        _buf.reset();
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("UnreadRune at EOF: got no error") : GoString)));
            };
        };
        {
            var __tmp__ = _buf.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("ReadRune at EOF: got no error") : GoString)));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("UnreadRune after ReadRune at EOF: got no error") : GoString)));
            };
        };
        _buf.write(_b);
        {
            var _r:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_r < (1000 : GoInt32), _r++, {
                var __tmp__ = _buf.readRune(), _r1:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _2:stdgo.Error = __tmp__._2;
                {
                    var _err:stdgo.Error = _buf.unreadRune();
                    if (_err != null) {
                        _t.fatalf((Go.str("UnreadRune(%U) got error %q") : GoString), Go.toInterface(_r), Go.toInterface(_err));
                    };
                };
                var __tmp__ = _buf.readRune(), _r2:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_r1 != _r2) || (_r1 != _r) || _nbytes != _size) || (_err != null)) {
                    _t.fatalf((Go.str("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)") : GoString), Go.toInterface(_r), Go.toInterface(_r2), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
    }
function testWriteInvalidRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _r in (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32)) : Slice<GoInt32>)) {
            var _buf:Buffer = ({  } : Buffer);
            _buf.writeRune(_r);
            _check(_t, stdgo.fmt.Fmt.sprintf((Go.str("TestWriteInvalidRune (%d)") : GoString), Go.toInterface(_r)), _buf, (Go.str("\uFFFD") : GoString));
        };
    }
function testNext(_t:stdgo.testing.Testing.T):Void {
        var _b = (new Slice<GoUInt8>(0, 0, (0 : GoUInt8), (1 : GoUInt8), (2 : GoUInt8), (3 : GoUInt8), (4 : GoUInt8)) : Slice<GoUInt8>);
        var _tmp = new Slice<GoUInt8>((5 : GoInt).toBasic(), 0, ...[for (i in 0 ... (5 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (5 : GoInt), _i++, {
                {
                    var _j:GoInt = _i;
                    Go.cfor(_j <= (5 : GoInt), _j++, {
                        {
                            var _k:GoInt = (0 : GoInt);
                            Go.cfor(_k <= (6 : GoInt), _k++, {
                                var _buf = newBuffer((_b.__slice__((0 : GoInt), _j) : Slice<GoUInt8>));
                                var __tmp__ = _buf.read((_tmp.__slice__((0 : GoInt), _i) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _0:stdgo.Error = __tmp__._1;
                                if (_n != _i) {
                                    _t.fatalf((Go.str("Read %d returned %d") : GoString), Go.toInterface(_i), Go.toInterface(_n));
                                };
                                var _bb = _buf.next(_k);
                                var _want:GoInt = _k;
                                if (_want > (_j - _i)) {
                                    _want = _j - _i;
                                };
                                if ((_bb.length) != _want) {
                                    _t.fatalf((Go.str("in %d,%d: len(Next(%d)) == %d") : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface((_bb.length)));
                                };
                                for (_l => _v in _bb) {
                                    if (_v != (_l + _i : GoByte)) {
                                        _t.fatalf((Go.str("in %d,%d: Next(%d)[%d] = %d, want %d") : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface(_l), Go.toInterface(_v), Go.toInterface(_l + _i));
                                    };
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testReadBytes(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer);
            var _err:Error = (null : stdgo.Error);
            for (_1 => _expected in _test._expected) {
                var _bytes:Slice<GoByte> = (null : Slice<GoUInt8>);
                {
                    var __tmp__ = _buf.readBytes(_test._delim);
                    _bytes = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_bytes : GoString) != _expected) {
                    _t.errorf((Go.str("expected %q, got %q") : GoString), Go.toInterface(_expected), Go.toInterface(_bytes));
                };
                if (_err != null) {
                    break;
                };
            };
            if (_err != _test._err) {
                _t.errorf((Go.str("expected error %v, got %v") : GoString), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function testReadString(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer);
            var _err:Error = (null : stdgo.Error);
            for (_1 => _expected in _test._expected) {
                var _s:GoString = ("" : GoString);
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_s != _expected) {
                    _t.errorf((Go.str("expected %q, got %q") : GoString), Go.toInterface(_expected), Go.toInterface(_s));
                };
                if (_err != null) {
                    break;
                };
            };
            if (_err != _test._err) {
                _t.errorf((Go.str("expected error %v, got %v") : GoString), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function benchmarkReadString(_b:stdgo.testing.Testing.B):Void {
        var _n:GoUnTypedInt = (32 : GoUnTypedInt) << (10 : GoUnTypedInt);
        var _data = new Slice<GoUInt8>((32768 : GoInt).toBasic(), 0, ...[for (i in 0 ... (32768 : GoInt).toBasic()) (0 : GoUInt8)]);
        _data[(32767 : GoInt)] = ("x".code : GoUInt8);
        _b.setBytes((32768 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _buf = newBuffer(_data);
                var __tmp__ = _buf.readString(("x".code : GoUInt8)), _0:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(Go.toInterface(_err));
                };
            });
        };
    }
function testGrow(_t:stdgo.testing.Testing.T):Void {
        var _x = (new Slice<GoUInt8>(0, 0, ("x".code : GoUInt8)) : Slice<GoUInt8>);
        var _y = (new Slice<GoUInt8>(0, 0, ("y".code : GoUInt8)) : Slice<GoUInt8>);
        var _tmp = new Slice<GoUInt8>((72 : GoInt).toBasic(), 0, ...[for (i in 0 ... (72 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_0 => _growLen in (new Slice<GoInt>(0, 0, (0 : GoInt), (100 : GoInt), (1000 : GoInt), (10000 : GoInt), (100000 : GoInt)) : Slice<GoInt>)) {
            for (_1 => _startLen in (new Slice<GoInt>(0, 0, (0 : GoInt), (100 : GoInt), (1000 : GoInt), (10000 : GoInt), (100000 : GoInt)) : Slice<GoInt>)) {
                var _xBytes = repeat(_x, _startLen);
                var _buf = newBuffer(_xBytes);
                var __tmp__ = _buf.read(_tmp), _readBytes:GoInt = __tmp__._0, _2:stdgo.Error = __tmp__._1;
                var _yBytes = repeat(_y, _growLen);
                var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
                    _buf.grow(_growLen);
                    _buf.write(_yBytes);
                });
                if (_allocs != (0 : GoFloat64)) {
                    _t.errorf((Go.str("allocation occurred during write") : GoString));
                };
                if (!equal((_buf.bytes().__slice__((0 : GoInt), _startLen - _readBytes) : Slice<GoUInt8>), (_xBytes.__slice__(_readBytes) : Slice<GoUInt8>))) {
                    _t.errorf((Go.str("bad initial data at %d %d") : GoString), Go.toInterface(_startLen), Go.toInterface(_growLen));
                };
                if (!equal((_buf.bytes().__slice__(_startLen - _readBytes, (_startLen - _readBytes) + _growLen) : Slice<GoUInt8>), _yBytes)) {
                    _t.errorf((Go.str("bad written data at %d %d") : GoString), Go.toInterface(_startLen), Go.toInterface(_growLen));
                };
            };
        };
    }
function testGrowOverflow(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err != errTooLarge) {
                            _t.errorf((Go.str("after too-large Grow, recover() = %v; want %v") : GoString), Go.toInterface(_err), Go.toInterface(errTooLarge));
                        };
                    };
                };
                a();
            });
            var _buf = newBuffer(new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (0 : GoUInt8)]));
            var _maxInt:GoInt = ((-1 ^ ((0 : GoUInt) : GoUInt)) >> (1 : GoUnTypedInt) : GoInt);
            _buf.grow((2147483647 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
/**
    // Was a bug: used to give EOF reading empty slice at EOF.
**/
function testReadEmptyAtEOF(_t:stdgo.testing.Testing.T):Void {
        var _b = ({  } : Buffer);
        var _slice = new Slice<GoUInt8>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = _b.read(_slice), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf((Go.str("read error: %v") : GoString), Go.toInterface(_err));
        };
        if (_n != (0 : GoInt)) {
            _t.errorf((Go.str("wrong count; got %d want 0") : GoString), Go.toInterface(_n));
        };
    }
function testUnreadByte(_t:stdgo.testing.Testing.T):Void {
        var _b = ({  } : Buffer);
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("UnreadByte at EOF: got no error") : GoString)));
            };
        };
        {
            var __tmp__ = _b.readByte(), _0:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("ReadByte at EOF: got no error") : GoString)));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("UnreadByte after ReadByte at EOF: got no error") : GoString)));
            };
        };
        _b.writeString((Go.str("abcdefghijklmnopqrstuvwxyz") : GoString));
        {
            var __tmp__ = _b.read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (_err != null)) {
                _t.fatalf((Go.str("Read(nil) = %d,%v; want 0,nil") : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("UnreadByte after Read(nil): got no error") : GoString)));
            };
        };
        {
            var __tmp__ = _b.readBytes(("m".code : GoUInt8)), _1:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf((Go.str("ReadBytes: %v") : GoString), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err != null) {
                _t.fatalf((Go.str("UnreadByte: %v") : GoString), Go.toInterface(_err));
            };
        };
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf((Go.str("ReadByte: %v") : GoString), Go.toInterface(_err));
        };
        if (_c != ("m".code : GoUInt8)) {
            _t.errorf((Go.str("ReadByte = %q; want %q") : GoString), Go.toInterface(_c), Go.toInterface(("m".code : GoInt32)));
        };
    }
/**
    // Tests that we occasionally compact. Issue 5154.
**/
function testBufferGrowth(_t:stdgo.testing.Testing.T):Void {
        var _b:Buffer = ({  } : Buffer);
        var _buf = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        _b.write((_buf.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>));
        var _cap0:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5120 : GoInt), _i++, {
                _b.write(_buf);
                _b.read(_buf);
                if (_i == (0 : GoInt)) {
                    _cap0 = _b.cap();
                };
            });
        };
        var _cap1:GoInt = _b.cap();
        if (_cap1 > (_cap0 * (3 : GoInt))) {
            _t.errorf((Go.str("buffer cap = %d; too big (grew from %d)") : GoString), Go.toInterface(_cap1), Go.toInterface(_cap0));
        };
    }
function benchmarkWriteByte(_b:stdgo.testing.Testing.B):Void {
        var _n:GoUnTypedInt = (4 : GoUnTypedInt) << (10 : GoUnTypedInt);
        _b.setBytes((4096 : GoInt64));
        var _buf = newBuffer(new Slice<GoUInt8>((4096 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4096 : GoInt).toBasic()) (0 : GoUInt8)]));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (4096 : GoInt), _i++, {
                        _buf.writeByte(("x".code : GoUInt8));
                    });
                };
            });
        };
    }
function benchmarkWriteRune(_b:stdgo.testing.Testing.B):Void {
        var _n:GoUnTypedInt = (4 : GoUnTypedInt) << (10 : GoUnTypedInt);
        var _r:GoInt32 = ("☺".code : GoInt32);
        _b.setBytes(((4096 : GoInt) * stdgo.unicode.utf8.Utf8.runeLen((9786 : GoInt32)) : GoInt64));
        var _buf = newBuffer(new Slice<GoUInt8>((16384 : GoInt).toBasic(), 0, ...[for (i in 0 ... (16384 : GoInt).toBasic()) (0 : GoUInt8)]));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (4096 : GoInt), _i++, {
                        _buf.writeRune((9786 : GoInt32));
                    });
                };
            });
        };
    }
/**
    // From Issue 5154.
**/
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = ({  } : Buffer);
                _b.write((_buf.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>));
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (5120 : GoInt), _i++, {
                        _b.write(_buf);
                        _b.read(_buf);
                    });
                };
            });
        };
    }
/**
    // Check that we don't compact too often. From Issue 5154.
**/
function benchmarkBufferFullSmallReads(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = ({  } : Buffer);
                _b.write(_buf);
                while ((_b.len() + (20 : GoInt)) < _b.cap()) {
                    _b.write((_buf.__slice__(0, (10 : GoInt)) : Slice<GoUInt8>));
                };
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (5120 : GoInt), _i++, {
                        _b.read((_buf.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>));
                        _b.write((_buf.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>));
                    });
                };
            });
        };
    }
function benchmarkBufferWriteBlock(_b:stdgo.testing.Testing.B):Void {
        var _block = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_0 => _n in (new Slice<GoInt>(0, 0, (4096 : GoInt), (65536 : GoInt), (1048576 : GoInt)) : Slice<GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf((Go.str("N%d") : GoString), Go.toInterface(_n)), function(_b:stdgo.testing.Testing.B):Void {
                _b.reportAllocs();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        var _bb:Buffer = ({  } : Buffer);
                        while (_bb.len() < _n) {
                            _bb.write(_block);
                        };
                    });
                };
            });
        };
    }
function _eq(_a:Slice<GoString>, _b:Slice<GoString>):Bool {
        if ((_a.length) != (_b.length)) {
            return false;
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_a.length), _i++, {
                if (_a[_i] != _b[_i]) {
                    return false;
                };
            });
        };
        return true;
    }
function _sliceOfString(_s:Slice<Slice<GoByte>>):Slice<GoString> {
        var _result = new Slice<GoString>((_s.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_s.length : GoInt).toBasic()) ("" : GoString)]);
        for (_i => _v in _s) {
            _result[_i] = (_v : GoString);
        };
        return _result;
    }
function testEqual(_t:stdgo.testing.Testing.T):Void {
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((10 : GoInt), function():Void {
            for (_0 => _tt in _compareTests) {
                var _eql:Bool = equal(_tt._a, _tt._b);
                if (_eql != (_tt._i == (0 : GoInt))) {
                    _t.errorf(("Equal(%q, %q) = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_eql));
                };
            };
        });
        if (_allocs > (0 : GoFloat64)) {
            _t.errorf((Go.str("Equal allocated %v times") : GoString), Go.toInterface(_allocs));
        };
    }
function testEqualExhaustive(_t:stdgo.testing.Testing.T):Void {
        var _size:GoInt = (128 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _size = (32 : GoInt);
        };
        var _a = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) (0 : GoUInt8)]);
        var _b = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) (0 : GoUInt8)]);
        var _b_init = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _size, _i++, {
                _a[_i] = ((17 : GoInt) * _i : GoByte);
                _b_init[_i] = (((23 : GoInt) * _i) + (100 : GoInt) : GoByte);
            });
        };
        {
            var _len:GoInt = (0 : GoInt);
            Go.cfor(_len <= _size, _len++, {
                {
                    var _x:GoInt = (0 : GoInt);
                    Go.cfor(_x <= (_size - _len), _x++, {
                        {
                            var _y:GoInt = (0 : GoInt);
                            Go.cfor(_y <= (_size - _len), _y++, {
                                Go.copySlice(_b, _b_init);
                                Go.copySlice((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>), (_a.__slice__(_x, _x + _len) : Slice<GoUInt8>));
                                if (!equal((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>), (_b.__slice__(_y, _y + _len) : Slice<GoUInt8>)) || !equal((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>), (_a.__slice__(_x, _x + _len) : Slice<GoUInt8>))) {
                                    _t.errorf((Go.str("Equal(%d, %d, %d) = false") : GoString), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
/**
    // make sure Equal returns false for minimally different strings. The data
    // is all zeros except for a single one in one location.
**/
function testNotEqual(_t:stdgo.testing.Testing.T):Void {
        var _size:GoInt = (128 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _size = (32 : GoInt);
        };
        var _a = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) (0 : GoUInt8)]);
        var _b = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0 ... (_size : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _len:GoInt = (0 : GoInt);
            Go.cfor(_len <= _size, _len++, {
                {
                    var _x:GoInt = (0 : GoInt);
                    Go.cfor(_x <= (_size - _len), _x++, {
                        {
                            var _y:GoInt = (0 : GoInt);
                            Go.cfor(_y <= (_size - _len), _y++, {
                                {
                                    var _diffpos:GoInt = _x;
                                    Go.cfor(_diffpos < (_x + _len), _diffpos++, {
                                        _a[_diffpos] = (1 : GoUInt8);
                                        if (equal((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>), (_b.__slice__(_y, _y + _len) : Slice<GoUInt8>)) || equal((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>), (_a.__slice__(_x, _x + _len) : Slice<GoUInt8>))) {
                                            _t.errorf((Go.str("NotEqual(%d, %d, %d, %d) = true") : GoString), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_diffpos));
                                        };
                                        _a[_diffpos] = (0 : GoUInt8);
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runIndexTests(_t:stdgo.testing.Testing.T, _f:(_s:Slice<GoByte>, _sep:Slice<GoByte>) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_0 => _test in _testCases) {
            var _a = (_test._a : Slice<GoByte>);
            var _b = (_test._b : Slice<GoByte>);
            var _actual:GoInt = _f(_a, _b);
            if (_actual != _test._i) {
                _t.errorf((Go.str("%s(%q,%q) = %v; want %v") : GoString), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
        var _allocTests:Slice<T__struct_1> = (new Slice<T__struct_1>(0, 0, ({ _a : ((Go.str("000000000000000000000000000000000000000000000000000000000000000000000001") : GoString) : Slice<GoByte>), _b : ((Go.str("0000000000000000000000000000000000000000000000000000000000000000001") : GoString) : Slice<GoByte>), _i : (5 : GoInt) } : T__struct_1), ({ _a : ((Go.str("000000000000000000000000000000000000000000000000000000000000000010000") : GoString) : Slice<GoByte>), _b : ((Go.str("00000000000000000000000000000000000000000000000000000000000001") : GoString) : Slice<GoByte>), _i : (3 : GoInt) } : T__struct_1)) : Slice<T__struct_1>);
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
            {
                var _i:GoInt = index(_allocTests[(1 : GoInt)]._a, _allocTests[(1 : GoInt)]._b);
                if (_i != _allocTests[(1 : GoInt)]._i) {
                    _t.errorf((Go.str("Index([]byte(%q), []byte(%q)) = %v; want %v") : GoString), Go.toInterface(_allocTests[(1 : GoInt)]._a), Go.toInterface(_allocTests[(1 : GoInt)]._b), Go.toInterface(_i), Go.toInterface(_allocTests[(1 : GoInt)]._i));
                };
            };
            {
                var _i:GoInt = lastIndex(_allocTests[(0 : GoInt)]._a, _allocTests[(0 : GoInt)]._b);
                if (_i != _allocTests[(0 : GoInt)]._i) {
                    _t.errorf((Go.str("LastIndex([]byte(%q), []byte(%q)) = %v; want %v") : GoString), Go.toInterface(_allocTests[(0 : GoInt)]._a), Go.toInterface(_allocTests[(0 : GoInt)]._b), Go.toInterface(_i), Go.toInterface(_allocTests[(0 : GoInt)]._i));
                };
            };
        });
        if (_allocs != (0 : GoFloat64)) {
            _t.errorf((Go.str("expected no allocations, got %f") : GoString), Go.toInterface(_allocs));
        };
    }
function _runIndexAnyTests(_t:stdgo.testing.Testing.T, _f:(_s:Slice<GoByte>, _chars:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_0 => _test in _testCases) {
            var _a = (_test._a : Slice<GoByte>);
            var _actual:GoInt = _f(_a, _test._b);
            if (_actual != _test._i) {
                _t.errorf((Go.str("%s(%q,%q) = %v; want %v") : GoString), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_test._b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
function testIndex(_t:stdgo.testing.Testing.T):Void {
        _runIndexTests(_t, index, (Go.str("Index") : GoString), _indexTests);
    }
function testLastIndex(_t:stdgo.testing.Testing.T):Void {
        _runIndexTests(_t, lastIndex, (Go.str("LastIndex") : GoString), _lastIndexTests);
    }
function testIndexAny(_t:stdgo.testing.Testing.T):Void {
        _runIndexAnyTests(_t, indexAny, (Go.str("IndexAny") : GoString), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.testing.Testing.T):Void {
        _runIndexAnyTests(_t, lastIndexAny, (Go.str("LastIndexAny") : GoString), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _indexTests) {
            if ((_tt._b.length) != (1 : GoInt)) {
                continue;
            };
            var _a = (_tt._a : Slice<GoByte>);
            var _b:GoUInt8 = _tt._b[(0 : GoInt)];
            var _pos:GoInt = indexByte(_a, _b);
            if (_pos != _tt._i) {
                _t.errorf(("IndexByte(%q, \'%c\') = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_pos));
            };
            var _posp:GoInt = indexBytePortable(_a, _b);
            if (_posp != _tt._i) {
                _t.errorf(("indexBytePortable(%q, \'%c\') = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_posp));
            };
        };
    }
function testLastIndexByte(_t:stdgo.testing.Testing.T):Void {
        var _testCases = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(0, 0, (new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str() : GoString), (Go.str("q") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abcdef") : GoString), (Go.str("q") : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abcdefabcdef") : GoString), (Go.str("a") : GoString), ((Go.str("abcdef") : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("abcdefabcdef") : GoString), (Go.str("f") : GoString), ((Go.str("abcdefabcde") : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("zabcdefabcdef") : GoString), (Go.str("z") : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("b") : GoString), ((Go.str("a☺") : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
        for (_0 => _test in _testCases) {
            var _actual:GoInt = lastIndexByte((_test._a : Slice<GoByte>), _test._b[(0 : GoInt)]);
            if (_actual != _test._i) {
                _t.errorf((Go.str("LastIndexByte(%q,%c) = %v; want %v") : GoString), Go.toInterface(_test._a), Go.toInterface(_test._b[(0 : GoInt)]), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
/**
    // test a larger buffer with different sizes and alignments
**/
function testIndexByteBig(_t:stdgo.testing.Testing.T):Void {
        var _n:GoInt = (1024 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = (128 : GoInt);
        };
        var _b = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                var _b1 = (_b.__slice__(_i) : Slice<GoUInt8>);
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_b1.length), _j++, {
                        _b1[_j] = ("x".code : GoUInt8);
                        var _pos:GoInt = indexByte(_b1, ("x".code : GoUInt8));
                        if (_pos != _j) {
                            _t.errorf((Go.str("IndexByte(%q, \'x\') = %v") : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        _b1[_j] = (0 : GoUInt8);
                        _pos = indexByte(_b1, ("x".code : GoUInt8));
                        if (_pos != (-1 : GoInt)) {
                            _t.errorf((Go.str("IndexByte(%q, \'x\') = %v") : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(0, _i) : Slice<GoUInt8>);
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_b1.length), _j++, {
                        _b1[_j] = ("x".code : GoUInt8);
                        var _pos:GoInt = indexByte(_b1, ("x".code : GoUInt8));
                        if (_pos != _j) {
                            _t.errorf((Go.str("IndexByte(%q, \'x\') = %v") : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        _b1[_j] = (0 : GoUInt8);
                        _pos = indexByte(_b1, ("x".code : GoUInt8));
                        if (_pos != (-1 : GoInt)) {
                            _t.errorf((Go.str("IndexByte(%q, \'x\') = %v") : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(_i / (2 : GoInt), _n - (_i + (1 : GoInt) / (2 : GoInt))) : Slice<GoUInt8>);
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_b1.length), _j++, {
                        _b1[_j] = ("x".code : GoUInt8);
                        var _pos:GoInt = indexByte(_b1, ("x".code : GoUInt8));
                        if (_pos != _j) {
                            _t.errorf((Go.str("IndexByte(%q, \'x\') = %v") : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        _b1[_j] = (0 : GoUInt8);
                        _pos = indexByte(_b1, ("x".code : GoUInt8));
                        if (_pos != (-1 : GoInt)) {
                            _t.errorf((Go.str("IndexByte(%q, \'x\') = %v") : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
            });
        };
    }
/**
    // test a small index across all page offsets
**/
function testIndexByteSmall(_t:stdgo.testing.Testing.T):Void {
        var _b = new Slice<GoUInt8>((5015 : GoInt).toBasic(), 0, ...[for (i in 0 ... (5015 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_b.length - (15 : GoInt)), _i++, {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        _b[_i + _j] = ((100 : GoInt) + _j : GoByte);
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        var _p:GoInt = indexByte((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>), ((100 : GoInt) + _j : GoByte));
                        if (_p != _j) {
                            _t.errorf((Go.str("IndexByte(%q, %d) = %d") : GoString), Go.toInterface((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>)), Go.toInterface((100 : GoInt) + _j), Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        _b[_i + _j] = (0 : GoUInt8);
                    });
                };
            });
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_b.length - (15 : GoInt)), _i++, {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        _b[_i + _j] = (1 : GoUInt8);
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        var _p:GoInt = indexByte((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>), ((0 : GoUInt8) : GoByte));
                        if (_p != (-1 : GoInt)) {
                            _t.errorf((Go.str("IndexByte(%q, %d) = %d") : GoString), Go.toInterface((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>)), Go.toInterface((0 : GoInt)), Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        _b[_i + _j] = (0 : GoUInt8);
                    });
                };
            });
        };
    }
function testIndexRune(_t:stdgo.testing.Testing.T):Void {
        var _tests = (new Slice<T__struct_2>(
0,
0,
({ _in : (Go.str() : GoString), _rune : ("a".code : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : (Go.str() : GoString), _rune : ("☺".code : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : (Go.str("foo") : GoString), _rune : ("☹".code : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : (Go.str("foo") : GoString), _rune : ("o".code : GoInt32), _want : (1 : GoInt) } : T__struct_2),
({ _in : (Go.str("foo☺bar") : GoString), _rune : ("☺".code : GoInt32), _want : (3 : GoInt) } : T__struct_2),
({ _in : (Go.str("foo☺☻☹bar") : GoString), _rune : ("☹".code : GoInt32), _want : (9 : GoInt) } : T__struct_2),
({ _in : (Go.str("a A x") : GoString), _rune : ("A".code : GoInt32), _want : (2 : GoInt) } : T__struct_2),
({ _in : (Go.str("some_text=some_value") : GoString), _rune : ("=".code : GoInt32), _want : (9 : GoInt) } : T__struct_2),
({ _in : (Go.str("☺a") : GoString), _rune : ("a".code : GoInt32), _want : (3 : GoInt) } : T__struct_2),
({ _in : (Go.str("a☻☺b") : GoString), _rune : ("☺".code : GoInt32), _want : (4 : GoInt) } : T__struct_2),
({ _in : (Go.str("�") : GoString), _rune : ("�".code : GoInt32), _want : (0 : GoInt) } : T__struct_2),
({ _in : (Go.str(255) : GoString), _rune : ("�".code : GoInt32), _want : (0 : GoInt) } : T__struct_2),
({ _in : (Go.str("☻x�") : GoString), _rune : ("�".code : GoInt32), _want : ((Go.str("☻x") : GoString).length) } : T__struct_2),
({ _in : (Go.str("☻x", 226, 152) : GoString), _rune : ("�".code : GoInt32), _want : ((Go.str("☻x") : GoString).length) } : T__struct_2),
({ _in : (Go.str("☻x", 226, 152, "�") : GoString), _rune : ("�".code : GoInt32), _want : ((Go.str("☻x") : GoString).length) } : T__struct_2),
({ _in : (Go.str("☻x", 226, 152, "x") : GoString), _rune : ("�".code : GoInt32), _want : ((Go.str("☻x") : GoString).length) } : T__struct_2),
({ _in : (Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : GoString), _rune : (-1 : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : (Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : GoString), _rune : (55296 : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : (Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : GoString), _rune : (1114112 : GoInt32), _want : (-1 : GoInt) } : T__struct_2)) : Slice<T__struct_2>);
        for (_0 => _tt in _tests) {
            {
                var _got:GoInt = indexRune((_tt._in : Slice<GoByte>), _tt._rune);
                if (_got != _tt._want) {
                    _t.errorf((Go.str("IndexRune(%q, %d) = %v; want %v") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack = ((Go.str("test世界") : GoString) : Slice<GoByte>);
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((1000 : GoInt), function():Void {
            {
                var _i:GoInt = indexRune(_haystack, ("s".code : GoInt32));
                if (_i != (2 : GoInt)) {
                    _t.fatalf((Go.str("\'s\' at %d; want 2") : GoString), Go.toInterface(_i));
                };
            };
            {
                var _i:GoInt = indexRune(_haystack, ("世".code : GoInt32));
                if (_i != (4 : GoInt)) {
                    _t.fatalf((Go.str("\'世\' at %d; want 4") : GoString), Go.toInterface(_i));
                };
            };
        });
        if (_allocs != (0 : GoFloat64)) {
            _t.errorf((Go.str("expected no allocations, got %f") : GoString), Go.toInterface(_allocs));
        };
    }
/**
    // test count of a single byte across page offsets
**/
function testCountByte(_t:stdgo.testing.Testing.T):Void {
        var _b = new Slice<GoUInt8>((5015 : GoInt).toBasic(), 0, ...[for (i in 0 ... (5015 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _windows = (new Slice<GoInt>(
0,
0,
(1 : GoInt),
(2 : GoInt),
(3 : GoInt),
(4 : GoInt),
(15 : GoInt),
(16 : GoInt),
(17 : GoInt),
(31 : GoInt),
(32 : GoInt),
(33 : GoInt),
(63 : GoInt),
(64 : GoInt),
(65 : GoInt),
(128 : GoInt)) : Slice<GoInt>);
        var _testCountWindow:(GoInt, GoInt) -> Void = function(_i:GoInt, _window:GoInt):Void {
            {
                var _j:GoInt = (0 : GoInt);
                Go.cfor(_j < _window, _j++, {
                    _b[_i + _j] = ((100 : GoUInt8) : GoByte);
                    var _p:GoInt = count((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (100 : GoUInt8)) : Slice<GoUInt8>));
                    if (_p != (_j + (1 : GoInt))) {
                        _t.errorf((Go.str("TestCountByte.Count(%q, 100) = %d") : GoString), Go.toInterface((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>)), Go.toInterface(_p));
                    };
                });
            };
        };
        var _maxWnd:GoInt = _windows[(_windows.length) - (1 : GoInt)];
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= ((2 : GoInt) * _maxWnd), _i++, {
                for (_0 => _window in _windows) {
                    if (_window > ((_b.__slice__(_i) : Slice<GoUInt8>).length)) {
                        _window = ((_b.__slice__(_i) : Slice<GoUInt8>).length);
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j:GoInt = (0 : GoInt);
                        Go.cfor(_j < _window, _j++, {
                            _b[_i + _j] = ((0 : GoUInt8) : GoByte);
                        });
                    };
                };
            });
        };
        {
            var _i:GoInt = (4096 : GoInt) - (_maxWnd + (1 : GoInt));
            Go.cfor(_i < (_b.length), _i++, {
                for (_1 => _window in _windows) {
                    if (_window > ((_b.__slice__(_i) : Slice<GoUInt8>).length)) {
                        _window = ((_b.__slice__(_i) : Slice<GoUInt8>).length);
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j:GoInt = (0 : GoInt);
                        Go.cfor(_j < _window, _j++, {
                            _b[_i + _j] = ((0 : GoUInt8) : GoByte);
                        });
                    };
                };
            });
        };
    }
/**
    // Make sure we don't count bytes outside our window
**/
function testCountByteNoMatch(_t:stdgo.testing.Testing.T):Void {
        var _b = new Slice<GoUInt8>((5015 : GoInt).toBasic(), 0, ...[for (i in 0 ... (5015 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _windows = (new Slice<GoInt>(
0,
0,
(1 : GoInt),
(2 : GoInt),
(3 : GoInt),
(4 : GoInt),
(15 : GoInt),
(16 : GoInt),
(17 : GoInt),
(31 : GoInt),
(32 : GoInt),
(33 : GoInt),
(63 : GoInt),
(64 : GoInt),
(65 : GoInt),
(128 : GoInt)) : Slice<GoInt>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_b.length), _i++, {
                for (_0 => _window in _windows) {
                    if (_window > ((_b.__slice__(_i) : Slice<GoUInt8>).length)) {
                        _window = ((_b.__slice__(_i) : Slice<GoUInt8>).length);
                    };
                    {
                        var _j:GoInt = (0 : GoInt);
                        Go.cfor(_j < _window, _j++, {
                            _b[_i + _j] = ((100 : GoUInt8) : GoByte);
                        });
                    };
                    var _p:GoInt = count((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>));
                    if (_p != (0 : GoInt)) {
                        _t.errorf((Go.str("TestCountByteNoMatch(%q, 0) = %d") : GoString), Go.toInterface((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>)), Go.toInterface(_p));
                    };
                    {
                        var _j:GoInt = (0 : GoInt);
                        Go.cfor(_j < _window, _j++, {
                            _b[_i + _j] = ((0 : GoUInt8) : GoByte);
                        });
                    };
                };
            });
        };
    }
function _valName(_x:GoInt):GoString {
        {
            var _s:GoInt = _x >> (20 : GoUnTypedInt);
            if ((_s << (20 : GoUnTypedInt)) == _x) {
                return stdgo.fmt.Fmt.sprintf((Go.str("%dM") : GoString), Go.toInterface(_s));
            };
        };
        {
            var _s:GoInt = _x >> (10 : GoUnTypedInt);
            if ((_s << (10 : GoUnTypedInt)) == _x) {
                return stdgo.fmt.Fmt.sprintf((Go.str("%dK") : GoString), Go.toInterface(_s));
            };
        };
        return stdgo.fmt.Fmt.sprint(_x);
    }
function _benchBytes(_b:stdgo.testing.Testing.B, _sizes:Slice<GoInt>, _f:(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void):Void {
        for (_0 => _n in _sizes) {
            if (_isRaceBuilder && (_n > (4096 : GoInt))) {
                continue;
            };
            _b.run(_valName(_n), function(_b:stdgo.testing.Testing.B):Void {
                if ((_bmbuf.length) < _n) {
                    _bmbuf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
                };
                _b.setBytes((_n : GoInt64));
                _f(_b, _n);
            });
        };
    }
function benchmarkIndexByte(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexByte));
    }
function benchmarkIndexBytePortable(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexBytePortable));
    }
function _bmIndexByte(_index:(Slice<GoByte>, GoByte) -> GoInt):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, ("x".code : GoUInt8));
                    if (_j != (_n - (1 : GoInt))) {
                        _b.fatal(Go.toInterface((Go.str("bad index") : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
        };
    }
function benchmarkIndexRune(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRune(indexRune));
    }
function benchmarkIndexRuneASCII(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRuneASCII(indexRune));
    }
function _bmIndexRuneASCII(_index:(Slice<GoByte>, GoRune) -> GoInt):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, ("x".code : GoInt32));
                    if (_j != (_n - (1 : GoInt))) {
                        _b.fatal(Go.toInterface((Go.str("bad index") : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
        };
    }
function _bmIndexRune(_index:(Slice<GoByte>, GoRune) -> GoInt):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            stdgo.unicode.utf8.Utf8.encodeRune((_buf.__slice__(_n - (3 : GoInt)) : Slice<GoUInt8>), ("世".code : GoInt32));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, ("世".code : GoInt32));
                    if (_j != (_n - (3 : GoInt))) {
                        _b.fatal(Go.toInterface((Go.str("bad index") : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[_n - (3 : GoInt)] = ("\u0000".code : GoUInt8);
            _buf[_n - (2 : GoInt)] = ("\u0000".code : GoUInt8);
            _buf[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
        };
    }
function benchmarkEqual(_b:stdgo.testing.Testing.B):Void {
        _b.run((Go.str("0") : GoString), function(_b:stdgo.testing.Testing.B):Void {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
            var _buf1 = (_buf.__slice__((0 : GoInt), (0 : GoInt)) : Slice<GoUInt8>);
            var _buf2 = (_buf.__slice__((1 : GoInt), (1 : GoInt)) : Slice<GoUInt8>);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface((Go.str("bad equal") : GoString)));
                    };
                });
            };
        });
        var _sizes = (new Slice<GoInt>(
0,
0,
(1 : GoInt),
(6 : GoInt),
(9 : GoInt),
(15 : GoInt),
(16 : GoInt),
(20 : GoInt),
(32 : GoInt),
(4096 : GoInt),
(4194304 : GoInt),
(67108864 : GoInt)) : Slice<GoInt>);
        _benchBytes(_b, _sizes, _bmEqual(equal));
    }
function _bmEqual(_equal:(Slice<GoByte>, Slice<GoByte>) -> Bool):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            if ((_bmbuf.length) < ((2 : GoInt) * _n)) {
                _bmbuf = new Slice<GoUInt8>(((2 : GoInt) * _n : GoInt).toBasic(), 0, ...[for (i in 0 ... ((2 : GoInt) * _n : GoInt).toBasic()) (0 : GoUInt8)]);
            };
            var _buf1 = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            var _buf2 = (_bmbuf.__slice__(_n, (2 : GoInt) * _n) : Slice<GoUInt8>);
            _buf1[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            _buf2[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = _equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface((Go.str("bad equal") : GoString)));
                    };
                });
            };
            _buf1[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
            _buf2[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
        };
    }
function benchmarkIndex(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != (_n - (7 : GoInt))) {
                        _b.fatal(Go.toInterface((Go.str("bad index") : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
        });
    }
function benchmarkIndexEasy(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            _buf[_n - (7 : GoInt)] = ("x".code : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != (_n - (7 : GoInt))) {
                        _b.fatal(Go.toInterface((Go.str("bad index") : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
            _buf[_n - (7 : GoInt)] = ("\u0000".code : GoUInt8);
        });
    }
function benchmarkCount(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != (1 : GoInt)) {
                        _b.fatal(Go.toInterface((Go.str("bad count") : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
        });
    }
function benchmarkCountEasy(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[_n - (1 : GoInt)] = ("x".code : GoUInt8);
            _buf[_n - (7 : GoInt)] = ("x".code : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != (1 : GoInt)) {
                        _b.fatal(Go.toInterface((Go.str("bad count") : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[_n - (1 : GoInt)] = ("\u0000".code : GoUInt8);
            _buf[_n - (7 : GoInt)] = ("\u0000".code : GoUInt8);
        });
    }
function benchmarkCountSingle(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            var _step:GoInt = (8 : GoInt);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_buf.length), _i = _i + (_step), {
                    _buf[_i] = (1 : GoUInt8);
                });
            };
            var _expect:GoInt = (_buf.length + _step - (1 : GoInt)) / _step;
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, (new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>));
                    if (_j != _expect) {
                        _b.fatal(Go.toInterface((Go.str("bad count") : GoString)), Go.toInterface(_j), Go.toInterface(_expect));
                    };
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_buf.length), _i++, {
                    _buf[_i] = (0 : GoUInt8);
                });
            };
        });
    }
function testSplit(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _splittests) {
            var _a = splitN((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>), _tt._n);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_1 => _v in _a) {
                _x = (_v.__append__(("z".code : GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_result), Go.toInterface(_tt._a));
                continue;
            };
            if ((_tt._n == (0 : GoInt)) || (_a.length == (0 : GoInt))) {
                continue;
            };
            {
                var _want:GoString = _tt._a[(_tt._a.length) - (1 : GoInt)] + (Go.str("z") : GoString);
                if ((_x : GoString) != _want) {
                    _t.errorf((Go.str("last appended result was %s; want %s") : GoString), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s = join(_a, (_tt._sep : Slice<GoByte>));
            if ((_s : GoString) != _tt._s) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < (0 : GoInt)) {
                var _b = split((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf((Go.str("Split disagrees withSplitN(%q, %q, %d) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
            if ((_a.length) > (0 : GoInt)) {
                var _in = _a[(0 : GoInt)], _out = _s;
                if ((_in.capacity == _out.capacity) && (Go.pointer((_in.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]) == Go.pointer((_out.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]))) {
                    _t.errorf((Go.str("Join(%#v, %q) didn\'t copy") : GoString), Go.toInterface(_a), Go.toInterface(_tt._sep));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _splitaftertests) {
            var _a = splitAfterN((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>), _tt._n);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_1 => _v in _a) {
                _x = (_v.__append__(("z".code : GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_result), Go.toInterface(_tt._a));
                continue;
            };
            {
                var _want:GoString = _tt._a[(_tt._a.length) - (1 : GoInt)] + (Go.str("z") : GoString);
                if ((_x : GoString) != _want) {
                    _t.errorf((Go.str("last appended result was %s; want %s") : GoString), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s = join(_a, (null : Slice<GoUInt8>));
            if ((_s : GoString) != _tt._s) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < (0 : GoInt)) {
                var _b = splitAfter((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf((Go.str("SplitAfter disagrees withSplitAfterN(%q, %q, %d) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _fieldstests) {
            var _b = (_tt._s : Slice<GoByte>);
            var _a = fields(_b);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_1 => _v in _a) {
                _x = (_v.__append__(("z".code : GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf((Go.str("Fields(%q) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            if ((_b : GoString) != _tt._s) {
                _t.errorf((Go.str("slice changed to %s; want %s") : GoString), Go.toInterface((_b : GoString)), Go.toInterface(_tt._s));
            };
            if ((_tt._a.length) > (0 : GoInt)) {
                {
                    var _want:GoString = _tt._a[(_tt._a.length) - (1 : GoInt)] + (Go.str("z") : GoString);
                    if ((_x : GoString) != _want) {
                        _t.errorf((Go.str("last appended result was %s; want %s") : GoString), Go.toInterface(_x), Go.toInterface(_want));
                    };
                };
            };
        };
    }
function testFieldsFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _fieldstests) {
            var _a = fieldsFunc((_tt._s : Slice<GoByte>), stdgo.unicode.Unicode.isSpace);
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf((Go.str("FieldsFunc(%q, unicode.IsSpace) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return _c == ("X".code : GoInt32);
        };
        var _fieldsFuncTests:Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = (new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(0, 0, (new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str() : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("XX") : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("XXhiXXX") : GoString), (new Slice<GoString>(0, 0, (Go.str("hi") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest((Go.str("aXXbXXXcX") : GoString), (new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString), (Go.str("c") : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest)) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>);
        for (_1 => _tt in _fieldsFuncTests) {
            var _b = (_tt._s : Slice<GoByte>);
            var _a = fieldsFunc(_b, _pred);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_2 => _v in _a) {
                _x = (_v.__append__(("z".code : GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf((Go.str("FieldsFunc(%q) = %v, want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
            };
            if ((_b : GoString) != _tt._s) {
                _t.errorf((Go.str("slice changed to %s; want %s") : GoString), Go.toInterface(_b), Go.toInterface(_tt._s));
            };
            if ((_tt._a.length) > (0 : GoInt)) {
                {
                    var _want:GoString = _tt._a[(_tt._a.length) - (1 : GoInt)] + (Go.str("z") : GoString);
                    if ((_x : GoString) != _want) {
                        _t.errorf((Go.str("last appended result was %s; want %s") : GoString), Go.toInterface(_x), Go.toInterface(_want));
                    };
                };
            };
        };
    }
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runStringTests(_t:stdgo.testing.Testing.T, _f:Slice<GoByte> -> Slice<GoByte>, _funcName:GoString, _testCases:Slice<StringTest>):Void {
        for (_0 => _tc in _testCases) {
            var _actual = _f((_tc._in : Slice<GoByte>));
            if ((_actual == null) && (_tc._out != null)) {
                _t.errorf((Go.str("%s(%q) = nil; want %q") : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_tc._out));
            };
            if ((_actual != null) && (_tc._out == null)) {
                _t.errorf((Go.str("%s(%q) = %q; want nil") : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual));
            };
            if (!equal(_actual, _tc._out)) {
                _t.errorf((Go.str("%s(%q) = %q; want %q") : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_r:GoRune):GoString {
        var _runes = new Slice<GoInt32>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoInt32)]);
        for (_i => _ in _runes) {
            _runes[_i] = _r;
        };
        return (_runes : GoString);
    }
/**
    // User-defined self-inverse mapping function
**/
function _rot13(_r:GoRune):GoRune {
        var _step:GoUnTypedInt = (13 : GoUnTypedInt);
        if ((_r >= ("a".code : GoInt32)) && (_r <= ("z".code : GoInt32))) {
            return ((_r - ("a".code : GoInt32)) + (13 : GoInt32) % (26 : GoInt32)) + ("a".code : GoInt32);
        };
        if ((_r >= ("A".code : GoInt32)) && (_r <= ("Z".code : GoInt32))) {
            return ((_r - ("A".code : GoInt32)) + (13 : GoInt32) % (26 : GoInt32)) + ("A".code : GoInt32);
        };
        return _r;
    }
function testMap(_t:stdgo.testing.Testing.T):Void {
        var _a:GoString = _tenRunes(("a".code : GoInt32));
        var _maxRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return (1114111 : GoInt32);
        };
        var _m = map(_maxRune, (_a : Slice<GoByte>));
        var _expect:GoString = _tenRunes((1114111 : GoInt32));
        if ((_m : GoString) != _expect) {
            _t.errorf((Go.str("growing: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _minRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return ("a".code : GoInt32);
        };
        _m = map(_minRune, (_tenRunes((1114111 : GoInt32)) : Slice<GoByte>));
        _expect = _a;
        if ((_m : GoString) != _expect) {
            _t.errorf((Go.str("shrinking: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, ((Go.str("a to zed") : GoString) : Slice<GoByte>));
        _expect = (Go.str("n gb mrq") : GoString);
        if ((_m : GoString) != _expect) {
            _t.errorf((Go.str("rot13: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, ((Go.str("a to zed") : GoString) : Slice<GoByte>)));
        _expect = (Go.str("a to zed") : GoString);
        if ((_m : GoString) != _expect) {
            _t.errorf((Go.str("rot13: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _dropNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (-1 : GoInt32);
        };
        _m = map(_dropNotLatin, ((Go.str("Hello, 세계") : GoString) : Slice<GoByte>));
        _expect = (Go.str("Hello") : GoString);
        if ((_m : GoString) != _expect) {
            _t.errorf((Go.str("drop: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _invalidRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return (1114112 : GoInt32);
        };
        _m = map(_invalidRune, ((Go.str("x") : GoString) : Slice<GoByte>));
        _expect = (Go.str("\uFFFD") : GoString);
        if ((_m : GoString) != _expect) {
            _t.errorf((Go.str("invalidRune: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, toUpper, (Go.str("ToUpper") : GoString), _upperTests);
    }
function testToLower(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, toLower, (Go.str("ToLower") : GoString), _lowerTests);
    }
function benchmarkToUpper(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _upperTests) {
            var _tin = (_tc._in : Slice<GoByte>);
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual = toUpper(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf((Go.str("ToUpper(%q) = %q; want %q") : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _lowerTests) {
            var _tin = (_tc._in : Slice<GoByte>);
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual = toLower(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf((Go.str("ToLower(%q) = %q; want %q") : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function testToValidUTF8(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _toValidUTF8Tests) {
            var _got = toValidUTF8((_tc._in : Slice<GoByte>), (_tc._repl : Slice<GoByte>));
            if (!equal(_got, (_tc._out : Slice<GoByte>))) {
                _t.errorf((Go.str("ToValidUTF8(%q, %q) = %q; want %q") : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got), Go.toInterface(_tc._out));
            };
        };
    }
function testTrimSpace(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, trimSpace, (Go.str("TrimSpace") : GoString), _trimSpaceTests);
    }
function testRepeat(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in repeatTests) {
            var _tin = (_tt._in : Slice<GoByte>);
            var _tout = (_tt._out : Slice<GoByte>);
            var _a = repeat(_tin, _tt._count);
            if (!equal(_a, _tout)) {
                _t.errorf((Go.str("Repeat(%q, %d) = %q; want %q") : GoString), Go.toInterface(_tin), Go.toInterface(_tt._count), Go.toInterface(_a), Go.toInterface(_tout));
                continue;
            };
        };
    }
function _repeat(_b:Slice<GoByte>, _count:GoInt):Error {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _err:Error = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    {
                        var _r:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_r != null) {
                            if (Go.assertable((_r : Error))) {
                                var _v:stdgo.Error = _r == null ? null : _r.__underlying__() == null ? null : _r == null ? null : _r.__underlying__().value;
                                _err = _v;
                            } else {
                                var _v:AnyInterface = _r == null ? null : _r.__underlying__();
                                _err = stdgo.fmt.Fmt.errorf((Go.str("%s") : GoString), Go.toInterface(_v));
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
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return _err;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return _err;
        };
    }
/**
    // See Issue golang.org/issue/16237
**/
function testRepeatCatchesOverflow(_t:stdgo.testing.Testing.T):Void {
        var _tests = {
            var s:GoArray<T__struct_4> = new GoArray<T__struct_4>(...[for (i in 0 ... 7) ({ _s : ("" : GoString), _count : (0 : GoInt), _errStr : ("" : GoString) } : T__struct_4)]);
            s[0] = ({ _s : (Go.str("--") : GoString), _count : (-2147483647 : GoInt), _errStr : (Go.str("negative") : GoString) } : T__struct_4);
            s[1] = ({ _s : (Go.str() : GoString), _count : ((2147483647 : GoUInt) : GoInt), _errStr : (Go.str() : GoString) } : T__struct_4);
            s[2] = ({ _s : (Go.str("-") : GoString), _count : (10 : GoInt), _errStr : (Go.str() : GoString) } : T__struct_4);
            s[3] = ({ _s : (Go.str("gopher") : GoString), _count : (0 : GoInt), _errStr : (Go.str() : GoString) } : T__struct_4);
            s[4] = ({ _s : (Go.str("-") : GoString), _count : (-1 : GoInt), _errStr : (Go.str("negative") : GoString) } : T__struct_4);
            s[5] = ({ _s : (Go.str("--") : GoString), _count : (-102 : GoInt), _errStr : (Go.str("negative") : GoString) } : T__struct_4);
            s[6] = ({ _s : (new Slice<GoUInt8>((255 : GoInt).toBasic(), 0, ...[for (i in 0 ... (255 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString), _count : ((16843010 : GoUInt) : GoInt), _errStr : (Go.str("overflow") : GoString) } : T__struct_4);
            s;
        };
        for (_i => _tt in _tests) {
            var _err:stdgo.Error = _repeat((_tt._s : Slice<GoByte>), _tt._count);
            if (_tt._errStr == (Go.str() : GoString)) {
                if (_err != null) {
                    _t.errorf((Go.str("#%d panicked %v") : GoString), Go.toInterface(_i), Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), _tt._errStr)) {
                _t.errorf((Go.str("#%d expected %q got %q") : GoString), Go.toInterface(_i), Go.toInterface(_tt._errStr), Go.toInterface(_err));
            };
        };
    }
function _runesEqual(_a:Slice<GoRune>, _b:Slice<GoRune>):Bool {
        if ((_a.length) != (_b.length)) {
            return false;
        };
        for (_i => _r in _a) {
            if (_r != _b[_i]) {
                return false;
            };
        };
        return true;
    }
function testRunes(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in runesTests) {
            var _tin = (_tt._in : Slice<GoByte>);
            var _a = runes(_tin);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf((Go.str("Runes(%q) = %v; want %v") : GoString), Go.toInterface(_tin), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:GoString = (_a : GoString);
                if (_s != _tt._in) {
                    _t.errorf((Go.str("string(Runes(%q)) = %x; want %x") : GoString), Go.toInterface(_tin), Go.toInterface(_s), Go.toInterface(_tin));
                };
            };
        };
    }
function testTrim(_t:stdgo.testing.Testing.T):Void {
        var _toFn:GoString -> { var _0 : (Slice<GoUInt8>, GoString) -> Slice<GoUInt8>; var _1 : (Slice<GoUInt8>, Slice<GoUInt8>) -> Slice<GoUInt8>; } = function(_name:GoString):{ var _0 : (Slice<GoByte>, GoString) -> Slice<GoByte>; var _1 : (Slice<GoByte>, Slice<GoByte>) -> Slice<GoByte>; } {
            if (_name == (Go.str("Trim") : GoString)) {
                return { _0 : trim, _1 : null };
            } else if (_name == (Go.str("TrimLeft") : GoString)) {
                return { _0 : trimLeft, _1 : null };
            } else if (_name == (Go.str("TrimRight") : GoString)) {
                return { _0 : trimRight, _1 : null };
            } else if (_name == (Go.str("TrimPrefix") : GoString)) {
                return { _0 : null, _1 : trimPrefix };
            } else if (_name == (Go.str("TrimSuffix") : GoString)) {
                return { _0 : null, _1 : trimSuffix };
            } else {
                _t.errorf((Go.str("Undefined trim function %s") : GoString), Go.toInterface(_name));
                return { _0 : null, _1 : null };
            };
        };
        for (_0 => _tc in _trimTests) {
            var _name:GoString = _tc._f;
            var __tmp__ = _toFn(_name), _f:(Slice<GoUInt8>, GoString) -> Slice<GoUInt8> = __tmp__._0, _fb:(Slice<GoUInt8>, Slice<GoUInt8>) -> Slice<GoUInt8> = __tmp__._1;
            if ((_f == null) && (_fb == null)) {
                continue;
            };
            var _actual:GoString = ("" : GoString);
            if (_f != null) {
                _actual = (_f((_tc._in : Slice<GoByte>), _tc._arg) : GoString);
            } else {
                _actual = (_fb((_tc._in : Slice<GoByte>), (_tc._arg : Slice<GoByte>)) : GoString);
            };
            if (_actual != _tc._out) {
                _t.errorf((Go.str("%s(%q, %q) = %q; want %q") : GoString), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
        for (_1 => _tc in _trimNilTests) {
            var _name:GoString = _tc._f;
            var __tmp__ = _toFn(_name), _f:(Slice<GoUInt8>, GoString) -> Slice<GoUInt8> = __tmp__._0, _fb:(Slice<GoUInt8>, Slice<GoUInt8>) -> Slice<GoUInt8> = __tmp__._1;
            if ((_f == null) && (_fb == null)) {
                continue;
            };
            var _actual:Slice<GoByte> = (null : Slice<GoUInt8>);
            if (_f != null) {
                _actual = _f(_tc._in, _tc._arg);
            } else {
                _actual = _fb(_tc._in, (_tc._arg : Slice<GoByte>));
            };
            var _report = function(_s:Slice<GoByte>):GoString {
                if (_s == null) {
                    return (Go.str("nil") : GoString);
                } else {
                    return stdgo.fmt.Fmt.sprintf((Go.str("%q") : GoString), Go.toInterface(_s));
                };
            };
            if ((_actual.length) != (0 : GoInt)) {
                _t.errorf((Go.str("%s(%s, %q) returned non-empty value") : GoString), Go.toInterface(_name), Go.toInterface(_report(_tc._in)), Go.toInterface(_tc._arg));
            } else {
                var _actualNil:Bool = _actual == null;
                var _outNil:Bool = _tc._out == null;
                if (_actualNil != _outNil) {
                    _t.errorf((Go.str("%s(%s, %q) got nil %t; want nil %t") : GoString), Go.toInterface(_name), Go.toInterface(_report(_tc._in)), Go.toInterface(_tc._arg), Go.toInterface(_actualNil), Go.toInterface(_outNil));
                };
            };
        };
    }
function _not(_p:T_predicate):T_predicate {
        return (new stdgo.bytes_test.Bytes_test.T_predicate(function(_r:GoRune):Bool {
            return !_p._f(_r);
        }, (Go.str("not ") : GoString) + _p._name) : stdgo.bytes_test.Bytes_test.T_predicate);
    }
function testTrimFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _trimFuncTests) {
            var _trimmers = (new Slice<T__struct_5>(0, 0, ({ _name : (Go.str("TrimFunc") : GoString), _trim : trimFunc, _out : _tc._trimOut } : T__struct_5), ({ _name : (Go.str("TrimLeftFunc") : GoString), _trim : trimLeftFunc, _out : _tc._leftOut } : T__struct_5), ({ _name : (Go.str("TrimRightFunc") : GoString), _trim : trimRightFunc, _out : _tc._rightOut } : T__struct_5)) : Slice<T__struct_5>);
            for (_1 => _trimmer in _trimmers) {
                var _actual = _trimmer._trim((_tc._in : Slice<GoByte>), _tc._f._f);
                if ((_actual == null) && (_trimmer._out != null)) {
                    _t.errorf((Go.str("%s(%q, %q) = nil; want %q") : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_trimmer._out));
                };
                if ((_actual != null) && (_trimmer._out == null)) {
                    _t.errorf((Go.str("%s(%q, %q) = %q; want nil") : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual));
                };
                if (!equal(_actual, _trimmer._out)) {
                    _t.errorf((Go.str("%s(%q, %q) = %q; want %q") : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual), Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _indexFuncTests) {
            var _first:GoInt = indexFunc((_tc._in : Slice<GoByte>), _tc._f._f);
            if (_first != _tc._first) {
                _t.errorf((Go.str("IndexFunc(%q, %s) = %d; want %d") : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first), Go.toInterface(_tc._first));
            };
            var _last:GoInt = lastIndexFunc((_tc._in : Slice<GoByte>), _tc._f._f);
            if (_last != _tc._last) {
                _t.errorf((Go.str("LastIndexFunc(%q, %s) = %d; want %d") : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_last), Go.toInterface(_tc._last));
            };
        };
    }
function testReplace(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in replaceTests) {
            var _in = ((_tt._in : Slice<GoByte>).__append__(...(Go.str("<spare>") : GoString).__toArray__()));
            _in = (_in.__slice__(0, (_tt._in.length)) : Slice<GoUInt8>);
            var _out = replace(_in, (_tt._old : Slice<GoByte>), (_tt._new : Slice<GoByte>), _tt._n);
            {
                var _s:GoString = (_out : GoString);
                if (_s != _tt._out) {
                    _t.errorf((Go.str("Replace(%q, %q, %q, %d) = %q, want %q") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
            if ((_in.capacity == _out.capacity) && (Go.pointer((_in.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]) == Go.pointer((_out.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]))) {
                _t.errorf((Go.str("Replace(%q, %q, %q, %d) didn\'t copy") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n));
            };
            if (_tt._n == (-1 : GoInt)) {
                var _out = replaceAll(_in, (_tt._old : Slice<GoByte>), (_tt._new : Slice<GoByte>));
                {
                    var _s:GoString = (_out : GoString);
                    if (_s != _tt._out) {
                        _t.errorf((Go.str("ReplaceAll(%q, %q, %q) = %q, want %q") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_s), Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
function testTitle(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in titleTests) {
            {
                var _s:GoString = (title((_tt._in : Slice<GoByte>)) : GoString);
                if (_s != _tt._out) {
                    _t.errorf((Go.str("Title(%q) = %q, want %q") : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testToTitle(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in toTitleTests) {
            {
                var _s:GoString = (toTitle((_tt._in : Slice<GoByte>)) : GoString);
                if (_s != _tt._out) {
                    _t.errorf((Go.str("ToTitle(%q) = %q, want %q") : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testEqualFold(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold((_tt._s : Slice<GoByte>), (_tt._t : Slice<GoByte>));
                if (_out != _tt._out) {
                    _t.errorf((Go.str("EqualFold(%#q, %#q) = %v, want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold((_tt._t : Slice<GoByte>), (_tt._s : Slice<GoByte>));
                if (_out != _tt._out) {
                    _t.errorf((Go.str("EqualFold(%#q, %#q) = %v, want %v") : GoString), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testCut(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _cutTests) {
            {
                var __tmp__ = cut((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>)), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
                if (((_before : GoString) != _tt._before || (_after : GoString) != _tt._after) || (_found != _tt._found)) {
                    _t.errorf((Go.str("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function testBufferGrowNegative(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.fatal(Go.toInterface((Go.str("Grow(-1) should have panicked") : GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({  } : Buffer);
            _b.grow((-1 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testBufferTruncateNegative(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.fatal(Go.toInterface((Go.str("Truncate(-1) should have panicked") : GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({  } : Buffer);
            _b.truncate((-1 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testBufferTruncateOutOfRange(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.fatal(Go.toInterface((Go.str("Truncate(20) should have panicked") : GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({  } : Buffer);
            _b.write(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]));
            _b.truncate((20 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testContains(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _containsTests) {
            {
                var _got:Bool = contains(_tt._b, _tt._subslice);
                if (_got != _tt._want) {
                    _t.errorf((Go.str("Contains(%q, %q) = %v, want %v") : GoString), Go.toInterface(_tt._b), Go.toInterface(_tt._subslice), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testContainsAny(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ct in containsAnyTests) {
            if (containsAny(_ct._b, _ct._substr) != _ct._expected) {
                _t.errorf((Go.str("ContainsAny(%s, %s) = %v, want %v") : GoString), Go.toInterface(_ct._b), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ct in containsRuneTests) {
            if (containsRune(_ct._b, _ct._r) != _ct._expected) {
                _t.errorf((Go.str("ContainsRune(%q, %q) = %v, want %v") : GoString), Go.toInterface(_ct._b), Go.toInterface(_ct._r), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function benchmarkFields(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = (16 : GoInt);
                    Go.cfor(_j <= (1048576 : GoInt), _j = _j << ((4 : GoUnTypedInt)), {
                        _b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d") : GoString), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : Slice<GoUInt8>);
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _b.n, _i++, {
                                    fields(_data);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkFieldsFunc(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = (16 : GoInt);
                    Go.cfor(_j <= (1048576 : GoInt), _j = _j << ((4 : GoUnTypedInt)), {
                        _b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d") : GoString), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : Slice<GoUInt8>);
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _b.n, _i++, {
                                    fieldsFunc(_data, stdgo.unicode.Unicode.isSpace);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimSpace(_b:stdgo.testing.Testing.B):Void {
        var _tests = (new Slice<T__struct_12>(0, 0, ({ _name : (Go.str("NoTrim") : GoString), _input : ((Go.str("typical") : GoString) : Slice<GoByte>) } : T__struct_12), ({ _name : (Go.str("ASCII") : GoString), _input : ((Go.str("  foo bar  ") : GoString) : Slice<GoByte>) } : T__struct_12), ({ _name : (Go.str("SomeNonASCII") : GoString), _input : ((Go.str("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    ") : GoString) : Slice<GoByte>) } : T__struct_12), ({ _name : (Go.str("JustNonASCII") : GoString), _input : ((Go.str("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000") : GoString) : Slice<GoByte>) } : T__struct_12)) : Slice<T__struct_12>);
        for (_0 => _test in _tests) {
            _b.run(_test._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        trimSpace(_test._input);
                    });
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:stdgo.testing.Testing.B):Void {
        var _tests = (new Slice<T__struct_12>(0, 0, ({ _name : (Go.str("Valid") : GoString), _input : ((Go.str("typical") : GoString) : Slice<GoByte>) } : T__struct_12), ({ _name : (Go.str("InvalidASCII") : GoString), _input : ((Go.str("foo", 255, "bar") : GoString) : Slice<GoByte>) } : T__struct_12), ({ _name : (Go.str("InvalidNonASCII") : GoString), _input : ((Go.str("日本語", 255, "日本語") : GoString) : Slice<GoByte>) } : T__struct_12)) : Slice<T__struct_12>);
        var _replacement = ((Go.str("\uFFFD") : GoString) : Slice<GoByte>);
        _b.resetTimer();
        for (_0 => _test in _tests) {
            _b.run(_test._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        toValidUTF8(_test._input, _replacement);
                    });
                };
            });
        };
    }
function _makeBenchInputHard():Slice<GoByte> {
        var _tokens = (new GoArray<GoString>((Go.str("<a>") : GoString), (Go.str("<p>") : GoString), (Go.str("<b>") : GoString), (Go.str("<strong>") : GoString), (Go.str("</a>") : GoString), (Go.str("</p>") : GoString), (Go.str("</b>") : GoString), (Go.str("</strong>") : GoString), (Go.str("hello") : GoString), (Go.str("world") : GoString)) : GoArray<GoString>);
        var _x = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while (true) {
            var _i:GoInt = stdgo.math.rand.Rand.intn((_tokens.length));
            if ((_x.length + _tokens[_i].length) >= (1048576 : GoInt)) {
                break;
            };
            _x = (_x.__append__(..._tokens[_i].__toArray__()));
        };
        return _x;
    }
function _benchmarkIndexHard(_b:stdgo.testing.Testing.B, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                index(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkLastIndexHard(_b:stdgo.testing.Testing.B, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                lastIndex(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkCountHard(_b:stdgo.testing.Testing.B, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                count(_benchInputHard, _sep);
            });
        };
    }
function benchmarkIndexHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((Go.str("<>") : GoString) : Slice<GoByte>));
    }
function benchmarkIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((Go.str("</pre>") : GoString) : Slice<GoByte>));
    }
function benchmarkIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((Go.str("<b>hello world</b>") : GoString) : Slice<GoByte>));
    }
function benchmarkIndexHard4(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((Go.str("<pre><b>hello</b><strong>world</strong></pre>") : GoString) : Slice<GoByte>));
    }
function benchmarkLastIndexHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((Go.str("<>") : GoString) : Slice<GoByte>));
    }
function benchmarkLastIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((Go.str("</pre>") : GoString) : Slice<GoByte>));
    }
function benchmarkLastIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((Go.str("<b>hello world</b>") : GoString) : Slice<GoByte>));
    }
function benchmarkCountHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((Go.str("<>") : GoString) : Slice<GoByte>));
    }
function benchmarkCountHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((Go.str("</pre>") : GoString) : Slice<GoByte>));
    }
function benchmarkCountHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((Go.str("<b>hello world</b>") : GoString) : Slice<GoByte>));
    }
function benchmarkSplitEmptySeparator(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, (null : Slice<GoUInt8>));
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep = ((Go.str("/") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep = ((Go.str("hello") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep = ((Go.str("/") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, (10 : GoInt));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep = ((Go.str("hello") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, (10 : GoInt));
            });
        };
    }
function benchmarkRepeat(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                repeat(((Go.str("-") : GoString) : Slice<GoByte>), (80 : GoInt));
            });
        };
    }
function benchmarkBytesCompare(_b:stdgo.testing.Testing.B):Void {
        {
            var _n:GoInt = (1 : GoInt);
            Go.cfor(_n <= (2048 : GoInt), _n = _n << ((1 : GoUnTypedInt)), {
                _b.run(stdgo.fmt.Fmt.sprint(_n), function(_b:stdgo.testing.Testing.B):Void {
                    var _x:Slice<GoUInt8> = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
                    var _y:Slice<GoUInt8> = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _n, _i++, {
                            _x[_i] = ("a".code : GoUInt8);
                        });
                    };
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _n, _i++, {
                            _y[_i] = ("a".code : GoUInt8);
                        });
                    };
                    _b.resetTimer();
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _b.n, _i++, {
                            compare(_x, _y);
                        });
                    };
                });
            });
        };
    }
function benchmarkIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, ("#".code : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = (Go.str("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz") : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
                        _b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _b.n, _i++, {
                                    indexAny((_x.__slice__(0, _k) : Slice<GoUInt8>), (_cs.__slice__(0, _j) : GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, ("#".code : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = (Go.str("你好世界, hello world. 你好世界, hello world. 你好世界, hello world.") : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
                        _b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _b.n, _i++, {
                                    indexAny((_x.__slice__(0, _k) : Slice<GoUInt8>), (_cs.__slice__(0, _j) : GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, ("#".code : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = (Go.str("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz") : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
                        _b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : Slice<GoUInt8>), (_cs.__slice__(0, _j) : GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, ("#".code : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = (Go.str("你好世界, hello world. 你好世界, hello world. 你好世界, hello world.") : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
                        _b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : Slice<GoUInt8>), (_cs.__slice__(0, _j) : GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimASCII(_b:stdgo.testing.Testing.B):Void {
        var _cs:GoString = (Go.str("0123456789abcdef") : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (4096 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (16 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
                        _b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            var _x = repeat(((_cs.__slice__(0, _j) : GoString) : Slice<GoByte>), _k);
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < _b.n, _i++, {
                                    trim((_x.__slice__(0, _k) : Slice<GoUInt8>), (_cs.__slice__(0, _j) : GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimByte(_b:stdgo.testing.Testing.B):Void {
        var _x = ((Go.str("  the quick brown fox   ") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                trim(_x, (Go.str(" ") : GoString));
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.testing.Testing.B):Void {
        var _key = (new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>);
        for (_0 => _skip in (new GoArray<GoInt>((2 : GoInt), (4 : GoInt), (8 : GoInt), (16 : GoInt), (32 : GoInt), (64 : GoInt)) : GoArray<GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf((Go.str("IndexPeriodic%d") : GoString), Go.toInterface(_skip)), function(_b:stdgo.testing.Testing.B):Void {
                var _buf = new Slice<GoUInt8>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoUInt8)]);
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (_buf.length), _i = _i + (_skip), {
                        _buf[_i] = (1 : GoUInt8);
                    });
                };
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        index(_buf, _key);
                    });
                };
            });
        };
    }
function testCompare(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _compareTests) {
            var _numShifts:GoInt = (16 : GoInt);
            var _buffer = new Slice<GoUInt8>(((_tt._b.length) + _numShifts : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_tt._b.length) + _numShifts : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _offset:GoInt = (0 : GoInt);
                Go.cfor(_offset <= _numShifts, _offset++, {
                    var _shiftedB = (_buffer.__slice__(_offset, (_tt._b.length) + _offset) : Slice<GoUInt8>);
                    Go.copySlice(_shiftedB, _tt._b);
                    var _cmp:GoInt = compare(_tt._a, _shiftedB);
                    if (_cmp != _tt._i) {
                        _t.errorf(("Compare(%q, %q), offset %d = %v; want %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_offset), Go.toInterface(_cmp), Go.toInterface(_tt._i));
                    };
                });
            };
        };
    }
function testCompareIdenticalSlice(_t:stdgo.testing.Testing.T):Void {
        var _b:Slice<GoUInt8> = ((Go.str("Hello Gophers!") : GoString) : Slice<GoByte>);
        if (compare(_b, _b) != (0 : GoInt)) {
            _t.error(Go.toInterface((Go.str("b != b") : GoString)));
        };
        if (compare(_b, (_b.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)) != (1 : GoInt)) {
            _t.error(Go.toInterface((Go.str("b > b[:1] failed") : GoString)));
        };
    }
function testCompareBytes(_t:stdgo.testing.Testing.T):Void {
        var _lengths = new Slice<GoInt>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoInt)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (128 : GoInt), _i++, {
                _lengths = (_lengths.__append__(_i));
            });
        };
        _lengths = (_lengths.__append__((256 : GoInt), (512 : GoInt), (1024 : GoInt), (1333 : GoInt), (4095 : GoInt), (4096 : GoInt), (4097 : GoInt)));
        if (!stdgo.testing.Testing.short() || (stdgo.internal.testenv.Testenv.builder() != (Go.str() : GoString))) {
            _lengths = (_lengths.__append__((65535 : GoInt), (65536 : GoInt), (65537 : GoInt), (99999 : GoInt)));
        };
        var _n:GoInt = _lengths[(_lengths.length) - (1 : GoInt)];
        var _a = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
        var _b = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_0 => _len in _lengths) {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _len, _i++, {
                    _a[_i] = ((1 : GoInt) + ((31 : GoInt) * _i % (254 : GoInt)) : GoByte);
                    _b[_i] = ((1 : GoInt) + ((31 : GoInt) * _i % (254 : GoInt)) : GoByte);
                });
            };
            {
                var _i:GoInt = _len;
                Go.cfor(_i <= _n, _i++, {
                    _a[_i] = (8 : GoUInt8);
                    _b[_i] = (9 : GoUInt8);
                });
            };
            var _cmp:GoInt = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
            if (_cmp != (0 : GoInt)) {
                _t.errorf(("CompareIdentical(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
            };
            if (_len > (0 : GoInt)) {
                _cmp = compare((_a.__slice__(0, _len - (1 : GoInt)) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
                if (_cmp != (-1 : GoInt)) {
                    _t.errorf(("CompareAshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
                };
                _cmp = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len - (1 : GoInt)) : Slice<GoUInt8>));
                if (_cmp != (1 : GoInt)) {
                    _t.errorf(("CompareBshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
                };
            };
            {
                var _k:GoInt = (0 : GoInt);
                Go.cfor(_k < _len, _k++, {
                    _b[_k] = _a[_k] - (1 : GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
                    if (_cmp != (1 : GoInt)) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    _b[_k] = _a[_k] + (1 : GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
                    if (_cmp != (-1 : GoInt)) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    _b[_k] = _a[_k];
                });
            };
        };
    }
function testEndianBaseCompare(_t:stdgo.testing.Testing.T):Void {
        var _maxLength:GoUnTypedInt = (512 : GoUnTypedInt);
        var _a = new Slice<GoUInt8>((512 : GoInt).toBasic(), 0, ...[for (i in 0 ... (512 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _b = new Slice<GoUInt8>((512 : GoInt).toBasic(), 0, ...[for (i in 0 ... (512 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (512 : GoInt), _i++, {
                _a[_i] = ((1 : GoInt) + ((31 : GoInt) * _i % (254 : GoInt)) : GoByte);
                _b[_i] = ((1 : GoInt) + ((31 : GoInt) * _i % (254 : GoInt)) : GoByte);
            });
        };
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i <= (512 : GoInt), _i = _i << ((1 : GoUnTypedInt)), {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_i - (1 : GoInt)), _j++, {
                        _a[_j] = _b[_j] - (1 : GoUInt8);
                        _a[_j + (1 : GoInt)] = _b[_j + (1 : GoInt)] + (1 : GoUInt8);
                        var _cmp:GoInt = compare((_a.__slice__(0, _i) : Slice<GoUInt8>), (_b.__slice__(0, _i) : Slice<GoUInt8>));
                        if (_cmp != (-1 : GoInt)) {
                            _t.errorf(("CompareBbigger(%d,%d) = %d" : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        _a[_j] = _b[_j] + (1 : GoUInt8);
                        _a[_j + (1 : GoInt)] = _b[_j + (1 : GoInt)] - (1 : GoUInt8);
                        _cmp = compare((_a.__slice__(0, _i) : Slice<GoUInt8>), (_b.__slice__(0, _i) : Slice<GoUInt8>));
                        if (_cmp != (1 : GoInt)) {
                            _t.errorf(("CompareAbigger(%d,%d) = %d" : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        _a[_j] = _b[_j];
                        _a[_j + (1 : GoInt)] = _b[_j + (1 : GoInt)];
                    });
                };
            });
        };
    }
function benchmarkCompareBytesEqual(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((Go.str("Hello Gophers!") : GoString) : Slice<GoByte>);
        var _b2 = ((Go.str("Hello Gophers!") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (0 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 != b2") : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesToNil(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((Go.str("Hello Gophers!") : GoString) : Slice<GoByte>);
        var _b2:Slice<GoByte> = (null : Slice<GoUInt8>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (1 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 > b2 failed") : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesEmpty(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((Go.str() : GoString) : Slice<GoByte>);
        var _b2 = _b1;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (0 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 != b2") : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesIdentical(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((Go.str("Hello Gophers!") : GoString) : Slice<GoByte>);
        var _b2 = _b1;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (0 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 != b2") : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesSameLength(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((Go.str("Hello Gophers!") : GoString) : Slice<GoByte>);
        var _b2 = ((Go.str("Hello, Gophers") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (-1 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 < b2 failed") : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesDifferentLength(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((Go.str("Hello Gophers!") : GoString) : Slice<GoByte>);
        var _b2 = ((Go.str("Hello, Gophers!") : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (-1 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 < b2 failed") : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesBigUnaligned(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while ((_b1.length) < (1048576 : GoInt)) {
            _b1 = (_b1.__append__(...(Go.str("Hello Gophers!") : GoString).__toArray__()));
        };
        var _b2 = (((Go.str("hello") : GoString) : Slice<GoByte>).__append__(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, (_b2.__slice__(((Go.str("hello") : GoString).length)) : Slice<GoUInt8>)) != (0 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 != b2") : GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : GoInt64));
    }
function benchmarkCompareBytesBig(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while ((_b1.length) < (1048576 : GoInt)) {
            _b1 = (_b1.__append__(...(Go.str("Hello Gophers!") : GoString).__toArray__()));
        };
        var _b2 = ((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>).__append__(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (0 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 != b2") : GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : GoInt64));
    }
function benchmarkCompareBytesBigIdentical(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while ((_b1.length) < (1048576 : GoInt)) {
            _b1 = (_b1.__append__(...(Go.str("Hello Gophers!") : GoString).__toArray__()));
        };
        var _b2 = _b1;
        _b.startTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != (0 : GoInt)) {
                    _b.fatal(Go.toInterface((Go.str("b1 != b2") : GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : GoInt64));
    }
function exampleBuffer():Void {
        var _b:Buffer = ({  } : Buffer);
        _b.write(((Go.str("Hello ") : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.fprintf({
            final __self__ = new Buffer_wrapper(_b);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
            __self__.cap = #if !macro function():GoInt return _b.cap() #else null #end;
            __self__.grow = #if !macro function(__0:GoInt):Void _b.grow(__0) #else null #end;
            __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
            __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _b.next(__0) #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(__0) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _b.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _b.string() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt):Void _b.truncate(__0) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
            __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(__0) #else null #end;
            __self__.writeByte = #if !macro function(_delim:GoUInt8):stdgo.Error return _b.writeByte(_delim) #else null #end;
            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
            __self__._grow = #if !macro function(__0:GoInt):GoInt return _b._grow(__0) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(__0) #else null #end;
            __self__;
        }, (Go.str("world!") : GoString));
        _b.writeTo({
            final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
            __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
            __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
            __self__.chown = #if !macro function(_year:GoInt, _week:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_year, _week) #else null #end;
            __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
            __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
            __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(__0) #else null #end;
            __self__.readAt = #if !macro function(_b_:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_b_, _off) #else null #end;
            __self__.readDir = #if !macro function(__0:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(__0) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
            __self__.readdir = #if !macro function(__0:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(__0) #else null #end;
            __self__.readdirnames = #if !macro function(__0:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
            __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
            __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
            __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
            __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
            __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
            __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
            __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(__0) #else null #end;
            __self__.writeAt = #if !macro function(_b__:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_b__, _off) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
            __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
            __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
            __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
            __self__._pread = #if !macro function(_b___:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_b___, _off) #else null #end;
            __self__._pwrite = #if !macro function(_b____:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_b____, _off) #else null #end;
            __self__._read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(__0) #else null #end;
            __self__._readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
            __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
            __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
            __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
            __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
            __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
            __self__._wrapErr = #if !macro function(_line:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_line, _err) #else null #end;
            __self__._write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(__0) #else null #end;
            __self__;
        });
    }
function exampleBuffer_reader():Void {
        var _buf = stdgo.bytes.Bytes.newBufferString((Go.str("R29waGVycyBydWxlIQ==") : GoString));
        var _dec:stdgo.io.Io.Reader = stdgo.encoding.base64.Base64.newDecoder(stdgo.encoding.base64.Base64.stdEncoding, {
            final __self__ = new Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
            __self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
            __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(__0) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
            __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(__0) #else null #end;
            __self__.writeByte = #if !macro function(_delim:GoUInt8):stdgo.Error return _buf.writeByte(_delim) #else null #end;
            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
            __self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(__0) #else null #end;
            __self__;
        });
        stdgo.io.Io.copy({
            final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
            __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
            __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
            __self__.chown = #if !macro function(_year:GoInt, _week:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_year, _week) #else null #end;
            __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
            __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
            __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(__0) #else null #end;
            __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_b, _off) #else null #end;
            __self__.readDir = #if !macro function(__0:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(__0) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
            __self__.readdir = #if !macro function(__0:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(__0) #else null #end;
            __self__.readdirnames = #if !macro function(__0:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
            __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
            __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
            __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
            __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
            __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
            __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
            __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(__0) #else null #end;
            __self__.writeAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_b, _off) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
            __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
            __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
            __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
            __self__._pread = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_b, _off) #else null #end;
            __self__._pwrite = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_b, _off) #else null #end;
            __self__._read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(__0) #else null #end;
            __self__._readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
            __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
            __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
            __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
            __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
            __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
            __self__._wrapErr = #if !macro function(_line:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_line, _err) #else null #end;
            __self__._write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(__0) #else null #end;
            __self__;
        }, _dec);
    }
function exampleBuffer_Bytes():Void {
        var _buf:Buffer = (new Buffer() : Buffer);
        _buf.write((new Slice<GoUInt8>(
0,
0,
("h".code : GoUInt8),
("e".code : GoUInt8),
("l".code : GoUInt8),
("l".code : GoUInt8),
("o".code : GoUInt8),
(" ".code : GoUInt8),
("w".code : GoUInt8),
("o".code : GoUInt8),
("r".code : GoUInt8),
("l".code : GoUInt8),
("d".code : GoUInt8)) : Slice<GoUInt8>));
        stdgo.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_Cap():Void {
        var _buf1 = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]));
        var _buf2 = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((0 : GoInt).toBasic(), (10 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]));
        stdgo.fmt.Fmt.println(_buf1.cap());
        stdgo.fmt.Fmt.println(_buf2.cap());
    }
function exampleBuffer_Grow():Void {
        var _b:Buffer = ({  } : Buffer);
        _b.grow((64 : GoInt));
        var _bb = _b.bytes();
        _b.write(((Go.str("64 bytes or fewer") : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf((Go.str("%q") : GoString), Go.toInterface((_bb.__slice__(0, _b.len()) : Slice<GoUInt8>)));
    }
function exampleBuffer_Len():Void {
        var _b:Buffer = ({  } : Buffer);
        _b.grow((64 : GoInt));
        _b.write(((Go.str("abcde") : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf((Go.str("%d") : GoString), Go.toInterface(_b.len()));
    }
function exampleBuffer_Next():Void {
        var _b:Buffer = ({  } : Buffer);
        _b.grow((64 : GoInt));
        _b.write(((Go.str("abcde") : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf((Go.str("%s\n") : GoString), Go.toInterface((_b.next((2 : GoInt)) : GoString)));
        stdgo.fmt.Fmt.printf((Go.str("%s\n") : GoString), Go.toInterface((_b.next((2 : GoInt)) : GoString)));
        stdgo.fmt.Fmt.printf((Go.str("%s") : GoString), Go.toInterface((_b.next((2 : GoInt)) : GoString)));
    }
function exampleBuffer_Read():Void {
        var _b:Buffer = ({  } : Buffer);
        _b.grow((64 : GoInt));
        _b.write(((Go.str("abcde") : GoString) : Slice<GoByte>));
        var _rdbuf = new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = _b.read(_rdbuf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(_n);
        stdgo.fmt.Fmt.println((_b.string() : GoString));
        stdgo.fmt.Fmt.println((_rdbuf : GoString));
    }
function exampleBuffer_ReadByte():Void {
        var _b:Buffer = ({  } : Buffer);
        _b.grow((64 : GoInt));
        _b.write(((Go.str("abcde") : GoString) : Slice<GoByte>));
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(_c);
        stdgo.fmt.Fmt.println((_b.string() : GoString));
    }
function exampleCompare():Void {
        var _a:Slice<GoByte> = (null : Slice<GoUInt8>), _b:Slice<GoByte> = (null : Slice<GoUInt8>);
        if (stdgo.bytes.Bytes.compare(_a, _b) < (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) <= (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) > (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) >= (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.equal(_a, _b)) {};
        if (!stdgo.bytes.Bytes.equal(_a, _b)) {};
    }
function exampleCompare_search():Void {
        var _needle:Slice<GoByte> = (null : Slice<GoUInt8>);
        var _haystack:Slice<Slice<GoByte>> = (null : Slice<Slice<GoUInt8>>);
        var _i:GoInt = stdgo.sort.Sort.search((_haystack.length), function(_i:GoInt):Bool {
            return stdgo.bytes.Bytes.compare(_haystack[_i], _needle) >= (0 : GoInt);
        });
        if ((_i < _haystack.length) && stdgo.bytes.Bytes.equal(_haystack[_i], _needle)) {};
    }
function exampleContains():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((Go.str("seafood") : GoString) : Slice<GoByte>), ((Go.str("foo") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((Go.str("seafood") : GoString) : Slice<GoByte>), ((Go.str("bar") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((Go.str("seafood") : GoString) : Slice<GoByte>), ((Go.str() : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((Go.str() : GoString) : Slice<GoByte>), ((Go.str() : GoString) : Slice<GoByte>)));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((Go.str("I like seafood.") : GoString) : Slice<GoByte>), (Go.str("fÄo!") : GoString)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((Go.str("I like seafood.") : GoString) : Slice<GoByte>), (Go.str("去是伟大的.") : GoString)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((Go.str("I like seafood.") : GoString) : Slice<GoByte>), (Go.str() : GoString)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((Go.str() : GoString) : Slice<GoByte>), (Go.str() : GoString)));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((Go.str("I like seafood.") : GoString) : Slice<GoByte>), ("f".code : GoInt32)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((Go.str("I like seafood.") : GoString) : Slice<GoByte>), ("ö".code : GoInt32)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((Go.str("去是伟大的!") : GoString) : Slice<GoByte>), ("大".code : GoInt32)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((Go.str("去是伟大的!") : GoString) : Slice<GoByte>), ("!".code : GoInt32)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((Go.str() : GoString) : Slice<GoByte>), ("@".code : GoInt32)));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.count(((Go.str("cheese") : GoString) : Slice<GoByte>), ((Go.str("e") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.count(((Go.str("five") : GoString) : Slice<GoByte>), ((Go.str() : GoString) : Slice<GoByte>)));
    }
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cut((_s : Slice<GoByte>), (_sep : Slice<GoByte>)), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf((Go.str("Cut(%q, %q) = %q, %q, %v\n") : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show((Go.str("Gopher") : GoString), (Go.str("Go") : GoString));
        _show((Go.str("Gopher") : GoString), (Go.str("ph") : GoString));
        _show((Go.str("Gopher") : GoString), (Go.str("er") : GoString));
        _show((Go.str("Gopher") : GoString), (Go.str("Badger") : GoString));
    }
function exampleEqual():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equal(((Go.str("Go") : GoString) : Slice<GoByte>), ((Go.str("Go") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equal(((Go.str("Go") : GoString) : Slice<GoByte>), ((Go.str("C++") : GoString) : Slice<GoByte>)));
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equalFold(((Go.str("Go") : GoString) : Slice<GoByte>), ((Go.str("go") : GoString) : Slice<GoByte>)));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf((Go.str("Fields are: %q") : GoString), Go.toInterface(stdgo.bytes.Bytes.fields(((Go.str("  foo bar  baz   ") : GoString) : Slice<GoByte>))));
    }
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf((Go.str("Fields are: %q") : GoString), Go.toInterface(stdgo.bytes.Bytes.fieldsFunc(((Go.str("  foo1;bar2,baz3...") : GoString) : Slice<GoByte>), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((Go.str("Gopher") : GoString) : Slice<GoByte>), ((Go.str("Go") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((Go.str("Gopher") : GoString) : Slice<GoByte>), ((Go.str("C") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((Go.str("Gopher") : GoString) : Slice<GoByte>), ((Go.str() : GoString) : Slice<GoByte>)));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((Go.str("Amigo") : GoString) : Slice<GoByte>), ((Go.str("go") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((Go.str("Amigo") : GoString) : Slice<GoByte>), ((Go.str("O") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((Go.str("Amigo") : GoString) : Slice<GoByte>), ((Go.str("Ami") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((Go.str("Amigo") : GoString) : Slice<GoByte>), ((Go.str() : GoString) : Slice<GoByte>)));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((Go.str("chicken") : GoString) : Slice<GoByte>), ((Go.str("ken") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((Go.str("chicken") : GoString) : Slice<GoByte>), ((Go.str("dmr") : GoString) : Slice<GoByte>)));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexByte(((Go.str("chicken") : GoString) : Slice<GoByte>), (("k".code : GoUInt8) : GoByte)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexByte(((Go.str("chicken") : GoString) : Slice<GoByte>), (("g".code : GoUInt8) : GoByte)));
    }
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexFunc(((Go.str("Hello, 世界") : GoString) : Slice<GoByte>), _f));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexFunc(((Go.str("Hello, world") : GoString) : Slice<GoByte>), _f));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexAny(((Go.str("chicken") : GoString) : Slice<GoByte>), (Go.str("aeiouy") : GoString)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexAny(((Go.str("crwth") : GoString) : Slice<GoByte>), (Go.str("aeiouy") : GoString)));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexRune(((Go.str("chicken") : GoString) : Slice<GoByte>), ("k".code : GoInt32)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexRune(((Go.str("chicken") : GoString) : Slice<GoByte>), ("d".code : GoInt32)));
    }
function exampleJoin():Void {
        var _s = (new Slice<Slice<GoUInt8>>(0, 0, ((Go.str("foo") : GoString) : Slice<GoByte>), ((Go.str("bar") : GoString) : Slice<GoByte>), ((Go.str("baz") : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>);
        stdgo.fmt.Fmt.printf((Go.str("%s") : GoString), Go.toInterface(stdgo.bytes.Bytes.join(_s, ((Go.str(", ") : GoString) : Slice<GoByte>))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((Go.str("go gopher") : GoString) : Slice<GoByte>), ((Go.str("go") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndex(((Go.str("go gopher") : GoString) : Slice<GoByte>), ((Go.str("go") : GoString) : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndex(((Go.str("go gopher") : GoString) : Slice<GoByte>), ((Go.str("rodent") : GoString) : Slice<GoByte>)));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((Go.str("go gopher") : GoString) : Slice<GoByte>), (Go.str("MüQp") : GoString)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((Go.str("go 地鼠") : GoString) : Slice<GoByte>), (Go.str("地大") : GoString)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((Go.str("go gopher") : GoString) : Slice<GoByte>), (Go.str("z,!.") : GoString)));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((Go.str("go gopher") : GoString) : Slice<GoByte>), (("g".code : GoUInt8) : GoByte)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((Go.str("go gopher") : GoString) : Slice<GoByte>), (("r".code : GoUInt8) : GoByte)));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((Go.str("go gopher") : GoString) : Slice<GoByte>), (("z".code : GoUInt8) : GoByte)));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((Go.str("go gopher!") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((Go.str("go gopher!") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((Go.str("go gopher!") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber));
    }
function exampleReader_Len():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.newReader(((Go.str("Hi!") : GoString) : Slice<GoByte>)).len());
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.newReader(((Go.str("こんにちは!") : GoString) : Slice<GoByte>)).len());
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.printf((Go.str("ba%s") : GoString), Go.toInterface(stdgo.bytes.Bytes.repeat(((Go.str("na") : GoString) : Slice<GoByte>), (2 : GoInt))));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.printf((Go.str("%s\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.replace(((Go.str("oink oink oink") : GoString) : Slice<GoByte>), ((Go.str("k") : GoString) : Slice<GoByte>), ((Go.str("ky") : GoString) : Slice<GoByte>), (2 : GoInt))));
        stdgo.fmt.Fmt.printf((Go.str("%s\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.replace(((Go.str("oink oink oink") : GoString) : Slice<GoByte>), ((Go.str("oink") : GoString) : Slice<GoByte>), ((Go.str("moo") : GoString) : Slice<GoByte>), (-1 : GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.printf((Go.str("%s\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.replaceAll(((Go.str("oink oink oink") : GoString) : Slice<GoByte>), ((Go.str("oink") : GoString) : Slice<GoByte>), ((Go.str("moo") : GoString) : Slice<GoByte>))));
    }
function exampleRunes():Void {
        var _rs = stdgo.bytes.Bytes.runes(((Go.str("go gopher") : GoString) : Slice<GoByte>));
        for (_0 => _r in _rs) {
            stdgo.fmt.Fmt.printf((Go.str("%#U\n") : GoString), Go.toInterface(_r));
        };
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.split(((Go.str("a,b,c") : GoString) : Slice<GoByte>), ((Go.str(",") : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.split(((Go.str("a man a plan a canal panama") : GoString) : Slice<GoByte>), ((Go.str("a ") : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.split(((Go.str(" xyz ") : GoString) : Slice<GoByte>), ((Go.str() : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.split(((Go.str() : GoString) : Slice<GoByte>), ((Go.str("Bernardo O\'Higgins") : GoString) : Slice<GoByte>))));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.splitN(((Go.str("a,b,c") : GoString) : Slice<GoByte>), ((Go.str(",") : GoString) : Slice<GoByte>), (2 : GoInt))));
        var _z = stdgo.bytes.Bytes.splitN(((Go.str("a,b,c") : GoString) : Slice<GoByte>), ((Go.str(",") : GoString) : Slice<GoByte>), (0 : GoInt));
        stdgo.fmt.Fmt.printf((Go.str("%q (nil = %v)\n") : GoString), Go.toInterface(_z), Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.splitAfter(((Go.str("a,b,c") : GoString) : Slice<GoByte>), ((Go.str(",") : GoString) : Slice<GoByte>))));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.splitAfterN(((Go.str("a,b,c") : GoString) : Slice<GoByte>), ((Go.str(",") : GoString) : Slice<GoByte>), (2 : GoInt))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.printf((Go.str("%s") : GoString), Go.toInterface(stdgo.bytes.Bytes.title(((Go.str("her royal highness") : GoString) : Slice<GoByte>))));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.printf((Go.str("%s\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.toTitle(((Go.str("loud noises") : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf((Go.str("%s\n") : GoString), Go.toInterface(stdgo.bytes.Bytes.toTitle(((Go.str("хлеб") : GoString) : Slice<GoByte>))));
    }
function exampleToTitleSpecial():Void {
        var _str = ((Go.str("ahoj vývojári golang") : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println((Go.str("Original : ") : GoString) + (_str : GoString));
        stdgo.fmt.Fmt.println((Go.str("ToTitle : ") : GoString) + (_totitle : GoString));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.printf((Go.str("[%q]") : GoString), Go.toInterface(stdgo.bytes.Bytes.trim(((Go.str(" !!! Achtung! Achtung! !!! ") : GoString) : Slice<GoByte>), (Go.str("! ") : GoString))));
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimFunc(((Go.str("go-gopher!") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString));
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimFunc(((Go.str("\"go-gopher!\"") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString));
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimFunc(((Go.str("go-gopher!") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString));
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimFunc(((Go.str("1234go-gopher!567") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print((stdgo.bytes.Bytes.trimLeft(((Go.str("453gopher8257") : GoString) : Slice<GoByte>), (Go.str("0123456789") : GoString)) : GoString));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimLeftFunc(((Go.str("go-gopher") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString));
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimLeftFunc(((Go.str("go-gopher!") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString));
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimLeftFunc(((Go.str("1234go-gopher!567") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString));
    }
function exampleTrimPrefix():Void {
        var _b:Slice<GoUInt8> = ((Go.str("Goodbye,, world!") : GoString) : Slice<GoByte>);
        _b = stdgo.bytes.Bytes.trimPrefix(_b, ((Go.str("Goodbye,") : GoString) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, ((Go.str("See ya,") : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf((Go.str("Hello%s") : GoString), Go.toInterface(_b));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.printf((Go.str("%s") : GoString), Go.toInterface(stdgo.bytes.Bytes.trimSpace(((Go.str(" \t\n a lone gopher \n\t\r\n") : GoString) : Slice<GoByte>))));
    }
function exampleTrimSuffix():Void {
        var _b:Slice<GoUInt8> = ((Go.str("Hello, goodbye, etc!") : GoString) : Slice<GoByte>);
        _b = stdgo.bytes.Bytes.trimSuffix(_b, ((Go.str("goodbye, etc!") : GoString) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, ((Go.str("gopher") : GoString) : Slice<GoByte>));
        _b = (_b.__append__(...stdgo.bytes.Bytes.trimSuffix(((Go.str("world!") : GoString) : Slice<GoByte>), ((Go.str("x!") : GoString) : Slice<GoByte>)).__toArray__()));
        stdgo.os.Os.stdout.write(_b);
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print((stdgo.bytes.Bytes.trimRight(((Go.str("453gopher8257") : GoString) : Slice<GoByte>), (Go.str("0123456789") : GoString)) : GoString));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimRightFunc(((Go.str("go-gopher") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString));
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimRightFunc(((Go.str("go-gopher!") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString));
        stdgo.fmt.Fmt.println((stdgo.bytes.Bytes.trimRightFunc(((Go.str("1234go-gopher!567") : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.printf((Go.str("%s") : GoString), Go.toInterface(stdgo.bytes.Bytes.toLower(((Go.str("Gopher") : GoString) : Slice<GoByte>))));
    }
function exampleToLowerSpecial():Void {
        var _str = ((Go.str("AHOJ VÝVOJÁRİ GOLANG") : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println((Go.str("Original : ") : GoString) + (_str : GoString));
        stdgo.fmt.Fmt.println((Go.str("ToLower : ") : GoString) + (_totitle : GoString));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.printf((Go.str("%s") : GoString), Go.toInterface(stdgo.bytes.Bytes.toUpper(((Go.str("Gopher") : GoString) : Slice<GoByte>))));
    }
function exampleToUpperSpecial():Void {
        var _str = ((Go.str("ahoj vývojári golang") : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println((Go.str("Original : ") : GoString) + (_str : GoString));
        stdgo.fmt.Fmt.println((Go.str("ToUpper : ") : GoString) + (_totitle : GoString));
    }
function testReader(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((Go.str("0123456789") : GoString) : Slice<GoByte>));
        var _tests = (new Slice<T__struct_13>(
0,
0,
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : GoString) } : T__struct_13)) : Slice<T__struct_13>);
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_tt._seekerr != (Go.str() : GoString))) {
                _t.errorf((Go.str("%d. want seek error %q") : GoString), Go.toInterface(_i), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_err != null) && (_err.error() != _tt._seekerr)) {
                _t.errorf((Go.str("%d. seek error = %q; want %q") : GoString), Go.toInterface(_i), Go.toInterface(_err.error()), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_tt._wantpos != (0 : GoInt64)) && (_tt._wantpos != _pos)) {
                _t.errorf((Go.str("%d. pos = %d, want %d") : GoString), Go.toInterface(_i), Go.toInterface(_pos), Go.toInterface(_tt._wantpos));
            };
            var _buf = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _tt._readerr) {
                _t.errorf((Go.str("%d. read = %v; want %v") : GoString), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._readerr));
                continue;
            };
            var _got:GoString = ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString);
            if (_got != _tt._want) {
                _t.errorf((Go.str("%d. got %q; want %q") : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
        };
    }
function testReadAfterBigSeek(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((Go.str("0123456789") : GoString) : Slice<GoByte>));
        {
            var __tmp__ = _r.seek(("2147483653" : GoInt64), (0 : GoInt)), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
                _t.errorf((Go.str("Read = %d, %v; want 0, EOF") : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
function testReaderAt(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((Go.str("0123456789") : GoString) : Slice<GoByte>));
        var _tests = (new Slice<T__struct_14>(0, 0, ({ _off : (0 : GoInt64), _n : (10 : GoInt), _want : (Go.str("0123456789") : GoString), _wanterr : (null : AnyInterface) } : T__struct_14), ({ _off : (1 : GoInt64), _n : (10 : GoInt), _want : (Go.str("123456789") : GoString), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_14), ({ _off : (1 : GoInt64), _n : (9 : GoInt), _want : (Go.str("123456789") : GoString), _wanterr : (null : AnyInterface) } : T__struct_14), ({ _off : (11 : GoInt64), _n : (10 : GoInt), _want : (Go.str() : GoString), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_14), ({ _off : (0 : GoInt64), _n : (0 : GoInt), _want : (Go.str() : GoString), _wanterr : (null : AnyInterface) } : T__struct_14), ({ _off : (-1 : GoInt64), _n : (0 : GoInt), _want : (Go.str() : GoString), _wanterr : Go.toInterface((Go.str("bytes.Reader.ReadAt: negative offset") : GoString)) } : T__struct_14)) : Slice<T__struct_14>);
        for (_i => _tt in _tests) {
            var _b = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got:GoString = ((_b.__slice__(0, _rn) : Slice<GoUInt8>) : GoString);
            if (_got != _tt._want) {
                _t.errorf((Go.str("%d. got %q; want %q") : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
            if (stdgo.fmt.Fmt.sprintf((Go.str("%v") : GoString), Go.toInterface(_err)) != stdgo.fmt.Fmt.sprintf((Go.str("%v") : GoString), Go.toInterface(_tt._wanterr))) {
                _t.errorf((Go.str("%d. got error = %v; want %v") : GoString), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._wanterr));
            };
        };
    }
function testReaderAtConcurrent(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((Go.str("0123456789") : GoString) : Slice<GoByte>));
        var _wg:stdgo.sync.Sync.WaitGroup = ({  } : stdgo.sync.Sync.WaitGroup);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _wg.add((1 : GoInt));
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) (0 : GoUInt8)]);
                            _r.readAt((_buf.__slice__(0) : Slice<GoUInt8>), (_i : GoInt64));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (__recover_exception__ != null) throw __recover_exception__;
                                return;
                            };
                        } catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            __recover_exception__ = __exception__.native;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (__recover_exception__ != null) throw __recover_exception__;
                            return;
                        };
                    };
                    a(_i);
                });
            });
        };
        _wg.wait_();
    }
function testEmptyReaderConcurrent(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>));
        var _wg:stdgo.sync.Sync.WaitGroup = ({  } : stdgo.sync.Sync.WaitGroup);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _wg.add((2 : GoInt));
                Go.routine(() -> {
                    var a = function():Void {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) (0 : GoUInt8)]);
                            _r.read((_buf.__slice__(0) : Slice<GoUInt8>));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (__recover_exception__ != null) throw __recover_exception__;
                                return;
                            };
                        } catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            __recover_exception__ = __exception__.native;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (__recover_exception__ != null) throw __recover_exception__;
                            return;
                        };
                    };
                    a();
                });
                Go.routine(() -> {
                    var a = function():Void {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            _r.read((null : Slice<GoUInt8>));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (__recover_exception__ != null) throw __recover_exception__;
                                return;
                            };
                        } catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            __recover_exception__ = __exception__.native;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (__recover_exception__ != null) throw __recover_exception__;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
function testReaderWriteTo(_t:stdgo.testing.Testing.T):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _l:GoInt = (0 : GoInt);
                if (_i > (0 : GoInt)) {
                    _l = (_testString.length) / _i;
                };
                var _s:GoString = (_testString.__slice__(0, _l) : GoString);
                var _r = newReader((_testBytes.__slice__(0, _l) : Slice<GoUInt8>));
                var _b:Buffer = ({  } : Buffer);
                var __tmp__ = _r.writeTo({
                    final __self__ = new Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap = #if !macro function():GoInt return _b.cap() #else null #end;
                    __self__.grow = #if !macro function(__0:GoInt):Void _b.grow(__0) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _b.next(__0) #else null #end;
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(__0) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_delim) #else null #end;
                    __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r_) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_delim) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.truncate = #if !macro function(__0:GoInt):Void _b.truncate(__0) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(__0) #else null #end;
                    __self__.writeByte = #if !macro function(_delim:GoUInt8):stdgo.Error return _b.writeByte(_delim) #else null #end;
                    __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r__) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(__0:GoInt):GoInt return _b._grow(__0) #else null #end;
                    __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_delim) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(__0) #else null #end;
                    __self__;
                }), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect:GoInt64 = (_s.length : GoInt64);
                    if (_n != _expect) {
                        _t.errorf((Go.str("got %v; want %v") : GoString), Go.toInterface(_n), Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf((Go.str("for length %d: got error = %v; want nil") : GoString), Go.toInterface(_l), Go.toInterface(_err));
                };
                if ((_b.string() : GoString) != _s) {
                    _t.errorf((Go.str("got string %q; want %q") : GoString), Go.toInterface((_b.string() : GoString)), Go.toInterface(_s));
                };
                if (_r.len() != (0 : GoInt)) {
                    _t.errorf((Go.str("reader contains %v bytes; want 0") : GoString), Go.toInterface(_r.len()));
                };
            });
        };
    }
function testReaderLen(_t:stdgo.testing.Testing.T):Void {
        var _data:GoString = (Go.str("hello world") : GoString);
        var _r = newReader(((Go.str("hello world") : GoString) : Slice<GoByte>));
        {
            var _got:GoInt = _r.len(), _want:GoInt = (11 : GoInt);
            if (_got != _want) {
                _t.errorf((Go.str("r.Len(): got %d, want %d") : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != (10 : GoInt))) {
                _t.errorf((Go.str("Read failed: read %d %v") : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _got:GoInt = _r.len(), _want:GoInt = (1 : GoInt);
            if (_got != _want) {
                _t.errorf((Go.str("r.Len(): got %d, want %d") : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != (1 : GoInt))) {
                _t.errorf((Go.str("Read failed: read %d %v; want 1, nil") : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _got:GoInt = _r.len(), _want:GoInt = (0 : GoInt);
            if (_got != _want) {
                _t.errorf((Go.str("r.Len(): got %d, want %d") : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader(((Go.str("0123456789") : GoString) : Slice<GoByte>));
            {
                var __tmp__ = _reader.readRune(), _1:GoInt32 = __tmp__._0, _2:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err:stdgo.Error = _reader.unreadRune();
            if (_err == null) {
                _t.errorf((Go.str("Unreading after %s: expected error") : GoString), Go.toInterface(_tt._name));
            };
        };
    }
function testReaderDoubleUnreadRune(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(((Go.str("groucho") : GoString) : Slice<GoByte>));
        {
            var __tmp__ = _buf.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadByte();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface((Go.str("UnreadByte: expected error, got nil") : GoString)));
            };
        };
    }
@:structInit private class T_nErr_testReaderCopyNothing_0 {
    public var _n : GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:GoInt64, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nErr_testReaderCopyNothing_0(_n, _err);
    }
}
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1_static_extension) private class T_justReader_testReaderCopyNothing_1 {
    @:embedded
    public var reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    @:embedded
    public function read(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(__0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_justReader_testReaderCopyNothing_1(reader);
    }
}
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2_static_extension) private class T_justWriter_testReaderCopyNothing_2 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    @:embedded
    public function write(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(__0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_justWriter_testReaderCopyNothing_2(writer);
    }
}
/**
    // verify that copying from an empty reader always has the same results,
    // regardless of the presence of a WriteTo method.
**/
function testReaderCopyNothing(_t:stdgo.testing.Testing.T):Void {
        {};
        {};
        {};
        var _discard:stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2 = (new stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2(stdgo.io.Io.discard) : stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2);
        var _with:T_nErr_testReaderCopyNothing_0 = ({  } : stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0), _withOut:T_nErr_testReaderCopyNothing_0 = ({  } : stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0);
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2_wrapper(_discard);
                __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _discard.write(__0) #else null #end;
                __self__;
            }, {
                final __self__ = new Reader_wrapper(newReader((null : Slice<GoUInt8>)));
                __self__.len = #if !macro function():GoInt return newReader((null : Slice<GoUInt8>)).len() #else null #end;
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).read(__0) #else null #end;
                __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readAt(_b, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readRune() #else null #end;
                __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void newReader((null : Slice<GoUInt8>)).reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return newReader((null : Slice<GoUInt8>)).size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return newReader((null : Slice<GoUInt8>)).unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return newReader((null : Slice<GoUInt8>)).unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).writeTo(_w) #else null #end;
                __self__;
            });
            _with._n = __tmp__._0;
            _with._err = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2_wrapper(_discard);
                __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _discard.write(__0) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1_wrapper((new stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1({
                    final __self__ = new Reader_wrapper(newReader((null : Slice<GoUInt8>)));
                    __self__.len = #if !macro function():GoInt return newReader((null : Slice<GoUInt8>)).len() #else null #end;
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).read(__0) #else null #end;
                    __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readAt(_b, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readRune() #else null #end;
                    __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void newReader((null : Slice<GoUInt8>)).reset(__0) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return newReader((null : Slice<GoUInt8>)).size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return newReader((null : Slice<GoUInt8>)).unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return newReader((null : Slice<GoUInt8>)).unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).writeTo(_w) #else null #end;
                    __self__;
                }) : stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (new stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1({
                    final __self__ = new Reader_wrapper(newReader((null : Slice<GoUInt8>)));
                    __self__.len = #if !macro function():GoInt return newReader((null : Slice<GoUInt8>)).len() #else null #end;
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).read(__0) #else null #end;
                    __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readAt(_b, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).readRune() #else null #end;
                    __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void newReader((null : Slice<GoUInt8>)).reset(__0) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return newReader((null : Slice<GoUInt8>)).size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return newReader((null : Slice<GoUInt8>)).unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return newReader((null : Slice<GoUInt8>)).unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader((null : Slice<GoUInt8>)).writeTo(_w) #else null #end;
                    __self__;
                }) : stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1).read(__0) #else null #end;
                __self__;
            });
            _withOut._n = __tmp__._0;
            _withOut._err = __tmp__._1;
        };
        if (_with != _withOut) {
            _t.errorf((Go.str("behavior differs: with = %#v; without: %#v") : GoString), Go.toInterface(_with), Go.toInterface(_withOut));
        };
    }
/**
    // tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((Go.str("abc") : GoString) : Slice<GoByte>));
        stdgo.io.Io.copyN(stdgo.io.Io.discard, {
            final __self__ = new Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(__0) #else null #end;
            __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_b, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, (1 : GoInt64));
        if (_r.len() != (2 : GoInt)) {
            _t.errorf((Go.str("Len = %d; want 2") : GoString), Go.toInterface(_r.len()));
        };
        if (_r.size() != (3 : GoInt64)) {
            _t.errorf((Go.str("Size = %d; want 3") : GoString), Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((Go.str("世界") : GoString) : Slice<GoByte>));
        {
            var __tmp__ = _r.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf((Go.str("ReadRune: unexpected error: %v") : GoString), Go.toInterface(_err));
            };
        };
        var _want:GoString = (Go.str("abcdef") : GoString);
        _r.reset(((Go.str("abcdef") : GoString) : Slice<GoByte>));
        {
            var _err:stdgo.Error = _r.unreadRune();
            if (_err == null) {
                _t.errorf((Go.str("UnreadRune: expected error, got nil") : GoString));
            };
        };
        var __tmp__ = stdgo.io.Io.readAll({
            final __self__ = new Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(__0) #else null #end;
            __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_b, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf((Go.str("ReadAll: unexpected error: %v") : GoString), Go.toInterface(_err));
        };
        {
            var _got:GoString = (_buf : GoString);
            if (_got != (Go.str("abcdef") : GoString)) {
                _t.errorf((Go.str("ReadAll: got %q, want %q") : GoString), Go.toInterface(_got), Go.toInterface((Go.str("abcdef") : GoString)));
            };
        };
    }
function testReaderZero(_t:stdgo.testing.Testing.T):Void {
        {
            var _l:GoInt = ((new Reader() : Reader)).len();
            if (_l != (0 : GoInt)) {
                _t.errorf((Go.str("Len: got %d, want 0") : GoString), Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = ((new Reader() : Reader)).read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
                _t.errorf((Go.str("Read: got %d, %v; want 0, io.EOF") : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = ((new Reader() : Reader)).readAt((null : Slice<GoUInt8>), (11 : GoInt64)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
                _t.errorf((Go.str("ReadAt: got %d, %v; want 0, io.EOF") : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = ((new Reader() : Reader)).readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_b != (0 : GoUInt8)) || (_err != stdgo.io.Io.eof)) {
                _t.errorf((Go.str("ReadByte: got %d, %v; want 0, io.EOF") : GoString), Go.toInterface(_b), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = ((new Reader() : Reader)).readRune(), _ch:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if ((_ch != (0 : GoInt32) || _size != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
                _t.errorf((Go.str("ReadRune: got %d, %d, %v; want 0, 0, io.EOF") : GoString), Go.toInterface(_ch), Go.toInterface(_size), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = ((new Reader() : Reader)).seek((11 : GoInt64), (0 : GoInt)), _offset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_offset != (11 : GoInt64)) || (_err != null)) {
                _t.errorf((Go.str("Seek: got %d, %v; want 11, nil") : GoString), Go.toInterface(_offset), Go.toInterface(_err));
            };
        };
        {
            var _s:GoInt64 = ((new Reader() : Reader)).size();
            if (_s != (0 : GoInt64)) {
                _t.errorf((Go.str("Size: got %d, want 0") : GoString), Go.toInterface(_s));
            };
        };
        if (((new Reader() : Reader)).unreadByte() == null) {
            _t.errorf((Go.str("UnreadByte: got nil, want error") : GoString));
        };
        if (((new Reader() : Reader)).unreadRune() == null) {
            _t.errorf((Go.str("UnreadRune: got nil, want error") : GoString));
        };
        {
            var __tmp__ = ((new Reader() : Reader)).writeTo(stdgo.io.Io.discard), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : GoInt64)) || (_err != null)) {
                _t.errorf((Go.str("WriteTo: got %d, %v; want 0, nil") : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
@:keep var _ = {
        try {
            _testBytes = new Slice<GoUInt8>((10000 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10000 : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (10000 : GoInt), _i++, {
                    _testBytes[_i] = ("a".code : GoUInt8) + (_i % (26 : GoInt) : GoByte);
                });
            };
            _testString = (_testBytes : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep private class T_negativeReader_static_extension {
    @:keep
    static public function read( _r:T_negativeReader, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (-1 : GoInt), _1 : (null : stdgo.Error) };
    }
}
private class T_negativeReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_negativeReader;
}
@:keep private class T_panicReader_static_extension {
    @:keep
    static public function read( _r:T_panicReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_r._panic) {
            throw Go.toInterface(null);
        };
        return { _0 : (0 : GoInt), _1 : stdgo.io.Io.eof };
    }
}
private class T_panicReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_panicReader;
}
@:keep private class T_justReader_testReaderCopyNothing_1_static_extension {
    @:embedded
    public static function read( __self__:T_justReader_testReaderCopyNothing_1, __0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
}
private class T_justReader_testReaderCopyNothing_1_wrapper {
    @:embedded
    public var read : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_justReader_testReaderCopyNothing_1;
}
@:keep private class T_justWriter_testReaderCopyNothing_2_static_extension {
    @:embedded
    public static function write( __self__:T_justWriter_testReaderCopyNothing_2, __0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.write(__0);
}
private class T_justWriter_testReaderCopyNothing_2_wrapper {
    @:embedded
    public var write : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_justWriter_testReaderCopyNothing_2;
}
