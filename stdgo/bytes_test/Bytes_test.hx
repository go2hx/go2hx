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
var _readBytesTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_0> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_0>(((new stdgo.bytes_test.Bytes_test.T__struct_0(((("" : GoString))), ((0 : GoUInt8)), ((new Slice<GoString>(((("" : GoString)))) : Slice<GoString>)), stdgo.io.Io.eof) : stdgo.bytes_test.Bytes_test.T__struct_0)), ((new stdgo.bytes_test.Bytes_test.T__struct_0(((("a" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((0 : GoUInt8)), ((new Slice<GoString>(((("a" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)))) : Slice<GoString>)), ((null : stdgo.Error))) : stdgo.bytes_test.Bytes_test.T__struct_0)), ((new stdgo.bytes_test.Bytes_test.T__struct_0(((("abbbaaaba" : GoString))), ((((("b" : GoString))).code : GoRune)), ((new Slice<GoString>(((("ab" : GoString))), ((("b" : GoString))), ((("b" : GoString))), ((("aaab" : GoString)))) : Slice<GoString>)), ((null : stdgo.Error))) : stdgo.bytes_test.Bytes_test.T__struct_0)), ((new stdgo.bytes_test.Bytes_test.T__struct_0(((("hello" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + (("world" : GoString))), ((1 : GoUInt8)), ((new Slice<GoString>(((("hello" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)))) : Slice<GoString>)), ((null : stdgo.Error))) : stdgo.bytes_test.Bytes_test.T__struct_0)), ((new stdgo.bytes_test.Bytes_test.T__struct_0(((("foo\nbar" : GoString))), ((0 : GoUInt8)), ((new Slice<GoString>(((("foo\nbar" : GoString)))) : Slice<GoString>)), stdgo.io.Io.eof) : stdgo.bytes_test.Bytes_test.T__struct_0)), ((new stdgo.bytes_test.Bytes_test.T__struct_0(((("alpha\nbeta\ngamma\n" : GoString))), ((((("\n" : GoString))).code : GoRune)), ((new Slice<GoString>(((("alpha\n" : GoString))), ((("beta\n" : GoString))), ((("gamma\n" : GoString)))) : Slice<GoString>)), ((null : stdgo.Error))) : stdgo.bytes_test.Bytes_test.T__struct_0)), ((new stdgo.bytes_test.Bytes_test.T__struct_0(((("alpha\nbeta\ngamma" : GoString))), ((((("\n" : GoString))).code : GoRune)), ((new Slice<GoString>(((("alpha\n" : GoString))), ((("beta\n" : GoString))), ((("gamma" : GoString)))) : Slice<GoString>)), stdgo.io.Io.eof) : stdgo.bytes_test.Bytes_test.T__struct_0))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_0>));
var _abcd : GoString = ((("abcd" : GoString)));
var _faces : GoString = ((("☺☻☹" : GoString)));
var _commas : GoString = ((("1,2,3,4" : GoString)));
var _dots : GoString = ((("1....2....3....4" : GoString)));
var _indexTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("a" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("foo" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("fo" : GoString))), ((("foo" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("baz" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("foo" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("oofofoofooo" : GoString))), ((("f" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("oofofoofooo" : GoString))), ((("foo" : GoString))), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("barfoobarfoo" : GoString))), ((("foo" : GoString))), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("o" : GoString))), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abcABCabc" : GoString))), ((("A" : GoString))), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("a" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("x" : GoString))), ((("a" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("x" : GoString))), ((("x" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("a" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("b" : GoString))), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("c" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("x" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("barfoobarfooyyyzzzyyyzzzyyyzzzyyyxxxzzzyyy" : GoString))), ((("x" : GoString))), ((33 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foofyfoobarfoobar" : GoString))), ((("y" : GoString))), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("oooooooooooooooooooooo" : GoString))), ((("r" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("oxoxoxoxoxoxoxoxoxoxoxoy" : GoString))), ((("oy" : GoString))), ((22 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("oxoxoxoxoxoxoxoxoxoxoxox" : GoString))), ((("oy" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("000000000000000000000000000000000000000000000000000000000000000000000001" : GoString))), ((("0000000000000000000000000000000000000000000000000000000000000000001" : GoString))), ((5 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _lastIndexTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("a" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("foo" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("fo" : GoString))), ((("foo" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("foo" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("f" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("oofofoofooo" : GoString))), ((("f" : GoString))), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("oofofoofooo" : GoString))), ((("foo" : GoString))), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("barfoobarfoo" : GoString))), ((("foo" : GoString))), ((9 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("" : GoString))), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("foo" : GoString))), ((("o" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abcABCabc" : GoString))), ((("A" : GoString))), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abcABCabc" : GoString))), ((("a" : GoString))), ((6 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _indexAnyTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("a" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("abc" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a" : GoString))), ((("" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a" : GoString))), ((("a" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((((haxe.io.Bytes.ofHex("80") : GoString))), (((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("aaa" : GoString))), ((("a" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("xyz" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("xcz" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("ab☺c" : GoString))), ((("x☺yz" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a☺b☻c☹d" : GoString))), ((("cx" : GoString))), (((("a☺b☻" : GoString))) != null ? ((("a☺b☻" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a☺b☻c☹d" : GoString))), ((("uvw☻xyz" : GoString))), (((("a☺b" : GoString))) != null ? ((("a☺b" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("aRegExp*" : GoString))), (((".(|)*+?^$$[]" : GoString))), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (((" " : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("012abcba210" : GoString))), (((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))), (((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))), (((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _lastIndexAnyTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("a" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("abc" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a" : GoString))), ((("" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a" : GoString))), ((("a" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((((haxe.io.Bytes.ofHex("80") : GoString))), (((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("aaa" : GoString))), ((("a" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("xyz" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abc" : GoString))), ((("ab" : GoString))), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("ab☺c" : GoString))), ((("x☺yz" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a☺b☻c☹d" : GoString))), ((("cx" : GoString))), (((("a☺b☻" : GoString))) != null ? ((("a☺b☻" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a☺b☻c☹d" : GoString))), ((("uvw☻xyz" : GoString))), (((("a☺b" : GoString))) != null ? ((("a☺b" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a.RegExp*" : GoString))), (((".(|)*+?^$$[]" : GoString))), ((8 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (((" " : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("012abcba210" : GoString))), (((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))), ((6 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))), (((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))), (((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _indexSizes : Slice<GoInt> = ((new Slice<GoInt>(((10 : GoInt)), ((32 : GoInt)), ((4096 : GoInt)), ((4194304 : GoInt)), ((67108864 : GoInt))) : Slice<GoInt>));
var _isRaceBuilder : Bool = stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), ((("-race" : GoString))));
var _splittests : Slice<stdgo.bytes_test.Bytes_test.SplitTest> = ((new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
((new stdgo.bytes_test.Bytes_test.SplitTest(((("" : GoString))), ((("" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("a" : GoString))), ((0 : GoInt)), ((null : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("" : GoString))), ((2 : GoInt)), ((new Slice<GoString>(((("a" : GoString))), ((("bcd" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("a" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("" : GoString))), ((("bcd" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("z" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("abcd" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("a" : GoString))), ((("b" : GoString))), ((("c" : GoString))), ((("d" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ((("," : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3" : GoString))), ((("4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ((("..." : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), (((".2" : GoString))), (((".3" : GoString))), (((".4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((("☹" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("☺☻" : GoString))), ((("" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((("~" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((("" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("☺" : GoString))), ((("☻" : GoString))), ((("☹" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("1 2 3 4" : GoString))), (((" " : GoString))), ((3 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3 4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("1 2" : GoString))), (((" " : GoString))), ((3 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("123" : GoString))), ((("" : GoString))), ((2 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), ((("23" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("123" : GoString))), ((("" : GoString))), ((17 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest))) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>));
var _splitaftertests : Slice<stdgo.bytes_test.Bytes_test.SplitTest> = ((new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("a" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("a" : GoString))), ((("bcd" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("z" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("abcd" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((("" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("a" : GoString))), ((("b" : GoString))), ((("c" : GoString))), ((("d" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ((("," : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("1," : GoString))), ((("2," : GoString))), ((("3," : GoString))), ((("4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ((("..." : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("1..." : GoString))), (((".2..." : GoString))), (((".3..." : GoString))), (((".4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((("☹" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("☺☻☹" : GoString))), ((("" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((("~" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((("" : GoString))), ((-1 : GoInt)), ((new Slice<GoString>(((("☺" : GoString))), ((("☻" : GoString))), ((("☹" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("1 2 3 4" : GoString))), (((" " : GoString))), ((3 : GoInt)), ((new Slice<GoString>(((("1 " : GoString))), ((("2 " : GoString))), ((("3 4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("1 2 3" : GoString))), (((" " : GoString))), ((3 : GoInt)), ((new Slice<GoString>(((("1 " : GoString))), ((("2 " : GoString))), ((("3" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("1 2" : GoString))), (((" " : GoString))), ((3 : GoInt)), ((new Slice<GoString>(((("1 " : GoString))), ((("2" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("123" : GoString))), ((("" : GoString))), ((2 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), ((("23" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((("123" : GoString))), ((("" : GoString))), ((17 : GoInt)), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest))) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>));
var _fieldstests : Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = ((new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("" : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest((((" " : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest((((" \t " : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("  abc  " : GoString))), ((new Slice<GoString>(((("abc" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("1 2 3 4" : GoString))), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3" : GoString))), ((("4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("1  2  3  4" : GoString))), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3" : GoString))), ((("4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("1\t\t2\t\t3\t4" : GoString))), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3" : GoString))), ((("4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("1\u20002\u20013\u20024" : GoString))), ((new Slice<GoString>(((("1" : GoString))), ((("2" : GoString))), ((("3" : GoString))), ((("4" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("\u2000\u2001\u2002" : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((("\n™\t™\n" : GoString))), ((new Slice<GoString>(((("™" : GoString))), ((("™" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(_faces, ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest))) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>));
var _upperTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = ((new Slice<stdgo.bytes_test.Bytes_test.StringTest>(((new stdgo.bytes_test.Bytes_test.StringTest(((("" : GoString))), ((((("" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("ONLYUPPER" : GoString))), ((((("ONLYUPPER" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("abc" : GoString))), ((((("ABC" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("AbC123" : GoString))), ((((("ABC123" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("azAZ09_" : GoString))), ((((("AZAZ09_" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("longStrinGwitHmixofsmaLLandcAps" : GoString))), ((((("LONGSTRINGWITHMIXOFSMALLANDCAPS" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("long\u0250string\u0250with\u0250nonascii\u2C6Fchars" : GoString))), ((((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("\u0250\u0250\u0250\u0250\u0250" : GoString))), ((((("\u2C6F\u2C6F\u2C6F\u2C6F\u2C6F" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("a\u0080\u{0010FFFF}" : GoString))), ((((("A\u0080\u{0010FFFF}" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest))) : Slice<stdgo.bytes_test.Bytes_test.StringTest>));
var _lowerTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = ((new Slice<stdgo.bytes_test.Bytes_test.StringTest>(((new stdgo.bytes_test.Bytes_test.StringTest(((("" : GoString))), ((((("" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("abc" : GoString))), ((((("abc" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("AbC123" : GoString))), ((((("abc123" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("azAZ09_" : GoString))), ((((("azaz09_" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("longStrinGwitHmixofsmaLLandcAps" : GoString))), ((((("longstringwithmixofsmallandcaps" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))), ((((("long\u0250string\u0250with\u0250nonascii\u0250chars" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("\u2C6D\u2C6D\u2C6D\u2C6D\u2C6D" : GoString))), ((((("\u0251\u0251\u0251\u0251\u0251" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((("A\u0080\u{0010FFFF}" : GoString))), ((((("a\u0080\u{0010FFFF}" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest))) : Slice<stdgo.bytes_test.Bytes_test.StringTest>));
var _trimSpaceTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = ((new Slice<stdgo.bytes_test.Bytes_test.StringTest>(
((new stdgo.bytes_test.Bytes_test.StringTest(((("" : GoString))), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("  a" : GoString))), ((((("a" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("b  " : GoString))), ((((("b" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("abc" : GoString))), ((((("abc" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((((("abc" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((" " : GoString))), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("\u3000 " : GoString))), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((" \u3000" : GoString))), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((" \t\r\n \t\t\r\r\n\n " : GoString))), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((" \t\r\n x\t\t\r\r\n\n " : GoString))), ((((("x" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : GoString))), ((((("x\t\t\r\r\ny" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("1 \t\r\n2" : GoString))), ((((("1 \t\r\n2" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), ((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))), ((((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((("x ☺ " : GoString))), ((((("x ☺" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest))) : Slice<stdgo.bytes_test.Bytes_test.StringTest>));
var _toValidUTF8Tests : Slice<stdgo.bytes_test.Bytes_test.T__struct_3> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_3>(
((new stdgo.bytes_test.Bytes_test.T__struct_3(((("" : GoString))), ((("\uFFFD" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3(((("abc" : GoString))), ((("\uFFFD" : GoString))), ((("abc" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3(((("\uFDDD" : GoString))), ((("\uFFFD" : GoString))), ((("\uFDDD" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3(((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))), ((("\uFFFD" : GoString))), ((("a\uFFFDb" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3(((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b\uFFFD" : GoString))), ((("X" : GoString))), ((("aXb\uFFFD" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3(((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((("" : GoString))), ((("a☺b☺c☺" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3(((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((("日本語" : GoString))), ((("a☺日本語b☺日本語c☺日本語" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3((((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))), ((("\uFFFD" : GoString))), ((("\uFFFD" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))), ((("\uFFFD" : GoString))), ((("\uFFFD" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((("abc" : GoString))), ((("abc" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))), ((("\uFFFD" : GoString))), ((("\uFFFD" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("af") : GoString))), ((("☺" : GoString))), ((("☺" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3((((haxe.io.Bytes.ofHex("F8") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))), ((("\uFFFD" : GoString))), ((("\uFFFD" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3)),
((new stdgo.bytes_test.Bytes_test.T__struct_3((((haxe.io.Bytes.ofHex("FC") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))), ((("\uFFFD" : GoString))), ((("\uFFFD" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_3))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_3>));
var repeatTests : Slice<stdgo.bytes_test.Bytes_test.RepeatTest> = ((new Slice<stdgo.bytes_test.Bytes_test.RepeatTest>(((new stdgo.bytes_test.Bytes_test.RepeatTest(((("" : GoString))), ((("" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((("" : GoString))), ((("" : GoString))), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((("" : GoString))), ((("" : GoString))), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((("-" : GoString))), ((("" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((("-" : GoString))), ((("-" : GoString))), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((("-" : GoString))), ((("----------" : GoString))), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((("abc " : GoString))), ((("abc abc abc " : GoString))), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest))) : Slice<stdgo.bytes_test.Bytes_test.RepeatTest>));
var runesTests : Slice<stdgo.bytes_test.Bytes_test.RunesTest> = ((new Slice<stdgo.bytes_test.Bytes_test.RunesTest>(((new stdgo.bytes_test.Bytes_test.RunesTest(((("" : GoString))), ((new Slice<GoInt32>() : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest((((" " : GoString))), ((new Slice<GoInt32>(((32 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((("ABC" : GoString))), ((new Slice<GoInt32>(((65 : GoInt32)), ((66 : GoInt32)), ((67 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((("abc" : GoString))), ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((("\u65e5\u672c\u8a9e" : GoString))), ((new Slice<GoInt32>(((26085 : GoInt32)), ((26412 : GoInt32)), ((35486 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("c" : GoString))), ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), true) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("c" : GoString))), ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), true) : stdgo.bytes_test.Bytes_test.RunesTest))) : Slice<stdgo.bytes_test.Bytes_test.RunesTest>));
var _trimTests : Slice<stdgo.bytes_test.Bytes_test.TrimTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TrimTest>(
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("abba" : GoString))), ((("a" : GoString))), ((("bb" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("abba" : GoString))), ((("ab" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimLeft" : GoString))), ((("abba" : GoString))), ((("ab" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimRight" : GoString))), ((("abba" : GoString))), ((("ab" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimLeft" : GoString))), ((("abba" : GoString))), ((("a" : GoString))), ((("bba" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimLeft" : GoString))), ((("abba" : GoString))), ((("b" : GoString))), ((("abba" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimRight" : GoString))), ((("abba" : GoString))), ((("a" : GoString))), ((("abb" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimRight" : GoString))), ((("abba" : GoString))), ((("b" : GoString))), ((("abba" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("<tag>" : GoString))), ((("<>" : GoString))), ((("tag" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("* listitem" : GoString))), (((" *" : GoString))), ((("listitem" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), "\"quote\"", "\"", ((("quote" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("\u2C6F\u2C6F\u0250\u0250\u2C6F\u2C6F" : GoString))), ((("\u2C6F" : GoString))), ((("\u0250\u0250" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), (((haxe.io.Bytes.ofHex("80") : GoString)) + (("test" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), (((haxe.io.Bytes.ofHex("ff") : GoString))), ((("test" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), (((" Ġ " : GoString))), (((" " : GoString))), ((("Ġ" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), (((" Ġİ0" : GoString))), ((("0 " : GoString))), ((("Ġİ" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("abba" : GoString))), ((("" : GoString))), ((("abba" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("" : GoString))), ((("123" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("Trim" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimLeft" : GoString))), ((("abba" : GoString))), ((("" : GoString))), ((("abba" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimLeft" : GoString))), ((("" : GoString))), ((("123" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimLeft" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimRight" : GoString))), ((("abba" : GoString))), ((("" : GoString))), ((("abba" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimRight" : GoString))), ((("" : GoString))), ((("123" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimRight" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimRight" : GoString))), ((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), ((("☺" : GoString))), ((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimPrefix" : GoString))), ((("aabb" : GoString))), ((("a" : GoString))), ((("abb" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimPrefix" : GoString))), ((("aabb" : GoString))), ((("b" : GoString))), ((("aabb" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimSuffix" : GoString))), ((("aabb" : GoString))), ((("a" : GoString))), ((("aabb" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((("TrimSuffix" : GoString))), ((("aabb" : GoString))), ((("b" : GoString))), ((("aab" : GoString)))) : stdgo.bytes_test.Bytes_test.TrimTest))) : Slice<stdgo.bytes_test.Bytes_test.TrimTest>));
var _isSpace : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isSpace, ((("IsSpace" : GoString)))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _isDigit : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isDigit, ((("IsDigit" : GoString)))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _isUpper : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isUpper, ((("IsUpper" : GoString)))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _isValidRune : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(function(_r:GoRune):Bool {
        return _r != ((65533 : GoInt32));
    }, ((("IsValidRune" : GoString)))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _trimFuncTests : Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>(((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), ((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((((("hello" : GoString))) : Slice<GoByte>)), ((((("hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : Slice<GoByte>)), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isDigit == null ? null : _isDigit.__copy__()), ((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))), ((((("hello" : GoString))) : Slice<GoByte>)), ((((("hello34\u0e50\u0e51" : GoString))) : Slice<GoByte>)), ((((("\u0e50\u0e5212hello" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isUpper == null ? null : _isUpper.__copy__()), ((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))), ((((("hello" : GoString))) : Slice<GoByte>)), ((((("helloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : Slice<GoByte>)), ((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhello" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()), ((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : Slice<GoByte>)), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))) : Slice<GoByte>)), ((((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), ((("hello\u0e50\u0e521234\u0e50\u0e51helo" : GoString))), ((((("\u0e50\u0e521234\u0e50\u0e51" : GoString))) : Slice<GoByte>)), ((((("\u0e50\u0e521234\u0e50\u0e51helo" : GoString))) : Slice<GoByte>)), ((((("hello\u0e50\u0e521234\u0e50\u0e51" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isValidRune == null ? null : _isValidRune.__copy__()), ((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>)), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : Slice<GoByte>)), ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), ((((("a" : GoString))) : Slice<GoByte>)), ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : Slice<GoByte>)), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), ((("" : GoString))), ((null : Slice<GoUInt8>)), ((null : Slice<GoUInt8>)), ((((("" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), (((" " : GoString))), ((null : Slice<GoUInt8>)), ((null : Slice<GoUInt8>)), ((((("" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest))) : Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>));
var _indexFuncTests : Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest> = ((new Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>(
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("" : GoString))), (_isValidRune == null ? null : _isValidRune.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("abc" : GoString))), (_isDigit == null ? null : _isDigit.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("0123" : GoString))), (_isDigit == null ? null : _isDigit.__copy__()), ((0 : GoInt)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("a1b" : GoString))), (_isDigit == null ? null : _isDigit.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), (_isSpace == null ? null : _isSpace.__copy__()), ((0 : GoInt)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))), (_isDigit == null ? null : _isDigit.__copy__()), ((0 : GoInt)), ((18 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))), (_isUpper == null ? null : _isUpper.__copy__()), ((0 : GoInt)), ((34 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("12\u0e50\u0e52hello34\u0e50\u0e51" : GoString))), (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), ((8 : GoInt)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((haxe.io.Bytes.ofHex("80") : GoString)) + (("1" : GoString))), (_isDigit == null ? null : _isDigit.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))), (_isDigit == null ? null : _isDigit.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), (_isValidRune == null ? null : _isValidRune.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((5 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((2 : GoInt)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((("a" : GoString)) + ((haxe.io.Bytes.ofHex("e0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("cd" : GoString))), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((1 : GoInt)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest))) : Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>));
var replaceTests : Slice<stdgo.bytes_test.Bytes_test.ReplaceTest> = ((new Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>(
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("hello" : GoString))), ((("l" : GoString))), ((("L" : GoString))), ((0 : GoInt)), ((("hello" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("hello" : GoString))), ((("l" : GoString))), ((("L" : GoString))), ((-1 : GoInt)), ((("heLLo" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("hello" : GoString))), ((("x" : GoString))), ((("X" : GoString))), ((-1 : GoInt)), ((("hello" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("" : GoString))), ((("x" : GoString))), ((("X" : GoString))), ((-1 : GoInt)), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("radar" : GoString))), ((("r" : GoString))), ((("<r>" : GoString))), ((-1 : GoInt)), ((("<r>ada<r>" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("" : GoString))), ((("" : GoString))), ((("<>" : GoString))), ((-1 : GoInt)), ((("<>" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("a" : GoString))), ((("<>" : GoString))), ((-1 : GoInt)), ((("b<>n<>n<>" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("a" : GoString))), ((("<>" : GoString))), ((1 : GoInt)), ((("b<>nana" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("a" : GoString))), ((("<>" : GoString))), ((1000 : GoInt)), ((("b<>n<>n<>" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("an" : GoString))), ((("<>" : GoString))), ((-1 : GoInt)), ((("b<><>a" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("ana" : GoString))), ((("<>" : GoString))), ((-1 : GoInt)), ((("b<>na" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("" : GoString))), ((("<>" : GoString))), ((-1 : GoInt)), ((("<>b<>a<>n<>a<>n<>a<>" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("" : GoString))), ((("<>" : GoString))), ((10 : GoInt)), ((("<>b<>a<>n<>a<>n<>a<>" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("" : GoString))), ((("<>" : GoString))), ((6 : GoInt)), ((("<>b<>a<>n<>a<>n<>a" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("" : GoString))), ((("<>" : GoString))), ((5 : GoInt)), ((("<>b<>a<>n<>a<>na" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("" : GoString))), ((("<>" : GoString))), ((1 : GoInt)), ((("<>banana" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("a" : GoString))), ((("a" : GoString))), ((-1 : GoInt)), ((("banana" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("banana" : GoString))), ((("a" : GoString))), ((("a" : GoString))), ((1 : GoInt)), ((("banana" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((("☺☻☹" : GoString))), ((("" : GoString))), ((("<>" : GoString))), ((-1 : GoInt)), ((("<>☺<>☻<>☹<>" : GoString)))) : stdgo.bytes_test.Bytes_test.ReplaceTest))) : Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>));
var titleTests : Slice<stdgo.bytes_test.Bytes_test.TitleTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(((new stdgo.bytes_test.Bytes_test.TitleTest(((("" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("a" : GoString))), ((("A" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((" aaa aaa aaa " : GoString))), (((" Aaa Aaa Aaa " : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((" Aaa Aaa Aaa " : GoString))), (((" Aaa Aaa Aaa " : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("123a456" : GoString))), ((("123a456" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("double-blind" : GoString))), ((("Double-Blind" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("ÿøû" : GoString))), ((("Ÿøû" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("with_underscore" : GoString))), ((("With_underscore" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" line separator" : GoString))), ((("Unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" Line Separator" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest))) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>));
var toTitleTests : Slice<stdgo.bytes_test.Bytes_test.TitleTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(((new stdgo.bytes_test.Bytes_test.TitleTest(((("" : GoString))), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("a" : GoString))), ((("A" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((" aaa aaa aaa " : GoString))), (((" AAA AAA AAA " : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((" Aaa Aaa Aaa " : GoString))), (((" AAA AAA AAA " : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("123a456" : GoString))), ((("123A456" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("double-blind" : GoString))), ((("DOUBLE-BLIND" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((("ÿøû" : GoString))), ((("ŸØÛ" : GoString)))) : stdgo.bytes_test.Bytes_test.TitleTest))) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>));
var equalFoldTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_6> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_6>(
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abc" : GoString))), ((("abc" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("ABcd" : GoString))), ((("ABcd" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("123abc" : GoString))), ((("123ABC" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("αβδ" : GoString))), ((("ΑΒΔ" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abc" : GoString))), ((("xyz" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abc" : GoString))), ((("XYZ" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abcdefghijk" : GoString))), ((("abcdefghijX" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abcdefghijk" : GoString))), ((("abcdefghij\u212A" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abcdefghijK" : GoString))), ((("abcdefghij\u212A" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abcdefghijkz" : GoString))), ((("abcdefghij\u212Ay" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_6)),
((new stdgo.bytes_test.Bytes_test.T__struct_6(((("abcdefghijKz" : GoString))), ((("abcdefghij\u212Ay" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_6))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_6>));
var _cutTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_7> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_7>(((new stdgo.bytes_test.Bytes_test.T__struct_7(((("abc" : GoString))), ((("b" : GoString))), ((("a" : GoString))), ((("c" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_7)), ((new stdgo.bytes_test.Bytes_test.T__struct_7(((("abc" : GoString))), ((("a" : GoString))), ((("" : GoString))), ((("bc" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_7)), ((new stdgo.bytes_test.Bytes_test.T__struct_7(((("abc" : GoString))), ((("c" : GoString))), ((("ab" : GoString))), ((("" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_7)), ((new stdgo.bytes_test.Bytes_test.T__struct_7(((("abc" : GoString))), ((("abc" : GoString))), ((("" : GoString))), ((("" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_7)), ((new stdgo.bytes_test.Bytes_test.T__struct_7(((("abc" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("abc" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_7)), ((new stdgo.bytes_test.Bytes_test.T__struct_7(((("abc" : GoString))), ((("d" : GoString))), ((("abc" : GoString))), ((("" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_7)), ((new stdgo.bytes_test.Bytes_test.T__struct_7(((("" : GoString))), ((("d" : GoString))), ((("" : GoString))), ((("" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_7)), ((new stdgo.bytes_test.Bytes_test.T__struct_7(((("" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_7))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_7>));
var _containsTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_8> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_8>(((new stdgo.bytes_test.Bytes_test.T__struct_8(((((("hello" : GoString))) : Slice<GoByte>)), ((((("hel" : GoString))) : Slice<GoByte>)), true) : stdgo.bytes_test.Bytes_test.T__struct_8)), ((new stdgo.bytes_test.Bytes_test.T__struct_8(((((("日本語" : GoString))) : Slice<GoByte>)), ((((("日本" : GoString))) : Slice<GoByte>)), true) : stdgo.bytes_test.Bytes_test.T__struct_8)), ((new stdgo.bytes_test.Bytes_test.T__struct_8(((((("hello" : GoString))) : Slice<GoByte>)), ((((("Hello, world" : GoString))) : Slice<GoByte>)), false) : stdgo.bytes_test.Bytes_test.T__struct_8)), ((new stdgo.bytes_test.Bytes_test.T__struct_8(((((("東京" : GoString))) : Slice<GoByte>)), ((((("京東" : GoString))) : Slice<GoByte>)), false) : stdgo.bytes_test.Bytes_test.T__struct_8))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_8>));
var containsAnyTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_9> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_9>(
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("" : GoString))) : Slice<GoByte>)), ((("" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("" : GoString))) : Slice<GoByte>)), ((("a" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("" : GoString))) : Slice<GoByte>)), ((("abc" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("a" : GoString))) : Slice<GoByte>)), ((("" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("a" : GoString))) : Slice<GoByte>)), ((("a" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("aaa" : GoString))) : Slice<GoByte>)), ((("a" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("abc" : GoString))) : Slice<GoByte>)), ((("xyz" : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("abc" : GoString))) : Slice<GoByte>)), ((("xcz" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("a☺b☻c☹d" : GoString))) : Slice<GoByte>)), ((("uvw☻xyz" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((("aRegExp*" : GoString))) : Slice<GoByte>)), (((".(|)*+?^$$[]" : GoString))), true) : stdgo.bytes_test.Bytes_test.T__struct_9)),
((new stdgo.bytes_test.Bytes_test.T__struct_9(((((_dots + _dots) + _dots) : Slice<GoByte>)), (((" " : GoString))), false) : stdgo.bytes_test.Bytes_test.T__struct_9))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_9>));
var containsRuneTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_10> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_10>(((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("" : GoString))) : Slice<GoByte>)), ((((("a" : GoString))).code : GoRune)), false) : stdgo.bytes_test.Bytes_test.T__struct_10)), ((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("a" : GoString))) : Slice<GoByte>)), ((((("a" : GoString))).code : GoRune)), true) : stdgo.bytes_test.Bytes_test.T__struct_10)), ((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("aaa" : GoString))) : Slice<GoByte>)), ((((("a" : GoString))).code : GoRune)), true) : stdgo.bytes_test.Bytes_test.T__struct_10)), ((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("abc" : GoString))) : Slice<GoByte>)), ((((("y" : GoString))).code : GoRune)), false) : stdgo.bytes_test.Bytes_test.T__struct_10)), ((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("abc" : GoString))) : Slice<GoByte>)), ((((("c" : GoString))).code : GoRune)), true) : stdgo.bytes_test.Bytes_test.T__struct_10)), ((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("a☺b☻c☹d" : GoString))) : Slice<GoByte>)), ((((("x" : GoString))).code : GoRune)), false) : stdgo.bytes_test.Bytes_test.T__struct_10)), ((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("a☺b☻c☹d" : GoString))) : Slice<GoByte>)), ((((("☻" : GoString))).code : GoRune)), true) : stdgo.bytes_test.Bytes_test.T__struct_10)), ((new stdgo.bytes_test.Bytes_test.T__struct_10(((((("aRegExp*" : GoString))) : Slice<GoByte>)), ((((("*" : GoString))).code : GoRune)), true) : stdgo.bytes_test.Bytes_test.T__struct_10))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_10>));
var _makeFieldsInput : () -> Slice<GoUInt8> = function():Slice<GoByte> {
        var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1048576 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _x) {
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn(((10 : GoInt))) == ((0 : GoInt)))) {
                        if (_x != null) _x[_i] = (((((" " : GoString))).code : GoRune));
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn(((10 : GoInt))) == ((1 : GoInt)))) {
                        if ((_i > ((0 : GoInt))) && ((_x != null ? _x[_i - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("x" : GoString))).code : GoRune)))) {
                            Go.copySlice(((_x.__slice__(_i - ((1 : GoInt))) : Slice<GoUInt8>)), ((("χ" : GoString))));
                            break;
                        };
                        @:fallthrough {
                            __switchIndex__ = 2;
                            continue;
                        };
                        break;
                    } else {
                        if (_x != null) _x[_i] = ((((("x" : GoString))).code : GoRune));
                        break;
                    };
                    break;
                };
            };
        };
        return _x;
    };
var _makeFieldsInputASCII : () -> Slice<GoUInt8> = function():Slice<GoByte> {
        var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1048576 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _x) {
            if (stdgo.math.rand.Rand.intn(((10 : GoInt))) == ((0 : GoInt))) {
                if (_x != null) _x[_i] = (((((" " : GoString))).code : GoRune));
            } else {
                if (_x != null) _x[_i] = ((((("x" : GoString))).code : GoRune));
            };
        };
        return _x;
    };
var _bytesdata : Slice<stdgo.bytes_test.Bytes_test.T__struct_11> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_11>(((new stdgo.bytes_test.Bytes_test.T__struct_11(((("ASCII" : GoString))), _makeFieldsInputASCII()) : stdgo.bytes_test.Bytes_test.T__struct_11)), ((new stdgo.bytes_test.Bytes_test.T__struct_11(((("Mixed" : GoString))), _makeFieldsInput()) : stdgo.bytes_test.Bytes_test.T__struct_11))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_11>));
var _benchInputHard : Slice<GoUInt8> = _makeBenchInputHard();
var _compareTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_1> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_1>(
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("" : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("a" : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("" : GoString))) : Slice<GoByte>)), ((((("a" : GoString))) : Slice<GoByte>)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abc" : GoString))) : Slice<GoByte>)), ((((("abc" : GoString))) : Slice<GoByte>)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abd" : GoString))) : Slice<GoByte>)), ((((("abc" : GoString))) : Slice<GoByte>)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abc" : GoString))) : Slice<GoByte>)), ((((("abd" : GoString))) : Slice<GoByte>)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("ab" : GoString))) : Slice<GoByte>)), ((((("abc" : GoString))) : Slice<GoByte>)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abc" : GoString))) : Slice<GoByte>)), ((((("ab" : GoString))) : Slice<GoByte>)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("x" : GoString))) : Slice<GoByte>)), ((((("ab" : GoString))) : Slice<GoByte>)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("ab" : GoString))) : Slice<GoByte>)), ((((("x" : GoString))) : Slice<GoByte>)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("x" : GoString))) : Slice<GoByte>)), ((((("a" : GoString))) : Slice<GoByte>)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("b" : GoString))) : Slice<GoByte>)), ((((("x" : GoString))) : Slice<GoByte>)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abcdefgh" : GoString))) : Slice<GoByte>)), ((((("abcdefgh" : GoString))) : Slice<GoByte>)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abcdefghi" : GoString))) : Slice<GoByte>)), ((((("abcdefghi" : GoString))) : Slice<GoByte>)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abcdefghi" : GoString))) : Slice<GoByte>)), ((((("abcdefghj" : GoString))) : Slice<GoByte>)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("abcdefghj" : GoString))) : Slice<GoByte>)), ((((("abcdefghi" : GoString))) : Slice<GoByte>)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((null : Slice<GoUInt8>)), ((null : Slice<GoUInt8>)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("" : GoString))) : Slice<GoByte>)), ((null : Slice<GoUInt8>)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((null : Slice<GoUInt8>)), ((((("" : GoString))) : Slice<GoByte>)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("a" : GoString))) : Slice<GoByte>)), ((null : Slice<GoUInt8>)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)),
((new stdgo.bytes_test.Bytes_test.T__struct_1(((null : Slice<GoUInt8>)), ((((("a" : GoString))) : Slice<GoByte>)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_1>));
var unreadRuneErrorTests : Slice<stdgo.bytes_test.Bytes_test.T__struct_15> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_15>(((new stdgo.bytes_test.Bytes_test.T__struct_15(((("Read" : GoString))), function(_r:Reader):Void {
        _r.read(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
    }) : stdgo.bytes_test.Bytes_test.T__struct_15)), ((new stdgo.bytes_test.Bytes_test.T__struct_15(((("ReadByte" : GoString))), function(_r:Reader):Void {
        _r.readByte();
    }) : stdgo.bytes_test.Bytes_test.T__struct_15)), ((new stdgo.bytes_test.Bytes_test.T__struct_15(((("UnreadRune" : GoString))), function(_r:Reader):Void {
        _r.unreadRune();
    }) : stdgo.bytes_test.Bytes_test.T__struct_15)), ((new stdgo.bytes_test.Bytes_test.T__struct_15(((("Seek" : GoString))), function(_r:Reader):Void {
        _r.seek(((0 : GoInt64)), ((1 : GoInt)));
    }) : stdgo.bytes_test.Bytes_test.T__struct_15)), ((new stdgo.bytes_test.Bytes_test.T__struct_15(((("WriteTo" : GoString))), function(_r:Reader):Void {
        _r.writeTo(((new Buffer() : Buffer)));
    }) : stdgo.bytes_test.Bytes_test.T__struct_15))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_15>));
var _testString : GoString = (("" : GoString));
var _testBytes : Slice<GoByte> = ((null : Slice<GoUInt8>));
var _bmbuf : Slice<GoByte> = ((null : Slice<GoUInt8>));
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_negativeReader_static_extension) class T_negativeReader {
    @:keep
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        return { _0 : ((-1 : GoInt)), _1 : ((null : stdgo.Error)) };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_negativeReader();
    }
}
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_panicReader_static_extension) class T_panicReader {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        (_r == null ? null : _r.__copy__());
        if (_r._panic) {
            throw Go.toInterface(null);
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
    }
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
    public var _a : GoString = (("" : GoString));
    public var _b : GoString = (("" : GoString));
    public var _i : GoInt = ((0 : GoInt));
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
    public var _s : GoString = (("" : GoString));
    public var _sep : GoString = (("" : GoString));
    public var _n : GoInt = ((0 : GoInt));
    public var _a : Slice<GoString> = ((null : Slice<GoString>));
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
    public var _s : GoString = (("" : GoString));
    public var _a : Slice<GoString> = ((null : Slice<GoString>));
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
    public var _in : GoString = (("" : GoString));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
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
    public var _in : GoString = (("" : GoString));
    public var _out : GoString = (("" : GoString));
    public var _count : GoInt = ((0 : GoInt));
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
    public var _in : GoString = (("" : GoString));
    public var _out : Slice<GoInt32> = ((null : Slice<GoInt32>));
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
    public var _f : GoString = (("" : GoString));
    public var _in : GoString = (("" : GoString));
    public var _arg : GoString = (("" : GoString));
    public var _out : GoString = (("" : GoString));
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
@:structInit class T_predicate {
    public var _f : GoInt32 -> Bool = null;
    public var _name : GoString = (("" : GoString));
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
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = new stdgo.bytes_test.Bytes_test.T_predicate();
    public var _in : GoString = (("" : GoString));
    public var _trimOut : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _leftOut : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _rightOut : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
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
    public var _in : GoString = (("" : GoString));
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = new stdgo.bytes_test.Bytes_test.T_predicate();
    public var _first : GoInt = ((0 : GoInt));
    public var _last : GoInt = ((0 : GoInt));
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
    public var _in : GoString = (("" : GoString));
    public var _old : GoString = (("" : GoString));
    public var _new : GoString = (("" : GoString));
    public var _n : GoInt = ((0 : GoInt));
    public var _out : GoString = (("" : GoString));
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
    public var _in : GoString = (("" : GoString));
    public var _out : GoString = (("" : GoString));
    public function new(?_in:GoString, ?_out:GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TitleTest(_in, _out);
    }
}
@:structInit @:local class T__struct_0 {
    public var _buffer : GoString = (("" : GoString));
    public var _delim : GoUInt8 = ((0 : GoUInt8));
    public var _expected : Slice<GoString> = ((null : Slice<GoString>));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function toString():String return "{" + Go.string(_buffer) + " " + Go.string(_delim) + " " + Go.string(_expected) + " " + Go.string(_err) + "}";
    public function new(?_buffer:GoString, ?_delim:GoUInt8, ?_expected:Slice<GoString>, ?_err:stdgo.Error, ?toString) {
        if (_buffer != null) this._buffer = _buffer;
        if (_delim != null) this._delim = _delim;
        if (_expected != null) this._expected = _expected;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_buffer, _delim, _expected, _err);
    }
}
@:structInit @:local class T__struct_1 {
    public var _a : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _b : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _i : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_a) + " " + Go.string(_b) + " " + Go.string(_i) + "}";
    public function new(?_a:Slice<GoUInt8>, ?_b:Slice<GoUInt8>, ?_i:GoInt, ?toString) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_i != null) this._i = _i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_a, _b, _i);
    }
}
@:structInit @:local class T__struct_2 {
    public var _in : GoString = (("" : GoString));
    public var _rune : GoInt32 = ((0 : GoInt32));
    public var _want : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_rune) + " " + Go.string(_want) + "}";
    public function new(?_in:GoString, ?_rune:GoInt32, ?_want:GoInt, ?toString) {
        if (_in != null) this._in = _in;
        if (_rune != null) this._rune = _rune;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_in, _rune, _want);
    }
}
@:structInit @:local class T__struct_3 {
    public var _in : GoString = (("" : GoString));
    public var _repl : GoString = (("" : GoString));
    public var _out : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_repl) + " " + Go.string(_out) + "}";
    public function new(?_in:GoString, ?_repl:GoString, ?_out:GoString, ?toString) {
        if (_in != null) this._in = _in;
        if (_repl != null) this._repl = _repl;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_in, _repl, _out);
    }
}
@:structInit @:local class T__struct_4 {
    public var _s : GoString = (("" : GoString));
    public var _count : GoInt = ((0 : GoInt));
    public var _errStr : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_count) + " " + Go.string(_errStr) + "}";
    public function new(?_s:GoString, ?_count:GoInt, ?_errStr:GoString, ?toString) {
        if (_s != null) this._s = _s;
        if (_count != null) this._count = _count;
        if (_errStr != null) this._errStr = _errStr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4(_s, _count, _errStr);
    }
}
@:structInit @:local class T__struct_5 {
    public var _name : GoString = (("" : GoString));
    public var _trim : (Slice<GoUInt8>, GoInt32 -> Bool) -> Slice<GoUInt8> = null;
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_trim) + " " + Go.string(_out) + "}";
    public function new(?_name:GoString, ?_trim:(Slice<GoUInt8>, GoInt32 -> Bool) -> Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?toString) {
        if (_name != null) this._name = _name;
        if (_trim != null) this._trim = _trim;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_name, _trim, _out);
    }
}
@:structInit @:local class T__struct_6 {
    public var _s : GoString = (("" : GoString));
    public var _t : GoString = (("" : GoString));
    public var _out : Bool = false;
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_t) + " " + Go.string(_out) + "}";
    public function new(?_s:GoString, ?_t:GoString, ?_out:Bool, ?toString) {
        if (_s != null) this._s = _s;
        if (_t != null) this._t = _t;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_s, _t, _out);
    }
}
@:structInit @:local class T__struct_7 {
    public var _s : GoString = (("" : GoString));
    public var _sep : GoString = (("" : GoString));
    public var _before : GoString = (("" : GoString));
    public var _after : GoString = (("" : GoString));
    public var _found : Bool = false;
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_sep) + " " + Go.string(_before) + " " + Go.string(_after) + " " + Go.string(_found) + "}";
    public function new(?_s:GoString, ?_sep:GoString, ?_before:GoString, ?_after:GoString, ?_found:Bool, ?toString) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_before != null) this._before = _before;
        if (_after != null) this._after = _after;
        if (_found != null) this._found = _found;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(_s, _sep, _before, _after, _found);
    }
}
@:structInit @:local class T__struct_8 {
    public var _b : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _subslice : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _want : Bool = false;
    public function toString():String return "{" + Go.string(_b) + " " + Go.string(_subslice) + " " + Go.string(_want) + "}";
    public function new(?_b:Slice<GoUInt8>, ?_subslice:Slice<GoUInt8>, ?_want:Bool, ?toString) {
        if (_b != null) this._b = _b;
        if (_subslice != null) this._subslice = _subslice;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_8(_b, _subslice, _want);
    }
}
@:structInit @:local class T__struct_9 {
    public var _b : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _substr : GoString = (("" : GoString));
    public var _expected : Bool = false;
    public function toString():String return "{" + Go.string(_b) + " " + Go.string(_substr) + " " + Go.string(_expected) + "}";
    public function new(?_b:Slice<GoUInt8>, ?_substr:GoString, ?_expected:Bool, ?toString) {
        if (_b != null) this._b = _b;
        if (_substr != null) this._substr = _substr;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_9(_b, _substr, _expected);
    }
}
@:structInit @:local class T__struct_10 {
    public var _b : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _r : GoInt32 = ((0 : GoInt32));
    public var _expected : Bool = false;
    public function toString():String return "{" + Go.string(_b) + " " + Go.string(_r) + " " + Go.string(_expected) + "}";
    public function new(?_b:Slice<GoUInt8>, ?_r:GoInt32, ?_expected:Bool, ?toString) {
        if (_b != null) this._b = _b;
        if (_r != null) this._r = _r;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_10(_b, _r, _expected);
    }
}
@:structInit @:local class T__struct_11 {
    public var _name : GoString = (("" : GoString));
    public var _data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_data) + "}";
    public function new(?_name:GoString, ?_data:Slice<GoUInt8>, ?toString) {
        if (_name != null) this._name = _name;
        if (_data != null) this._data = _data;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_11(_name, _data);
    }
}
@:structInit @:local class T__struct_12 {
    public var _name : GoString = (("" : GoString));
    public var _input : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_input) + "}";
    public function new(?_name:GoString, ?_input:Slice<GoUInt8>, ?toString) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_12(_name, _input);
    }
}
@:structInit @:local class T__struct_13 {
    public var _off : GoInt64 = ((0 : GoInt64));
    public var _seek : GoInt = ((0 : GoInt));
    public var _n : GoInt = ((0 : GoInt));
    public var _want : GoString = (("" : GoString));
    public var _wantpos : GoInt64 = ((0 : GoInt64));
    public var _readerr : stdgo.Error = ((null : stdgo.Error));
    public var _seekerr : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_off) + " " + Go.string(_seek) + " " + Go.string(_n) + " " + Go.string(_want) + " " + Go.string(_wantpos) + " " + Go.string(_readerr) + " " + Go.string(_seekerr) + "}";
    public function new(?_off:GoInt64, ?_seek:GoInt, ?_n:GoInt, ?_want:GoString, ?_wantpos:GoInt64, ?_readerr:stdgo.Error, ?_seekerr:GoString, ?toString) {
        if (_off != null) this._off = _off;
        if (_seek != null) this._seek = _seek;
        if (_n != null) this._n = _n;
        if (_want != null) this._want = _want;
        if (_wantpos != null) this._wantpos = _wantpos;
        if (_readerr != null) this._readerr = _readerr;
        if (_seekerr != null) this._seekerr = _seekerr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_13(_off, _seek, _n, _want, _wantpos, _readerr, _seekerr);
    }
}
@:structInit @:local class T__struct_14 {
    public var _off : GoInt64 = ((0 : GoInt64));
    public var _n : GoInt = ((0 : GoInt));
    public var _want : GoString = (("" : GoString));
    public var _wanterr : AnyInterface = ((null : AnyInterface));
    public function toString():String return "{" + Go.string(_off) + " " + Go.string(_n) + " " + Go.string(_want) + " " + Go.string(_wanterr) + "}";
    public function new(?_off:GoInt64, ?_n:GoInt, ?_want:GoString, ?_wanterr:AnyInterface, ?toString) {
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
        if (_want != null) this._want = _want;
        if (_wanterr != null) this._wanterr = _wanterr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_14(_off, _n, _want, _wanterr);
    }
}
@:structInit @:local class T__struct_15 {
    public var _name : GoString = (("" : GoString));
    public var _f : Ref<Reader> -> Void = null;
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_f) + "}";
    public function new(?_name:GoString, ?_f:Ref<Reader> -> Void, ?toString) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_15(_name, _f);
    }
}
function _check(_t:stdgo.testing.Testing.T_, _testname:GoString, _buf:Buffer, _s:GoString):Void {
        var _bytes:Slice<GoUInt8> = _buf.bytes();
        var _str:GoString = ((_buf.toString() : GoString));
        if (_buf.len() != (_bytes != null ? _bytes.length : ((0 : GoInt)))) {
            _t.errorf(((("%s: buf.Len() == %d, len(buf.Bytes()) == %d" : GoString))), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_bytes != null ? _bytes.length : ((0 : GoInt)))));
        };
        if (_buf.len() != (_str != null ? _str.length : ((0 : GoInt)))) {
            _t.errorf(((("%s: buf.Len() == %d, len(buf.String()) == %d" : GoString))), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_str != null ? _str.length : ((0 : GoInt)))));
        };
        if (_buf.len() != (_s != null ? _s.length : ((0 : GoInt)))) {
            _t.errorf(((("%s: buf.Len() == %d, len(s) == %d" : GoString))), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_s != null ? _s.length : ((0 : GoInt)))));
        };
        if (((_bytes : GoString)) != _s) {
            _t.errorf(((("%s: string(buf.Bytes()) == %q, s == %q" : GoString))), Go.toInterface(_testname), Go.toInterface(((_bytes : GoString))), Go.toInterface(_s));
        };
    }
function _fillString(_t:stdgo.testing.Testing.T_, _testname:GoString, _buf:Buffer, _s:GoString, _n:GoInt, _fus:GoString):GoString {
        _check(_t, _testname + (((" (fill 1)" : GoString))), _buf, _s);
        Go.cfor(_n > ((0 : GoInt)), _n--, {
            var __tmp__ = _buf.writeString(_fus), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != (_fus != null ? _fus.length : ((0 : GoInt)))) {
                _t.errorf(_testname + (((" (fill 2): m == %d, expected %d" : GoString))), Go.toInterface(_m), Go.toInterface((_fus != null ? _fus.length : ((0 : GoInt)))));
            };
            if (_err != null) {
                _t.errorf(_testname + (((" (fill 3): err should always be nil, found err == %s" : GoString))), Go.toInterface(_err));
            };
            _s = _s + (_fus);
            _check(_t, _testname + (((" (fill 4)" : GoString))), _buf, _s);
        });
        return _s;
    }
function _fillBytes(_t:stdgo.testing.Testing.T_, _testname:GoString, _buf:Buffer, _s:GoString, _n:GoInt, _fub:Slice<GoByte>):GoString {
        _check(_t, _testname + (((" (fill 1)" : GoString))), _buf, _s);
        Go.cfor(_n > ((0 : GoInt)), _n--, {
            var __tmp__ = _buf.write(_fub), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != (_fub != null ? _fub.length : ((0 : GoInt)))) {
                _t.errorf(_testname + (((" (fill 2): m == %d, expected %d" : GoString))), Go.toInterface(_m), Go.toInterface((_fub != null ? _fub.length : ((0 : GoInt)))));
            };
            if (_err != null) {
                _t.errorf(_testname + (((" (fill 3): err should always be nil, found err == %s" : GoString))), Go.toInterface(_err));
            };
            _s = _s + (((_fub : GoString)));
            _check(_t, _testname + (((" (fill 4)" : GoString))), _buf, _s);
        });
        return _s;
    }
function testNewBuffer(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<Buffer> = newBuffer(_testBytes);
        _check(_t, ((("NewBuffer" : GoString))), _buf, _testString);
    }
function testNewBufferString(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<Buffer> = newBufferString(_testString);
        _check(_t, ((("NewBufferString" : GoString))), _buf, _testString);
    }
function _empty(_t:stdgo.testing.Testing.T_, _testname:GoString, _buf:Buffer, _s:GoString, _fub:Slice<GoByte>):Void {
        _check(_t, _testname + (((" (empty 1)" : GoString))), _buf, _s);
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n == ((0 : GoInt))) {
                break;
            };
            if (_err != null) {
                _t.errorf(_testname + (((" (empty 2): err should always be nil, found err == %s" : GoString))), Go.toInterface(_err));
            };
            _s = ((_s.__slice__(_n) : GoString));
            _check(_t, _testname + (((" (empty 3)" : GoString))), _buf, _s);
        };
        _check(_t, _testname + (((" (empty 4)" : GoString))), _buf, ((("" : GoString))));
    }
function testBasicOperations(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _check(_t, ((("TestBasicOperations (1)" : GoString))), _buf, ((("" : GoString))));
                _buf.reset();
                _check(_t, ((("TestBasicOperations (2)" : GoString))), _buf, ((("" : GoString))));
                _buf.truncate(((0 : GoInt)));
                _check(_t, ((("TestBasicOperations (3)" : GoString))), _buf, ((("" : GoString))));
                var __tmp__ = _buf.write(((_testBytes.__slice__(((0 : GoInt)), ((1 : GoInt))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:GoInt = ((1 : GoInt));
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(((("Write: got (%d, %v), want (%d, %v)" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), ((null : AnyInterface)));
                    };
                };
                _check(_t, ((("TestBasicOperations (4)" : GoString))), _buf, ((("a" : GoString))));
                _buf.writeByte((_testString != null ? _testString[((1 : GoInt))] : ((0 : GoUInt8))));
                _check(_t, ((("TestBasicOperations (5)" : GoString))), _buf, ((("ab" : GoString))));
                {
                    var __tmp__ = _buf.write(((_testBytes.__slice__(((2 : GoInt)), ((26 : GoInt))) : Slice<GoUInt8>)));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var _want:GoInt = ((24 : GoInt));
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(((("Write: got (%d, %v), want (%d, %v)" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), ((null : AnyInterface)));
                    };
                };
                _check(_t, ((("TestBasicOperations (6)" : GoString))), _buf, ((_testString.__slice__(((0 : GoInt)), ((26 : GoInt))) : GoString)));
                _buf.truncate(((26 : GoInt)));
                _check(_t, ((("TestBasicOperations (7)" : GoString))), _buf, ((_testString.__slice__(((0 : GoInt)), ((26 : GoInt))) : GoString)));
                _buf.truncate(((20 : GoInt)));
                _check(_t, ((("TestBasicOperations (8)" : GoString))), _buf, ((_testString.__slice__(((0 : GoInt)), ((20 : GoInt))) : GoString)));
                _empty(_t, ((("TestBasicOperations (9)" : GoString))), _buf, ((_testString.__slice__(((0 : GoInt)), ((20 : GoInt))) : GoString)), new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
                _empty(_t, ((("TestBasicOperations (10)" : GoString))), _buf, ((("" : GoString))), new Slice<GoUInt8>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
                _buf.writeByte((_testString != null ? _testString[((1 : GoInt))] : ((0 : GoUInt8))));
                var __tmp__ = _buf.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:GoUInt8 = (_testString != null ? _testString[((1 : GoInt))] : ((0 : GoUInt8)));
                    if ((_err != null) || (_c != _want)) {
                        _t.errorf(((("ReadByte: got (%q, %v), want (%q, %v)" : GoString))), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(_want), ((null : AnyInterface)));
                    };
                };
                {
                    var __tmp__ = _buf.readByte();
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != stdgo.io.Io.eof) {
                    _t.errorf(((("ReadByte: got (%q, %v), want (%q, %v)" : GoString))), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(((((0 : GoUInt8)) : GoByte))), Go.toInterface(stdgo.io.Io.eof));
                };
            });
        };
    }
function testLargeStringWrites(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        var _limit:GoInt = ((30 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _limit = ((9 : GoInt));
        };
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < _limit, _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillString(_t, ((("TestLargeWrites (1)" : GoString))), _buf, ((("" : GoString))), ((5 : GoInt)), _testString);
                _empty(_t, ((("TestLargeStringWrites (2)" : GoString))), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) / _i : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((("TestLargeStringWrites (3)" : GoString))), _buf, ((("" : GoString))));
    }
function testLargeByteWrites(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        var _limit:GoInt = ((30 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _limit = ((9 : GoInt));
        };
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < _limit, _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((("TestLargeWrites (1)" : GoString))), _buf, ((("" : GoString))), ((5 : GoInt)), _testBytes);
                _empty(_t, ((("TestLargeByteWrites (2)" : GoString))), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) / _i : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((("TestLargeByteWrites (3)" : GoString))), _buf, ((("" : GoString))));
    }
function testLargeStringReads(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillString(_t, ((("TestLargeReads (1)" : GoString))), _buf, ((("" : GoString))), ((5 : GoInt)), ((_testString.__slice__(((0 : GoInt)), (_testString != null ? _testString.length : ((0 : GoInt))) / _i) : GoString)));
                _empty(_t, ((("TestLargeReads (2)" : GoString))), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((("TestLargeStringReads (3)" : GoString))), _buf, ((("" : GoString))));
    }
function testLargeByteReads(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((("TestLargeReads (1)" : GoString))), _buf, ((("" : GoString))), ((5 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), (_testBytes != null ? _testBytes.length : ((0 : GoInt))) / _i) : Slice<GoUInt8>)));
                _empty(_t, ((("TestLargeReads (2)" : GoString))), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((("TestLargeByteReads (3)" : GoString))), _buf, ((("" : GoString))));
    }
function testMixedReadsAndWrites(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        var _s:GoString = ((("" : GoString)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((50 : GoInt)), _i++, {
                var _wlen:GoInt = stdgo.math.rand.Rand.intn((_testString != null ? _testString.length : ((0 : GoInt))));
                if ((_i % ((2 : GoInt))) == ((0 : GoInt))) {
                    _s = _fillString(_t, ((("TestMixedReadsAndWrites (1)" : GoString))), _buf, _s, ((1 : GoInt)), ((_testString.__slice__(((0 : GoInt)), _wlen) : GoString)));
                } else {
                    _s = _fillBytes(_t, ((("TestMixedReadsAndWrites (1)" : GoString))), _buf, _s, ((1 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), _wlen) : Slice<GoUInt8>)));
                };
                var _rlen:GoInt = stdgo.math.rand.Rand.intn((_testString != null ? _testString.length : ((0 : GoInt))));
                var _fub:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_rlen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _:stdgo.Error = __tmp__._1;
                _s = ((_s.__slice__(_n) : GoString));
            });
        };
        _empty(_t, ((("TestMixedReadsAndWrites (2)" : GoString))), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... ((_buf.len() : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function testCapWithPreallocatedSlice(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<Buffer> = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _n:GoInt = _buf.cap_();
        if (_n != ((10 : GoInt))) {
            _t.errorf(((("expected 10, got %d" : GoString))), Go.toInterface(_n));
        };
    }
function testCapWithSliceAndWrittenData(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<Buffer> = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic()));
        _buf.write(((((("test" : GoString))) : Slice<GoByte>)));
        var _n:GoInt = _buf.cap_();
        if (_n != ((10 : GoInt))) {
            _t.errorf(((("expected 10, got %d" : GoString))), Go.toInterface(_n));
        };
    }
function testNil(_t:stdgo.testing.Testing.T_):Void {
        var _b:Buffer = ((null : Ref<Buffer>));
        if (((_b.toString() : GoString)) != ((("<nil>" : GoString)))) {
            _t.errorf(((("expected <nil>; got %q" : GoString))), Go.toInterface(((_b.toString() : GoString))));
        };
    }
function testReadFrom(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((("TestReadFrom (1)" : GoString))), _buf, ((("" : GoString))), ((5 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), (_testBytes != null ? _testBytes.length : ((0 : GoInt))) / _i) : Slice<GoUInt8>)));
                var _b:Buffer = new Buffer();
                _b.readFrom(_buf);
                _empty(_t, ((("TestReadFrom (2)" : GoString))), _b, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
    }
function testReadFromPanicReader(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:Buffer = new Buffer();
            var __tmp__ = _buf.readFrom(((new stdgo.bytes_test.Bytes_test.T_panicReader() : stdgo.bytes_test.Bytes_test.T_panicReader))), _i:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_i != ((0 : GoInt64))) {
                _t.fatalf(((("unexpected return from bytes.ReadFrom (1): got: %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(((0 : GoInt))));
            };
            _check(_t, ((("TestReadFromPanicReader (1)" : GoString))), _buf, ((("" : GoString))));
            var _buf2:Buffer = new Buffer();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    ({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    });
                    _check(_t, ((("TestReadFromPanicReader (2)" : GoString))), _buf2, ((("" : GoString))));
                };
                a();
            });
            _buf2.readFrom((({ _panic : true } : stdgo.bytes_test.Bytes_test.T_panicReader)));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testReadFromNegativeReader(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _b:Buffer = new Buffer();
            __deferstack__.unshift(() -> {
                var a = function():Void {
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
                        _t.fatal(Go.toInterface(((("bytes.Buffer.ReadFrom didn\'t panic" : GoString)))));
                    } else if (Go.assertable(((({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }) : Error)))) {
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
                        var _wantError:GoString = ((("bytes.Buffer: reader returned negative count from Read" : GoString)));
                        if (_err.error() != _wantError) {
                            _t.fatalf(((("recovered panic: got %v, want %v" : GoString))), Go.toInterface(_err.error()), Go.toInterface(_wantError));
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
                        _t.fatalf(((("unexpected panic value: %#v" : GoString))), Go.toInterface(_err));
                    };
                };
                a();
            });
            _b.readFrom(new stdgo.bytes_test.Bytes_test.T_negativeReader());
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testWriteTo(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Buffer = new Buffer();
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((("TestWriteTo (1)" : GoString))), _buf, ((("" : GoString))), ((5 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), (_testBytes != null ? _testBytes.length : ((0 : GoInt))) / _i) : Slice<GoUInt8>)));
                var _b:Buffer = new Buffer();
                _buf.writeTo(_b);
                _empty(_t, ((("TestWriteTo (2)" : GoString))), _b, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
    }
function testRuneIO(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _buf:Buffer = new Buffer();
        var _n:GoInt = ((0 : GoInt));
        {
            var _r:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_r < ((1000 : GoInt32)), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(((_b.__slice__(_n) : Slice<GoUInt8>)), _r);
                var __tmp__ = _buf.writeRune(_r), _nbytes:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((("WriteRune(%U) error: %s" : GoString))), Go.toInterface(_r), Go.toInterface(_err));
                };
                if (_nbytes != _size) {
                    _t.fatalf(((("WriteRune(%U) expected %d, got %d" : GoString))), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_nbytes));
                };
                _n = _n + (_size);
            });
        };
        _b = ((_b.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
        if (!equal(_buf.bytes(), _b)) {
            _t.fatalf(((("incorrect result from WriteRune: %q not %q" : GoString))), Go.toInterface(_buf.bytes()), Go.toInterface(_b));
        };
        var _p:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _r:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_r < ((1000 : GoInt32)), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_p, _r);
                var __tmp__ = _buf.readRune(), _nr:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_nr != _r) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(((("ReadRune(%U) got %U,%d not %U,%d (err=%s)" : GoString))), Go.toInterface(_r), Go.toInterface(_nr), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
        _buf.reset();
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface(((("UnreadRune at EOF: got no error" : GoString)))));
            };
        };
        {
            var __tmp__ = _buf.readRune(), _:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                _t.fatal(Go.toInterface(((("ReadRune at EOF: got no error" : GoString)))));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface(((("UnreadRune after ReadRune at EOF: got no error" : GoString)))));
            };
        };
        _buf.write(_b);
        {
            var _r:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_r < ((1000 : GoInt32)), _r++, {
                var __tmp__ = _buf.readRune(), _r1:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _:stdgo.Error = __tmp__._2;
                {
                    var _err:stdgo.Error = _buf.unreadRune();
                    if (_err != null) {
                        _t.fatalf(((("UnreadRune(%U) got error %q" : GoString))), Go.toInterface(_r), Go.toInterface(_err));
                    };
                };
                var __tmp__ = _buf.readRune(), _r2:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((((_r1 != _r2) || (_r1 != _r)) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(((("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)" : GoString))), Go.toInterface(_r), Go.toInterface(_r2), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
    }
function testWriteInvalidRune(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _r in ((new Slice<GoInt32>(((-1 : GoInt32)), ((1114112 : GoInt32))) : Slice<GoInt32>))) {
            var _buf:Buffer = new Buffer();
            _buf.writeRune(_r);
            _check(_t, stdgo.fmt.Fmt.sprintf(((("TestWriteInvalidRune (%d)" : GoString))), Go.toInterface(_r)), _buf, ((("\uFFFD" : GoString))));
        };
    }
function testNext(_t:stdgo.testing.Testing.T_):Void {
        var _b:Slice<GoUInt8> = ((new Slice<GoUInt8>(((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8))) : Slice<GoUInt8>));
        var _tmp:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((5 : GoInt)), _i++, {
                {
                    var _j:GoInt = _i;
                    Go.cfor(_j <= ((5 : GoInt)), _j++, {
                        {
                            var _k:GoInt = ((0 : GoInt));
                            Go.cfor(_k <= ((6 : GoInt)), _k++, {
                                var _buf:Ref<Buffer> = newBuffer(((_b.__slice__(((0 : GoInt)), _j) : Slice<GoUInt8>)));
                                var __tmp__ = _buf.read(((_tmp.__slice__(((0 : GoInt)), _i) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _:stdgo.Error = __tmp__._1;
                                if (_n != _i) {
                                    _t.fatalf(((("Read %d returned %d" : GoString))), Go.toInterface(_i), Go.toInterface(_n));
                                };
                                var _bb:Slice<GoUInt8> = _buf.next(_k);
                                var _want:GoInt = _k;
                                if (_want > (_j - _i)) {
                                    _want = _j - _i;
                                };
                                if ((_bb != null ? _bb.length : ((0 : GoInt))) != _want) {
                                    _t.fatalf(((("in %d,%d: len(Next(%d)) == %d" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface((_bb != null ? _bb.length : ((0 : GoInt)))));
                                };
                                for (_l => _v in _bb) {
                                    if (_v != (((_l + _i) : GoByte))) {
                                        _t.fatalf(((("in %d,%d: Next(%d)[%d] = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface(_l), Go.toInterface(_v), Go.toInterface(_l + _i));
                                    };
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testReadBytes(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _test in _readBytesTests) {
            var _buf:Ref<Buffer> = newBufferString(_test._buffer);
            var _err:Error = ((null : stdgo.Error));
            for (_ => _expected in _test._expected) {
                var _bytes:Slice<GoByte> = ((null : Slice<GoUInt8>));
                {
                    var __tmp__ = _buf.readBytes(_test._delim);
                    _bytes = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (((_bytes : GoString)) != _expected) {
                    _t.errorf(((("expected %q, got %q" : GoString))), Go.toInterface(_expected), Go.toInterface(_bytes));
                };
                if (_err != null) {
                    break;
                };
            };
            if (_err != _test._err) {
                _t.errorf(((("expected error %v, got %v" : GoString))), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function testReadString(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _test in _readBytesTests) {
            var _buf:Ref<Buffer> = newBufferString(_test._buffer);
            var _err:Error = ((null : stdgo.Error));
            for (_ => _expected in _test._expected) {
                var _s:GoString = (("" : GoString));
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_s != _expected) {
                    _t.errorf(((("expected %q, got %q" : GoString))), Go.toInterface(_expected), Go.toInterface(_s));
                };
                if (_err != null) {
                    break;
                };
            };
            if (_err != _test._err) {
                _t.errorf(((("expected error %v, got %v" : GoString))), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function benchmarkReadString(_b:stdgo.testing.Testing.B):Void {
        {};
        var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((32768 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_data != null) _data[((32767 : GoInt))] = ((((("x" : GoString))).code : GoRune));
        _b.setBytes(((((32768 : GoInt64)) : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _buf:Ref<Buffer> = newBuffer(_data);
                var __tmp__ = _buf.readString(((((("x" : GoString))).code : GoRune))), _:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(Go.toInterface(_err));
                };
            });
        };
    }
function testGrow(_t:stdgo.testing.Testing.T_):Void {
        var _x:Slice<GoUInt8> = ((new Slice<GoUInt8>(((((("x" : GoString))).code : GoRune))) : Slice<GoUInt8>));
        var _y:Slice<GoUInt8> = ((new Slice<GoUInt8>(((((("y" : GoString))).code : GoRune))) : Slice<GoUInt8>));
        var _tmp:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((72 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_ => _growLen in ((new Slice<GoInt>(((0 : GoInt)), ((100 : GoInt)), ((1000 : GoInt)), ((10000 : GoInt)), ((100000 : GoInt))) : Slice<GoInt>))) {
            for (_ => _startLen in ((new Slice<GoInt>(((0 : GoInt)), ((100 : GoInt)), ((1000 : GoInt)), ((10000 : GoInt)), ((100000 : GoInt))) : Slice<GoInt>))) {
                var _xBytes:Slice<GoUInt8> = repeat(_x, _startLen);
                var _buf:Ref<Buffer> = newBuffer(_xBytes);
                var __tmp__ = _buf.read(_tmp), _readBytes:GoInt = __tmp__._0, _:stdgo.Error = __tmp__._1;
                var _yBytes:Slice<GoUInt8> = repeat(_y, _growLen);
                var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), function():Void {
                    _buf.grow(_growLen);
                    _buf.write(_yBytes);
                });
                if (_allocs != ((0 : GoFloat64))) {
                    _t.errorf(((("allocation occurred during write" : GoString))));
                };
                if (!equal(((_buf.bytes().__slice__(((0 : GoInt)), _startLen - _readBytes) : Slice<GoUInt8>)), ((_xBytes.__slice__(_readBytes) : Slice<GoUInt8>)))) {
                    _t.errorf(((("bad initial data at %d %d" : GoString))), Go.toInterface(_startLen), Go.toInterface(_growLen));
                };
                if (!equal(((_buf.bytes().__slice__(_startLen - _readBytes, (_startLen - _readBytes) + _growLen) : Slice<GoUInt8>)), _yBytes)) {
                    _t.errorf(((("bad written data at %d %d" : GoString))), Go.toInterface(_startLen), Go.toInterface(_growLen));
                };
            };
        };
    }
function testGrowOverflow(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err != errTooLarge) {
                            _t.errorf(((("after too-large Grow, recover() = %v; want %v" : GoString))), Go.toInterface(_err), Go.toInterface(errTooLarge));
                        };
                    };
                };
                a();
            });
            var _buf:Ref<Buffer> = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            {};
            _buf.grow(((2147483647 : GoInt)));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testReadEmptyAtEOF(_t:stdgo.testing.Testing.T_):Void {
        var _b:Ref<Buffer> = new Buffer();
        var _slice:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _b.read(_slice), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("read error: %v" : GoString))), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(((("wrong count; got %d want 0" : GoString))), Go.toInterface(_n));
        };
    }
function testUnreadByte(_t:stdgo.testing.Testing.T_):Void {
        var _b:Ref<Buffer> = new Buffer();
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(((("UnreadByte at EOF: got no error" : GoString)))));
            };
        };
        {
            var __tmp__ = _b.readByte(), _:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(Go.toInterface(((("ReadByte at EOF: got no error" : GoString)))));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(((("UnreadByte after ReadByte at EOF: got no error" : GoString)))));
            };
        };
        _b.writeString(((("abcdefghijklmnopqrstuvwxyz" : GoString))));
        {
            var __tmp__ = _b.read(((null : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != null)) {
                _t.fatalf(((("Read(nil) = %d,%v; want 0,nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(((("UnreadByte after Read(nil): got no error" : GoString)))));
            };
        };
        {
            var __tmp__ = _b.readBytes(((((("m" : GoString))).code : GoRune))), _:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("ReadBytes: %v" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err != null) {
                _t.fatalf(((("UnreadByte: %v" : GoString))), Go.toInterface(_err));
            };
        };
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("ReadByte: %v" : GoString))), Go.toInterface(_err));
        };
        if (_c != ((((("m" : GoString))).code : GoRune))) {
            _t.errorf(((("ReadByte = %q; want %q" : GoString))), Go.toInterface(_c), Go.toInterface(((((("m" : GoString))).code : GoRune))));
        };
    }
function testBufferGrowth(_t:stdgo.testing.Testing.T_):Void {
        var _b:Buffer = new Buffer();
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.write(((_buf.__slice__(((0 : GoInt)), ((1 : GoInt))) : Slice<GoUInt8>)));
        var _cap0:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5120 : GoInt)), _i++, {
                _b.write(_buf);
                _b.read(_buf);
                if (_i == ((0 : GoInt))) {
                    _cap0 = _b.cap_();
                };
            });
        };
        var _cap1:GoInt = _b.cap_();
        if (_cap1 > (_cap0 * ((3 : GoInt)))) {
            _t.errorf(((("buffer cap = %d; too big (grew from %d)" : GoString))), Go.toInterface(_cap1), Go.toInterface(_cap0));
        };
    }
function benchmarkWriteByte(_b:stdgo.testing.Testing.B):Void {
        {};
        _b.setBytes(((4096 : GoInt64)));
        var _buf:Ref<Buffer> = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((4096 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((4096 : GoInt)), _i++, {
                        _buf.writeByte(((((("x" : GoString))).code : GoRune)));
                    });
                };
            });
        };
    }
function benchmarkWriteRune(_b:stdgo.testing.Testing.B):Void {
        {};
        {};
        _b.setBytes((((((4096 : GoInt)) * stdgo.unicode.utf8.Utf8.runeLen(((9786 : GoInt32)))) : GoInt64)));
        var _buf:Ref<Buffer> = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((16384 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((4096 : GoInt)), _i++, {
                        _buf.writeRune(((9786 : GoInt32)));
                    });
                };
            });
        };
    }
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.testing.Testing.B):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = new Buffer();
                _b.write(((_buf.__slice__(((0 : GoInt)), ((1 : GoInt))) : Slice<GoUInt8>)));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((5120 : GoInt)), _i++, {
                        _b.write(_buf);
                        _b.read(_buf);
                    });
                };
            });
        };
    }
function benchmarkBufferFullSmallReads(_b:stdgo.testing.Testing.B):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = new Buffer();
                _b.write(_buf);
                while ((_b.len() + ((20 : GoInt))) < _b.cap_()) {
                    _b.write(((_buf.__slice__(0, ((10 : GoInt))) : Slice<GoUInt8>)));
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((5120 : GoInt)), _i++, {
                        _b.read(((_buf.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)));
                        _b.write(((_buf.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)));
                    });
                };
            });
        };
    }
function _eq(_a:Slice<GoString>, _b:Slice<GoString>):Bool {
        if ((_a != null ? _a.length : ((0 : GoInt))) != (_b != null ? _b.length : ((0 : GoInt)))) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_a != null ? _a.length : ((0 : GoInt))), _i++, {
                if ((_a != null ? _a[_i] : (("" : GoString))) != (_b != null ? _b[_i] : (("" : GoString)))) {
                    return false;
                };
            });
        };
        return true;
    }
function _sliceOfString(_s:Slice<Slice<GoByte>>):Slice<GoString> {
        var _result:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _v in _s) {
            if (_result != null) _result[_i] = ((_v : GoString));
        };
        return _result;
    }
function testEqual(_t:stdgo.testing.Testing.T_):Void {
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((10 : GoInt)), function():Void {
            for (_ => _tt in _compareTests) {
                var _eql:Bool = equal(_tt._a, _tt._b);
                if (_eql != (_tt._i == ((0 : GoInt)))) {
                    _t.errorf("Equal(%q, %q) = %v", Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_eql));
                };
            };
        });
        if (_allocs > ((0 : GoFloat64))) {
            _t.errorf(((("Equal allocated %v times" : GoString))), Go.toInterface(_allocs));
        };
    }
function testEqualExhaustive(_t:stdgo.testing.Testing.T_):Void {
        var _size:GoInt = ((128 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _size = ((32 : GoInt));
        };
        var _a:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b_init:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _size, _i++, {
                if (_a != null) _a[_i] = (((((17 : GoInt)) * _i) : GoByte));
                if (_b_init != null) _b_init[_i] = ((((((23 : GoInt)) * _i) + ((100 : GoInt))) : GoByte));
            });
        };
        {
            var _len:GoInt = ((0 : GoInt));
            Go.cfor(_len <= _size, _len++, {
                {
                    var _x:GoInt = ((0 : GoInt));
                    Go.cfor(_x <= (_size - _len), _x++, {
                        {
                            var _y:GoInt = ((0 : GoInt));
                            Go.cfor(_y <= (_size - _len), _y++, {
                                Go.copySlice(_b, _b_init);
                                Go.copySlice(((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>)), ((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>)));
                                if (!equal(((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>)), ((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>))) || !equal(((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>)), ((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>)))) {
                                    _t.errorf(((("Equal(%d, %d, %d) = false" : GoString))), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testNotEqual(_t:stdgo.testing.Testing.T_):Void {
        var _size:GoInt = ((128 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _size = ((32 : GoInt));
        };
        var _a:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _len:GoInt = ((0 : GoInt));
            Go.cfor(_len <= _size, _len++, {
                {
                    var _x:GoInt = ((0 : GoInt));
                    Go.cfor(_x <= (_size - _len), _x++, {
                        {
                            var _y:GoInt = ((0 : GoInt));
                            Go.cfor(_y <= (_size - _len), _y++, {
                                {
                                    var _diffpos:GoInt = _x;
                                    Go.cfor(_diffpos < (_x + _len), _diffpos++, {
                                        if (_a != null) _a[_diffpos] = ((1 : GoUInt8));
                                        if (equal(((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>)), ((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>))) || equal(((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>)), ((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>)))) {
                                            _t.errorf(((("NotEqual(%d, %d, %d, %d) = true" : GoString))), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_diffpos));
                                        };
                                        if (_a != null) _a[_diffpos] = ((0 : GoUInt8));
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function _runIndexTests(_t:stdgo.testing.Testing.T_, _f:(_s:Slice<GoByte>, _sep:Slice<GoByte>) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_ => _test in _testCases) {
            var _a:Slice<GoUInt8> = ((_test._a : Slice<GoByte>));
            var _b:Slice<GoUInt8> = ((_test._b : Slice<GoByte>));
            var _actual:GoInt = _f(_a, _b);
            if (_actual != _test._i) {
                _t.errorf(((("%s(%q,%q) = %v; want %v" : GoString))), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
        var _allocTests:Slice<stdgo.bytes_test.Bytes_test.T__struct_1> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_1>(((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("000000000000000000000000000000000000000000000000000000000000000000000001" : GoString))) : Slice<GoByte>)), ((((("0000000000000000000000000000000000000000000000000000000000000000001" : GoString))) : Slice<GoByte>)), ((5 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1)), ((new stdgo.bytes_test.Bytes_test.T__struct_1(((((("000000000000000000000000000000000000000000000000000000000000000010000" : GoString))) : Slice<GoByte>)), ((((("00000000000000000000000000000000000000000000000000000000000001" : GoString))) : Slice<GoByte>)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_1))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_1>));
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), function():Void {
            {
                var _i:GoInt = index((_allocTests != null ? _allocTests[((1 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._a, (_allocTests != null ? _allocTests[((1 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._b);
                if (_i != (_allocTests != null ? _allocTests[((1 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._i) {
                    _t.errorf(((("Index([]byte(%q), []byte(%q)) = %v; want %v" : GoString))), Go.toInterface((_allocTests != null ? _allocTests[((1 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._a), Go.toInterface((_allocTests != null ? _allocTests[((1 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._b), Go.toInterface(_i), Go.toInterface((_allocTests != null ? _allocTests[((1 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._i));
                };
            };
            {
                var _i:GoInt = lastIndex((_allocTests != null ? _allocTests[((0 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._a, (_allocTests != null ? _allocTests[((0 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._b);
                if (_i != (_allocTests != null ? _allocTests[((0 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._i) {
                    _t.errorf(((("LastIndex([]byte(%q), []byte(%q)) = %v; want %v" : GoString))), Go.toInterface((_allocTests != null ? _allocTests[((0 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._a), Go.toInterface((_allocTests != null ? _allocTests[((0 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._b), Go.toInterface(_i), Go.toInterface((_allocTests != null ? _allocTests[((0 : GoInt))] : new stdgo.bytes_test.Bytes_test.T__struct_1())._i));
                };
            };
        });
        if (_allocs != ((0 : GoFloat64))) {
            _t.errorf(((("expected no allocations, got %f" : GoString))), Go.toInterface(_allocs));
        };
    }
function _runIndexAnyTests(_t:stdgo.testing.Testing.T_, _f:(_s:Slice<GoByte>, _chars:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_ => _test in _testCases) {
            var _a:Slice<GoUInt8> = ((_test._a : Slice<GoByte>));
            var _actual:GoInt = _f(_a, _test._b);
            if (_actual != _test._i) {
                _t.errorf(((("%s(%q,%q) = %v; want %v" : GoString))), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_test._b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
function testIndex(_t:stdgo.testing.Testing.T_):Void {
        _runIndexTests(_t, index, ((("Index" : GoString))), _indexTests);
    }
function testLastIndex(_t:stdgo.testing.Testing.T_):Void {
        _runIndexTests(_t, lastIndex, ((("LastIndex" : GoString))), _lastIndexTests);
    }
function testIndexAny(_t:stdgo.testing.Testing.T_):Void {
        _runIndexAnyTests(_t, indexAny, ((("IndexAny" : GoString))), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.testing.Testing.T_):Void {
        _runIndexAnyTests(_t, lastIndexAny, ((("LastIndexAny" : GoString))), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _indexTests) {
            if ((_tt._b != null ? _tt._b.length : ((0 : GoInt))) != ((1 : GoInt))) {
                continue;
            };
            var _a:Slice<GoUInt8> = ((_tt._a : Slice<GoByte>));
            var _b:GoUInt8 = (_tt._b != null ? _tt._b[((0 : GoInt))] : ((0 : GoUInt8)));
            var _pos:GoInt = indexByte(_a, _b);
            if (_pos != _tt._i) {
                _t.errorf("IndexByte(%q, \'%c\') = %v", Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_pos));
            };
            var _posp:GoInt = indexBytePortable(_a, _b);
            if (_posp != _tt._i) {
                _t.errorf("indexBytePortable(%q, \'%c\') = %v", Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_posp));
            };
        };
    }
function testLastIndexByte(_t:stdgo.testing.Testing.T_):Void {
        var _testCases:Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(((new stdgo.bytes_test.Bytes_test.BinOpTest(((("" : GoString))), ((("q" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abcdef" : GoString))), ((("q" : GoString))), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abcdefabcdef" : GoString))), ((("a" : GoString))), (((("abcdef" : GoString))) != null ? ((("abcdef" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((("abcdefabcdef" : GoString))), ((("f" : GoString))), (((("abcdefabcde" : GoString))) != null ? ((("abcdefabcde" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((("zabcdefabcdef" : GoString))), ((("z" : GoString))), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((("a☺b☻c☹d" : GoString))), ((("b" : GoString))), (((("a☺" : GoString))) != null ? ((("a☺" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
        for (_ => _test in _testCases) {
            var _actual:GoInt = lastIndexByte(((_test._a : Slice<GoByte>)), (_test._b != null ? _test._b[((0 : GoInt))] : ((0 : GoUInt8))));
            if (_actual != _test._i) {
                _t.errorf(((("LastIndexByte(%q,%c) = %v; want %v" : GoString))), Go.toInterface(_test._a), Go.toInterface((_test._b != null ? _test._b[((0 : GoInt))] : ((0 : GoUInt8)))), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
function testIndexByteBig(_t:stdgo.testing.Testing.T_):Void {
        var _n:GoInt = ((1024 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _n = ((128 : GoInt));
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _b1:Slice<GoUInt8> = ((_b.__slice__(_i) : Slice<GoUInt8>));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < (_b1 != null ? _b1.length : ((0 : GoInt))), _j++, {
                        if (_b1 != null) _b1[_j] = ((((("x" : GoString))).code : GoRune));
                        var _pos:GoInt = indexByte(_b1, ((((("x" : GoString))).code : GoRune)));
                        if (_pos != _j) {
                            _t.errorf(((("IndexByte(%q, \'x\') = %v" : GoString))), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        if (_b1 != null) _b1[_j] = ((0 : GoUInt8));
                        _pos = indexByte(_b1, ((((("x" : GoString))).code : GoRune)));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(((("IndexByte(%q, \'x\') = %v" : GoString))), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = ((_b.__slice__(0, _i) : Slice<GoUInt8>));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < (_b1 != null ? _b1.length : ((0 : GoInt))), _j++, {
                        if (_b1 != null) _b1[_j] = ((((("x" : GoString))).code : GoRune));
                        var _pos:GoInt = indexByte(_b1, ((((("x" : GoString))).code : GoRune)));
                        if (_pos != _j) {
                            _t.errorf(((("IndexByte(%q, \'x\') = %v" : GoString))), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        if (_b1 != null) _b1[_j] = ((0 : GoUInt8));
                        _pos = indexByte(_b1, ((((("x" : GoString))).code : GoRune)));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(((("IndexByte(%q, \'x\') = %v" : GoString))), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = ((_b.__slice__(_i / ((2 : GoInt)), _n - ((_i + ((1 : GoInt))) / ((2 : GoInt)))) : Slice<GoUInt8>));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < (_b1 != null ? _b1.length : ((0 : GoInt))), _j++, {
                        if (_b1 != null) _b1[_j] = ((((("x" : GoString))).code : GoRune));
                        var _pos:GoInt = indexByte(_b1, ((((("x" : GoString))).code : GoRune)));
                        if (_pos != _j) {
                            _t.errorf(((("IndexByte(%q, \'x\') = %v" : GoString))), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        if (_b1 != null) _b1[_j] = ((0 : GoUInt8));
                        _pos = indexByte(_b1, ((((("x" : GoString))).code : GoRune)));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(((("IndexByte(%q, \'x\') = %v" : GoString))), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
            });
        };
    }
function testIndexByteSmall(_t:stdgo.testing.Testing.T_):Void {
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((5015 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((_b != null ? _b.length : ((0 : GoInt))) - ((15 : GoInt))), _i++, {
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((15 : GoInt)), _j++, {
                        if (_b != null) _b[_i + _j] = (((((100 : GoInt)) + _j) : GoByte));
                    });
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((15 : GoInt)), _j++, {
                        var _p:GoInt = indexByte(((_b.__slice__(_i, _i + ((15 : GoInt))) : Slice<GoUInt8>)), (((((100 : GoInt)) + _j) : GoByte)));
                        if (_p != _j) {
                            _t.errorf(((("IndexByte(%q, %d) = %d" : GoString))), Go.toInterface(((_b.__slice__(_i, _i + ((15 : GoInt))) : Slice<GoUInt8>))), Go.toInterface(((100 : GoInt)) + _j), Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((15 : GoInt)), _j++, {
                        if (_b != null) _b[_i + _j] = ((0 : GoUInt8));
                    });
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((_b != null ? _b.length : ((0 : GoInt))) - ((15 : GoInt))), _i++, {
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((15 : GoInt)), _j++, {
                        if (_b != null) _b[_i + _j] = ((1 : GoUInt8));
                    });
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((15 : GoInt)), _j++, {
                        var _p:GoInt = indexByte(((_b.__slice__(_i, _i + ((15 : GoInt))) : Slice<GoUInt8>)), ((((0 : GoUInt8)) : GoByte)));
                        if (_p != ((-1 : GoInt))) {
                            _t.errorf(((("IndexByte(%q, %d) = %d" : GoString))), Go.toInterface(((_b.__slice__(_i, _i + ((15 : GoInt))) : Slice<GoUInt8>))), Go.toInterface(((0 : GoInt))), Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((15 : GoInt)), _j++, {
                        if (_b != null) _b[_i + _j] = ((0 : GoUInt8));
                    });
                };
            });
        };
    }
function testIndexRune(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.bytes_test.Bytes_test.T__struct_2> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_2>(
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("" : GoString))), ((((("a" : GoString))).code : GoRune)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("" : GoString))), ((((("☺" : GoString))).code : GoRune)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("foo" : GoString))), ((((("☹" : GoString))).code : GoRune)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("foo" : GoString))), ((((("o" : GoString))).code : GoRune)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("foo☺bar" : GoString))), ((((("☺" : GoString))).code : GoRune)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("foo☺☻☹bar" : GoString))), ((((("☹" : GoString))).code : GoRune)), ((9 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("a A x" : GoString))), ((((("A" : GoString))).code : GoRune)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("some_text=some_value" : GoString))), ((((("=" : GoString))).code : GoRune)), ((9 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("☺a" : GoString))), ((((("a" : GoString))).code : GoRune)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("a☻☺b" : GoString))), ((((("☺" : GoString))).code : GoRune)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("�" : GoString))), ((((("�" : GoString))).code : GoRune)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2((((haxe.io.Bytes.ofHex("ff") : GoString))), ((((("�" : GoString))).code : GoRune)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("☻x�" : GoString))), ((((("�" : GoString))).code : GoRune)), (((("☻x" : GoString))) != null ? ((("☻x" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString))), ((((("�" : GoString))).code : GoRune)), (((("☻x" : GoString))) != null ? ((("☻x" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString))), ((((("�" : GoString))).code : GoRune)), (((("☻x" : GoString))) != null ? ((("☻x" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("x" : GoString))), ((((("�" : GoString))).code : GoRune)), (((("☻x" : GoString))) != null ? ((("☻x" : GoString))).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((-1 : GoInt32)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((55296 : GoInt32)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2)),
((new stdgo.bytes_test.Bytes_test.T__struct_2(((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))), ((1114112 : GoInt32)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.T__struct_2))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_2>));
        for (_ => _tt in _tests) {
            {
                var _got:GoInt = indexRune(((_tt._in : Slice<GoByte>)), _tt._rune);
                if (_got != _tt._want) {
                    _t.errorf(((("IndexRune(%q, %d) = %v; want %v" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack:Slice<GoUInt8> = ((((("test世界" : GoString))) : Slice<GoByte>));
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((1000 : GoInt)), function():Void {
            {
                var _i:GoInt = indexRune(_haystack, ((((("s" : GoString))).code : GoRune)));
                if (_i != ((2 : GoInt))) {
                    _t.fatalf(((("\'s\' at %d; want 2" : GoString))), Go.toInterface(_i));
                };
            };
            {
                var _i:GoInt = indexRune(_haystack, ((((("世" : GoString))).code : GoRune)));
                if (_i != ((4 : GoInt))) {
                    _t.fatalf(((("\'世\' at %d; want 4" : GoString))), Go.toInterface(_i));
                };
            };
        });
        if (_allocs != ((0 : GoFloat64))) {
            _t.errorf(((("expected no allocations, got %f" : GoString))), Go.toInterface(_allocs));
        };
    }
function testCountByte(_t:stdgo.testing.Testing.T_):Void {
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((5015 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _windows:Slice<GoInt> = ((new Slice<GoInt>(
((1 : GoInt)),
((2 : GoInt)),
((3 : GoInt)),
((4 : GoInt)),
((15 : GoInt)),
((16 : GoInt)),
((17 : GoInt)),
((31 : GoInt)),
((32 : GoInt)),
((33 : GoInt)),
((63 : GoInt)),
((64 : GoInt)),
((65 : GoInt)),
((128 : GoInt))) : Slice<GoInt>));
        var _testCountWindow:(GoInt, GoInt) -> Void = function(_i:GoInt, _window:GoInt):Void {
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j < _window, _j++, {
                    if (_b != null) _b[_i + _j] = ((((100 : GoUInt8)) : GoByte));
                    var _p:GoInt = count(((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>)), ((new Slice<GoUInt8>(((100 : GoUInt8))) : Slice<GoUInt8>)));
                    if (_p != (_j + ((1 : GoInt)))) {
                        _t.errorf(((("TestCountByte.Count(%q, 100) = %d" : GoString))), Go.toInterface(((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>))), Go.toInterface(_p));
                    };
                });
            };
        };
        var _maxWnd:GoInt = (_windows != null ? _windows[(_windows != null ? _windows.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (((2 : GoInt)) * _maxWnd), _i++, {
                for (_ => _window in _windows) {
                    if (_window > (((_b.__slice__(_i) : Slice<GoUInt8>)) != null ? ((_b.__slice__(_i) : Slice<GoUInt8>)).length : ((0 : GoInt)))) {
                        _window = (((_b.__slice__(_i) : Slice<GoUInt8>)) != null ? ((_b.__slice__(_i) : Slice<GoUInt8>)).length : ((0 : GoInt)));
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < _window, _j++, {
                            if (_b != null) _b[_i + _j] = ((((0 : GoUInt8)) : GoByte));
                        });
                    };
                };
            });
        };
        {
            var _i:GoInt = ((4096 : GoInt)) - (_maxWnd + ((1 : GoInt)));
            Go.cfor(_i < (_b != null ? _b.length : ((0 : GoInt))), _i++, {
                for (_ => _window in _windows) {
                    if (_window > (((_b.__slice__(_i) : Slice<GoUInt8>)) != null ? ((_b.__slice__(_i) : Slice<GoUInt8>)).length : ((0 : GoInt)))) {
                        _window = (((_b.__slice__(_i) : Slice<GoUInt8>)) != null ? ((_b.__slice__(_i) : Slice<GoUInt8>)).length : ((0 : GoInt)));
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < _window, _j++, {
                            if (_b != null) _b[_i + _j] = ((((0 : GoUInt8)) : GoByte));
                        });
                    };
                };
            });
        };
    }
function testCountByteNoMatch(_t:stdgo.testing.Testing.T_):Void {
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((5015 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _windows:Slice<GoInt> = ((new Slice<GoInt>(
((1 : GoInt)),
((2 : GoInt)),
((3 : GoInt)),
((4 : GoInt)),
((15 : GoInt)),
((16 : GoInt)),
((17 : GoInt)),
((31 : GoInt)),
((32 : GoInt)),
((33 : GoInt)),
((63 : GoInt)),
((64 : GoInt)),
((65 : GoInt)),
((128 : GoInt))) : Slice<GoInt>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (_b != null ? _b.length : ((0 : GoInt))), _i++, {
                for (_ => _window in _windows) {
                    if (_window > (((_b.__slice__(_i) : Slice<GoUInt8>)) != null ? ((_b.__slice__(_i) : Slice<GoUInt8>)).length : ((0 : GoInt)))) {
                        _window = (((_b.__slice__(_i) : Slice<GoUInt8>)) != null ? ((_b.__slice__(_i) : Slice<GoUInt8>)).length : ((0 : GoInt)));
                    };
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < _window, _j++, {
                            if (_b != null) _b[_i + _j] = ((((100 : GoUInt8)) : GoByte));
                        });
                    };
                    var _p:GoInt = count(((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>)), ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
                    if (_p != ((0 : GoInt))) {
                        _t.errorf(((("TestCountByteNoMatch(%q, 0) = %d" : GoString))), Go.toInterface(((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>))), Go.toInterface(_p));
                    };
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < _window, _j++, {
                            if (_b != null) _b[_i + _j] = ((((0 : GoUInt8)) : GoByte));
                        });
                    };
                };
            });
        };
    }
function _valName(_x:GoInt):GoString {
        {
            var _s:GoInt = _x >> ((20 : GoUnTypedInt));
            if ((_s << ((20 : GoUnTypedInt))) == _x) {
                return stdgo.fmt.Fmt.sprintf(((("%dM" : GoString))), Go.toInterface(_s));
            };
        };
        {
            var _s:GoInt = _x >> ((10 : GoUnTypedInt));
            if ((_s << ((10 : GoUnTypedInt))) == _x) {
                return stdgo.fmt.Fmt.sprintf(((("%dK" : GoString))), Go.toInterface(_s));
            };
        };
        return stdgo.fmt.Fmt.sprint(_x);
    }
function _benchBytes(_b:stdgo.testing.Testing.B, _sizes:Slice<GoInt>, _f:(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void):Void {
        for (_ => _n in _sizes) {
            if (_isRaceBuilder && (_n > ((4096 : GoInt)))) {
                continue;
            };
            _b.run(_valName(_n), function(_b:stdgo.testing.Testing.B):Void {
                if ((_bmbuf != null ? _bmbuf.length : ((0 : GoInt))) < _n) {
                    _bmbuf = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
                };
                _b.setBytes(((_n : GoInt64)));
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
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, ((((("x" : GoString))).code : GoRune)));
                    if (_j != (_n - ((1 : GoInt)))) {
                        _b.fatal(Go.toInterface(((("bad index" : GoString)))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
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
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, ((((("x" : GoString))).code : GoRune)));
                    if (_j != (_n - ((1 : GoInt)))) {
                        _b.fatal(Go.toInterface(((("bad index" : GoString)))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
        };
    }
function _bmIndexRune(_index:(Slice<GoByte>, GoRune) -> GoInt):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            stdgo.unicode.utf8.Utf8.encodeRune(((_buf.__slice__(_n - ((3 : GoInt))) : Slice<GoUInt8>)), ((((("世" : GoString))).code : GoRune)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, ((((("世" : GoString))).code : GoRune)));
                    if (_j != (_n - ((3 : GoInt)))) {
                        _b.fatal(Go.toInterface(((("bad index" : GoString)))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((3 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
            if (_buf != null) _buf[_n - ((2 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
        };
    }
function benchmarkEqual(_b:stdgo.testing.Testing.B):Void {
        _b.run(((("0" : GoString))), function(_b:stdgo.testing.Testing.B):Void {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
            var _buf1:Slice<GoUInt8> = ((_buf.__slice__(((0 : GoInt)), ((0 : GoInt))) : Slice<GoUInt8>));
            var _buf2:Slice<GoUInt8> = ((_buf.__slice__(((1 : GoInt)), ((1 : GoInt))) : Slice<GoUInt8>));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface(((("bad equal" : GoString)))));
                    };
                });
            };
        });
        var _sizes:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((6 : GoInt)), ((9 : GoInt)), ((15 : GoInt)), ((16 : GoInt)), ((20 : GoInt)), ((32 : GoInt)), ((4096 : GoInt)), ((4194304 : GoInt)), ((67108864 : GoInt))) : Slice<GoInt>));
        _benchBytes(_b, _sizes, _bmEqual(equal));
    }
function _bmEqual(_equal:(Slice<GoByte>, Slice<GoByte>) -> Bool):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            if ((_bmbuf != null ? _bmbuf.length : ((0 : GoInt))) < (((2 : GoInt)) * _n)) {
                _bmbuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((2 : GoInt)) * _n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            };
            var _buf1:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            var _buf2:Slice<GoUInt8> = ((_bmbuf.__slice__(_n, ((2 : GoInt)) * _n) : Slice<GoUInt8>));
            if (_buf1 != null) _buf1[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            if (_buf2 != null) _buf2[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = _equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface(((("bad equal" : GoString)))));
                    };
                });
            };
            if (_buf1 != null) _buf1[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
            if (_buf2 != null) _buf2[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
        };
    }
function benchmarkIndex(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != (_n - ((7 : GoInt)))) {
                        _b.fatal(Go.toInterface(((("bad index" : GoString)))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
        });
    }
function benchmarkIndexEasy(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != (_n - ((7 : GoInt)))) {
                        _b.fatal(Go.toInterface(((("bad index" : GoString)))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
        });
    }
function benchmarkCount(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != ((1 : GoInt))) {
                        _b.fatal(Go.toInterface(((("bad count" : GoString)))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
        });
    }
function benchmarkCountEasy(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = ((((("x" : GoString))).code : GoRune));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != ((1 : GoInt))) {
                        _b.fatal(Go.toInterface(((("bad count" : GoString)))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = (((((haxe.io.Bytes.ofHex("00") : GoString))).code : GoRune));
        });
    }
function benchmarkCountSingle(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf:Slice<GoUInt8> = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            var _step:GoInt = ((8 : GoInt));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_buf != null ? _buf.length : ((0 : GoInt))), _i = _i + (_step), {
                    if (_buf != null) _buf[_i] = ((1 : GoUInt8));
                });
            };
            var _expect:GoInt = ((_buf != null ? _buf.length : ((0 : GoInt))) + (_step - ((1 : GoInt)))) / _step;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, ((new Slice<GoUInt8>(((1 : GoUInt8))) : Slice<GoUInt8>)));
                    if (_j != _expect) {
                        _b.fatal(Go.toInterface(((("bad count" : GoString)))), Go.toInterface(_j), Go.toInterface(_expect));
                    };
                });
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_buf != null ? _buf.length : ((0 : GoInt))), _i++, {
                    if (_buf != null) _buf[_i] = ((0 : GoUInt8));
                });
            };
        });
    }
function testSplit(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _splittests) {
            var _a:Slice<Slice<GoUInt8>> = splitN(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)), _tt._n);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_ => _v in _a) {
                _x = (_v != null ? _v.__append__(((((("z" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("z" : GoString))).code : GoRune))));
            };
            var _result:Slice<GoString> = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf("Split(%q, %q, %d) = %v; want %v", Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_result), Go.toInterface(_tt._a));
                continue;
            };
            if ((_tt._n == ((0 : GoInt))) || ((_a != null ? _a.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                continue;
            };
            {
                var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((("z" : GoString)));
                if (((_x : GoString)) != _want) {
                    _t.errorf(((("last appended result was %s; want %s" : GoString))), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s:Slice<GoUInt8> = join(_a, ((_tt._sep : Slice<GoByte>)));
            if (((_s : GoString)) != _tt._s) {
                _t.errorf("Join(Split(%q, %q, %d), %q) = %q", Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < ((0 : GoInt))) {
                var _b:Slice<Slice<GoUInt8>> = split(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(((("Split disagrees withSplitN(%q, %q, %d) = %v; want %v" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
            if ((_a != null ? _a.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _in:Slice<GoUInt8> = (_a != null ? _a[((0 : GoInt))] : ((null : Slice<GoUInt8>))), _out:Slice<GoUInt8> = _s;
                if (((_in != null ? _in.cap() : ((0 : GoInt))) == (_out != null ? _out.cap() : ((0 : GoInt)))) && (Go.pointer((((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))) == Go.pointer((((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))))) {
                    _t.errorf(((("Join(%#v, %q) didn\'t copy" : GoString))), Go.toInterface(_a), Go.toInterface(_tt._sep));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _splitaftertests) {
            var _a:Slice<Slice<GoUInt8>> = splitAfterN(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)), _tt._n);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_ => _v in _a) {
                _x = (_v != null ? _v.__append__(((((("z" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("z" : GoString))).code : GoRune))));
            };
            var _result:Slice<GoString> = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf("Split(%q, %q, %d) = %v; want %v", Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_result), Go.toInterface(_tt._a));
                continue;
            };
            {
                var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((("z" : GoString)));
                if (((_x : GoString)) != _want) {
                    _t.errorf(((("last appended result was %s; want %s" : GoString))), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s:Slice<GoUInt8> = join(_a, ((null : Slice<GoUInt8>)));
            if (((_s : GoString)) != _tt._s) {
                _t.errorf("Join(Split(%q, %q, %d), %q) = %q", Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < ((0 : GoInt))) {
                var _b:Slice<Slice<GoUInt8>> = splitAfter(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(((("SplitAfter disagrees withSplitAfterN(%q, %q, %d) = %v; want %v" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _fieldstests) {
            var _b:Slice<GoUInt8> = ((_tt._s : Slice<GoByte>));
            var _a:Slice<Slice<GoUInt8>> = fields(_b);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_ => _v in _a) {
                _x = (_v != null ? _v.__append__(((((("z" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("z" : GoString))).code : GoRune))));
            };
            var _result:Slice<GoString> = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(((("Fields(%q) = %v; want %v" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            if (((_b : GoString)) != _tt._s) {
                _t.errorf(((("slice changed to %s; want %s" : GoString))), Go.toInterface(((_b : GoString))), Go.toInterface(_tt._s));
            };
            if ((_tt._a != null ? _tt._a.length : ((0 : GoInt))) > ((0 : GoInt))) {
                {
                    var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((("z" : GoString)));
                    if (((_x : GoString)) != _want) {
                        _t.errorf(((("last appended result was %s; want %s" : GoString))), Go.toInterface(_x), Go.toInterface(_want));
                    };
                };
            };
        };
    }
function testFieldsFunc(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _fieldstests) {
            var _a:Slice<Slice<GoUInt8>> = fieldsFunc(((_tt._s : Slice<GoByte>)), stdgo.unicode.Unicode.isSpace);
            var _result:Slice<GoString> = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(((("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return _c == ((((("X" : GoString))).code : GoRune));
        };
        var _fieldsFuncTests:Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = ((new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(((new stdgo.bytes_test.Bytes_test.FieldsTest(((("" : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)), ((new stdgo.bytes_test.Bytes_test.FieldsTest(((("XX" : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)), ((new stdgo.bytes_test.Bytes_test.FieldsTest(((("XXhiXXX" : GoString))), ((new Slice<GoString>(((("hi" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)), ((new stdgo.bytes_test.Bytes_test.FieldsTest(((("aXXbXXXcX" : GoString))), ((new Slice<GoString>(((("a" : GoString))), ((("b" : GoString))), ((("c" : GoString)))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest))) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>));
        for (_ => _tt in _fieldsFuncTests) {
            var _b:Slice<GoUInt8> = ((_tt._s : Slice<GoByte>));
            var _a:Slice<Slice<GoUInt8>> = fieldsFunc(_b, _pred);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_ => _v in _a) {
                _x = (_v != null ? _v.__append__(((((("z" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("z" : GoString))).code : GoRune))));
            };
            var _result:Slice<GoString> = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(((("FieldsFunc(%q) = %v, want %v" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
            };
            if (((_b : GoString)) != _tt._s) {
                _t.errorf(((("slice changed to %s; want %s" : GoString))), Go.toInterface(_b), Go.toInterface(_tt._s));
            };
            if ((_tt._a != null ? _tt._a.length : ((0 : GoInt))) > ((0 : GoInt))) {
                {
                    var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((("z" : GoString)));
                    if (((_x : GoString)) != _want) {
                        _t.errorf(((("last appended result was %s; want %s" : GoString))), Go.toInterface(_x), Go.toInterface(_want));
                    };
                };
            };
        };
    }
function _runStringTests(_t:stdgo.testing.Testing.T_, _f:Slice<GoByte> -> Slice<GoByte>, _funcName:GoString, _testCases:Slice<StringTest>):Void {
        for (_ => _tc in _testCases) {
            var _actual:Slice<GoUInt8> = _f(((_tc._in : Slice<GoByte>)));
            if ((_actual == null) && (_tc._out != null)) {
                _t.errorf(((("%s(%q) = nil; want %q" : GoString))), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_tc._out));
            };
            if ((_actual != null) && (_tc._out == null)) {
                _t.errorf(((("%s(%q) = %q; want nil" : GoString))), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual));
            };
            if (!equal(_actual, _tc._out)) {
                _t.errorf(((("%s(%q) = %q; want %q" : GoString))), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_r:GoRune):GoString {
        var _runes:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        for (_i => _ in _runes) {
            if (_runes != null) _runes[_i] = _r;
        };
        return ((_runes : GoString));
    }
function _rot13(_r:GoRune):GoRune {
        {};
        if ((_r >= ((((("a" : GoString))).code : GoRune))) && (_r <= ((((("z" : GoString))).code : GoRune)))) {
            return (((_r - ((((("a" : GoString))).code : GoRune))) + ((13 : GoInt32))) % ((26 : GoInt32))) + ((((("a" : GoString))).code : GoRune));
        };
        if ((_r >= ((((("A" : GoString))).code : GoRune))) && (_r <= ((((("Z" : GoString))).code : GoRune)))) {
            return (((_r - ((((("A" : GoString))).code : GoRune))) + ((13 : GoInt32))) % ((26 : GoInt32))) + ((((("A" : GoString))).code : GoRune));
        };
        return _r;
    }
function testMap(_t:stdgo.testing.Testing.T_):Void {
        var _a:GoString = _tenRunes(((((("a" : GoString))).code : GoRune)));
        var _maxRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return ((1114111 : GoInt32));
        };
        var _m:Slice<GoUInt8> = map(_maxRune, ((_a : Slice<GoByte>)));
        var _expect:GoString = _tenRunes(((1114111 : GoInt32)));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((("growing: expected %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _minRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return ((((("a" : GoString))).code : GoRune));
        };
        _m = map(_minRune, ((_tenRunes(((1114111 : GoInt32))) : Slice<GoByte>)));
        _expect = _a;
        if (((_m : GoString)) != _expect) {
            _t.errorf(((("shrinking: expected %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, ((((("a to zed" : GoString))) : Slice<GoByte>)));
        _expect = ((("n gb mrq" : GoString)));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((("rot13: expected %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, ((((("a to zed" : GoString))) : Slice<GoByte>))));
        _expect = ((("a to zed" : GoString)));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((("rot13: expected %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _dropNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return ((-1 : GoInt32));
        };
        _m = map(_dropNotLatin, ((((("Hello, 세계" : GoString))) : Slice<GoByte>)));
        _expect = ((("Hello" : GoString)));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((("drop: expected %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _invalidRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return ((1114112 : GoInt32));
        };
        _m = map(_invalidRune, ((((("x" : GoString))) : Slice<GoByte>)));
        _expect = ((("\uFFFD" : GoString)));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((("invalidRune: expected %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.testing.Testing.T_):Void {
        _runStringTests(_t, toUpper, ((("ToUpper" : GoString))), _upperTests);
    }
function testToLower(_t:stdgo.testing.Testing.T_):Void {
        _runStringTests(_t, toLower, ((("ToLower" : GoString))), _lowerTests);
    }
function benchmarkToUpper(_b:stdgo.testing.Testing.B):Void {
        for (_ => _tc in _upperTests) {
            var _tin:Slice<GoUInt8> = ((_tc._in : Slice<GoByte>));
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual:Slice<GoUInt8> = toUpper(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(((("ToUpper(%q) = %q; want %q" : GoString))), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.testing.Testing.B):Void {
        for (_ => _tc in _lowerTests) {
            var _tin:Slice<GoUInt8> = ((_tc._in : Slice<GoByte>));
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual:Slice<GoUInt8> = toLower(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(((("ToLower(%q) = %q; want %q" : GoString))), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function testToValidUTF8(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tc in _toValidUTF8Tests) {
            var _got:Slice<GoUInt8> = toValidUTF8(((_tc._in : Slice<GoByte>)), ((_tc._repl : Slice<GoByte>)));
            if (!equal(_got, ((_tc._out : Slice<GoByte>)))) {
                _t.errorf(((("ToValidUTF8(%q, %q) = %q; want %q" : GoString))), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got), Go.toInterface(_tc._out));
            };
        };
    }
function testTrimSpace(_t:stdgo.testing.Testing.T_):Void {
        _runStringTests(_t, trimSpace, ((("TrimSpace" : GoString))), _trimSpaceTests);
    }
function testRepeat(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in repeatTests) {
            var _tin:Slice<GoUInt8> = ((_tt._in : Slice<GoByte>));
            var _tout:Slice<GoUInt8> = ((_tt._out : Slice<GoByte>));
            var _a:Slice<GoUInt8> = repeat(_tin, _tt._count);
            if (!equal(_a, _tout)) {
                _t.errorf(((("Repeat(%q, %d) = %q; want %q" : GoString))), Go.toInterface(_tin), Go.toInterface(_tt._count), Go.toInterface(_a), Go.toInterface(_tout));
                continue;
            };
        };
    }
function _repeat(_b:Slice<GoByte>, _count:GoInt):Error {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _err:Error = ((null : stdgo.Error));
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_r != null) {
                            if (Go.assertable(((_r : Error)))) {
                                var _v:stdgo.Error = _r == null ? null : _r.__underlying__() == null ? null : _r == null ? null : _r.__underlying__().value;
                                _err = _v;
                            } else {
                                var _v:AnyInterface = _r == null ? null : _r.__underlying__();
                                _err = stdgo.fmt.Fmt.errorf(((("%s" : GoString))), Go.toInterface(_v));
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
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return _err;
            };
        };
    }
function testRepeatCatchesOverflow(_t:stdgo.testing.Testing.T_):Void {
        var _tests:GoArray<stdgo.bytes_test.Bytes_test.T__struct_4> = {
            var s:GoArray<stdgo.bytes_test.Bytes_test.T__struct_4> = new GoArray<stdgo.bytes_test.Bytes_test.T__struct_4>(...[for (i in 0 ... 7) new stdgo.bytes_test.Bytes_test.T__struct_4()]);
            s[0] = ((new stdgo.bytes_test.Bytes_test.T__struct_4(((("--" : GoString))), ((-2147483647 : GoInt)), ((("negative" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_4));
            s[1] = ((new stdgo.bytes_test.Bytes_test.T__struct_4(((("" : GoString))), ((((2147483647 : GoUInt)) : GoInt)), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_4));
            s[2] = ((new stdgo.bytes_test.Bytes_test.T__struct_4(((("-" : GoString))), ((10 : GoInt)), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_4));
            s[3] = ((new stdgo.bytes_test.Bytes_test.T__struct_4(((("gopher" : GoString))), ((0 : GoInt)), ((("" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_4));
            s[4] = ((new stdgo.bytes_test.Bytes_test.T__struct_4(((("-" : GoString))), ((-1 : GoInt)), ((("negative" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_4));
            s[5] = ((new stdgo.bytes_test.Bytes_test.T__struct_4(((("--" : GoString))), ((-102 : GoInt)), ((("negative" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_4));
            s[6] = ((new stdgo.bytes_test.Bytes_test.T__struct_4(((new Slice<GoUInt8>(...[for (i in 0 ... ((((255 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]) : GoString)), ((((16843010 : GoUInt)) : GoInt)), ((("overflow" : GoString)))) : stdgo.bytes_test.Bytes_test.T__struct_4));
            s;
        };
        for (_i => _tt in _tests) {
            var _err:stdgo.Error = _repeat(((_tt._s : Slice<GoByte>)), _tt._count);
            if (_tt._errStr == ((("" : GoString)))) {
                if (_err != null) {
                    _t.errorf(((("#%d panicked %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), _tt._errStr)) {
                _t.errorf(((("#%d expected %q got %q" : GoString))), Go.toInterface(_i), Go.toInterface(_tt._errStr), Go.toInterface(_err));
            };
        };
    }
function _runesEqual(_a:Slice<GoRune>, _b:Slice<GoRune>):Bool {
        if ((_a != null ? _a.length : ((0 : GoInt))) != (_b != null ? _b.length : ((0 : GoInt)))) {
            return false;
        };
        for (_i => _r in _a) {
            if (_r != (_b != null ? _b[_i] : ((0 : GoInt32)))) {
                return false;
            };
        };
        return true;
    }
function testRunes(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in runesTests) {
            var _tin:Slice<GoUInt8> = ((_tt._in : Slice<GoByte>));
            var _a:Slice<GoInt32> = runes(_tin);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(((("Runes(%q) = %v; want %v" : GoString))), Go.toInterface(_tin), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:GoString = ((_a : GoString));
                if (_s != _tt._in) {
                    _t.errorf(((("string(Runes(%q)) = %x; want %x" : GoString))), Go.toInterface(_tin), Go.toInterface(_s), Go.toInterface(_tin));
                };
            };
        };
    }
function testTrim(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tc in _trimTests) {
            var _name:GoString = _tc._f;
            var _f:(Slice<GoByte>, GoString) -> Slice<GoByte> = null;
            var _fb:(Slice<GoByte>, Slice<GoByte>) -> Slice<GoByte> = null;
            if (_name == ((("Trim" : GoString)))) {
                _f = trim;
            } else if (_name == ((("TrimLeft" : GoString)))) {
                _f = trimLeft;
            } else if (_name == ((("TrimRight" : GoString)))) {
                _f = trimRight;
            } else if (_name == ((("TrimPrefix" : GoString)))) {
                _fb = trimPrefix;
            } else if (_name == ((("TrimSuffix" : GoString)))) {
                _fb = trimSuffix;
            } else {
                _t.errorf(((("Undefined trim function %s" : GoString))), Go.toInterface(_name));
            };
            var _actual:GoString = (("" : GoString));
            if (_f != null) {
                _actual = ((_f(((_tc._in : Slice<GoByte>)), _tc._arg) : GoString));
            } else {
                _actual = ((_fb(((_tc._in : Slice<GoByte>)), ((_tc._arg : Slice<GoByte>))) : GoString));
            };
            if (_actual != _tc._out) {
                _t.errorf(((("%s(%q, %q) = %q; want %q" : GoString))), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
function _not(_p:T_predicate):T_predicate {
        return ((new stdgo.bytes_test.Bytes_test.T_predicate(function(_r:GoRune):Bool {
            return !_p._f(_r);
        }, ((("not " : GoString))) + _p._name) : stdgo.bytes_test.Bytes_test.T_predicate));
    }
function testTrimFunc(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tc in _trimFuncTests) {
            var _trimmers:Slice<stdgo.bytes_test.Bytes_test.T__struct_5> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_5>(((new stdgo.bytes_test.Bytes_test.T__struct_5(((("TrimFunc" : GoString))), trimFunc, _tc._trimOut) : stdgo.bytes_test.Bytes_test.T__struct_5)), ((new stdgo.bytes_test.Bytes_test.T__struct_5(((("TrimLeftFunc" : GoString))), trimLeftFunc, _tc._leftOut) : stdgo.bytes_test.Bytes_test.T__struct_5)), ((new stdgo.bytes_test.Bytes_test.T__struct_5(((("TrimRightFunc" : GoString))), trimRightFunc, _tc._rightOut) : stdgo.bytes_test.Bytes_test.T__struct_5))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_5>));
            for (_ => _trimmer in _trimmers) {
                var _actual:Slice<GoUInt8> = _trimmer._trim(((_tc._in : Slice<GoByte>)), _tc._f._f);
                if ((_actual == null) && (_trimmer._out != null)) {
                    _t.errorf(((("%s(%q, %q) = nil; want %q" : GoString))), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_trimmer._out));
                };
                if ((_actual != null) && (_trimmer._out == null)) {
                    _t.errorf(((("%s(%q, %q) = %q; want nil" : GoString))), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual));
                };
                if (!equal(_actual, _trimmer._out)) {
                    _t.errorf(((("%s(%q, %q) = %q; want %q" : GoString))), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual), Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tc in _indexFuncTests) {
            var _first:GoInt = indexFunc(((_tc._in : Slice<GoByte>)), _tc._f._f);
            if (_first != _tc._first) {
                _t.errorf(((("IndexFunc(%q, %s) = %d; want %d" : GoString))), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first), Go.toInterface(_tc._first));
            };
            var _last:GoInt = lastIndexFunc(((_tc._in : Slice<GoByte>)), _tc._f._f);
            if (_last != _tc._last) {
                _t.errorf(((("LastIndexFunc(%q, %s) = %d; want %d" : GoString))), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_last), Go.toInterface(_tc._last));
            };
        };
    }
function testReplace(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in replaceTests) {
            var _in:Slice<GoUInt8> = (((_tt._in : Slice<GoByte>)) != null ? ((_tt._in : Slice<GoByte>)).__append__(...((("<spare>" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("<spare>" : GoString))).__toArray__()));
            _in = ((_in.__slice__(0, (_tt._in != null ? _tt._in.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            var _out:Slice<GoUInt8> = replace(_in, ((_tt._old : Slice<GoByte>)), ((_tt._new : Slice<GoByte>)), _tt._n);
            {
                var _s:GoString = ((_out : GoString));
                if (_s != _tt._out) {
                    _t.errorf(((("Replace(%q, %q, %q, %d) = %q, want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
            if (((_in != null ? _in.cap() : ((0 : GoInt))) == (_out != null ? _out.cap() : ((0 : GoInt)))) && (Go.pointer((((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))) == Go.pointer((((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))))) {
                _t.errorf(((("Replace(%q, %q, %q, %d) didn\'t copy" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n));
            };
            if (_tt._n == ((-1 : GoInt))) {
                var _out:Slice<GoUInt8> = replaceAll(_in, ((_tt._old : Slice<GoByte>)), ((_tt._new : Slice<GoByte>)));
                {
                    var _s:GoString = ((_out : GoString));
                    if (_s != _tt._out) {
                        _t.errorf(((("ReplaceAll(%q, %q, %q) = %q, want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_s), Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
function testTitle(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in titleTests) {
            {
                var _s:GoString = ((title(((_tt._in : Slice<GoByte>))) : GoString));
                if (_s != _tt._out) {
                    _t.errorf(((("Title(%q) = %q, want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testToTitle(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in toTitleTests) {
            {
                var _s:GoString = ((toTitle(((_tt._in : Slice<GoByte>))) : GoString));
                if (_s != _tt._out) {
                    _t.errorf(((("ToTitle(%q) = %q, want %q" : GoString))), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testEqualFold(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold(((_tt._s : Slice<GoByte>)), ((_tt._t : Slice<GoByte>)));
                if (_out != _tt._out) {
                    _t.errorf(((("EqualFold(%#q, %#q) = %v, want %v" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold(((_tt._t : Slice<GoByte>)), ((_tt._s : Slice<GoByte>)));
                if (_out != _tt._out) {
                    _t.errorf(((("EqualFold(%#q, %#q) = %v, want %v" : GoString))), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testCut(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _cutTests) {
            {
                var __tmp__ = cut(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>))), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
                if (((((_before : GoString)) != _tt._before) || (((_after : GoString)) != _tt._after)) || (_found != _tt._found)) {
                    _t.errorf(((("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : GoString))), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function testBufferGrowNegative(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.fatal(Go.toInterface(((("Grow(-1) should have panicked" : GoString)))));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = new Buffer();
            _b.grow(((-1 : GoInt)));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testBufferTruncateNegative(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.fatal(Go.toInterface(((("Truncate(-1) should have panicked" : GoString)))));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = new Buffer();
            _b.truncate(((-1 : GoInt)));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testBufferTruncateOutOfRange(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
                        if (_err == null) {
                            _t.fatal(Go.toInterface(((("Truncate(20) should have panicked" : GoString)))));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = new Buffer();
            _b.write(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            _b.truncate(((20 : GoInt)));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testContains(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _containsTests) {
            {
                var _got:Bool = contains(_tt._b, _tt._subslice);
                if (_got != _tt._want) {
                    _t.errorf(((("Contains(%q, %q) = %v, want %v" : GoString))), Go.toInterface(_tt._b), Go.toInterface(_tt._subslice), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testContainsAny(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _ct in containsAnyTests) {
            if (containsAny(_ct._b, _ct._substr) != _ct._expected) {
                _t.errorf(((("ContainsAny(%s, %s) = %v, want %v" : GoString))), Go.toInterface(_ct._b), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _ct in containsRuneTests) {
            if (containsRune(_ct._b, _ct._r) != _ct._expected) {
                _t.errorf(((("ContainsRune(%q, %q) = %v, want %v" : GoString))), Go.toInterface(_ct._b), Go.toInterface(_ct._r), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function benchmarkFields(_b:stdgo.testing.Testing.B):Void {
        for (_ => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = ((16 : GoInt));
                    Go.cfor(_j <= ((1048576 : GoInt)), _j = _j << (((4 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes(((_j : GoInt64)));
                            var _data:Slice<GoUInt8> = ((_sd._data.__slice__(0, _j) : Slice<GoUInt8>));
                            {
                                var _i:GoInt = ((0 : GoInt));
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
        for (_ => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = ((16 : GoInt));
                    Go.cfor(_j <= ((1048576 : GoInt)), _j = _j << (((4 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes(((_j : GoInt64)));
                            var _data:Slice<GoUInt8> = ((_sd._data.__slice__(0, _j) : Slice<GoUInt8>));
                            {
                                var _i:GoInt = ((0 : GoInt));
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
        var _tests:Slice<stdgo.bytes_test.Bytes_test.T__struct_12> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_12>(((new stdgo.bytes_test.Bytes_test.T__struct_12(((("NoTrim" : GoString))), ((((("typical" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.T__struct_12)), ((new stdgo.bytes_test.Bytes_test.T__struct_12(((("ASCII" : GoString))), ((((("  foo bar  " : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.T__struct_12)), ((new stdgo.bytes_test.Bytes_test.T__struct_12(((("SomeNonASCII" : GoString))), ((((("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.T__struct_12)), ((new stdgo.bytes_test.Bytes_test.T__struct_12(((("JustNonASCII" : GoString))), ((((("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.T__struct_12))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_12>));
        for (_ => _test in _tests) {
            _b.run(_test._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        trimSpace(_test._input);
                    });
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:stdgo.testing.Testing.B):Void {
        var _tests:Slice<stdgo.bytes_test.Bytes_test.T__struct_12> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_12>(((new stdgo.bytes_test.Bytes_test.T__struct_12(((("Valid" : GoString))), ((((("typical" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.T__struct_12)), ((new stdgo.bytes_test.Bytes_test.T__struct_12(((("InvalidASCII" : GoString))), ((((("foo" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("bar" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.T__struct_12)), ((new stdgo.bytes_test.Bytes_test.T__struct_12(((("InvalidNonASCII" : GoString))), ((((("日本語" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("日本語" : GoString))) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.T__struct_12))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_12>));
        var _replacement:Slice<GoUInt8> = ((((("\uFFFD" : GoString))) : Slice<GoByte>));
        _b.resetTimer();
        for (_ => _test in _tests) {
            _b.run(_test._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        toValidUTF8(_test._input, _replacement);
                    });
                };
            });
        };
    }
function _makeBenchInputHard():Slice<GoByte> {
        var _tokens:GoArray<GoString> = ((new GoArray<GoString>(((("<a>" : GoString))), ((("<p>" : GoString))), ((("<b>" : GoString))), ((("<strong>" : GoString))), ((("</a>" : GoString))), ((("</p>" : GoString))), ((("</b>" : GoString))), ((("</strong>" : GoString))), ((("hello" : GoString))), ((("world" : GoString)))) : GoArray<GoString>));
        var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while (true) {
            var _i:GoInt = stdgo.math.rand.Rand.intn((_tokens != null ? _tokens.length : ((0 : GoInt))));
            if (((_x != null ? _x.length : ((0 : GoInt))) + ((_tokens != null ? _tokens[_i] : (("" : GoString))) != null ? (_tokens != null ? _tokens[_i] : (("" : GoString))).length : ((0 : GoInt)))) >= ((1048576 : GoInt))) {
                break;
            };
            _x = (_x != null ? _x.__append__(...(_tokens != null ? _tokens[_i] : (("" : GoString))).__toArray__()) : new Slice<GoUInt8>(...(_tokens != null ? _tokens[_i] : (("" : GoString))).__toArray__()));
        };
        return _x;
    }
function _benchmarkIndexHard(_b:stdgo.testing.Testing.B, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                index(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkLastIndexHard(_b:stdgo.testing.Testing.B, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                lastIndex(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkCountHard(_b:stdgo.testing.Testing.B, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                count(_benchInputHard, _sep);
            });
        };
    }
function benchmarkIndexHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("<>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("</pre>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("<b>hello world</b>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkIndexHard4(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("<pre><b>hello</b><strong>world</strong></pre>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkLastIndexHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((("<>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkLastIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((("</pre>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkLastIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((("<b>hello world</b>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkCountHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((("<>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkCountHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((("</pre>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkCountHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((("<b>hello world</b>" : GoString))) : Slice<GoByte>)));
    }
function benchmarkSplitEmptySeparator(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, ((null : Slice<GoUInt8>)));
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep:Slice<GoUInt8> = ((((("/" : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep:Slice<GoUInt8> = ((((("hello" : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep:Slice<GoUInt8> = ((((("/" : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, ((10 : GoInt)));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep:Slice<GoUInt8> = ((((("hello" : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, ((10 : GoInt)));
            });
        };
    }
function benchmarkRepeat(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                repeat(((((("-" : GoString))) : Slice<GoByte>)), ((80 : GoInt)));
            });
        };
    }
function benchmarkBytesCompare(_b:stdgo.testing.Testing.B):Void {
        {
            var _n:GoInt = ((1 : GoInt));
            Go.cfor(_n <= ((2048 : GoInt)), _n = _n << (((1 : GoUnTypedInt))), {
                _b.run(stdgo.fmt.Fmt.sprint(_n), function(_b:stdgo.testing.Testing.B):Void {
                    var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    var _y:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _n, _i++, {
                            if (_x != null) _x[_i] = ((((("a" : GoString))).code : GoRune));
                        });
                    };
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _n, _i++, {
                            if (_y != null) _y[_i] = ((((("a" : GoString))).code : GoRune));
                        });
                    };
                    _b.resetTimer();
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _b.n, _i++, {
                            compare(_x, _y);
                        });
                    };
                });
            });
        };
    }
function benchmarkIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
        var _x:Slice<GoUInt8> = repeat(((new Slice<GoUInt8>(((((("#" : GoString))).code : GoRune))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : GoString)));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((("%d:%d" : GoString))), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < _b.n, _i++, {
                                    indexAny(((_x.__slice__(0, _k) : Slice<GoUInt8>)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
        var _x:Slice<GoUInt8> = repeat(((new Slice<GoUInt8>(((((("#" : GoString))).code : GoRune))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : GoString)));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((("%d:%d" : GoString))), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < _b.n, _i++, {
                                    indexAny(((_x.__slice__(0, _k) : Slice<GoUInt8>)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
        var _x:Slice<GoUInt8> = repeat(((new Slice<GoUInt8>(((((("#" : GoString))).code : GoRune))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : GoString)));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((("%d:%d" : GoString))), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny(((_x.__slice__(0, _k) : Slice<GoUInt8>)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
        var _x:Slice<GoUInt8> = repeat(((new Slice<GoUInt8>(((((("#" : GoString))).code : GoRune))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : GoString)));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((("%d:%d" : GoString))), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny(((_x.__slice__(0, _k) : Slice<GoUInt8>)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimASCII(_b:stdgo.testing.Testing.B):Void {
        var _cs:GoString = ((("0123456789abcdef" : GoString)));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((4096 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((16 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((("%d:%d" : GoString))), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            var _x:Slice<GoUInt8> = repeat(((((_cs.__slice__(0, _j) : GoString)) : Slice<GoByte>)), _k);
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < _b.n, _i++, {
                                    trim(((_x.__slice__(0, _k) : Slice<GoUInt8>)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimByte(_b:stdgo.testing.Testing.B):Void {
        var _x:Slice<GoUInt8> = ((((("  the quick brown fox   " : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                trim(_x, (((" " : GoString))));
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.testing.Testing.B):Void {
        var _key:Slice<GoUInt8> = ((new Slice<GoUInt8>(((1 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>));
        for (_ => _skip in ((new GoArray<GoInt>(((2 : GoInt)), ((4 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((32 : GoInt)), ((64 : GoInt))) : GoArray<GoInt>))) {
            _b.run(stdgo.fmt.Fmt.sprintf(((("IndexPeriodic%d" : GoString))), Go.toInterface(_skip)), function(_b:stdgo.testing.Testing.B):Void {
                var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < (_buf != null ? _buf.length : ((0 : GoInt))), _i = _i + (_skip), {
                        if (_buf != null) _buf[_i] = ((1 : GoUInt8));
                    });
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        index(_buf, _key);
                    });
                };
            });
        };
    }
function testCompare(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in _compareTests) {
            var _numShifts:GoInt = ((16 : GoInt));
            var _buffer:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_tt._b != null ? _tt._b.length : ((0 : GoInt))) + _numShifts : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _offset:GoInt = ((0 : GoInt));
                Go.cfor(_offset <= _numShifts, _offset++, {
                    var _shiftedB:Slice<GoUInt8> = ((_buffer.__slice__(_offset, (_tt._b != null ? _tt._b.length : ((0 : GoInt))) + _offset) : Slice<GoUInt8>));
                    Go.copySlice(_shiftedB, _tt._b);
                    var _cmp:GoInt = compare(_tt._a, _shiftedB);
                    if (_cmp != _tt._i) {
                        _t.errorf("Compare(%q, %q), offset %d = %v; want %v", Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_offset), Go.toInterface(_cmp), Go.toInterface(_tt._i));
                    };
                });
            };
        };
    }
function testCompareIdenticalSlice(_t:stdgo.testing.Testing.T_):Void {
        var _b:Slice<GoUInt8> = ((((("Hello Gophers!" : GoString))) : Slice<GoByte>));
        if (compare(_b, _b) != ((0 : GoInt))) {
            _t.error(Go.toInterface(((("b != b" : GoString)))));
        };
        if (compare(_b, ((_b.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))) != ((1 : GoInt))) {
            _t.error(Go.toInterface(((("b > b[:1] failed" : GoString)))));
        };
    }
function testCompareBytes(_t:stdgo.testing.Testing.T_):Void {
        var _lengths:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((128 : GoInt)), _i++, {
                _lengths = (_lengths != null ? _lengths.__append__(_i) : new Slice<GoInt>(_i));
            });
        };
        _lengths = (_lengths != null ? _lengths.__append__(((256 : GoInt)), ((512 : GoInt)), ((1024 : GoInt)), ((1333 : GoInt)), ((4095 : GoInt)), ((4096 : GoInt)), ((4097 : GoInt))) : new Slice<GoInt>(((256 : GoInt)), ((512 : GoInt)), ((1024 : GoInt)), ((1333 : GoInt)), ((4095 : GoInt)), ((4096 : GoInt)), ((4097 : GoInt))));
        if (!stdgo.testing.Testing.short() || (stdgo.internal.testenv.Testenv.builder() != ((("" : GoString))))) {
            _lengths = (_lengths != null ? _lengths.__append__(((65535 : GoInt)), ((65536 : GoInt)), ((65537 : GoInt)), ((99999 : GoInt))) : new Slice<GoInt>(((65535 : GoInt)), ((65536 : GoInt)), ((65537 : GoInt)), ((99999 : GoInt))));
        };
        var _n:GoInt = (_lengths != null ? _lengths[(_lengths != null ? _lengths.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt)));
        var _a:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_ => _len in _lengths) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _len, _i++, {
                    if (_a != null) _a[_i] = (((((1 : GoInt)) + ((((31 : GoInt)) * _i) % ((254 : GoInt)))) : GoByte));
                    if (_b != null) _b[_i] = (((((1 : GoInt)) + ((((31 : GoInt)) * _i) % ((254 : GoInt)))) : GoByte));
                });
            };
            {
                var _i:GoInt = _len;
                Go.cfor(_i <= _n, _i++, {
                    if (_a != null) _a[_i] = ((8 : GoUInt8));
                    if (_b != null) _b[_i] = ((9 : GoUInt8));
                });
            };
            var _cmp:GoInt = compare(((_a.__slice__(0, _len) : Slice<GoUInt8>)), ((_b.__slice__(0, _len) : Slice<GoUInt8>)));
            if (_cmp != ((0 : GoInt))) {
                _t.errorf("CompareIdentical(%d) = %d", Go.toInterface(_len), Go.toInterface(_cmp));
            };
            if (_len > ((0 : GoInt))) {
                _cmp = compare(((_a.__slice__(0, _len - ((1 : GoInt))) : Slice<GoUInt8>)), ((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                if (_cmp != ((-1 : GoInt))) {
                    _t.errorf("CompareAshorter(%d) = %d", Go.toInterface(_len), Go.toInterface(_cmp));
                };
                _cmp = compare(((_a.__slice__(0, _len) : Slice<GoUInt8>)), ((_b.__slice__(0, _len - ((1 : GoInt))) : Slice<GoUInt8>)));
                if (_cmp != ((1 : GoInt))) {
                    _t.errorf("CompareBshorter(%d) = %d", Go.toInterface(_len), Go.toInterface(_cmp));
                };
            };
            {
                var _k:GoInt = ((0 : GoInt));
                Go.cfor(_k < _len, _k++, {
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8))) - ((1 : GoUInt8));
                    _cmp = compare(((_a.__slice__(0, _len) : Slice<GoUInt8>)), ((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                    if (_cmp != ((1 : GoInt))) {
                        _t.errorf("CompareAbigger(%d,%d) = %d", Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8))) + ((1 : GoUInt8));
                    _cmp = compare(((_a.__slice__(0, _len) : Slice<GoUInt8>)), ((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                    if (_cmp != ((-1 : GoInt))) {
                        _t.errorf("CompareBbigger(%d,%d) = %d", Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8)));
                });
            };
        };
    }
function testEndianBaseCompare(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _a:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((512 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((512 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((512 : GoInt)), _i++, {
                if (_a != null) _a[_i] = (((((1 : GoInt)) + ((((31 : GoInt)) * _i) % ((254 : GoInt)))) : GoByte));
                if (_b != null) _b[_i] = (((((1 : GoInt)) + ((((31 : GoInt)) * _i) % ((254 : GoInt)))) : GoByte));
            });
        };
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i <= ((512 : GoInt)), _i = _i << (((1 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < (_i - ((1 : GoInt))), _j++, {
                        if (_a != null) _a[_j] = (_b != null ? _b[_j] : ((0 : GoUInt8))) - ((1 : GoUInt8));
                        if (_a != null) _a[_j + ((1 : GoInt))] = (_b != null ? _b[_j + ((1 : GoInt))] : ((0 : GoUInt8))) + ((1 : GoUInt8));
                        var _cmp:GoInt = compare(((_a.__slice__(0, _i) : Slice<GoUInt8>)), ((_b.__slice__(0, _i) : Slice<GoUInt8>)));
                        if (_cmp != ((-1 : GoInt))) {
                            _t.errorf("CompareBbigger(%d,%d) = %d", Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        if (_a != null) _a[_j] = (_b != null ? _b[_j] : ((0 : GoUInt8))) + ((1 : GoUInt8));
                        if (_a != null) _a[_j + ((1 : GoInt))] = (_b != null ? _b[_j + ((1 : GoInt))] : ((0 : GoUInt8))) - ((1 : GoUInt8));
                        _cmp = compare(((_a.__slice__(0, _i) : Slice<GoUInt8>)), ((_b.__slice__(0, _i) : Slice<GoUInt8>)));
                        if (_cmp != ((1 : GoInt))) {
                            _t.errorf("CompareAbigger(%d,%d) = %d", Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        if (_a != null) _a[_j] = (_b != null ? _b[_j] : ((0 : GoUInt8)));
                        if (_a != null) _a[_j + ((1 : GoInt))] = (_b != null ? _b[_j + ((1 : GoInt))] : ((0 : GoUInt8)));
                    });
                };
            });
        };
    }
function benchmarkCompareBytesEqual(_b:stdgo.testing.Testing.B):Void {
        var _b1:Slice<GoUInt8> = ((((("Hello Gophers!" : GoString))) : Slice<GoByte>));
        var _b2:Slice<GoUInt8> = ((((("Hello Gophers!" : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 != b2" : GoString)))));
                };
            });
        };
    }
function benchmarkCompareBytesToNil(_b:stdgo.testing.Testing.B):Void {
        var _b1:Slice<GoUInt8> = ((((("Hello Gophers!" : GoString))) : Slice<GoByte>));
        var _b2:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((1 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 > b2 failed" : GoString)))));
                };
            });
        };
    }
function benchmarkCompareBytesEmpty(_b:stdgo.testing.Testing.B):Void {
        var _b1:Slice<GoUInt8> = ((((("" : GoString))) : Slice<GoByte>));
        var _b2:Slice<GoUInt8> = _b1;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 != b2" : GoString)))));
                };
            });
        };
    }
function benchmarkCompareBytesIdentical(_b:stdgo.testing.Testing.B):Void {
        var _b1:Slice<GoUInt8> = ((((("Hello Gophers!" : GoString))) : Slice<GoByte>));
        var _b2:Slice<GoUInt8> = _b1;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 != b2" : GoString)))));
                };
            });
        };
    }
function benchmarkCompareBytesSameLength(_b:stdgo.testing.Testing.B):Void {
        var _b1:Slice<GoUInt8> = ((((("Hello Gophers!" : GoString))) : Slice<GoByte>));
        var _b2:Slice<GoUInt8> = ((((("Hello, Gophers" : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 < b2 failed" : GoString)))));
                };
            });
        };
    }
function benchmarkCompareBytesDifferentLength(_b:stdgo.testing.Testing.B):Void {
        var _b1:Slice<GoUInt8> = ((((("Hello Gophers!" : GoString))) : Slice<GoByte>));
        var _b2:Slice<GoUInt8> = ((((("Hello, Gophers!" : GoString))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 < b2 failed" : GoString)))));
                };
            });
        };
    }
function benchmarkCompareBytesBigUnaligned(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while ((_b1 != null ? _b1.length : ((0 : GoInt))) < ((1048576 : GoInt))) {
            _b1 = (_b1 != null ? _b1.__append__(...((("Hello Gophers!" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("Hello Gophers!" : GoString))).__toArray__()));
        };
        var _b2:Slice<GoUInt8> = (((((("hello" : GoString))) : Slice<GoByte>)) != null ? ((((("hello" : GoString))) : Slice<GoByte>)).__append__(..._b1.__toArray__()) : new Slice<GoUInt8>(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, ((_b2.__slice__((((("hello" : GoString))) != null ? ((("hello" : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>))) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 != b2" : GoString)))));
                };
            });
        };
        _b.setBytes((((_b1 != null ? _b1.length : ((0 : GoInt))) : GoInt64)));
    }
function benchmarkCompareBytesBig(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while ((_b1 != null ? _b1.length : ((0 : GoInt))) < ((1048576 : GoInt))) {
            _b1 = (_b1 != null ? _b1.__append__(...((("Hello Gophers!" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("Hello Gophers!" : GoString))).__toArray__()));
        };
        var _b2:Slice<GoUInt8> = (((new Slice<GoUInt8>() : Slice<GoUInt8>)) != null ? ((new Slice<GoUInt8>() : Slice<GoUInt8>)).__append__(..._b1.__toArray__()) : new Slice<GoUInt8>(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 != b2" : GoString)))));
                };
            });
        };
        _b.setBytes((((_b1 != null ? _b1.length : ((0 : GoInt))) : GoInt64)));
    }
function benchmarkCompareBytesBigIdentical(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while ((_b1 != null ? _b1.length : ((0 : GoInt))) < ((1048576 : GoInt))) {
            _b1 = (_b1 != null ? _b1.__append__(...((("Hello Gophers!" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("Hello Gophers!" : GoString))).__toArray__()));
        };
        var _b2:Slice<GoUInt8> = _b1;
        _b.startTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((("b1 != b2" : GoString)))));
                };
            });
        };
        _b.setBytes((((_b1 != null ? _b1.length : ((0 : GoInt))) : GoInt64)));
    }
function exampleBuffer():Void {
        var _b:Buffer = new Buffer();
        _b.write(((((("Hello " : GoString))) : Slice<GoByte>)));
        stdgo.fmt.Fmt.fprintf(_b, ((("world!" : GoString))));
        _b.writeTo(stdgo.os.Os.stdout);
    }
function exampleBuffer_reader():Void {
        var _buf:Ref<Buffer> = stdgo.bytes.Bytes.newBufferString(((("R29waGVycyBydWxlIQ==" : GoString))));
        var _dec:stdgo.io.Io.Reader = stdgo.encoding.base64.Base64.newDecoder(stdgo.encoding.base64.Base64.stdEncoding, _buf);
        stdgo.io.Io.copy(stdgo.os.Os.stdout, _dec);
    }
function exampleBuffer_Bytes():Void {
        var _buf:Buffer = ((new Buffer() : Buffer));
        _buf.write(((new Slice<GoUInt8>(
((((("h" : GoString))).code : GoRune)),
((((("e" : GoString))).code : GoRune)),
((((("l" : GoString))).code : GoRune)),
((((("l" : GoString))).code : GoRune)),
((((("o" : GoString))).code : GoRune)),
(((((" " : GoString))).code : GoRune)),
((((("w" : GoString))).code : GoRune)),
((((("o" : GoString))).code : GoRune)),
((((("r" : GoString))).code : GoRune)),
((((("l" : GoString))).code : GoRune)),
((((("d" : GoString))).code : GoRune))) : Slice<GoUInt8>)));
        stdgo.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_Cap():Void {
        var _buf1:Ref<Buffer> = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _buf2:Ref<Buffer> = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic()));
        stdgo.fmt.Fmt.println(_buf1.cap_());
        stdgo.fmt.Fmt.println(_buf2.cap_());
    }
function exampleBuffer_Grow():Void {
        var _b:Buffer = new Buffer();
        _b.grow(((64 : GoInt)));
        var _bb:Slice<GoUInt8> = _b.bytes();
        _b.write(((((("64 bytes or fewer" : GoString))) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((("%q" : GoString))), Go.toInterface(((_bb.__slice__(0, _b.len()) : Slice<GoUInt8>))));
    }
function exampleBuffer_Len():Void {
        var _b:Buffer = new Buffer();
        _b.grow(((64 : GoInt)));
        _b.write(((((("abcde" : GoString))) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((("%d" : GoString))), Go.toInterface(_b.len()));
    }
function exampleBuffer_Next():Void {
        var _b:Buffer = new Buffer();
        _b.grow(((64 : GoInt)));
        _b.write(((((("abcde" : GoString))) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(((_b.next(((2 : GoInt))) : GoString))));
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(((_b.next(((2 : GoInt))) : GoString))));
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(((_b.next(((2 : GoInt))) : GoString))));
    }
function exampleBuffer_Read():Void {
        var _b:Buffer = new Buffer();
        _b.grow(((64 : GoInt)));
        _b.write(((((("abcde" : GoString))) : Slice<GoByte>)));
        var _rdbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _b.read(_rdbuf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(_n);
        stdgo.fmt.Fmt.println(((_b.toString() : GoString)));
        stdgo.fmt.Fmt.println(((_rdbuf : GoString)));
    }
function exampleBuffer_ReadByte():Void {
        var _b:Buffer = new Buffer();
        _b.grow(((64 : GoInt)));
        _b.write(((((("abcde" : GoString))) : Slice<GoByte>)));
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(_c);
        stdgo.fmt.Fmt.println(((_b.toString() : GoString)));
    }
function exampleCompare():Void {
        var _a:Slice<GoByte> = ((null : Slice<GoUInt8>)), _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (stdgo.bytes.Bytes.compare(_a, _b) < ((0 : GoInt))) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) <= ((0 : GoInt))) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) > ((0 : GoInt))) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) >= ((0 : GoInt))) {};
        if (stdgo.bytes.Bytes.equal(_a, _b)) {};
        if (!stdgo.bytes.Bytes.equal(_a, _b)) {};
    }
function exampleCompare_search():Void {
        var _needle:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _haystack:Slice<Slice<GoByte>> = ((null : Slice<Slice<GoUInt8>>));
        var _i:GoInt = stdgo.sort.Sort.search((_haystack != null ? _haystack.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return stdgo.bytes.Bytes.compare((_haystack != null ? _haystack[_i] : ((null : Slice<GoUInt8>))), _needle) >= ((0 : GoInt));
        });
        if ((_i < (_haystack != null ? _haystack.length : ((0 : GoInt)))) && stdgo.bytes.Bytes.equal((_haystack != null ? _haystack[_i] : ((null : Slice<GoUInt8>))), _needle)) {};
    }
function exampleContains():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((("seafood" : GoString))) : Slice<GoByte>)), ((((("foo" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((("seafood" : GoString))) : Slice<GoByte>)), ((((("bar" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((("seafood" : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((("" : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>))));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((("I like seafood." : GoString))) : Slice<GoByte>)), ((("fÄo!" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((("I like seafood." : GoString))) : Slice<GoByte>)), ((("去是伟大的." : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((("I like seafood." : GoString))) : Slice<GoByte>)), ((("" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((("" : GoString))) : Slice<GoByte>)), ((("" : GoString)))));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((("I like seafood." : GoString))) : Slice<GoByte>)), ((((("f" : GoString))).code : GoRune))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((("I like seafood." : GoString))) : Slice<GoByte>)), ((((("ö" : GoString))).code : GoRune))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((("去是伟大的!" : GoString))) : Slice<GoByte>)), ((((("大" : GoString))).code : GoRune))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((("去是伟大的!" : GoString))) : Slice<GoByte>)), ((((("!" : GoString))).code : GoRune))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((("" : GoString))) : Slice<GoByte>)), ((((("@" : GoString))).code : GoRune))));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.count(((((("cheese" : GoString))) : Slice<GoByte>)), ((((("e" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.count(((((("five" : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>))));
    }
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cut(((_s : Slice<GoByte>)), ((_sep : Slice<GoByte>))), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(((("Cut(%q, %q) = %q, %q, %v\n" : GoString))), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show(((("Gopher" : GoString))), ((("Go" : GoString))));
        _show(((("Gopher" : GoString))), ((("ph" : GoString))));
        _show(((("Gopher" : GoString))), ((("er" : GoString))));
        _show(((("Gopher" : GoString))), ((("Badger" : GoString))));
    }
function exampleEqual():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equal(((((("Go" : GoString))) : Slice<GoByte>)), ((((("Go" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equal(((((("Go" : GoString))) : Slice<GoByte>)), ((((("C++" : GoString))) : Slice<GoByte>))));
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equalFold(((((("Go" : GoString))) : Slice<GoByte>)), ((((("go" : GoString))) : Slice<GoByte>))));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(((("Fields are: %q" : GoString))), Go.toInterface(stdgo.bytes.Bytes.fields(((((("  foo bar  baz   " : GoString))) : Slice<GoByte>)))));
    }
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(((("Fields are: %q" : GoString))), Go.toInterface(stdgo.bytes.Bytes.fieldsFunc(((((("  foo1;bar2,baz3..." : GoString))) : Slice<GoByte>)), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((((("Gopher" : GoString))) : Slice<GoByte>)), ((((("Go" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((((("Gopher" : GoString))) : Slice<GoByte>)), ((((("C" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((((("Gopher" : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>))));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((("Amigo" : GoString))) : Slice<GoByte>)), ((((("go" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((("Amigo" : GoString))) : Slice<GoByte>)), ((((("O" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((("Amigo" : GoString))) : Slice<GoByte>)), ((((("Ami" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((("Amigo" : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>))));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((((("chicken" : GoString))) : Slice<GoByte>)), ((((("ken" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((((("chicken" : GoString))) : Slice<GoByte>)), ((((("dmr" : GoString))) : Slice<GoByte>))));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexByte(((((("chicken" : GoString))) : Slice<GoByte>)), ((((((("k" : GoString))).code : GoRune)) : GoByte))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexByte(((((("chicken" : GoString))) : Slice<GoByte>)), ((((((("g" : GoString))).code : GoRune)) : GoByte))));
    }
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexFunc(((((("Hello, 世界" : GoString))) : Slice<GoByte>)), _f));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexFunc(((((("Hello, world" : GoString))) : Slice<GoByte>)), _f));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexAny(((((("chicken" : GoString))) : Slice<GoByte>)), ((("aeiouy" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexAny(((((("crwth" : GoString))) : Slice<GoByte>)), ((("aeiouy" : GoString)))));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexRune(((((("chicken" : GoString))) : Slice<GoByte>)), ((((("k" : GoString))).code : GoRune))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexRune(((((("chicken" : GoString))) : Slice<GoByte>)), ((((("d" : GoString))).code : GoRune))));
    }
function exampleJoin():Void {
        var _s:Slice<Slice<GoUInt8>> = ((new Slice<Slice<GoUInt8>>(((((("foo" : GoString))) : Slice<GoByte>)), ((((("bar" : GoString))) : Slice<GoByte>)), ((((("baz" : GoString))) : Slice<GoByte>))) : Slice<Slice<GoUInt8>>));
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(stdgo.bytes.Bytes.join(_s, (((((", " : GoString))) : Slice<GoByte>)))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((((("go gopher" : GoString))) : Slice<GoByte>)), ((((("go" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndex(((((("go gopher" : GoString))) : Slice<GoByte>)), ((((("go" : GoString))) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndex(((((("go gopher" : GoString))) : Slice<GoByte>)), ((((("rodent" : GoString))) : Slice<GoByte>))));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((((("go gopher" : GoString))) : Slice<GoByte>)), ((("MüQp" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((((("go 地鼠" : GoString))) : Slice<GoByte>)), ((("地大" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((((("go gopher" : GoString))) : Slice<GoByte>)), ((("z,!." : GoString)))));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((((("go gopher" : GoString))) : Slice<GoByte>)), ((((((("g" : GoString))).code : GoRune)) : GoByte))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((((("go gopher" : GoString))) : Slice<GoByte>)), ((((((("r" : GoString))).code : GoRune)) : GoByte))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((((("go gopher" : GoString))) : Slice<GoByte>)), ((((((("z" : GoString))).code : GoRune)) : GoByte))));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((((("go gopher!" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((((("go gopher!" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((((("go gopher!" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber));
    }
function exampleReader_Len():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.newReader(((((("Hi!" : GoString))) : Slice<GoByte>))).len());
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.newReader(((((("こんにちは!" : GoString))) : Slice<GoByte>))).len());
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.printf(((("ba%s" : GoString))), Go.toInterface(stdgo.bytes.Bytes.repeat(((((("na" : GoString))) : Slice<GoByte>)), ((2 : GoInt)))));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.replace(((((("oink oink oink" : GoString))) : Slice<GoByte>)), ((((("k" : GoString))) : Slice<GoByte>)), ((((("ky" : GoString))) : Slice<GoByte>)), ((2 : GoInt)))));
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.replace(((((("oink oink oink" : GoString))) : Slice<GoByte>)), ((((("oink" : GoString))) : Slice<GoByte>)), ((((("moo" : GoString))) : Slice<GoByte>)), ((-1 : GoInt)))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.replaceAll(((((("oink oink oink" : GoString))) : Slice<GoByte>)), ((((("oink" : GoString))) : Slice<GoByte>)), ((((("moo" : GoString))) : Slice<GoByte>)))));
    }
function exampleRunes():Void {
        var _rs:Slice<GoInt32> = stdgo.bytes.Bytes.runes(((((("go gopher" : GoString))) : Slice<GoByte>)));
        for (_ => _r in _rs) {
            stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(_r));
        };
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.split(((((("a,b,c" : GoString))) : Slice<GoByte>)), ((((("," : GoString))) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.split(((((("a man a plan a canal panama" : GoString))) : Slice<GoByte>)), ((((("a " : GoString))) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.split((((((" xyz " : GoString))) : Slice<GoByte>)), ((((("" : GoString))) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.split(((((("" : GoString))) : Slice<GoByte>)), ((((("Bernardo O\'Higgins" : GoString))) : Slice<GoByte>)))));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.splitN(((((("a,b,c" : GoString))) : Slice<GoByte>)), ((((("," : GoString))) : Slice<GoByte>)), ((2 : GoInt)))));
        var _z:Slice<Slice<GoUInt8>> = stdgo.bytes.Bytes.splitN(((((("a,b,c" : GoString))) : Slice<GoByte>)), ((((("," : GoString))) : Slice<GoByte>)), ((0 : GoInt)));
        stdgo.fmt.Fmt.printf(((("%q (nil = %v)\n" : GoString))), Go.toInterface(_z), Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.splitAfter(((((("a,b,c" : GoString))) : Slice<GoByte>)), ((((("," : GoString))) : Slice<GoByte>)))));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.splitAfterN(((((("a,b,c" : GoString))) : Slice<GoByte>)), ((((("," : GoString))) : Slice<GoByte>)), ((2 : GoInt)))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(stdgo.bytes.Bytes.title(((((("her royal highness" : GoString))) : Slice<GoByte>)))));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.toTitle(((((("loud noises" : GoString))) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(stdgo.bytes.Bytes.toTitle(((((("хлеб" : GoString))) : Slice<GoByte>)))));
    }
function exampleToTitleSpecial():Void {
        var _str:Slice<GoUInt8> = ((((("ahoj vývojári golang" : GoString))) : Slice<GoByte>));
        var _totitle:Slice<GoUInt8> = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(((("Original : " : GoString))) + ((_str : GoString)));
        stdgo.fmt.Fmt.println(((("ToTitle : " : GoString))) + ((_totitle : GoString)));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.printf(((("[%q]" : GoString))), Go.toInterface(stdgo.bytes.Bytes.trim((((((" !!! Achtung! Achtung! !!! " : GoString))) : Slice<GoByte>)), ((("! " : GoString))))));
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((("go-gopher!" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((("\"go-gopher!\"" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((("go-gopher!" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((("1234go-gopher!567" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(((stdgo.bytes.Bytes.trimLeft(((((("453gopher8257" : GoString))) : Slice<GoByte>)), ((("0123456789" : GoString)))) : GoString)));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimLeftFunc(((((("go-gopher" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimLeftFunc(((((("go-gopher!" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimLeftFunc(((((("1234go-gopher!567" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleTrimPrefix():Void {
        var _b:Slice<GoUInt8> = ((((("Goodbye,, world!" : GoString))) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, ((((("Goodbye," : GoString))) : Slice<GoByte>)));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, ((((("See ya," : GoString))) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((("Hello%s" : GoString))), Go.toInterface(_b));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(stdgo.bytes.Bytes.trimSpace((((((" \t\n a lone gopher \n\t\r\n" : GoString))) : Slice<GoByte>)))));
    }
function exampleTrimSuffix():Void {
        var _b:Slice<GoUInt8> = ((((("Hello, goodbye, etc!" : GoString))) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, ((((("goodbye, etc!" : GoString))) : Slice<GoByte>)));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, ((((("gopher" : GoString))) : Slice<GoByte>)));
        _b = (_b != null ? _b.__append__(...stdgo.bytes.Bytes.trimSuffix(((((("world!" : GoString))) : Slice<GoByte>)), ((((("x!" : GoString))) : Slice<GoByte>))).__toArray__()) : new Slice<GoUInt8>(...stdgo.bytes.Bytes.trimSuffix(((((("world!" : GoString))) : Slice<GoByte>)), ((((("x!" : GoString))) : Slice<GoByte>))).__toArray__()));
        stdgo.os.Os.stdout.write(_b);
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(((stdgo.bytes.Bytes.trimRight(((((("453gopher8257" : GoString))) : Slice<GoByte>)), ((("0123456789" : GoString)))) : GoString)));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimRightFunc(((((("go-gopher" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimRightFunc(((((("go-gopher!" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimRightFunc(((((("1234go-gopher!567" : GoString))) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(stdgo.bytes.Bytes.toLower(((((("Gopher" : GoString))) : Slice<GoByte>)))));
    }
function exampleToLowerSpecial():Void {
        var _str:Slice<GoUInt8> = ((((("AHOJ VÝVOJÁRİ GOLANG" : GoString))) : Slice<GoByte>));
        var _totitle:Slice<GoUInt8> = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(((("Original : " : GoString))) + ((_str : GoString)));
        stdgo.fmt.Fmt.println(((("ToLower : " : GoString))) + ((_totitle : GoString)));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(stdgo.bytes.Bytes.toUpper(((((("Gopher" : GoString))) : Slice<GoByte>)))));
    }
function exampleToUpperSpecial():Void {
        var _str:Slice<GoUInt8> = ((((("ahoj vývojári golang" : GoString))) : Slice<GoByte>));
        var _totitle:Slice<GoUInt8> = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(((("Original : " : GoString))) + ((_str : GoString)));
        stdgo.fmt.Fmt.println(((("ToUpper : " : GoString))) + ((_totitle : GoString)));
    }
function testReader(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Reader> = newReader(((((("0123456789" : GoString))) : Slice<GoByte>)));
        var _tests:Slice<stdgo.bytes_test.Bytes_test.T__struct_13> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_13>(((({ _seek : ((0 : GoInt)), _off : ((0 : GoInt64)), _n : ((20 : GoInt)), _want : ((("0123456789" : GoString))), _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((0 : GoInt)), _off : ((0 : GoInt64)), _n : ((20 : GoInt)), _want : ((("0123456789" : GoString))), _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((0 : GoInt)), _off : ((1 : GoInt64)), _n : ((1 : GoInt)), _want : ((("1" : GoString))), _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((0 : GoInt)), _off : ((1 : GoInt64)), _n : ((1 : GoInt)), _want : ((("1" : GoString))), _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((1 : GoInt)), _off : ((1 : GoInt64)), _wantpos : ((3 : GoInt64)), _n : ((2 : GoInt)), _want : ((("34" : GoString))), _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((1 : GoInt)), _off : ((1 : GoInt64)), _wantpos : ((3 : GoInt64)), _n : ((2 : GoInt)), _want : ((("34" : GoString))), _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((0 : GoInt)), _off : ((-1 : GoInt64)), _seekerr : ((("bytes.Reader.Seek: negative position" : GoString))), _n : 0, _want : "", _wantpos : 0, _readerr : ((null : stdgo.Error)) } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((0 : GoInt)), _off : ((-1 : GoInt64)), _seekerr : ((("bytes.Reader.Seek: negative position" : GoString))), _n : 0, _want : "", _wantpos : 0, _readerr : ((null : stdgo.Error)) } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((0 : GoInt)), _off : (("8589934592" : GoInt64)), _wantpos : (("8589934592" : GoInt64)), _readerr : stdgo.io.Io.eof, _n : 0, _want : "", _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((0 : GoInt)), _off : (("8589934592" : GoInt64)), _wantpos : (("8589934592" : GoInt64)), _readerr : stdgo.io.Io.eof, _n : 0, _want : "", _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((1 : GoInt)), _off : ((1 : GoInt64)), _wantpos : (("8589934593" : GoInt64)), _readerr : stdgo.io.Io.eof, _n : 0, _want : "", _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((1 : GoInt)), _off : ((1 : GoInt64)), _wantpos : (("8589934593" : GoInt64)), _readerr : stdgo.io.Io.eof, _n : 0, _want : "", _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((0 : GoInt)), _n : ((5 : GoInt)), _want : ((("01234" : GoString))), _off : 0, _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((0 : GoInt)), _n : ((5 : GoInt)), _want : ((("01234" : GoString))), _off : 0, _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((1 : GoInt)), _n : ((5 : GoInt)), _want : ((("56789" : GoString))), _off : 0, _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((1 : GoInt)), _n : ((5 : GoInt)), _want : ((("56789" : GoString))), _off : 0, _wantpos : 0, _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__()), ((({ _seek : ((2 : GoInt)), _off : ((-1 : GoInt64)), _n : ((1 : GoInt)), _wantpos : ((9 : GoInt64)), _want : ((("9" : GoString))), _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)) == null ? null : (({ _seek : ((2 : GoInt)), _off : ((-1 : GoInt64)), _n : ((1 : GoInt)), _wantpos : ((9 : GoInt64)), _want : ((("9" : GoString))), _readerr : ((null : stdgo.Error)), _seekerr : "" } : stdgo.bytes_test.Bytes_test.T__struct_13)).__copy__())) : Slice<stdgo.bytes_test.Bytes_test.T__struct_13>));
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_tt._seekerr != ((("" : GoString))))) {
                _t.errorf(((("%d. want seek error %q" : GoString))), Go.toInterface(_i), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_err != null) && (_err.error() != _tt._seekerr)) {
                _t.errorf(((("%d. seek error = %q; want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_err.error()), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_tt._wantpos != ((0 : GoInt64))) && (_tt._wantpos != _pos)) {
                _t.errorf(((("%d. pos = %d, want %d" : GoString))), Go.toInterface(_i), Go.toInterface(_pos), Go.toInterface(_tt._wantpos));
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _tt._readerr) {
                _t.errorf(((("%d. read = %v; want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._readerr));
                continue;
            };
            var _got:GoString = ((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
            if (_got != _tt._want) {
                _t.errorf(((("%d. got %q; want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
        };
    }
function testReadAfterBigSeek(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Reader> = newReader(((((("0123456789" : GoString))) : Slice<GoByte>)));
        {
            var __tmp__ = _r.seek((("2147483653" : GoInt64)), ((0 : GoInt))), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((("Read = %d, %v; want 0, EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
function testReaderAt(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Reader> = newReader(((((("0123456789" : GoString))) : Slice<GoByte>)));
        var _tests:Slice<stdgo.bytes_test.Bytes_test.T__struct_14> = ((new Slice<stdgo.bytes_test.Bytes_test.T__struct_14>(((new stdgo.bytes_test.Bytes_test.T__struct_14(((0 : GoInt64)), ((10 : GoInt)), ((("0123456789" : GoString))), ((null : AnyInterface))) : stdgo.bytes_test.Bytes_test.T__struct_14)), ((new stdgo.bytes_test.Bytes_test.T__struct_14(((1 : GoInt64)), ((10 : GoInt)), ((("123456789" : GoString))), Go.toInterface(stdgo.io.Io.eof)) : stdgo.bytes_test.Bytes_test.T__struct_14)), ((new stdgo.bytes_test.Bytes_test.T__struct_14(((1 : GoInt64)), ((9 : GoInt)), ((("123456789" : GoString))), ((null : AnyInterface))) : stdgo.bytes_test.Bytes_test.T__struct_14)), ((new stdgo.bytes_test.Bytes_test.T__struct_14(((11 : GoInt64)), ((10 : GoInt)), ((("" : GoString))), Go.toInterface(stdgo.io.Io.eof)) : stdgo.bytes_test.Bytes_test.T__struct_14)), ((new stdgo.bytes_test.Bytes_test.T__struct_14(((0 : GoInt64)), ((0 : GoInt)), ((("" : GoString))), ((null : AnyInterface))) : stdgo.bytes_test.Bytes_test.T__struct_14)), ((new stdgo.bytes_test.Bytes_test.T__struct_14(((-1 : GoInt64)), ((0 : GoInt)), ((("" : GoString))), Go.toInterface(((("bytes.Reader.ReadAt: negative offset" : GoString))))) : stdgo.bytes_test.Bytes_test.T__struct_14))) : Slice<stdgo.bytes_test.Bytes_test.T__struct_14>));
        for (_i => _tt in _tests) {
            var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got:GoString = ((((_b.__slice__(0, _rn) : Slice<GoUInt8>)) : GoString));
            if (_got != _tt._want) {
                _t.errorf(((("%d. got %q; want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
            if (stdgo.fmt.Fmt.sprintf(((("%v" : GoString))), Go.toInterface(_err)) != stdgo.fmt.Fmt.sprintf(((("%v" : GoString))), Go.toInterface(_tt._wanterr))) {
                _t.errorf(((("%d. got error = %v; want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._wanterr));
            };
        };
    }
function testReaderAtConcurrent(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Reader> = newReader(((((("0123456789" : GoString))) : Slice<GoByte>)));
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _wg.add(((1 : GoInt)));
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        __deferstack__.unshift(() -> _wg.done());
                        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) ((0 : GoUInt8))]);
                        _r.readAt(((_buf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoInt64)));
                    };
                    a(_i);
                });
            });
        };
        _wg.wait();
    }
function testEmptyReaderConcurrent(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Reader> = newReader(((new Slice<GoUInt8>() : Slice<GoUInt8>)));
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _wg.add(((2 : GoInt)));
                Go.routine(() -> {
                    var a = function():Void {
                        __deferstack__.unshift(() -> _wg.done());
                        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) ((0 : GoUInt8))]);
                        _r.read(((_buf.__slice__(0) : Slice<GoUInt8>)));
                    };
                    a();
                });
                Go.routine(() -> {
                    var a = function():Void {
                        __deferstack__.unshift(() -> _wg.done());
                        _r.read(((null : Slice<GoUInt8>)));
                    };
                    a();
                });
            });
        };
        _wg.wait();
    }
function testReaderWriteTo(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _l:GoInt = ((0 : GoInt));
                if (_i > ((0 : GoInt))) {
                    _l = (_testString != null ? _testString.length : ((0 : GoInt))) / _i;
                };
                var _s:GoString = ((_testString.__slice__(0, _l) : GoString));
                var _r:Ref<Reader> = newReader(((_testBytes.__slice__(0, _l) : Slice<GoUInt8>)));
                var _b:Buffer = new Buffer();
                var __tmp__ = _r.writeTo(_b), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect:GoInt64 = (((_s != null ? _s.length : ((0 : GoInt))) : GoInt64));
                    if (_n != _expect) {
                        _t.errorf(((("got %v; want %v" : GoString))), Go.toInterface(_n), Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(((("for length %d: got error = %v; want nil" : GoString))), Go.toInterface(_l), Go.toInterface(_err));
                };
                if (((_b.toString() : GoString)) != _s) {
                    _t.errorf(((("got string %q; want %q" : GoString))), Go.toInterface(((_b.toString() : GoString))), Go.toInterface(_s));
                };
                if (_r.len() != ((0 : GoInt))) {
                    _t.errorf(((("reader contains %v bytes; want 0" : GoString))), Go.toInterface(_r.len()));
                };
            });
        };
    }
function testReaderLen(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _r:Ref<Reader> = newReader(((((("hello world" : GoString))) : Slice<GoByte>)));
        {
            var _got:GoInt = _r.len(), _want:GoInt = ((11 : GoInt));
            if (_got != _want) {
                _t.errorf(((("r.Len(): got %d, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != ((10 : GoInt)))) {
                _t.errorf(((("Read failed: read %d %v" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _got:GoInt = _r.len(), _want:GoInt = ((1 : GoInt));
            if (_got != _want) {
                _t.errorf(((("r.Len(): got %d, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != ((1 : GoInt)))) {
                _t.errorf(((("Read failed: read %d %v; want 1, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _got:GoInt = _r.len(), _want:GoInt = ((0 : GoInt));
            if (_got != _want) {
                _t.errorf(((("r.Len(): got %d, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.testing.Testing.T_):Void {
        for (_ => _tt in unreadRuneErrorTests) {
            var _reader:Ref<Reader> = newReader(((((("0123456789" : GoString))) : Slice<GoByte>)));
            {
                var __tmp__ = _reader.readRune(), _:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err:stdgo.Error = _reader.unreadRune();
            if (_err == null) {
                _t.errorf(((("Unreading after %s: expected error" : GoString))), Go.toInterface(_tt._name));
            };
        };
    }
function testReaderDoubleUnreadRune(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<Buffer> = newBuffer(((((("groucho" : GoString))) : Slice<GoByte>)));
        {
            var __tmp__ = _buf.readRune(), _:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
                _t.fatal(Go.toInterface(((("UnreadByte: expected error, got nil" : GoString)))));
            };
        };
    }
@:structInit class T_nErr_testReaderCopyNothing_0 {
    public var _n : GoInt64 = ((0 : GoInt64));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_n:GoInt64, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nErr_testReaderCopyNothing_0(_n, _err);
    }
}
@:structInit class T_justReader_testReaderCopyNothing_1 {
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_justReader_testReaderCopyNothing_1(reader);
    }
}
@:structInit class T_justWriter_testReaderCopyNothing_2 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_justWriter_testReaderCopyNothing_2(writer);
    }
}
function testReaderCopyNothing(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        {};
        var _discard:stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2 = ((new stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2(stdgo.io.Io.discard) : stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2));
        var _with:T_nErr_testReaderCopyNothing_0 = new stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0(), _withOut:T_nErr_testReaderCopyNothing_0 = new stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0();
        {
            var __tmp__ = stdgo.io.Io.copy(_discard, newReader(((null : Slice<GoUInt8>))));
            _with._n = __tmp__._0;
            _with._err = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(_discard, ((new stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1(newReader(((null : Slice<GoUInt8>)))) : stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1)));
            _withOut._n = __tmp__._0;
            _withOut._err = __tmp__._1;
        };
        if (_with != _withOut) {
            _t.errorf(((("behavior differs: with = %#v; without: %#v" : GoString))), Go.toInterface(_with), Go.toInterface(_withOut));
        };
    }
function testReaderLenSize(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Reader> = newReader(((((("abc" : GoString))) : Slice<GoByte>)));
        stdgo.io.Io.copyN(stdgo.io.Io.discard, _r, ((1 : GoInt64)));
        if (_r.len() != ((2 : GoInt))) {
            _t.errorf(((("Len = %d; want 2" : GoString))), Go.toInterface(_r.len()));
        };
        if (_r.size() != ((3 : GoInt64))) {
            _t.errorf(((("Size = %d; want 3" : GoString))), Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<Reader> = newReader(((((("世界" : GoString))) : Slice<GoByte>)));
        {
            var __tmp__ = _r.readRune(), _:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(((("ReadRune: unexpected error: %v" : GoString))), Go.toInterface(_err));
            };
        };
        {};
        _r.reset(((((("abcdef" : GoString))) : Slice<GoByte>)));
        {
            var _err:stdgo.Error = _r.unreadRune();
            if (_err == null) {
                _t.errorf(((("UnreadRune: expected error, got nil" : GoString))));
            };
        };
        var __tmp__ = stdgo.io.Io.readAll(_r), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("ReadAll: unexpected error: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _got:GoString = ((_buf : GoString));
            if (_got != ((("abcdef" : GoString)))) {
                _t.errorf(((("ReadAll: got %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(((("abcdef" : GoString)))));
            };
        };
    }
function testReaderZero(_t:stdgo.testing.Testing.T_):Void {
        {
            var _l:GoInt = (((new Reader() : Reader))).len();
            if (_l != ((0 : GoInt))) {
                _t.errorf(((("Len: got %d, want 0" : GoString))), Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).read(((null : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((("Read: got %d, %v; want 0, io.EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).readAt(((null : Slice<GoUInt8>)), ((11 : GoInt64))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((("ReadAt: got %d, %v; want 0, io.EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_b != ((0 : GoUInt8))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((("ReadByte: got %d, %v; want 0, io.EOF" : GoString))), Go.toInterface(_b), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).readRune(), _ch:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != ((0 : GoInt32))) || (_size != ((0 : GoInt)))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : GoString))), Go.toInterface(_ch), Go.toInterface(_size), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).seek(((11 : GoInt64)), ((0 : GoInt))), _offset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_offset != ((11 : GoInt64))) || (_err != null)) {
                _t.errorf(((("Seek: got %d, %v; want 11, nil" : GoString))), Go.toInterface(_offset), Go.toInterface(_err));
            };
        };
        {
            var _s:GoInt64 = (((new Reader() : Reader))).size();
            if (_s != ((0 : GoInt64))) {
                _t.errorf(((("Size: got %d, want 0" : GoString))), Go.toInterface(_s));
            };
        };
        if ((((new Reader() : Reader))).unreadByte() == null) {
            _t.errorf(((("UnreadByte: got nil, want error" : GoString))));
        };
        if ((((new Reader() : Reader))).unreadRune() == null) {
            _t.errorf(((("UnreadRune: got nil, want error" : GoString))));
        };
        {
            var __tmp__ = (((new Reader() : Reader))).writeTo(stdgo.io.Io.discard), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt64))) || (_err != null)) {
                _t.errorf(((("WriteTo: got %d, %v; want 0, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
@:keep var _ = {
        try {
            _testBytes = new Slice<GoUInt8>(...[for (i in 0 ... ((((10000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((10000 : GoInt)), _i++, {
                    if (_testBytes != null) _testBytes[_i] = ((((("a" : GoString))).code : GoRune)) + (((_i % ((26 : GoInt))) : GoByte));
                });
            };
            _testString = ((_testBytes : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_negativeReader_wrapper {
    @:keep
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        return { _0 : ((-1 : GoInt)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_negativeReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_negativeReader_static_extension {
    @:keep
    public static function read( _r:Ref<stdgo.bytes_test.Bytes_test.T_negativeReader>, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        return { _0 : ((-1 : GoInt)), _1 : ((null : stdgo.Error)) };
    }
}
class T_panicReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        (_r == null ? null : _r.__copy__());
        if (_r._panic) {
            throw Go.toInterface(null);
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
    }
    public var __t__ : T_panicReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_panicReader_static_extension {
    @:keep
    public static function read( _r:stdgo.bytes_test.Bytes_test.T_panicReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        (_r == null ? null : _r.__copy__());
        if (_r._panic) {
            throw Go.toInterface(null);
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
    }
}
class BinOpTest_wrapper {
    public var __t__ : BinOpTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class SplitTest_wrapper {
    public var __t__ : SplitTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class FieldsTest_wrapper {
    public var __t__ : FieldsTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class StringTest_wrapper {
    public var __t__ : StringTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class RepeatTest_wrapper {
    public var __t__ : RepeatTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class RunesTest_wrapper {
    public var __t__ : RunesTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class TrimTest_wrapper {
    public var __t__ : TrimTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_predicate_wrapper {
    public var __t__ : T_predicate;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class TrimFuncTest_wrapper {
    public var __t__ : TrimFuncTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class IndexFuncTest_wrapper {
    public var __t__ : IndexFuncTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReplaceTest_wrapper {
    public var __t__ : ReplaceTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class TitleTest_wrapper {
    public var __t__ : TitleTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_5_wrapper {
    public var __t__ : T__struct_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_6_wrapper {
    public var __t__ : T__struct_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_7_wrapper {
    public var __t__ : T__struct_7;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_8_wrapper {
    public var __t__ : T__struct_8;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_9_wrapper {
    public var __t__ : T__struct_9;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_10_wrapper {
    public var __t__ : T__struct_10;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_11_wrapper {
    public var __t__ : T__struct_11;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_12_wrapper {
    public var __t__ : T__struct_12;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_13_wrapper {
    public var __t__ : T__struct_13;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_14_wrapper {
    public var __t__ : T__struct_14;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_15_wrapper {
    public var __t__ : T__struct_15;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_nErr_testReaderCopyNothing_0_wrapper {
    public var __t__ : T_nErr_testReaderCopyNothing_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_justReader_testReaderCopyNothing_1_wrapper {
    public var __t__ : T_justReader_testReaderCopyNothing_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_justWriter_testReaderCopyNothing_2_wrapper {
    public var __t__ : T_justWriter_testReaderCopyNothing_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
