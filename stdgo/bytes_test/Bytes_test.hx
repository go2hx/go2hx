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
var _readBytesTests : Slice<T__struct_0> = ((new Slice<T__struct_0>((({ _buffer : ((((("" : GoString))) : GoString)), _delim : ((0 : GoUInt8)), _expected : ((new Slice<GoString>(((((("" : GoString))) : GoString))) : Slice<GoString>)), _err : stdgo.io.Io.eof } : T__struct_0)), (({ _buffer : ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), _delim : ((0 : GoUInt8)), _expected : ((new Slice<GoString>(((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_0)), (({ _buffer : ((((("abbbaaaba" : GoString))) : GoString)), _delim : (("b".code : GoUInt8)), _expected : ((new Slice<GoString>(((((("ab" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("aaab" : GoString))) : GoString))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_0)), (({ _buffer : ((((("hello" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + (("world" : GoString))) : GoString)), _delim : ((1 : GoUInt8)), _expected : ((new Slice<GoString>(((((("hello" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))) : GoString))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_0)), (({ _buffer : ((((("foo\nbar" : GoString))) : GoString)), _delim : ((0 : GoUInt8)), _expected : ((new Slice<GoString>(((((("foo\nbar" : GoString))) : GoString))) : Slice<GoString>)), _err : stdgo.io.Io.eof } : T__struct_0)), (({ _buffer : ((((("alpha\nbeta\ngamma\n" : GoString))) : GoString)), _delim : (("\n".code : GoUInt8)), _expected : ((new Slice<GoString>(((((("alpha\n" : GoString))) : GoString)), ((((("beta\n" : GoString))) : GoString)), ((((("gamma\n" : GoString))) : GoString))) : Slice<GoString>)), _err : ((null : stdgo.Error)) } : T__struct_0)), (({ _buffer : ((((("alpha\nbeta\ngamma" : GoString))) : GoString)), _delim : (("\n".code : GoUInt8)), _expected : ((new Slice<GoString>(((((("alpha\n" : GoString))) : GoString)), ((((("beta\n" : GoString))) : GoString)), ((((("gamma" : GoString))) : GoString))) : Slice<GoString>)), _err : stdgo.io.Io.eof } : T__struct_0))) : Slice<T__struct_0>));
var _abcd : GoString = ((((("abcd" : GoString))) : GoString));
var _faces : GoString = ((((("☺☻☹" : GoString))) : GoString));
var _commas : GoString = ((((("1,2,3,4" : GoString))) : GoString));
var _dots : GoString = ((((("1....2....3....4" : GoString))) : GoString));
var _indexTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("baz" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("barfoobarfoo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abcABCabc" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("x" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("x" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("barfoobarfooyyyzzzyyyzzzyyyzzzyyyxxxzzzyyy" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((33 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofooofoboo" : GoString))) : GoString)), ((((("oo" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofoboo" : GoString))) : GoString)), ((((("ob" : GoString))) : GoString)), ((11 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofoboo" : GoString))) : GoString)), ((((("boo" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofoboo" : GoString))) : GoString)), ((((("oboo" : GoString))) : GoString)), ((11 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoooboo" : GoString))) : GoString)), ((((("fooo" : GoString))) : GoString)), ((8 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofoboo" : GoString))) : GoString)), ((((("foboo" : GoString))) : GoString)), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofoboo" : GoString))) : GoString)), ((((("fofob" : GoString))) : GoString)), ((8 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffof" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffof" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofo" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofo" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoo" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoo" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoob" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoob" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofooba" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofooba" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobar" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobar" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobarf" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobarf" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobarfo" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobarfo" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobarfoo" : GoString))) : GoString)), ((13 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("foffofoobarfoo" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("ofoffofoobarfoo" : GoString))) : GoString)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("ofoffofoobarfoo" : GoString))) : GoString)), ((11 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("fofoffofoobarfoo" : GoString))) : GoString)), ((11 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofofofoffofoobarfoo" : GoString))) : GoString)), ((((("fofoffofoobarfoo" : GoString))) : GoString)), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fofofofofoofofoffofoobarfoo" : GoString))) : GoString)), ((((("foobars" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foofyfoobarfoobar" : GoString))) : GoString)), ((((("y" : GoString))) : GoString)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("oooooooooooooooooooooo" : GoString))) : GoString)), ((((("r" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("oxoxoxoxoxoxoxoxoxoxoxoy" : GoString))) : GoString)), ((((("oy" : GoString))) : GoString)), ((22 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("oxoxoxoxoxoxoxoxoxoxoxox" : GoString))) : GoString)), ((((("oy" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("000000000000000000000000000000000000000000000000000000000000000000000001" : GoString))) : GoString)), ((((("0000000000000000000000000000000000000000000000000000000000000000001" : GoString))) : GoString)), ((5 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _lastIndexTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("fo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("barfoobarfoo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((9 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("foo" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abcABCabc" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abcABCabc" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((6 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _indexAnyTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((((((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("aaa" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("xcz" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("ab☺c" : GoString))) : GoString)), ((((("x☺yz" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("cx" : GoString))) : GoString)), (((((("a☺b☻" : GoString))) : GoString)) != null ? ((((("a☺b☻" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("uvw☻xyz" : GoString))) : GoString)), (((((("a☺b" : GoString))) : GoString)) != null ? ((((("a☺b" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("aRegExp*" : GoString))) : GoString)), (((((".(|)*+?^$$[]" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (((((" " : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("012abcba210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _lastIndexAnyTests : Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((((((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("aaa" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abc" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("ab☺c" : GoString))) : GoString)), ((((("x☺yz" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("cx" : GoString))) : GoString)), (((((("a☺b☻" : GoString))) : GoString)) != null ? ((((("a☺b☻" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("uvw☻xyz" : GoString))) : GoString)), (((((("a☺b" : GoString))) : GoString)) != null ? ((((("a☺b" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a.RegExp*" : GoString))) : GoString)), (((((".(|)*+?^$$[]" : GoString))) : GoString)), ((8 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (((((" " : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("012abcba210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((6 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)),
((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
var _indexSizes : Slice<GoInt> = ((new Slice<GoInt>(((10 : GoInt)), ((32 : GoInt)), ((4096 : GoInt)), ((4194304 : GoInt)), ((67108864 : GoInt))) : Slice<GoInt>));
var _isRaceBuilder : Bool = stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), ((((("-race" : GoString))) : GoString)));
var _splittests : Slice<stdgo.bytes_test.Bytes_test.SplitTest> = ((new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((0 : GoInt)), ((null : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((2 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("z" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("abcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ((((("," : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ((((("..." : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), (((((".2" : GoString))) : GoString)), (((((".3" : GoString))) : GoString)), (((((".4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((((("☹" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺☻" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((((("~" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("1 2 3 4" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3 4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("1 2" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((2 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("23" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((17 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("bT" : GoString))) : GoString)), ((((("T" : GoString))) : GoString)), ((536870911 : GoInt)), ((new Slice<GoString>(((((("b" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest))) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>));
var _splitaftertests : Slice<stdgo.bytes_test.Bytes_test.SplitTest> = ((new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("z" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("abcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ((((("," : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1," : GoString))) : GoString)), ((((("2," : GoString))) : GoString)), ((((("3," : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ((((("..." : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1..." : GoString))) : GoString)), (((((".2..." : GoString))) : GoString)), (((((".3..." : GoString))) : GoString)), (((((".4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((((("☹" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺☻☹" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((((("~" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("1 2 3 4" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2 " : GoString))) : GoString)), ((((("3 4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("1 2 3" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2 " : GoString))) : GoString)), ((((("3" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("1 2" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((2 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("23" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest)),
((new stdgo.bytes_test.Bytes_test.SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((17 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.SplitTest))) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>));
var _fieldstests : Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = ((new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest((((((" " : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest((((((" \t " : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("  abc  " : GoString))) : GoString)), ((new Slice<GoString>(((((("abc" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("1 2 3 4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("1  2  3  4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("1\t\t2\t\t3\t4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("1\u20002\u20013\u20024" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("\u2000\u2001\u2002" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("\n™\t™\n" : GoString))) : GoString)), ((new Slice<GoString>(((((("™" : GoString))) : GoString)), ((((("™" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)),
((new stdgo.bytes_test.Bytes_test.FieldsTest(_faces, ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest))) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>));
var _upperTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = ((new Slice<stdgo.bytes_test.Bytes_test.StringTest>(((new stdgo.bytes_test.Bytes_test.StringTest(((((("" : GoString))) : GoString)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("ONLYUPPER" : GoString))) : GoString)), ((((((("ONLYUPPER" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("abc" : GoString))) : GoString)), ((((((("ABC" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("AbC123" : GoString))) : GoString)), ((((((("ABC123" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("azAZ09_" : GoString))) : GoString)), ((((((("AZAZ09_" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("longStrinGwitHmixofsmaLLandcAps" : GoString))) : GoString)), ((((((("LONGSTRINGWITHMIXOFSMALLANDCAPS" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("long\u0250string\u0250with\u0250nonascii\u2C6Fchars" : GoString))) : GoString)), ((((((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("\u0250\u0250\u0250\u0250\u0250" : GoString))) : GoString)), ((((((("\u2C6F\u2C6F\u2C6F\u2C6F\u2C6F" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("a\u0080\u{0010FFFF}" : GoString))) : GoString)), ((((((("A\u0080\u{0010FFFF}" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest))) : Slice<stdgo.bytes_test.Bytes_test.StringTest>));
var _lowerTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = ((new Slice<stdgo.bytes_test.Bytes_test.StringTest>(((new stdgo.bytes_test.Bytes_test.StringTest(((((("" : GoString))) : GoString)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("abc" : GoString))) : GoString)), ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("AbC123" : GoString))) : GoString)), ((((((("abc123" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("azAZ09_" : GoString))) : GoString)), ((((((("azaz09_" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("longStrinGwitHmixofsmaLLandcAps" : GoString))) : GoString)), ((((((("longstringwithmixofsmallandcaps" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))) : GoString)), ((((((("long\u0250string\u0250with\u0250nonascii\u0250chars" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("\u2C6D\u2C6D\u2C6D\u2C6D\u2C6D" : GoString))) : GoString)), ((((((("\u0251\u0251\u0251\u0251\u0251" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)), ((new stdgo.bytes_test.Bytes_test.StringTest(((((("A\u0080\u{0010FFFF}" : GoString))) : GoString)), ((((((("a\u0080\u{0010FFFF}" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest))) : Slice<stdgo.bytes_test.Bytes_test.StringTest>));
var _trimSpaceTests : Slice<stdgo.bytes_test.Bytes_test.StringTest> = ((new Slice<stdgo.bytes_test.Bytes_test.StringTest>(
((new stdgo.bytes_test.Bytes_test.StringTest(((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("  a" : GoString))) : GoString)), ((((((("a" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("b  " : GoString))) : GoString)), ((((((("b" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("abc" : GoString))) : GoString)), ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((((" " : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("\u3000 " : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((((" \u3000" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((((" \t\r\n \t\t\r\r\n\n " : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((((" \t\r\n x\t\t\r\r\n\n " : GoString))) : GoString)), ((((((("x" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : GoString))) : GoString)), ((((((("x\t\t\r\r\ny" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("1 \t\r\n2" : GoString))) : GoString)), ((((((("1 \t\r\n2" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest((((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest)),
((new stdgo.bytes_test.Bytes_test.StringTest(((((("x ☺ " : GoString))) : GoString)), ((((((("x ☺" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.StringTest))) : Slice<stdgo.bytes_test.Bytes_test.StringTest>));
var _toValidUTF8Tests : Slice<T__struct_3> = ((new Slice<T__struct_3>(
(({ _in : ((((("" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : ((((("abc" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("abc" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : ((((("\uFDDD" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFDDD" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("a\uFFFDb" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b\uFFFD" : GoString))) : GoString)), _repl : ((((("X" : GoString))) : GoString)), _out : ((((("aXb\uFFFD" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : ((((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _repl : ((((("" : GoString))) : GoString)), _out : ((((("a☺b☺c☺" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : ((((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _repl : ((((("日本語" : GoString))) : GoString)), _out : ((((("a☺日本語b☺日本語c☺日本語" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : (((((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : (((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _repl : ((((("abc" : GoString))) : GoString)), _out : ((((("abc" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : (((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("af") : GoString))) : GoString)), _repl : ((((("☺" : GoString))) : GoString)), _out : ((((("☺" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : (((((haxe.io.Bytes.ofHex("F8") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_3)),
(({ _in : (((((haxe.io.Bytes.ofHex("FC") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_3))) : Slice<T__struct_3>));
var repeatTests : Slice<stdgo.bytes_test.Bytes_test.RepeatTest> = ((new Slice<stdgo.bytes_test.Bytes_test.RepeatTest>(((new stdgo.bytes_test.Bytes_test.RepeatTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((((("-" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((((("-" : GoString))) : GoString)), ((((("-" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((((("-" : GoString))) : GoString)), ((((("----------" : GoString))) : GoString)), ((10 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest)), ((new stdgo.bytes_test.Bytes_test.RepeatTest(((((("abc " : GoString))) : GoString)), ((((("abc abc abc " : GoString))) : GoString)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.RepeatTest))) : Slice<stdgo.bytes_test.Bytes_test.RepeatTest>));
var runesTests : Slice<stdgo.bytes_test.Bytes_test.RunesTest> = ((new Slice<stdgo.bytes_test.Bytes_test.RunesTest>(((new stdgo.bytes_test.Bytes_test.RunesTest(((((("" : GoString))) : GoString)), ((new Slice<GoInt32>() : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest((((((" " : GoString))) : GoString)), ((new Slice<GoInt32>(((32 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((((("ABC" : GoString))) : GoString)), ((new Slice<GoInt32>(((65 : GoInt32)), ((66 : GoInt32)), ((67 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((((("abc" : GoString))) : GoString)), ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((((("\u65e5\u672c\u8a9e" : GoString))) : GoString)), ((new Slice<GoInt32>(((26085 : GoInt32)), ((26412 : GoInt32)), ((35486 : GoInt32))) : Slice<GoInt32>)), false) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("c" : GoString))) : GoString)), ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), true) : stdgo.bytes_test.Bytes_test.RunesTest)), ((new stdgo.bytes_test.Bytes_test.RunesTest(((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("c" : GoString))) : GoString)), ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), true) : stdgo.bytes_test.Bytes_test.RunesTest))) : Slice<stdgo.bytes_test.Bytes_test.RunesTest>));
var _trimTests : Slice<stdgo.bytes_test.Bytes_test.TrimTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TrimTest>(
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("bb" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("bba" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("abb" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("<tag>" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((((("tag" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("* listitem" : GoString))) : GoString)), (((((" *" : GoString))) : GoString)), ((((("listitem" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), (("\"quote\"" : GoString)), (("\"" : GoString)), ((((("quote" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("\u2C6F\u2C6F\u0250\u0250\u2C6F\u2C6F" : GoString))) : GoString)), ((((("\u2C6F" : GoString))) : GoString)), ((((("\u0250\u0250" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("80") : GoString)) + (("test" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), ((((("test" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), (((((" Ġ " : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((((("Ġ" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), (((((" Ġİ0" : GoString))) : GoString)), ((((("0 " : GoString))) : GoString)), ((((("Ġİ" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("Trim" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimLeft" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimLeft" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimRight" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimRight" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimRight" : GoString))) : GoString)), ((((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((("☺" : GoString))) : GoString)), ((((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimPrefix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("abb" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimPrefix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimSuffix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest)),
((new stdgo.bytes_test.Bytes_test.TrimTest(((((("TrimSuffix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("aab" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TrimTest))) : Slice<stdgo.bytes_test.Bytes_test.TrimTest>));
var _trimNilTests : Slice<stdgo.bytes_test.Bytes_test.TrimNilTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>(
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("Trim" : GoString))) : GoString)), ((null : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("Trim" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("Trim" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("Trim" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8)), (("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("Trim" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("ab" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("Trim" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8)), (("b".code : GoUInt8))) : Slice<GoUInt8>)), ((((("ab" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("Trim" : GoString))) : GoString)), ((((((("☺" : GoString))) : GoString)) : Slice<GoByte>)), ((((("☺" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimLeft" : GoString))) : GoString)), ((null : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimLeft" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimLeft" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimLeft" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8)), (("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimLeft" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("ab" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimLeft" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8)), (("b".code : GoUInt8))) : Slice<GoUInt8>)), ((((("ab" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimLeft" : GoString))) : GoString)), ((((((("☺" : GoString))) : GoString)) : Slice<GoByte>)), ((((("☺" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimRight" : GoString))) : GoString)), ((null : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimRight" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimRight" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimRight" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8)), (("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimRight" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("ab" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimRight" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8)), (("b".code : GoUInt8))) : Slice<GoUInt8>)), ((((("ab" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimRight" : GoString))) : GoString)), ((((((("☺" : GoString))) : GoString)) : Slice<GoByte>)), ((((("☺" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimPrefix" : GoString))) : GoString)), ((null : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimPrefix" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimPrefix" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimPrefix" : GoString))) : GoString)), ((((((("☺" : GoString))) : GoString)) : Slice<GoByte>)), ((((("☺" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimSuffix" : GoString))) : GoString)), ((null : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimSuffix" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((((("" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimSuffix" : GoString))) : GoString)), ((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), ((((("a" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest)),
((new stdgo.bytes_test.Bytes_test.TrimNilTest(((((("TrimSuffix" : GoString))) : GoString)), ((((((("☺" : GoString))) : GoString)) : Slice<GoByte>)), ((((("☺" : GoString))) : GoString)), ((new Slice<GoUInt8>() : Slice<GoUInt8>))) : stdgo.bytes_test.Bytes_test.TrimNilTest))) : Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>));
var _isSpace : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isSpace, ((((("IsSpace" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _isDigit : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isDigit, ((((("IsDigit" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _isUpper : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(stdgo.unicode.Unicode.isUpper, ((((("IsUpper" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _isValidRune : stdgo.bytes_test.Bytes_test.T_predicate = ((new stdgo.bytes_test.Bytes_test.T_predicate(function(_r:GoRune):Bool {
        return _r != ((65533 : GoInt32));
    }, ((((("IsValidRune" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.T_predicate));
var _trimFuncTests : Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>(((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : Slice<GoByte>)), ((((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isDigit == null ? null : _isDigit.__copy__()), ((((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))) : GoString)), ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("hello34\u0e50\u0e51" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("\u0e50\u0e5212hello" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isUpper == null ? null : _isUpper.__copy__()), ((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("helloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhello" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()), ((((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))) : GoString)), ((((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : Slice<GoByte>)), ((((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), ((((("hello\u0e50\u0e521234\u0e50\u0e51helo" : GoString))) : GoString)), ((((((("\u0e50\u0e521234\u0e50\u0e51" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("\u0e50\u0e521234\u0e50\u0e51helo" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("hello\u0e50\u0e521234\u0e50\u0e51" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isValidRune == null ? null : _isValidRune.__copy__()), ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), (((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>)), (((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) : Slice<GoByte>)), (((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), ((((("" : GoString))) : GoString)), ((null : Slice<GoUInt8>)), ((null : Slice<GoUInt8>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest)), ((new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), (((((" " : GoString))) : GoString)), ((null : Slice<GoUInt8>)), ((null : Slice<GoUInt8>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))) : stdgo.bytes_test.Bytes_test.TrimFuncTest))) : Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>));
var _indexFuncTests : Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest> = ((new Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>(
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("" : GoString))) : GoString)), (_isValidRune == null ? null : _isValidRune.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("abc" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("0123" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((0 : GoInt)), ((3 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("a1b" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (_isSpace == null ? null : _isSpace.__copy__()), ((0 : GoInt)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((0 : GoInt)), ((18 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), (_isUpper == null ? null : _isUpper.__copy__()), ((0 : GoInt)), ((34 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("12\u0e50\u0e52hello34\u0e50\u0e51" : GoString))) : GoString)), (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), ((8 : GoInt)), ((12 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((((haxe.io.Bytes.ofHex("80") : GoString)) + (("1" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_isValidRune == null ? null : _isValidRune.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((5 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((2 : GoInt)), ((4 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest)),
((new stdgo.bytes_test.Bytes_test.IndexFuncTest(((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("e0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("cd" : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((1 : GoInt)), ((2 : GoInt))) : stdgo.bytes_test.Bytes_test.IndexFuncTest))) : Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>));
var replaceTests : Slice<stdgo.bytes_test.Bytes_test.ReplaceTest> = ((new Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>(
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("hello" : GoString))) : GoString)), ((((("l" : GoString))) : GoString)), ((((("L" : GoString))) : GoString)), ((0 : GoInt)), ((((("hello" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("hello" : GoString))) : GoString)), ((((("l" : GoString))) : GoString)), ((((("L" : GoString))) : GoString)), ((-1 : GoInt)), ((((("heLLo" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("hello" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((-1 : GoInt)), ((((("hello" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((-1 : GoInt)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("radar" : GoString))) : GoString)), ((((("r" : GoString))) : GoString)), ((((("<r>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<r>ada<r>" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<>" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("b<>n<>n<>" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((1 : GoInt)), ((((("b<>nana" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((1000 : GoInt)), ((((("b<>n<>n<>" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("an" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("b<><>a" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("ana" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("b<>na" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<>b<>a<>n<>a<>n<>a<>" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((10 : GoInt)), ((((("<>b<>a<>n<>a<>n<>a<>" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((6 : GoInt)), ((((("<>b<>a<>n<>a<>n<>a" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((5 : GoInt)), ((((("<>b<>a<>n<>a<>na" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((1 : GoInt)), ((((("<>banana" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((((("banana" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((1 : GoInt)), ((((("banana" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest)),
((new stdgo.bytes_test.Bytes_test.ReplaceTest(((((("☺☻☹" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<>☺<>☻<>☹<>" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.ReplaceTest))) : Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>));
var titleTests : Slice<stdgo.bytes_test.Bytes_test.TitleTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(((new stdgo.bytes_test.Bytes_test.TitleTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((((" aaa aaa aaa " : GoString))) : GoString)), (((((" Aaa Aaa Aaa " : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((((" Aaa Aaa Aaa " : GoString))) : GoString)), (((((" Aaa Aaa Aaa " : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("123a456" : GoString))) : GoString)), ((((("123a456" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("double-blind" : GoString))) : GoString)), ((((("Double-Blind" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("ÿøû" : GoString))) : GoString)), ((((("Ÿøû" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("with_underscore" : GoString))) : GoString)), ((((("With_underscore" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" line separator" : GoString))) : GoString)), ((((("Unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" Line Separator" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest))) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>));
var toTitleTests : Slice<stdgo.bytes_test.Bytes_test.TitleTest> = ((new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(((new stdgo.bytes_test.Bytes_test.TitleTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((((" aaa aaa aaa " : GoString))) : GoString)), (((((" AAA AAA AAA " : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest((((((" Aaa Aaa Aaa " : GoString))) : GoString)), (((((" AAA AAA AAA " : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("123a456" : GoString))) : GoString)), ((((("123A456" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("double-blind" : GoString))) : GoString)), ((((("DOUBLE-BLIND" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest)), ((new stdgo.bytes_test.Bytes_test.TitleTest(((((("ÿøû" : GoString))) : GoString)), ((((("ŸØÛ" : GoString))) : GoString))) : stdgo.bytes_test.Bytes_test.TitleTest))) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>));
var equalFoldTests : Slice<T__struct_6> = ((new Slice<T__struct_6>(
(({ _s : ((((("abc" : GoString))) : GoString)), _t : ((((("abc" : GoString))) : GoString)), _out : true } : T__struct_6)),
(({ _s : ((((("ABcd" : GoString))) : GoString)), _t : ((((("ABcd" : GoString))) : GoString)), _out : true } : T__struct_6)),
(({ _s : ((((("123abc" : GoString))) : GoString)), _t : ((((("123ABC" : GoString))) : GoString)), _out : true } : T__struct_6)),
(({ _s : ((((("αβδ" : GoString))) : GoString)), _t : ((((("ΑΒΔ" : GoString))) : GoString)), _out : true } : T__struct_6)),
(({ _s : ((((("abc" : GoString))) : GoString)), _t : ((((("xyz" : GoString))) : GoString)), _out : false } : T__struct_6)),
(({ _s : ((((("abc" : GoString))) : GoString)), _t : ((((("XYZ" : GoString))) : GoString)), _out : false } : T__struct_6)),
(({ _s : ((((("abcdefghijk" : GoString))) : GoString)), _t : ((((("abcdefghijX" : GoString))) : GoString)), _out : false } : T__struct_6)),
(({ _s : ((((("abcdefghijk" : GoString))) : GoString)), _t : ((((("abcdefghij\u212A" : GoString))) : GoString)), _out : true } : T__struct_6)),
(({ _s : ((((("abcdefghijK" : GoString))) : GoString)), _t : ((((("abcdefghij\u212A" : GoString))) : GoString)), _out : true } : T__struct_6)),
(({ _s : ((((("abcdefghijkz" : GoString))) : GoString)), _t : ((((("abcdefghij\u212Ay" : GoString))) : GoString)), _out : false } : T__struct_6)),
(({ _s : ((((("abcdefghijKz" : GoString))) : GoString)), _t : ((((("abcdefghij\u212Ay" : GoString))) : GoString)), _out : false } : T__struct_6))) : Slice<T__struct_6>));
var _cutTests : Slice<T__struct_7> = ((new Slice<T__struct_7>((({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("b" : GoString))) : GoString)), _before : ((((("a" : GoString))) : GoString)), _after : ((((("c" : GoString))) : GoString)), _found : true } : T__struct_7)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("a" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("bc" : GoString))) : GoString)), _found : true } : T__struct_7)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("c" : GoString))) : GoString)), _before : ((((("ab" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : true } : T__struct_7)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("abc" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : true } : T__struct_7)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("abc" : GoString))) : GoString)), _found : true } : T__struct_7)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("d" : GoString))) : GoString)), _before : ((((("abc" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : false } : T__struct_7)), (({ _s : ((((("" : GoString))) : GoString)), _sep : ((((("d" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : false } : T__struct_7)), (({ _s : ((((("" : GoString))) : GoString)), _sep : ((((("" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : true } : T__struct_7))) : Slice<T__struct_7>));
var _containsTests : Slice<T__struct_8> = ((new Slice<T__struct_8>((({ _b : ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>)), _subslice : ((((((("hel" : GoString))) : GoString)) : Slice<GoByte>)), _want : true } : T__struct_8)), (({ _b : ((((((("日本語" : GoString))) : GoString)) : Slice<GoByte>)), _subslice : ((((((("日本" : GoString))) : GoString)) : Slice<GoByte>)), _want : true } : T__struct_8)), (({ _b : ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>)), _subslice : ((((((("Hello, world" : GoString))) : GoString)) : Slice<GoByte>)), _want : false } : T__struct_8)), (({ _b : ((((((("東京" : GoString))) : GoString)) : Slice<GoByte>)), _subslice : ((((((("京東" : GoString))) : GoString)) : Slice<GoByte>)), _want : false } : T__struct_8))) : Slice<T__struct_8>));
var containsAnyTests : Slice<T__struct_9> = ((new Slice<T__struct_9>(
(({ _b : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("" : GoString))) : GoString)), _expected : false } : T__struct_9)),
(({ _b : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("a" : GoString))) : GoString)), _expected : false } : T__struct_9)),
(({ _b : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("abc" : GoString))) : GoString)), _expected : false } : T__struct_9)),
(({ _b : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("" : GoString))) : GoString)), _expected : false } : T__struct_9)),
(({ _b : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("a" : GoString))) : GoString)), _expected : true } : T__struct_9)),
(({ _b : ((((((("aaa" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("a" : GoString))) : GoString)), _expected : true } : T__struct_9)),
(({ _b : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("xyz" : GoString))) : GoString)), _expected : false } : T__struct_9)),
(({ _b : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("xcz" : GoString))) : GoString)), _expected : true } : T__struct_9)),
(({ _b : ((((((("a☺b☻c☹d" : GoString))) : GoString)) : Slice<GoByte>)), _substr : ((((("uvw☻xyz" : GoString))) : GoString)), _expected : true } : T__struct_9)),
(({ _b : ((((((("aRegExp*" : GoString))) : GoString)) : Slice<GoByte>)), _substr : (((((".(|)*+?^$$[]" : GoString))) : GoString)), _expected : true } : T__struct_9)),
(({ _b : ((((_dots + _dots) + _dots) : Slice<GoByte>)), _substr : (((((" " : GoString))) : GoString)), _expected : false } : T__struct_9))) : Slice<T__struct_9>));
var containsRuneTests : Slice<T__struct_10> = ((new Slice<T__struct_10>((({ _b : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("a".code : GoInt32)), _expected : false } : T__struct_10)), (({ _b : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("a".code : GoInt32)), _expected : true } : T__struct_10)), (({ _b : ((((((("aaa" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("a".code : GoInt32)), _expected : true } : T__struct_10)), (({ _b : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("y".code : GoInt32)), _expected : false } : T__struct_10)), (({ _b : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("c".code : GoInt32)), _expected : true } : T__struct_10)), (({ _b : ((((((("a☺b☻c☹d" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("x".code : GoInt32)), _expected : false } : T__struct_10)), (({ _b : ((((((("a☺b☻c☹d" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("☻".code : GoInt32)), _expected : true } : T__struct_10)), (({ _b : ((((((("aRegExp*" : GoString))) : GoString)) : Slice<GoByte>)), _r : (("*".code : GoInt32)), _expected : true } : T__struct_10))) : Slice<T__struct_10>));
var _makeFieldsInput : () -> Slice<GoUInt8> = function():Slice<GoByte> {
        var _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((1048576 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _x) {
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn(((10 : GoInt))) == ((0 : GoInt)))) {
                        if (_x != null) _x[_i] = ((" ".code : GoUInt8));
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn(((10 : GoInt))) == ((1 : GoInt)))) {
                        if ((_i > ((0 : GoInt))) && ((_x != null ? _x[_i - ((1 : GoInt))] : ((0 : GoUInt8))) == (("x".code : GoUInt8)))) {
                            Go.copySlice(((_x.__slice__(_i - ((1 : GoInt))) : Slice<GoUInt8>)), ((((("χ" : GoString))) : GoString)));
                            break;
                        };
                        @:fallthrough {
                            __switchIndex__ = 2;
                            continue;
                        };
                        break;
                    } else {
                        if (_x != null) _x[_i] = (("x".code : GoUInt8));
                        break;
                    };
                    break;
                };
            };
        };
        return _x;
    };
var _makeFieldsInputASCII : () -> Slice<GoUInt8> = function():Slice<GoByte> {
        var _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((1048576 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _x) {
            if (stdgo.math.rand.Rand.intn(((10 : GoInt))) == ((0 : GoInt))) {
                if (_x != null) _x[_i] = ((" ".code : GoUInt8));
            } else {
                if (_x != null) _x[_i] = (("x".code : GoUInt8));
            };
        };
        return _x;
    };
var _bytesdata : Slice<T__struct_11> = ((new Slice<T__struct_11>((({ _name : ((((("ASCII" : GoString))) : GoString)), _data : _makeFieldsInputASCII() } : T__struct_11)), (({ _name : ((((("Mixed" : GoString))) : GoString)), _data : _makeFieldsInput() } : T__struct_11))) : Slice<T__struct_11>));
var _benchInputHard : Slice<GoUInt8> = _makeBenchInputHard();
var _compareTests : Slice<T__struct_1> = ((new Slice<T__struct_1>(
(({ _a : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((0 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((-1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((0 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abd" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abd" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((-1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("ab" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((-1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("ab" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("x" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("ab" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("ab" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("x" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((-1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("x" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("b" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("x" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((-1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abcdefgh" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abcdefgh" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((0 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abcdefghi" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abcdefghi" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((0 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abcdefghi" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abcdefghj" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((-1 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("abcdefghj" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("abcdefghi" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((1 : GoInt)) } : T__struct_1)),
(({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)),
(({ _a : ((null : Slice<GoUInt8>)), _b : ((((((("" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((0 : GoInt)) } : T__struct_1)),
(({ _a : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((null : Slice<GoUInt8>)), _i : ((1 : GoInt)) } : T__struct_1)),
(({ _a : ((null : Slice<GoUInt8>)), _b : ((((((("a" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((-1 : GoInt)) } : T__struct_1))) : Slice<T__struct_1>));
var unreadRuneErrorTests : Slice<T__struct_15> = ((new Slice<T__struct_15>((({ _name : ((((("Read" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.read(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
    } } : T__struct_15)), (({ _name : ((((("ReadByte" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.readByte();
    } } : T__struct_15)), (({ _name : ((((("UnreadRune" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.unreadRune();
    } } : T__struct_15)), (({ _name : ((((("Seek" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.seek(((0 : GoInt64)), ((1 : GoInt)));
    } } : T__struct_15)), (({ _name : ((((("WriteTo" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.writeTo({
            final __self__ = new Buffer_wrapper(((new Buffer() : Buffer)));
            __self__.bytes = #if !macro function():Slice<GoUInt8> return ((new Buffer() : Buffer)).bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return ((new Buffer() : Buffer)).cap_() #else null #end;
            __self__.grow = #if !macro function(__0:GoInt):Void ((new Buffer() : Buffer)).grow(__0) #else null #end;
            __self__.len = #if !macro function():GoInt return ((new Buffer() : Buffer)).len() #else null #end;
            __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return ((new Buffer() : Buffer)).next(__0) #else null #end;
            __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).read(__0) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return ((new Buffer() : Buffer)).readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void ((new Buffer() : Buffer)).reset() #else null #end;
            __self__.string = #if !macro function():GoString return ((new Buffer() : Buffer)).string() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt):Void ((new Buffer() : Buffer)).truncate(__0) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return ((new Buffer() : Buffer)).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return ((new Buffer() : Buffer)).unreadRune() #else null #end;
            __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).write(__0) #else null #end;
            __self__.writeByte = #if !macro function(_delim:GoUInt8):stdgo.Error return ((new Buffer() : Buffer)).writeByte(_delim) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new Buffer() : Buffer)).writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return ((new Buffer() : Buffer))._empty() #else null #end;
            __self__._grow = #if !macro function(__0:GoInt):GoInt return ((new Buffer() : Buffer))._grow(__0) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new Buffer() : Buffer))._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return ((new Buffer() : Buffer))._tryGrowByReslice(__0) #else null #end;
            __self__;
        });
    } } : T__struct_15))) : Slice<T__struct_15>));
var _testString : GoString = (("" : GoString));
var _testBytes : Slice<GoByte> = ((null : Slice<GoUInt8>));
var _bmbuf : Slice<GoByte> = ((null : Slice<GoUInt8>));
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_negativeReader_static_extension) class T_negativeReader {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_negativeReader();
    }
}
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_panicReader_static_extension) class T_panicReader {
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
    public var _s : GoString = "";
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
    public var _in : GoString = "";
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
    public var _in : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _arg : GoString = "";
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
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
@:structInit class T_predicate {
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
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = (({  } : stdgo.bytes_test.Bytes_test.T_predicate));
    public var _in : GoString = "";
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
    public var _in : GoString = "";
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = (({  } : stdgo.bytes_test.Bytes_test.T_predicate));
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
        var _str:GoString = ((_buf.string() : GoString));
        if (_buf.len() != (_bytes != null ? _bytes.length : ((0 : GoInt)))) {
            _t.errorf(((((("%s: buf.Len() == %d, len(buf.Bytes()) == %d" : GoString))) : GoString)), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_bytes != null ? _bytes.length : ((0 : GoInt)))));
        };
        if (_buf.len() != (_str != null ? _str.length : ((0 : GoInt)))) {
            _t.errorf(((((("%s: buf.Len() == %d, len(buf.String()) == %d" : GoString))) : GoString)), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_str != null ? _str.length : ((0 : GoInt)))));
        };
        if (_buf.len() != (_s != null ? _s.length : ((0 : GoInt)))) {
            _t.errorf(((((("%s: buf.Len() == %d, len(s) == %d" : GoString))) : GoString)), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_s != null ? _s.length : ((0 : GoInt)))));
        };
        if (((_bytes : GoString)) != _s) {
            _t.errorf(((((("%s: string(buf.Bytes()) == %q, s == %q" : GoString))) : GoString)), Go.toInterface(_testname), Go.toInterface(((_bytes : GoString))), Go.toInterface(_s));
        };
    }
/**
    // Fill buf through n writes of string fus.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
function _fillString(_t:stdgo.testing.Testing.T, _testname:GoString, _buf:Buffer, _s:GoString, _n:GoInt, _fus:GoString):GoString {
        _check(_t, _testname + (((((" (fill 1)" : GoString))) : GoString)), _buf, _s);
        Go.cfor(_n > ((0 : GoInt)), _n--, {
            var __tmp__ = _buf.writeString(_fus), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != (_fus != null ? _fus.length : ((0 : GoInt)))) {
                _t.errorf(_testname + (((((" (fill 2): m == %d, expected %d" : GoString))) : GoString)), Go.toInterface(_m), Go.toInterface((_fus != null ? _fus.length : ((0 : GoInt)))));
            };
            if (_err != null) {
                _t.errorf(_testname + (((((" (fill 3): err should always be nil, found err == %s" : GoString))) : GoString)), Go.toInterface(_err));
            };
            _s = _s + (_fus);
            _check(_t, _testname + (((((" (fill 4)" : GoString))) : GoString)), _buf, _s);
        });
        return _s;
    }
/**
    // Fill buf through n writes of byte slice fub.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
function _fillBytes(_t:stdgo.testing.Testing.T, _testname:GoString, _buf:Buffer, _s:GoString, _n:GoInt, _fub:Slice<GoByte>):GoString {
        _check(_t, _testname + (((((" (fill 1)" : GoString))) : GoString)), _buf, _s);
        Go.cfor(_n > ((0 : GoInt)), _n--, {
            var __tmp__ = _buf.write(_fub), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != (_fub != null ? _fub.length : ((0 : GoInt)))) {
                _t.errorf(_testname + (((((" (fill 2): m == %d, expected %d" : GoString))) : GoString)), Go.toInterface(_m), Go.toInterface((_fub != null ? _fub.length : ((0 : GoInt)))));
            };
            if (_err != null) {
                _t.errorf(_testname + (((((" (fill 3): err should always be nil, found err == %s" : GoString))) : GoString)), Go.toInterface(_err));
            };
            _s = _s + (((_fub : GoString)));
            _check(_t, _testname + (((((" (fill 4)" : GoString))) : GoString)), _buf, _s);
        });
        return _s;
    }
function testNewBuffer(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(_testBytes);
        _check(_t, ((((("NewBuffer" : GoString))) : GoString)), _buf, _testString);
    }
function testNewBufferString(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBufferString(_testString);
        _check(_t, ((((("NewBufferString" : GoString))) : GoString)), _buf, _testString);
    }
/**
    // Empty buf through repeated reads into fub.
    // The initial contents of buf corresponds to the string s.
**/
function _empty(_t:stdgo.testing.Testing.T, _testname:GoString, _buf:Buffer, _s:GoString, _fub:Slice<GoByte>):Void {
        _check(_t, _testname + (((((" (empty 1)" : GoString))) : GoString)), _buf, _s);
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n == ((0 : GoInt))) {
                break;
            };
            if (_err != null) {
                _t.errorf(_testname + (((((" (empty 2): err should always be nil, found err == %s" : GoString))) : GoString)), Go.toInterface(_err));
            };
            _s = ((_s.__slice__(_n) : GoString));
            _check(_t, _testname + (((((" (empty 3)" : GoString))) : GoString)), _buf, _s);
        };
        _check(_t, _testname + (((((" (empty 4)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
    }
function testBasicOperations(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = (({  } : Buffer));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _check(_t, ((((("TestBasicOperations (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
                _buf.reset();
                _check(_t, ((((("TestBasicOperations (2)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
                _buf.truncate(((0 : GoInt)));
                _check(_t, ((((("TestBasicOperations (3)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
                var __tmp__ = _buf.write(((_testBytes.__slice__(((0 : GoInt)), ((1 : GoInt))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:GoInt = ((1 : GoInt));
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(((((("Write: got (%d, %v), want (%d, %v)" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), ((null : AnyInterface)));
                    };
                };
                _check(_t, ((((("TestBasicOperations (4)" : GoString))) : GoString)), _buf, ((((("a" : GoString))) : GoString)));
                _buf.writeByte((_testString != null ? _testString[((1 : GoInt))] : ((0 : GoUInt8))));
                _check(_t, ((((("TestBasicOperations (5)" : GoString))) : GoString)), _buf, ((((("ab" : GoString))) : GoString)));
                {
                    var __tmp__ = _buf.write(((_testBytes.__slice__(((2 : GoInt)), ((26 : GoInt))) : Slice<GoUInt8>)));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var _want:GoInt = ((24 : GoInt));
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(((((("Write: got (%d, %v), want (%d, %v)" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), ((null : AnyInterface)));
                    };
                };
                _check(_t, ((((("TestBasicOperations (6)" : GoString))) : GoString)), _buf, ((_testString.__slice__(((0 : GoInt)), ((26 : GoInt))) : GoString)));
                _buf.truncate(((26 : GoInt)));
                _check(_t, ((((("TestBasicOperations (7)" : GoString))) : GoString)), _buf, ((_testString.__slice__(((0 : GoInt)), ((26 : GoInt))) : GoString)));
                _buf.truncate(((20 : GoInt)));
                _check(_t, ((((("TestBasicOperations (8)" : GoString))) : GoString)), _buf, ((_testString.__slice__(((0 : GoInt)), ((20 : GoInt))) : GoString)));
                _empty(_t, ((((("TestBasicOperations (9)" : GoString))) : GoString)), _buf, ((_testString.__slice__(((0 : GoInt)), ((20 : GoInt))) : GoString)), new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
                _empty(_t, ((((("TestBasicOperations (10)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)), new Slice<GoUInt8>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
                _buf.writeByte((_testString != null ? _testString[((1 : GoInt))] : ((0 : GoUInt8))));
                var __tmp__ = _buf.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:GoUInt8 = (_testString != null ? _testString[((1 : GoInt))] : ((0 : GoUInt8)));
                    if ((_err != null) || (_c != _want)) {
                        _t.errorf(((((("ReadByte: got (%q, %v), want (%q, %v)" : GoString))) : GoString)), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(_want), ((null : AnyInterface)));
                    };
                };
                {
                    var __tmp__ = _buf.readByte();
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != stdgo.io.Io.eof) {
                    _t.errorf(((((("ReadByte: got (%q, %v), want (%q, %v)" : GoString))) : GoString)), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(((((0 : GoUInt8)) : GoByte))), Go.toInterface(stdgo.io.Io.eof));
                };
            });
        };
    }
function testLargeStringWrites(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = (({  } : Buffer));
        var _limit:GoInt = ((30 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _limit = ((9 : GoInt));
        };
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < _limit, _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillString(_t, ((((("TestLargeWrites (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)), ((5 : GoInt)), _testString);
                _empty(_t, ((((("TestLargeStringWrites (2)" : GoString))) : GoString)), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) / _i : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((((("TestLargeStringWrites (3)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
    }
function testLargeByteWrites(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = (({  } : Buffer));
        var _limit:GoInt = ((30 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _limit = ((9 : GoInt));
        };
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < _limit, _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((((("TestLargeWrites (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)), ((5 : GoInt)), _testBytes);
                _empty(_t, ((((("TestLargeByteWrites (2)" : GoString))) : GoString)), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) / _i : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((((("TestLargeByteWrites (3)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
    }
function testLargeStringReads(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = (({  } : Buffer));
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillString(_t, ((((("TestLargeReads (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)), ((5 : GoInt)), ((_testString.__slice__(((0 : GoInt)), (_testString != null ? _testString.length : ((0 : GoInt))) / _i) : GoString)));
                _empty(_t, ((((("TestLargeReads (2)" : GoString))) : GoString)), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((((("TestLargeStringReads (3)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
    }
function testLargeByteReads(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = (({  } : Buffer));
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((((("TestLargeReads (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)), ((5 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), (_testBytes != null ? _testBytes.length : ((0 : GoInt))) / _i) : Slice<GoUInt8>)));
                _empty(_t, ((((("TestLargeReads (2)" : GoString))) : GoString)), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
        _check(_t, ((((("TestLargeByteReads (3)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
    }
function testMixedReadsAndWrites(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = (({  } : Buffer));
        var _s:GoString = ((((("" : GoString))) : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((50 : GoInt)), _i++, {
                var _wlen:GoInt = stdgo.math.rand.Rand.intn((_testString != null ? _testString.length : ((0 : GoInt))));
                if ((_i % ((2 : GoInt))) == ((0 : GoInt))) {
                    _s = _fillString(_t, ((((("TestMixedReadsAndWrites (1)" : GoString))) : GoString)), _buf, _s, ((1 : GoInt)), ((_testString.__slice__(((0 : GoInt)), _wlen) : GoString)));
                } else {
                    _s = _fillBytes(_t, ((((("TestMixedReadsAndWrites (1)" : GoString))) : GoString)), _buf, _s, ((1 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), _wlen) : Slice<GoUInt8>)));
                };
                var _rlen:GoInt = stdgo.math.rand.Rand.intn((_testString != null ? _testString.length : ((0 : GoInt))));
                var _fub = new Slice<GoUInt8>(...[for (i in 0 ... ((_rlen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _0:stdgo.Error = __tmp__._1;
                _s = ((_s.__slice__(_n) : GoString));
            });
        };
        _empty(_t, ((((("TestMixedReadsAndWrites (2)" : GoString))) : GoString)), _buf, _s, new Slice<GoUInt8>(...[for (i in 0 ... ((_buf.len() : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function testCapWithPreallocatedSlice(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _n:GoInt = _buf.cap_();
        if (_n != ((10 : GoInt))) {
            _t.errorf(((((("expected 10, got %d" : GoString))) : GoString)), Go.toInterface(_n));
        };
    }
function testCapWithSliceAndWrittenData(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic()));
        _buf.write(((((((("test" : GoString))) : GoString)) : Slice<GoByte>)));
        var _n:GoInt = _buf.cap_();
        if (_n != ((10 : GoInt))) {
            _t.errorf(((((("expected 10, got %d" : GoString))) : GoString)), Go.toInterface(_n));
        };
    }
function testNil(_t:stdgo.testing.Testing.T):Void {
        var _b:Buffer = ((null : Buffer));
        if (((_b.string() : GoString)) != ((((("<nil>" : GoString))) : GoString))) {
            _t.errorf(((((("expected <nil>; got %q" : GoString))) : GoString)), Go.toInterface(((_b.string() : GoString))));
        };
    }
function testReadFrom(_t:stdgo.testing.Testing.T):Void {
        var _buf:Buffer = (({  } : Buffer));
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((((("TestReadFrom (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)), ((5 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), (_testBytes != null ? _testBytes.length : ((0 : GoInt))) / _i) : Slice<GoUInt8>)));
                var _b:Buffer = (({  } : Buffer));
                _b.readFrom({
                    final __self__ = new Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
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
                _empty(_t, ((((("TestReadFrom (2)" : GoString))) : GoString)), _b, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
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
            var _buf:Buffer = (({  } : Buffer));
            var __tmp__ = _buf.readFrom({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_panicReader_wrapper(((new stdgo.bytes_test.Bytes_test.T_panicReader() : stdgo.bytes_test.Bytes_test.T_panicReader)));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes_test.Bytes_test.T_panicReader() : stdgo.bytes_test.Bytes_test.T_panicReader)).read(__0) #else null #end;
                __self__;
            }), _i:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_i != ((0 : GoInt64))) {
                _t.fatalf(((((("unexpected return from bytes.ReadFrom (1): got: %d, want %d" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(((0 : GoInt))));
            };
            _check(_t, ((((("TestReadFromPanicReader (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)));
            var _buf2:Buffer = (({  } : Buffer));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    ({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    });
                    _check(_t, ((((("TestReadFromPanicReader (2)" : GoString))) : GoString)), _buf2, ((((("" : GoString))) : GoString)));
                };
                a();
            });
            _buf2.readFrom({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_panicReader_wrapper((({ _panic : true } : stdgo.bytes_test.Bytes_test.T_panicReader)));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({ _panic : true } : stdgo.bytes_test.Bytes_test.T_panicReader)).read(__0) #else null #end;
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
            var _b:Buffer = (({  } : Buffer));
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
                        _t.fatal(Go.toInterface(((((("bytes.Buffer.ReadFrom didn\'t panic" : GoString))) : GoString))));
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
                        var _wantError:GoString = ((((("bytes.Buffer: reader returned negative count from Read" : GoString))) : GoString));
                        if (_err.error() != _wantError) {
                            _t.fatalf(((((("recovered panic: got %v, want %v" : GoString))) : GoString)), Go.toInterface(_err.error()), Go.toInterface(_wantError));
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
                        _t.fatalf(((((("unexpected panic value: %#v" : GoString))) : GoString)), Go.toInterface(_err));
                    };
                };
                a();
            });
            _b.readFrom({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_negativeReader_wrapper((({  } : stdgo.bytes_test.Bytes_test.T_negativeReader)));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({  } : stdgo.bytes_test.Bytes_test.T_negativeReader)).read(__0) #else null #end;
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
        var _buf:Buffer = (({  } : Buffer));
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _s:GoString = _fillBytes(_t, ((((("TestWriteTo (1)" : GoString))) : GoString)), _buf, ((((("" : GoString))) : GoString)), ((5 : GoInt)), ((_testBytes.__slice__(((0 : GoInt)), (_testBytes != null ? _testBytes.length : ((0 : GoInt))) / _i) : Slice<GoUInt8>)));
                var _b:Buffer = (({  } : Buffer));
                _buf.writeTo({
                    final __self__ = new Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
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
                _empty(_t, ((((("TestWriteTo (2)" : GoString))) : GoString)), _b, _s, new Slice<GoUInt8>(...[for (i in 0 ... (((_testString != null ? _testString.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            });
        };
    }
function testRuneIO(_t:stdgo.testing.Testing.T):Void {
        {};
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((4000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _buf:Buffer = (({  } : Buffer));
        var _n:GoInt = ((0 : GoInt));
        {
            var _r:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_r < ((1000 : GoInt32)), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(((_b.__slice__(_n) : Slice<GoUInt8>)), _r);
                var __tmp__ = _buf.writeRune(_r), _nbytes:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((((("WriteRune(%U) error: %s" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_err));
                };
                if (_nbytes != _size) {
                    _t.fatalf(((((("WriteRune(%U) expected %d, got %d" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_nbytes));
                };
                _n = _n + (_size);
            });
        };
        _b = ((_b.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
        if (!equal(_buf.bytes(), _b)) {
            _t.fatalf(((((("incorrect result from WriteRune: %q not %q" : GoString))) : GoString)), Go.toInterface(_buf.bytes()), Go.toInterface(_b));
        };
        var _p = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _r:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_r < ((1000 : GoInt32)), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_p, _r);
                var __tmp__ = _buf.readRune(), _nr:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_nr != _r) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(((((("ReadRune(%U) got %U,%d not %U,%d (err=%s)" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_nr), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
        _buf.reset();
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface(((((("UnreadRune at EOF: got no error" : GoString))) : GoString))));
            };
        };
        {
            var __tmp__ = _buf.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                _t.fatal(Go.toInterface(((((("ReadRune at EOF: got no error" : GoString))) : GoString))));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface(((((("UnreadRune after ReadRune at EOF: got no error" : GoString))) : GoString))));
            };
        };
        _buf.write(_b);
        {
            var _r:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_r < ((1000 : GoInt32)), _r++, {
                var __tmp__ = _buf.readRune(), _r1:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _2:stdgo.Error = __tmp__._2;
                {
                    var _err:stdgo.Error = _buf.unreadRune();
                    if (_err != null) {
                        _t.fatalf(((((("UnreadRune(%U) got error %q" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_err));
                    };
                };
                var __tmp__ = _buf.readRune(), _r2:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((((_r1 != _r2) || (_r1 != _r)) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(((((("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_r2), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
    }
function testWriteInvalidRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _r in ((new Slice<GoInt32>(((-1 : GoInt32)), ((1114112 : GoInt32))) : Slice<GoInt32>))) {
            var _buf:Buffer = (({  } : Buffer));
            _buf.writeRune(_r);
            _check(_t, stdgo.fmt.Fmt.sprintf(((((("TestWriteInvalidRune (%d)" : GoString))) : GoString)), Go.toInterface(_r)), _buf, ((((("\uFFFD" : GoString))) : GoString)));
        };
    }
function testNext(_t:stdgo.testing.Testing.T):Void {
        var _b = ((new Slice<GoUInt8>(((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8))) : Slice<GoUInt8>));
        var _tmp = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((5 : GoInt)), _i++, {
                {
                    var _j:GoInt = _i;
                    Go.cfor(_j <= ((5 : GoInt)), _j++, {
                        {
                            var _k:GoInt = ((0 : GoInt));
                            Go.cfor(_k <= ((6 : GoInt)), _k++, {
                                var _buf = newBuffer(((_b.__slice__(((0 : GoInt)), _j) : Slice<GoUInt8>)));
                                var __tmp__ = _buf.read(((_tmp.__slice__(((0 : GoInt)), _i) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _0:stdgo.Error = __tmp__._1;
                                if (_n != _i) {
                                    _t.fatalf(((((("Read %d returned %d" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_n));
                                };
                                var _bb = _buf.next(_k);
                                var _want:GoInt = _k;
                                if (_want > (_j - _i)) {
                                    _want = _j - _i;
                                };
                                if ((_bb != null ? _bb.length : ((0 : GoInt))) != _want) {
                                    _t.fatalf(((((("in %d,%d: len(Next(%d)) == %d" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface((_bb != null ? _bb.length : ((0 : GoInt)))));
                                };
                                for (_l => _v in _bb) {
                                    if (_v != (((_l + _i) : GoByte))) {
                                        _t.fatalf(((((("in %d,%d: Next(%d)[%d] = %d, want %d" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface(_l), Go.toInterface(_v), Go.toInterface(_l + _i));
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
            var _err:Error = ((null : stdgo.Error));
            for (_1 => _expected in _test._expected) {
                var _bytes:Slice<GoByte> = ((null : Slice<GoUInt8>));
                {
                    var __tmp__ = _buf.readBytes(_test._delim);
                    _bytes = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (((_bytes : GoString)) != _expected) {
                    _t.errorf(((((("expected %q, got %q" : GoString))) : GoString)), Go.toInterface(_expected), Go.toInterface(_bytes));
                };
                if (_err != null) {
                    break;
                };
            };
            if (_err != _test._err) {
                _t.errorf(((((("expected error %v, got %v" : GoString))) : GoString)), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function testReadString(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer);
            var _err:Error = ((null : stdgo.Error));
            for (_1 => _expected in _test._expected) {
                var _s:GoString = (("" : GoString));
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_s != _expected) {
                    _t.errorf(((((("expected %q, got %q" : GoString))) : GoString)), Go.toInterface(_expected), Go.toInterface(_s));
                };
                if (_err != null) {
                    break;
                };
            };
            if (_err != _test._err) {
                _t.errorf(((((("expected error %v, got %v" : GoString))) : GoString)), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function benchmarkReadString(_b:stdgo.testing.Testing.B):Void {
        {};
        var _data = new Slice<GoUInt8>(...[for (i in 0 ... ((((32768 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_data != null) _data[((32767 : GoInt))] = (("x".code : GoUInt8));
        _b.setBytes(((((32768 : GoInt64)) : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _buf = newBuffer(_data);
                var __tmp__ = _buf.readString((("x".code : GoUInt8))), _0:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(Go.toInterface(_err));
                };
            });
        };
    }
function testGrow(_t:stdgo.testing.Testing.T):Void {
        var _x = ((new Slice<GoUInt8>((("x".code : GoUInt8))) : Slice<GoUInt8>));
        var _y = ((new Slice<GoUInt8>((("y".code : GoUInt8))) : Slice<GoUInt8>));
        var _tmp = new Slice<GoUInt8>(...[for (i in 0 ... ((((72 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_0 => _growLen in ((new Slice<GoInt>(((0 : GoInt)), ((100 : GoInt)), ((1000 : GoInt)), ((10000 : GoInt)), ((100000 : GoInt))) : Slice<GoInt>))) {
            for (_1 => _startLen in ((new Slice<GoInt>(((0 : GoInt)), ((100 : GoInt)), ((1000 : GoInt)), ((10000 : GoInt)), ((100000 : GoInt))) : Slice<GoInt>))) {
                var _xBytes = repeat(_x, _startLen);
                var _buf = newBuffer(_xBytes);
                var __tmp__ = _buf.read(_tmp), _readBytes:GoInt = __tmp__._0, _2:stdgo.Error = __tmp__._1;
                var _yBytes = repeat(_y, _growLen);
                var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), function():Void {
                    _buf.grow(_growLen);
                    _buf.write(_yBytes);
                });
                if (_allocs != ((0 : GoFloat64))) {
                    _t.errorf(((((("allocation occurred during write" : GoString))) : GoString)));
                };
                if (!equal(((_buf.bytes().__slice__(((0 : GoInt)), _startLen - _readBytes) : Slice<GoUInt8>)), ((_xBytes.__slice__(_readBytes) : Slice<GoUInt8>)))) {
                    _t.errorf(((((("bad initial data at %d %d" : GoString))) : GoString)), Go.toInterface(_startLen), Go.toInterface(_growLen));
                };
                if (!equal(((_buf.bytes().__slice__(_startLen - _readBytes, (_startLen - _readBytes) + _growLen) : Slice<GoUInt8>)), _yBytes)) {
                    _t.errorf(((((("bad written data at %d %d" : GoString))) : GoString)), Go.toInterface(_startLen), Go.toInterface(_growLen));
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
                            _t.errorf(((((("after too-large Grow, recover() = %v; want %v" : GoString))) : GoString)), Go.toInterface(_err), Go.toInterface(errTooLarge));
                        };
                    };
                };
                a();
            });
            var _buf = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            {};
            _buf.grow(((2147483647 : GoInt)));
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
        var _b = (({  } : Buffer));
        var _slice = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _b.read(_slice), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((((("read error: %v" : GoString))) : GoString)), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(((((("wrong count; got %d want 0" : GoString))) : GoString)), Go.toInterface(_n));
        };
    }
function testUnreadByte(_t:stdgo.testing.Testing.T):Void {
        var _b = (({  } : Buffer));
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(((((("UnreadByte at EOF: got no error" : GoString))) : GoString))));
            };
        };
        {
            var __tmp__ = _b.readByte(), _0:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(Go.toInterface(((((("ReadByte at EOF: got no error" : GoString))) : GoString))));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(((((("UnreadByte after ReadByte at EOF: got no error" : GoString))) : GoString))));
            };
        };
        _b.writeString(((((("abcdefghijklmnopqrstuvwxyz" : GoString))) : GoString)));
        {
            var __tmp__ = _b.read(((null : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != null)) {
                _t.fatalf(((((("Read(nil) = %d,%v; want 0,nil" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(((((("UnreadByte after Read(nil): got no error" : GoString))) : GoString))));
            };
        };
        {
            var __tmp__ = _b.readBytes((("m".code : GoUInt8))), _1:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((((("ReadBytes: %v" : GoString))) : GoString)), Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err != null) {
                _t.fatalf(((((("UnreadByte: %v" : GoString))) : GoString)), Go.toInterface(_err));
            };
        };
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((((("ReadByte: %v" : GoString))) : GoString)), Go.toInterface(_err));
        };
        if (_c != (("m".code : GoUInt8))) {
            _t.errorf(((((("ReadByte = %q; want %q" : GoString))) : GoString)), Go.toInterface(_c), Go.toInterface((("m".code : GoInt32))));
        };
    }
/**
    // Tests that we occasionally compact. Issue 5154.
**/
function testBufferGrowth(_t:stdgo.testing.Testing.T):Void {
        var _b:Buffer = (({  } : Buffer));
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
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
            _t.errorf(((((("buffer cap = %d; too big (grew from %d)" : GoString))) : GoString)), Go.toInterface(_cap1), Go.toInterface(_cap0));
        };
    }
function benchmarkWriteByte(_b:stdgo.testing.Testing.B):Void {
        {};
        _b.setBytes(((4096 : GoInt64)));
        var _buf = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((4096 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((4096 : GoInt)), _i++, {
                        _buf.writeByte((("x".code : GoUInt8)));
                    });
                };
            });
        };
    }
function benchmarkWriteRune(_b:stdgo.testing.Testing.B):Void {
        {};
        {};
        _b.setBytes((((((4096 : GoInt)) * stdgo.unicode.utf8.Utf8.runeLen(((9786 : GoInt32)))) : GoInt64)));
        var _buf = newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((16384 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
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
/**
    // From Issue 5154.
**/
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = (({  } : Buffer));
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
/**
    // Check that we don't compact too often. From Issue 5154.
**/
function benchmarkBufferFullSmallReads(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = (({  } : Buffer));
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
function benchmarkBufferWriteBlock(_b:stdgo.testing.Testing.B):Void {
        var _block = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_0 => _n in ((new Slice<GoInt>(((4096 : GoInt)), ((65536 : GoInt)), ((1048576 : GoInt))) : Slice<GoInt>))) {
            _b.run(stdgo.fmt.Fmt.sprintf(((((("N%d" : GoString))) : GoString)), Go.toInterface(_n)), function(_b:stdgo.testing.Testing.B):Void {
                _b.reportAllocs();
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        var _bb:Buffer = (({  } : Buffer));
                        while (_bb.len() < _n) {
                            _bb.write(_block);
                        };
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
        var _result = new Slice<GoString>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _v in _s) {
            if (_result != null) _result[_i] = ((_v : GoString));
        };
        return _result;
    }
function testEqual(_t:stdgo.testing.Testing.T):Void {
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((10 : GoInt)), function():Void {
            for (_0 => _tt in _compareTests) {
                var _eql:Bool = equal(_tt._a, _tt._b);
                if (_eql != (_tt._i == ((0 : GoInt)))) {
                    _t.errorf((("Equal(%q, %q) = %v" : GoString)), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_eql));
                };
            };
        });
        if (_allocs > ((0 : GoFloat64))) {
            _t.errorf(((((("Equal allocated %v times" : GoString))) : GoString)), Go.toInterface(_allocs));
        };
    }
function testEqualExhaustive(_t:stdgo.testing.Testing.T):Void {
        var _size:GoInt = ((128 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _size = ((32 : GoInt));
        };
        var _a = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b_init = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
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
                                    _t.errorf(((((("Equal(%d, %d, %d) = false" : GoString))) : GoString)), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y));
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
        var _size:GoInt = ((128 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _size = ((32 : GoInt));
        };
        var _a = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
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
                                            _t.errorf(((((("NotEqual(%d, %d, %d, %d) = true" : GoString))) : GoString)), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_diffpos));
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
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runIndexTests(_t:stdgo.testing.Testing.T, _f:(_s:Slice<GoByte>, _sep:Slice<GoByte>) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_0 => _test in _testCases) {
            var _a = ((_test._a : Slice<GoByte>));
            var _b = ((_test._b : Slice<GoByte>));
            var _actual:GoInt = _f(_a, _b);
            if (_actual != _test._i) {
                _t.errorf(((((("%s(%q,%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
        var _allocTests:Slice<T__struct_1> = ((new Slice<T__struct_1>((({ _a : ((((((("000000000000000000000000000000000000000000000000000000000000000000000001" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("0000000000000000000000000000000000000000000000000000000000000000001" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((5 : GoInt)) } : T__struct_1)), (({ _a : ((((((("000000000000000000000000000000000000000000000000000000000000000010000" : GoString))) : GoString)) : Slice<GoByte>)), _b : ((((((("00000000000000000000000000000000000000000000000000000000000001" : GoString))) : GoString)) : Slice<GoByte>)), _i : ((3 : GoInt)) } : T__struct_1))) : Slice<T__struct_1>));
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), function():Void {
            {
                var _i:GoInt = index((_allocTests != null ? _allocTests[((1 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._a, (_allocTests != null ? _allocTests[((1 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._b);
                if (_i != (_allocTests != null ? _allocTests[((1 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._i) {
                    _t.errorf(((((("Index([]byte(%q), []byte(%q)) = %v; want %v" : GoString))) : GoString)), Go.toInterface((_allocTests != null ? _allocTests[((1 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._a), Go.toInterface((_allocTests != null ? _allocTests[((1 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._b), Go.toInterface(_i), Go.toInterface((_allocTests != null ? _allocTests[((1 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._i));
                };
            };
            {
                var _i:GoInt = lastIndex((_allocTests != null ? _allocTests[((0 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._a, (_allocTests != null ? _allocTests[((0 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._b);
                if (_i != (_allocTests != null ? _allocTests[((0 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._i) {
                    _t.errorf(((((("LastIndex([]byte(%q), []byte(%q)) = %v; want %v" : GoString))) : GoString)), Go.toInterface((_allocTests != null ? _allocTests[((0 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._a), Go.toInterface((_allocTests != null ? _allocTests[((0 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._b), Go.toInterface(_i), Go.toInterface((_allocTests != null ? _allocTests[((0 : GoInt))] : (({ _a : ((null : Slice<GoUInt8>)), _b : ((null : Slice<GoUInt8>)), _i : ((0 : GoInt)) } : T__struct_1)))._i));
                };
            };
        });
        if (_allocs != ((0 : GoFloat64))) {
            _t.errorf(((((("expected no allocations, got %f" : GoString))) : GoString)), Go.toInterface(_allocs));
        };
    }
function _runIndexAnyTests(_t:stdgo.testing.Testing.T, _f:(_s:Slice<GoByte>, _chars:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_0 => _test in _testCases) {
            var _a = ((_test._a : Slice<GoByte>));
            var _actual:GoInt = _f(_a, _test._b);
            if (_actual != _test._i) {
                _t.errorf(((((("%s(%q,%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_test._b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
function testIndex(_t:stdgo.testing.Testing.T):Void {
        _runIndexTests(_t, index, ((((("Index" : GoString))) : GoString)), _indexTests);
    }
function testLastIndex(_t:stdgo.testing.Testing.T):Void {
        _runIndexTests(_t, lastIndex, ((((("LastIndex" : GoString))) : GoString)), _lastIndexTests);
    }
function testIndexAny(_t:stdgo.testing.Testing.T):Void {
        _runIndexAnyTests(_t, indexAny, ((((("IndexAny" : GoString))) : GoString)), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.testing.Testing.T):Void {
        _runIndexAnyTests(_t, lastIndexAny, ((((("LastIndexAny" : GoString))) : GoString)), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _indexTests) {
            if ((_tt._b != null ? _tt._b.length : ((0 : GoInt))) != ((1 : GoInt))) {
                continue;
            };
            var _a = ((_tt._a : Slice<GoByte>));
            var _b:GoUInt8 = (_tt._b != null ? _tt._b[((0 : GoInt))] : ((0 : GoUInt8)));
            var _pos:GoInt = indexByte(_a, _b);
            if (_pos != _tt._i) {
                _t.errorf((("IndexByte(%q, \'%c\') = %v" : GoString)), Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_pos));
            };
            var _posp:GoInt = indexBytePortable(_a, _b);
            if (_posp != _tt._i) {
                _t.errorf((("indexBytePortable(%q, \'%c\') = %v" : GoString)), Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_posp));
            };
        };
    }
function testLastIndexByte(_t:stdgo.testing.Testing.T):Void {
        var _testCases = ((new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("" : GoString))) : GoString)), ((((("q" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abcdef" : GoString))) : GoString)), ((((("q" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abcdefabcdef" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), (((((("abcdef" : GoString))) : GoString)) != null ? ((((("abcdef" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("abcdefabcdef" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), (((((("abcdefabcde" : GoString))) : GoString)) != null ? ((((("abcdefabcde" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("zabcdefabcdef" : GoString))) : GoString)), ((((("z" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.bytes_test.Bytes_test.BinOpTest)), ((new stdgo.bytes_test.Bytes_test.BinOpTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), (((((("a☺" : GoString))) : GoString)) != null ? ((((("a☺" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.bytes_test.Bytes_test.BinOpTest))) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>));
        for (_0 => _test in _testCases) {
            var _actual:GoInt = lastIndexByte(((_test._a : Slice<GoByte>)), (_test._b != null ? _test._b[((0 : GoInt))] : ((0 : GoUInt8))));
            if (_actual != _test._i) {
                _t.errorf(((((("LastIndexByte(%q,%c) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_test._a), Go.toInterface((_test._b != null ? _test._b[((0 : GoInt))] : ((0 : GoUInt8)))), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
/**
    // test a larger buffer with different sizes and alignments
**/
function testIndexByteBig(_t:stdgo.testing.Testing.T):Void {
        var _n:GoInt = ((1024 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _n = ((128 : GoInt));
        };
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _b1 = ((_b.__slice__(_i) : Slice<GoUInt8>));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < (_b1 != null ? _b1.length : ((0 : GoInt))), _j++, {
                        if (_b1 != null) _b1[_j] = (("x".code : GoUInt8));
                        var _pos:GoInt = indexByte(_b1, (("x".code : GoUInt8)));
                        if (_pos != _j) {
                            _t.errorf(((((("IndexByte(%q, \'x\') = %v" : GoString))) : GoString)), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        if (_b1 != null) _b1[_j] = ((0 : GoUInt8));
                        _pos = indexByte(_b1, (("x".code : GoUInt8)));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(((((("IndexByte(%q, \'x\') = %v" : GoString))) : GoString)), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = ((_b.__slice__(0, _i) : Slice<GoUInt8>));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < (_b1 != null ? _b1.length : ((0 : GoInt))), _j++, {
                        if (_b1 != null) _b1[_j] = (("x".code : GoUInt8));
                        var _pos:GoInt = indexByte(_b1, (("x".code : GoUInt8)));
                        if (_pos != _j) {
                            _t.errorf(((((("IndexByte(%q, \'x\') = %v" : GoString))) : GoString)), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        if (_b1 != null) _b1[_j] = ((0 : GoUInt8));
                        _pos = indexByte(_b1, (("x".code : GoUInt8)));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(((((("IndexByte(%q, \'x\') = %v" : GoString))) : GoString)), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = ((_b.__slice__(_i / ((2 : GoInt)), _n - ((_i + ((1 : GoInt))) / ((2 : GoInt)))) : Slice<GoUInt8>));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < (_b1 != null ? _b1.length : ((0 : GoInt))), _j++, {
                        if (_b1 != null) _b1[_j] = (("x".code : GoUInt8));
                        var _pos:GoInt = indexByte(_b1, (("x".code : GoUInt8)));
                        if (_pos != _j) {
                            _t.errorf(((((("IndexByte(%q, \'x\') = %v" : GoString))) : GoString)), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        if (_b1 != null) _b1[_j] = ((0 : GoUInt8));
                        _pos = indexByte(_b1, (("x".code : GoUInt8)));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(((((("IndexByte(%q, \'x\') = %v" : GoString))) : GoString)), Go.toInterface(_b1), Go.toInterface(_pos));
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
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((5015 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
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
                            _t.errorf(((((("IndexByte(%q, %d) = %d" : GoString))) : GoString)), Go.toInterface(((_b.__slice__(_i, _i + ((15 : GoInt))) : Slice<GoUInt8>))), Go.toInterface(((100 : GoInt)) + _j), Go.toInterface(_p));
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
                            _t.errorf(((((("IndexByte(%q, %d) = %d" : GoString))) : GoString)), Go.toInterface(((_b.__slice__(_i, _i + ((15 : GoInt))) : Slice<GoUInt8>))), Go.toInterface(((0 : GoInt))), Go.toInterface(_p));
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
function testIndexRune(_t:stdgo.testing.Testing.T):Void {
        var _tests = ((new Slice<T__struct_2>(
(({ _in : ((((("" : GoString))) : GoString)), _rune : (("a".code : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_2)),
(({ _in : ((((("" : GoString))) : GoString)), _rune : (("☺".code : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_2)),
(({ _in : ((((("foo" : GoString))) : GoString)), _rune : (("☹".code : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_2)),
(({ _in : ((((("foo" : GoString))) : GoString)), _rune : (("o".code : GoInt32)), _want : ((1 : GoInt)) } : T__struct_2)),
(({ _in : ((((("foo☺bar" : GoString))) : GoString)), _rune : (("☺".code : GoInt32)), _want : ((3 : GoInt)) } : T__struct_2)),
(({ _in : ((((("foo☺☻☹bar" : GoString))) : GoString)), _rune : (("☹".code : GoInt32)), _want : ((9 : GoInt)) } : T__struct_2)),
(({ _in : ((((("a A x" : GoString))) : GoString)), _rune : (("A".code : GoInt32)), _want : ((2 : GoInt)) } : T__struct_2)),
(({ _in : ((((("some_text=some_value" : GoString))) : GoString)), _rune : (("=".code : GoInt32)), _want : ((9 : GoInt)) } : T__struct_2)),
(({ _in : ((((("☺a" : GoString))) : GoString)), _rune : (("a".code : GoInt32)), _want : ((3 : GoInt)) } : T__struct_2)),
(({ _in : ((((("a☻☺b" : GoString))) : GoString)), _rune : (("☺".code : GoInt32)), _want : ((4 : GoInt)) } : T__struct_2)),
(({ _in : ((((("�" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : ((0 : GoInt)) } : T__struct_2)),
(({ _in : (((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : ((0 : GoInt)) } : T__struct_2)),
(({ _in : ((((("☻x�" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_2)),
(({ _in : ((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_2)),
(({ _in : ((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_2)),
(({ _in : ((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("x" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_2)),
(({ _in : ((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _rune : ((-1 : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_2)),
(({ _in : ((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _rune : ((55296 : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_2)),
(({ _in : ((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _rune : ((1114112 : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_2))) : Slice<T__struct_2>));
        for (_0 => _tt in _tests) {
            {
                var _got:GoInt = indexRune(((_tt._in : Slice<GoByte>)), _tt._rune);
                if (_got != _tt._want) {
                    _t.errorf(((((("IndexRune(%q, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack = ((((((("test世界" : GoString))) : GoString)) : Slice<GoByte>));
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((1000 : GoInt)), function():Void {
            {
                var _i:GoInt = indexRune(_haystack, (("s".code : GoInt32)));
                if (_i != ((2 : GoInt))) {
                    _t.fatalf(((((("\'s\' at %d; want 2" : GoString))) : GoString)), Go.toInterface(_i));
                };
            };
            {
                var _i:GoInt = indexRune(_haystack, (("世".code : GoInt32)));
                if (_i != ((4 : GoInt))) {
                    _t.fatalf(((((("\'世\' at %d; want 4" : GoString))) : GoString)), Go.toInterface(_i));
                };
            };
        });
        if (_allocs != ((0 : GoFloat64))) {
            _t.errorf(((((("expected no allocations, got %f" : GoString))) : GoString)), Go.toInterface(_allocs));
        };
    }
/**
    // test count of a single byte across page offsets
**/
function testCountByte(_t:stdgo.testing.Testing.T):Void {
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((5015 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _windows = ((new Slice<GoInt>(
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
                        _t.errorf(((((("TestCountByte.Count(%q, 100) = %d" : GoString))) : GoString)), Go.toInterface(((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>))), Go.toInterface(_p));
                    };
                });
            };
        };
        var _maxWnd:GoInt = (_windows != null ? _windows[(_windows != null ? _windows.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (((2 : GoInt)) * _maxWnd), _i++, {
                for (_0 => _window in _windows) {
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
                for (_1 => _window in _windows) {
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
/**
    // Make sure we don't count bytes outside our window
**/
function testCountByteNoMatch(_t:stdgo.testing.Testing.T):Void {
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((5015 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _windows = ((new Slice<GoInt>(
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
                for (_0 => _window in _windows) {
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
                        _t.errorf(((((("TestCountByteNoMatch(%q, 0) = %d" : GoString))) : GoString)), Go.toInterface(((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>))), Go.toInterface(_p));
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
                return stdgo.fmt.Fmt.sprintf(((((("%dM" : GoString))) : GoString)), Go.toInterface(_s));
            };
        };
        {
            var _s:GoInt = _x >> ((10 : GoUnTypedInt));
            if ((_s << ((10 : GoUnTypedInt))) == _x) {
                return stdgo.fmt.Fmt.sprintf(((((("%dK" : GoString))) : GoString)), Go.toInterface(_s));
            };
        };
        return stdgo.fmt.Fmt.sprint(_x);
    }
function _benchBytes(_b:stdgo.testing.Testing.B, _sizes:Slice<GoInt>, _f:(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void):Void {
        for (_0 => _n in _sizes) {
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
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, (("x".code : GoUInt8)));
                    if (_j != (_n - ((1 : GoInt)))) {
                        _b.fatal(Go.toInterface(((((("bad index" : GoString))) : GoString))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
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
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, (("x".code : GoInt32)));
                    if (_j != (_n - ((1 : GoInt)))) {
                        _b.fatal(Go.toInterface(((((("bad index" : GoString))) : GoString))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
        };
    }
function _bmIndexRune(_index:(Slice<GoByte>, GoRune) -> GoInt):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            stdgo.unicode.utf8.Utf8.encodeRune(((_buf.__slice__(_n - ((3 : GoInt))) : Slice<GoUInt8>)), (("世".code : GoInt32)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, (("世".code : GoInt32)));
                    if (_j != (_n - ((3 : GoInt)))) {
                        _b.fatal(Go.toInterface(((((("bad index" : GoString))) : GoString))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((3 : GoInt))] = (("\u0000".code : GoUInt8));
            if (_buf != null) _buf[_n - ((2 : GoInt))] = (("\u0000".code : GoUInt8));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
        };
    }
function benchmarkEqual(_b:stdgo.testing.Testing.B):Void {
        _b.run(((((("0" : GoString))) : GoString)), function(_b:stdgo.testing.Testing.B):Void {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
            var _buf1 = ((_buf.__slice__(((0 : GoInt)), ((0 : GoInt))) : Slice<GoUInt8>));
            var _buf2 = ((_buf.__slice__(((1 : GoInt)), ((1 : GoInt))) : Slice<GoUInt8>));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface(((((("bad equal" : GoString))) : GoString))));
                    };
                });
            };
        });
        var _sizes = ((new Slice<GoInt>(((1 : GoInt)), ((6 : GoInt)), ((9 : GoInt)), ((15 : GoInt)), ((16 : GoInt)), ((20 : GoInt)), ((32 : GoInt)), ((4096 : GoInt)), ((4194304 : GoInt)), ((67108864 : GoInt))) : Slice<GoInt>));
        _benchBytes(_b, _sizes, _bmEqual(equal));
    }
function _bmEqual(_equal:(Slice<GoByte>, Slice<GoByte>) -> Bool):(_b:stdgo.testing.Testing.B, _n:GoInt) -> Void {
        return function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            if ((_bmbuf != null ? _bmbuf.length : ((0 : GoInt))) < (((2 : GoInt)) * _n)) {
                _bmbuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((2 : GoInt)) * _n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            };
            var _buf1 = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            var _buf2 = ((_bmbuf.__slice__(_n, ((2 : GoInt)) * _n) : Slice<GoUInt8>));
            if (_buf1 != null) _buf1[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            if (_buf2 != null) _buf2[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = _equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface(((((("bad equal" : GoString))) : GoString))));
                    };
                });
            };
            if (_buf1 != null) _buf1[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
            if (_buf2 != null) _buf2[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
        };
    }
function benchmarkIndex(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != (_n - ((7 : GoInt)))) {
                        _b.fatal(Go.toInterface(((((("bad index" : GoString))) : GoString))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
        });
    }
function benchmarkIndexEasy(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = (("x".code : GoUInt8));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != (_n - ((7 : GoInt)))) {
                        _b.fatal(Go.toInterface(((((("bad index" : GoString))) : GoString))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = (("\u0000".code : GoUInt8));
        });
    }
function benchmarkCount(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != ((1 : GoInt))) {
                        _b.fatal(Go.toInterface(((((("bad count" : GoString))) : GoString))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
        });
    }
function benchmarkCountEasy(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("x".code : GoUInt8));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = (("x".code : GoUInt8));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, ((_buf.__slice__(_n - ((7 : GoInt))) : Slice<GoUInt8>)));
                    if (_j != ((1 : GoInt))) {
                        _b.fatal(Go.toInterface(((((("bad count" : GoString))) : GoString))), Go.toInterface(_j));
                    };
                });
            };
            if (_buf != null) _buf[_n - ((1 : GoInt))] = (("\u0000".code : GoUInt8));
            if (_buf != null) _buf[_n - ((7 : GoInt))] = (("\u0000".code : GoUInt8));
        });
    }
function benchmarkCountSingle(_b:stdgo.testing.Testing.B):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.testing.Testing.B, _n:GoInt):Void {
            var _buf = ((_bmbuf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
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
                        _b.fatal(Go.toInterface(((((("bad count" : GoString))) : GoString))), Go.toInterface(_j), Go.toInterface(_expect));
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
function testSplit(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _splittests) {
            var _a = splitN(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)), _tt._n);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_1 => _v in _a) {
                _x = (_v != null ? _v.__append__((("z".code : GoUInt8))) : new Slice<GoUInt8>((("z".code : GoUInt8))));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf((("Split(%q, %q, %d) = %v; want %v" : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_result), Go.toInterface(_tt._a));
                continue;
            };
            if ((_tt._n == ((0 : GoInt))) || ((_a != null ? _a.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                continue;
            };
            {
                var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((((("z" : GoString))) : GoString));
                if (((_x : GoString)) != _want) {
                    _t.errorf(((((("last appended result was %s; want %s" : GoString))) : GoString)), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s = join(_a, ((_tt._sep : Slice<GoByte>)));
            if (((_s : GoString)) != _tt._s) {
                _t.errorf((("Join(Split(%q, %q, %d), %q) = %q" : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < ((0 : GoInt))) {
                var _b = split(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(((((("Split disagrees withSplitN(%q, %q, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
            if ((_a != null ? _a.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _in = (_a != null ? _a[((0 : GoInt))] : ((null : Slice<GoUInt8>))), _out = _s;
                if (((_in != null ? _in.cap() : ((0 : GoInt))) == (_out != null ? _out.cap() : ((0 : GoInt)))) && (Go.pointer((((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))) == Go.pointer((((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))))) {
                    _t.errorf(((((("Join(%#v, %q) didn\'t copy" : GoString))) : GoString)), Go.toInterface(_a), Go.toInterface(_tt._sep));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _splitaftertests) {
            var _a = splitAfterN(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)), _tt._n);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_1 => _v in _a) {
                _x = (_v != null ? _v.__append__((("z".code : GoUInt8))) : new Slice<GoUInt8>((("z".code : GoUInt8))));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf((("Split(%q, %q, %d) = %v; want %v" : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_result), Go.toInterface(_tt._a));
                continue;
            };
            {
                var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((((("z" : GoString))) : GoString));
                if (((_x : GoString)) != _want) {
                    _t.errorf(((((("last appended result was %s; want %s" : GoString))) : GoString)), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s = join(_a, ((null : Slice<GoUInt8>)));
            if (((_s : GoString)) != _tt._s) {
                _t.errorf((("Join(Split(%q, %q, %d), %q) = %q" : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < ((0 : GoInt))) {
                var _b = splitAfter(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>)));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(((((("SplitAfter disagrees withSplitAfterN(%q, %q, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _fieldstests) {
            var _b = ((_tt._s : Slice<GoByte>));
            var _a = fields(_b);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_1 => _v in _a) {
                _x = (_v != null ? _v.__append__((("z".code : GoUInt8))) : new Slice<GoUInt8>((("z".code : GoUInt8))));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(((((("Fields(%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            if (((_b : GoString)) != _tt._s) {
                _t.errorf(((((("slice changed to %s; want %s" : GoString))) : GoString)), Go.toInterface(((_b : GoString))), Go.toInterface(_tt._s));
            };
            if ((_tt._a != null ? _tt._a.length : ((0 : GoInt))) > ((0 : GoInt))) {
                {
                    var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((((("z" : GoString))) : GoString));
                    if (((_x : GoString)) != _want) {
                        _t.errorf(((((("last appended result was %s; want %s" : GoString))) : GoString)), Go.toInterface(_x), Go.toInterface(_want));
                    };
                };
            };
        };
    }
function testFieldsFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _fieldstests) {
            var _a = fieldsFunc(((_tt._s : Slice<GoByte>)), stdgo.unicode.Unicode.isSpace);
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(((((("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return _c == (("X".code : GoInt32));
        };
        var _fieldsFuncTests:Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = ((new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)), ((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("XX" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)), ((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("XXhiXXX" : GoString))) : GoString)), ((new Slice<GoString>(((((("hi" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest)), ((new stdgo.bytes_test.Bytes_test.FieldsTest(((((("aXXbXXXcX" : GoString))) : GoString)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.bytes_test.Bytes_test.FieldsTest))) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>));
        for (_1 => _tt in _fieldsFuncTests) {
            var _b = ((_tt._s : Slice<GoByte>));
            var _a = fieldsFunc(_b, _pred);
            var _x:Slice<GoByte> = ((null : Slice<GoUInt8>));
            for (_2 => _v in _a) {
                _x = (_v != null ? _v.__append__((("z".code : GoUInt8))) : new Slice<GoUInt8>((("z".code : GoUInt8))));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(((((("FieldsFunc(%q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
            };
            if (((_b : GoString)) != _tt._s) {
                _t.errorf(((((("slice changed to %s; want %s" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_tt._s));
            };
            if ((_tt._a != null ? _tt._a.length : ((0 : GoInt))) > ((0 : GoInt))) {
                {
                    var _want:GoString = (_tt._a != null ? _tt._a[(_tt._a != null ? _tt._a.length : ((0 : GoInt))) - ((1 : GoInt))] : (("" : GoString))) + ((((("z" : GoString))) : GoString));
                    if (((_x : GoString)) != _want) {
                        _t.errorf(((((("last appended result was %s; want %s" : GoString))) : GoString)), Go.toInterface(_x), Go.toInterface(_want));
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
            var _actual = _f(((_tc._in : Slice<GoByte>)));
            if ((_actual == null) && (_tc._out != null)) {
                _t.errorf(((((("%s(%q) = nil; want %q" : GoString))) : GoString)), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_tc._out));
            };
            if ((_actual != null) && (_tc._out == null)) {
                _t.errorf(((((("%s(%q) = %q; want nil" : GoString))) : GoString)), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual));
            };
            if (!equal(_actual, _tc._out)) {
                _t.errorf(((((("%s(%q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_r:GoRune):GoString {
        var _runes = new Slice<GoInt32>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        for (_i => _ in _runes) {
            if (_runes != null) _runes[_i] = _r;
        };
        return ((_runes : GoString));
    }
/**
    // User-defined self-inverse mapping function
**/
function _rot13(_r:GoRune):GoRune {
        {};
        if ((_r >= (("a".code : GoInt32))) && (_r <= (("z".code : GoInt32)))) {
            return (((_r - (("a".code : GoInt32))) + ((13 : GoInt32))) % ((26 : GoInt32))) + (("a".code : GoInt32));
        };
        if ((_r >= (("A".code : GoInt32))) && (_r <= (("Z".code : GoInt32)))) {
            return (((_r - (("A".code : GoInt32))) + ((13 : GoInt32))) % ((26 : GoInt32))) + (("A".code : GoInt32));
        };
        return _r;
    }
function testMap(_t:stdgo.testing.Testing.T):Void {
        var _a:GoString = _tenRunes((("a".code : GoInt32)));
        var _maxRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return ((1114111 : GoInt32));
        };
        var _m = map(_maxRune, ((_a : Slice<GoByte>)));
        var _expect:GoString = _tenRunes(((1114111 : GoInt32)));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((((("growing: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _minRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return (("a".code : GoInt32));
        };
        _m = map(_minRune, ((_tenRunes(((1114111 : GoInt32))) : Slice<GoByte>)));
        _expect = _a;
        if (((_m : GoString)) != _expect) {
            _t.errorf(((((("shrinking: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, ((((((("a to zed" : GoString))) : GoString)) : Slice<GoByte>)));
        _expect = ((((("n gb mrq" : GoString))) : GoString));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((((("rot13: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, ((((((("a to zed" : GoString))) : GoString)) : Slice<GoByte>))));
        _expect = ((((("a to zed" : GoString))) : GoString));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((((("rot13: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _dropNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return ((-1 : GoInt32));
        };
        _m = map(_dropNotLatin, ((((((("Hello, 세계" : GoString))) : GoString)) : Slice<GoByte>)));
        _expect = ((((("Hello" : GoString))) : GoString));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((((("drop: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _invalidRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return ((1114112 : GoInt32));
        };
        _m = map(_invalidRune, ((((((("x" : GoString))) : GoString)) : Slice<GoByte>)));
        _expect = ((((("\uFFFD" : GoString))) : GoString));
        if (((_m : GoString)) != _expect) {
            _t.errorf(((((("invalidRune: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, toUpper, ((((("ToUpper" : GoString))) : GoString)), _upperTests);
    }
function testToLower(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, toLower, ((((("ToLower" : GoString))) : GoString)), _lowerTests);
    }
function benchmarkToUpper(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _upperTests) {
            var _tin = ((_tc._in : Slice<GoByte>));
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual = toUpper(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(((((("ToUpper(%q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _lowerTests) {
            var _tin = ((_tc._in : Slice<GoByte>));
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual = toLower(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(((((("ToLower(%q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function testToValidUTF8(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _toValidUTF8Tests) {
            var _got = toValidUTF8(((_tc._in : Slice<GoByte>)), ((_tc._repl : Slice<GoByte>)));
            if (!equal(_got, ((_tc._out : Slice<GoByte>)))) {
                _t.errorf(((((("ToValidUTF8(%q, %q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got), Go.toInterface(_tc._out));
            };
        };
    }
function testTrimSpace(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, trimSpace, ((((("TrimSpace" : GoString))) : GoString)), _trimSpaceTests);
    }
function testRepeat(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in repeatTests) {
            var _tin = ((_tt._in : Slice<GoByte>));
            var _tout = ((_tt._out : Slice<GoByte>));
            var _a = repeat(_tin, _tt._count);
            if (!equal(_a, _tout)) {
                _t.errorf(((((("Repeat(%q, %d) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_tin), Go.toInterface(_tt._count), Go.toInterface(_a), Go.toInterface(_tout));
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
                    var __recover_exception__:AnyInterface = null;
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
                                _err = stdgo.fmt.Fmt.errorf(((((("%s" : GoString))) : GoString)), Go.toInterface(_v));
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
            var s:GoArray<T__struct_4> = new GoArray<T__struct_4>(...[for (i in 0 ... 7) (({ _s : (("" : GoString)), _count : ((0 : GoInt)), _errStr : (("" : GoString)) } : T__struct_4))]);
            s[0] = (({ _s : ((((("--" : GoString))) : GoString)), _count : ((-2147483647 : GoInt)), _errStr : ((((("negative" : GoString))) : GoString)) } : T__struct_4));
            s[1] = (({ _s : ((((("" : GoString))) : GoString)), _count : ((((2147483647 : GoUInt)) : GoInt)), _errStr : ((((("" : GoString))) : GoString)) } : T__struct_4));
            s[2] = (({ _s : ((((("-" : GoString))) : GoString)), _count : ((10 : GoInt)), _errStr : ((((("" : GoString))) : GoString)) } : T__struct_4));
            s[3] = (({ _s : ((((("gopher" : GoString))) : GoString)), _count : ((0 : GoInt)), _errStr : ((((("" : GoString))) : GoString)) } : T__struct_4));
            s[4] = (({ _s : ((((("-" : GoString))) : GoString)), _count : ((-1 : GoInt)), _errStr : ((((("negative" : GoString))) : GoString)) } : T__struct_4));
            s[5] = (({ _s : ((((("--" : GoString))) : GoString)), _count : ((-102 : GoInt)), _errStr : ((((("negative" : GoString))) : GoString)) } : T__struct_4));
            s[6] = (({ _s : ((new Slice<GoUInt8>(...[for (i in 0 ... ((((255 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]) : GoString)), _count : ((((16843010 : GoUInt)) : GoInt)), _errStr : ((((("overflow" : GoString))) : GoString)) } : T__struct_4));
            s;
        };
        for (_i => _tt in _tests) {
            var _err:stdgo.Error = _repeat(((_tt._s : Slice<GoByte>)), _tt._count);
            if (_tt._errStr == ((((("" : GoString))) : GoString))) {
                if (_err != null) {
                    _t.errorf(((((("#%d panicked %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), _tt._errStr)) {
                _t.errorf(((((("#%d expected %q got %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tt._errStr), Go.toInterface(_err));
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
function testRunes(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in runesTests) {
            var _tin = ((_tt._in : Slice<GoByte>));
            var _a = runes(_tin);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(((((("Runes(%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tin), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:GoString = ((_a : GoString));
                if (_s != _tt._in) {
                    _t.errorf(((((("string(Runes(%q)) = %x; want %x" : GoString))) : GoString)), Go.toInterface(_tin), Go.toInterface(_s), Go.toInterface(_tin));
                };
            };
        };
    }
function testTrim(_t:stdgo.testing.Testing.T):Void {
        var _toFn:GoString -> { var _0 : (Slice<GoUInt8>, GoString) -> Slice<GoUInt8>; var _1 : (Slice<GoUInt8>, Slice<GoUInt8>) -> Slice<GoUInt8>; } = function(_name:GoString):{ var _0 : (Slice<GoByte>, GoString) -> Slice<GoByte>; var _1 : (Slice<GoByte>, Slice<GoByte>) -> Slice<GoByte>; } {
            if (_name == ((((("Trim" : GoString))) : GoString))) {
                return { _0 : trim, _1 : null };
            } else if (_name == ((((("TrimLeft" : GoString))) : GoString))) {
                return { _0 : trimLeft, _1 : null };
            } else if (_name == ((((("TrimRight" : GoString))) : GoString))) {
                return { _0 : trimRight, _1 : null };
            } else if (_name == ((((("TrimPrefix" : GoString))) : GoString))) {
                return { _0 : null, _1 : trimPrefix };
            } else if (_name == ((((("TrimSuffix" : GoString))) : GoString))) {
                return { _0 : null, _1 : trimSuffix };
            } else {
                _t.errorf(((((("Undefined trim function %s" : GoString))) : GoString)), Go.toInterface(_name));
                return { _0 : null, _1 : null };
            };
        };
        for (_0 => _tc in _trimTests) {
            var _name:GoString = _tc._f;
            var __tmp__ = _toFn(_name), _f:(Slice<GoUInt8>, GoString) -> Slice<GoUInt8> = __tmp__._0, _fb:(Slice<GoUInt8>, Slice<GoUInt8>) -> Slice<GoUInt8> = __tmp__._1;
            if ((_f == null) && (_fb == null)) {
                continue;
            };
            var _actual:GoString = (("" : GoString));
            if (_f != null) {
                _actual = ((_f(((_tc._in : Slice<GoByte>)), _tc._arg) : GoString));
            } else {
                _actual = ((_fb(((_tc._in : Slice<GoByte>)), ((_tc._arg : Slice<GoByte>))) : GoString));
            };
            if (_actual != _tc._out) {
                _t.errorf(((((("%s(%q, %q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
        for (_1 => _tc in _trimNilTests) {
            var _name:GoString = _tc._f;
            var __tmp__ = _toFn(_name), _f:(Slice<GoUInt8>, GoString) -> Slice<GoUInt8> = __tmp__._0, _fb:(Slice<GoUInt8>, Slice<GoUInt8>) -> Slice<GoUInt8> = __tmp__._1;
            if ((_f == null) && (_fb == null)) {
                continue;
            };
            var _actual:Slice<GoByte> = ((null : Slice<GoUInt8>));
            if (_f != null) {
                _actual = _f(_tc._in, _tc._arg);
            } else {
                _actual = _fb(_tc._in, ((_tc._arg : Slice<GoByte>)));
            };
            var _report = function(_s:Slice<GoByte>):GoString {
                if (_s == null) {
                    return ((((("nil" : GoString))) : GoString));
                } else {
                    return stdgo.fmt.Fmt.sprintf(((((("%q" : GoString))) : GoString)), Go.toInterface(_s));
                };
            };
            if ((_actual != null ? _actual.length : ((0 : GoInt))) != ((0 : GoInt))) {
                _t.errorf(((((("%s(%s, %q) returned non-empty value" : GoString))) : GoString)), Go.toInterface(_name), Go.toInterface(_report(_tc._in)), Go.toInterface(_tc._arg));
            } else {
                var _actualNil:Bool = _actual == null;
                var _outNil:Bool = _tc._out == null;
                if (_actualNil != _outNil) {
                    _t.errorf(((((("%s(%s, %q) got nil %t; want nil %t" : GoString))) : GoString)), Go.toInterface(_name), Go.toInterface(_report(_tc._in)), Go.toInterface(_tc._arg), Go.toInterface(_actualNil), Go.toInterface(_outNil));
                };
            };
        };
    }
function _not(_p:T_predicate):T_predicate {
        return ((new stdgo.bytes_test.Bytes_test.T_predicate(function(_r:GoRune):Bool {
            return !_p._f(_r);
        }, ((((("not " : GoString))) : GoString)) + _p._name) : stdgo.bytes_test.Bytes_test.T_predicate));
    }
function testTrimFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _trimFuncTests) {
            var _trimmers = ((new Slice<T__struct_5>((({ _name : ((((("TrimFunc" : GoString))) : GoString)), _trim : trimFunc, _out : _tc._trimOut } : T__struct_5)), (({ _name : ((((("TrimLeftFunc" : GoString))) : GoString)), _trim : trimLeftFunc, _out : _tc._leftOut } : T__struct_5)), (({ _name : ((((("TrimRightFunc" : GoString))) : GoString)), _trim : trimRightFunc, _out : _tc._rightOut } : T__struct_5))) : Slice<T__struct_5>));
            for (_1 => _trimmer in _trimmers) {
                var _actual = _trimmer._trim(((_tc._in : Slice<GoByte>)), _tc._f._f);
                if ((_actual == null) && (_trimmer._out != null)) {
                    _t.errorf(((((("%s(%q, %q) = nil; want %q" : GoString))) : GoString)), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_trimmer._out));
                };
                if ((_actual != null) && (_trimmer._out == null)) {
                    _t.errorf(((((("%s(%q, %q) = %q; want nil" : GoString))) : GoString)), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual));
                };
                if (!equal(_actual, _trimmer._out)) {
                    _t.errorf(((((("%s(%q, %q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual), Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _indexFuncTests) {
            var _first:GoInt = indexFunc(((_tc._in : Slice<GoByte>)), _tc._f._f);
            if (_first != _tc._first) {
                _t.errorf(((((("IndexFunc(%q, %s) = %d; want %d" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first), Go.toInterface(_tc._first));
            };
            var _last:GoInt = lastIndexFunc(((_tc._in : Slice<GoByte>)), _tc._f._f);
            if (_last != _tc._last) {
                _t.errorf(((((("LastIndexFunc(%q, %s) = %d; want %d" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_last), Go.toInterface(_tc._last));
            };
        };
    }
function testReplace(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in replaceTests) {
            var _in = (((_tt._in : Slice<GoByte>)) != null ? ((_tt._in : Slice<GoByte>)).__append__(...((((("<spare>" : GoString))) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((((("<spare>" : GoString))) : GoString)).__toArray__()));
            _in = ((_in.__slice__(0, (_tt._in != null ? _tt._in.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            var _out = replace(_in, ((_tt._old : Slice<GoByte>)), ((_tt._new : Slice<GoByte>)), _tt._n);
            {
                var _s:GoString = ((_out : GoString));
                if (_s != _tt._out) {
                    _t.errorf(((((("Replace(%q, %q, %q, %d) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
            if (((_in != null ? _in.cap() : ((0 : GoInt))) == (_out != null ? _out.cap() : ((0 : GoInt)))) && (Go.pointer((((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_in.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))) == Go.pointer((((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))[((0 : GoInt))] : ((0 : GoUInt8)))))) {
                _t.errorf(((((("Replace(%q, %q, %q, %d) didn\'t copy" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n));
            };
            if (_tt._n == ((-1 : GoInt))) {
                var _out = replaceAll(_in, ((_tt._old : Slice<GoByte>)), ((_tt._new : Slice<GoByte>)));
                {
                    var _s:GoString = ((_out : GoString));
                    if (_s != _tt._out) {
                        _t.errorf(((((("ReplaceAll(%q, %q, %q) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_s), Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
function testTitle(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in titleTests) {
            {
                var _s:GoString = ((title(((_tt._in : Slice<GoByte>))) : GoString));
                if (_s != _tt._out) {
                    _t.errorf(((((("Title(%q) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testToTitle(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in toTitleTests) {
            {
                var _s:GoString = ((toTitle(((_tt._in : Slice<GoByte>))) : GoString));
                if (_s != _tt._out) {
                    _t.errorf(((((("ToTitle(%q) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testEqualFold(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold(((_tt._s : Slice<GoByte>)), ((_tt._t : Slice<GoByte>)));
                if (_out != _tt._out) {
                    _t.errorf(((((("EqualFold(%#q, %#q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold(((_tt._t : Slice<GoByte>)), ((_tt._s : Slice<GoByte>)));
                if (_out != _tt._out) {
                    _t.errorf(((((("EqualFold(%#q, %#q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testCut(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _cutTests) {
            {
                var __tmp__ = cut(((_tt._s : Slice<GoByte>)), ((_tt._sep : Slice<GoByte>))), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
                if (((((_before : GoString)) != _tt._before) || (((_after : GoString)) != _tt._after)) || (_found != _tt._found)) {
                    _t.errorf(((((("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
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
                            _t.fatal(Go.toInterface(((((("Grow(-1) should have panicked" : GoString))) : GoString))));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = (({  } : Buffer));
            _b.grow(((-1 : GoInt)));
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
                            _t.fatal(Go.toInterface(((((("Truncate(-1) should have panicked" : GoString))) : GoString))));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = (({  } : Buffer));
            _b.truncate(((-1 : GoInt)));
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
                            _t.fatal(Go.toInterface(((((("Truncate(20) should have panicked" : GoString))) : GoString))));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = (({  } : Buffer));
            _b.write(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            _b.truncate(((20 : GoInt)));
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
                    _t.errorf(((((("Contains(%q, %q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._b), Go.toInterface(_tt._subslice), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testContainsAny(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ct in containsAnyTests) {
            if (containsAny(_ct._b, _ct._substr) != _ct._expected) {
                _t.errorf(((((("ContainsAny(%s, %s) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_ct._b), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ct in containsRuneTests) {
            if (containsRune(_ct._b, _ct._r) != _ct._expected) {
                _t.errorf(((((("ContainsRune(%q, %q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_ct._b), Go.toInterface(_ct._r), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function benchmarkFields(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = ((16 : GoInt));
                    Go.cfor(_j <= ((1048576 : GoInt)), _j = _j << (((4 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d" : GoString))) : GoString)), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes(((_j : GoInt64)));
                            var _data = ((_sd._data.__slice__(0, _j) : Slice<GoUInt8>));
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
        for (_0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = ((16 : GoInt));
                    Go.cfor(_j <= ((1048576 : GoInt)), _j = _j << (((4 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d" : GoString))) : GoString)), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes(((_j : GoInt64)));
                            var _data = ((_sd._data.__slice__(0, _j) : Slice<GoUInt8>));
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
        var _tests = ((new Slice<T__struct_12>((({ _name : ((((("NoTrim" : GoString))) : GoString)), _input : ((((((("typical" : GoString))) : GoString)) : Slice<GoByte>)) } : T__struct_12)), (({ _name : ((((("ASCII" : GoString))) : GoString)), _input : ((((((("  foo bar  " : GoString))) : GoString)) : Slice<GoByte>)) } : T__struct_12)), (({ _name : ((((("SomeNonASCII" : GoString))) : GoString)), _input : ((((((("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : GoString))) : GoString)) : Slice<GoByte>)) } : T__struct_12)), (({ _name : ((((("JustNonASCII" : GoString))) : GoString)), _input : ((((((("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : GoString))) : GoString)) : Slice<GoByte>)) } : T__struct_12))) : Slice<T__struct_12>));
        for (_0 => _test in _tests) {
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
        var _tests = ((new Slice<T__struct_12>((({ _name : ((((("Valid" : GoString))) : GoString)), _input : ((((((("typical" : GoString))) : GoString)) : Slice<GoByte>)) } : T__struct_12)), (({ _name : ((((("InvalidASCII" : GoString))) : GoString)), _input : ((((((("foo" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("bar" : GoString))) : GoString)) : Slice<GoByte>)) } : T__struct_12)), (({ _name : ((((("InvalidNonASCII" : GoString))) : GoString)), _input : ((((((("日本語" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("日本語" : GoString))) : GoString)) : Slice<GoByte>)) } : T__struct_12))) : Slice<T__struct_12>));
        var _replacement = ((((((("\uFFFD" : GoString))) : GoString)) : Slice<GoByte>));
        _b.resetTimer();
        for (_0 => _test in _tests) {
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
        var _tokens = ((new GoArray<GoString>(((((("<a>" : GoString))) : GoString)), ((((("<p>" : GoString))) : GoString)), ((((("<b>" : GoString))) : GoString)), ((((("<strong>" : GoString))) : GoString)), ((((("</a>" : GoString))) : GoString)), ((((("</p>" : GoString))) : GoString)), ((((("</b>" : GoString))) : GoString)), ((((("</strong>" : GoString))) : GoString)), ((((("hello" : GoString))) : GoString)), ((((("world" : GoString))) : GoString))) : GoArray<GoString>));
        var _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
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
        _benchmarkIndexHard(_b, ((((((("<>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((((("</pre>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((((("<b>hello world</b>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkIndexHard4(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((((("<pre><b>hello</b><strong>world</strong></pre>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkLastIndexHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((((("<>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkLastIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((((("</pre>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkLastIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((((("<b>hello world</b>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkCountHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((((("<>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkCountHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((((("</pre>" : GoString))) : GoString)) : Slice<GoByte>)));
    }
function benchmarkCountHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((((("<b>hello world</b>" : GoString))) : GoString)) : Slice<GoByte>)));
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
        var _sep = ((((((("/" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep = ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep = ((((((("/" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, ((10 : GoInt)));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        var _sep = ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>));
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
                repeat(((((((("-" : GoString))) : GoString)) : Slice<GoByte>)), ((80 : GoInt)));
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
                            if (_x != null) _x[_i] = (("a".code : GoUInt8));
                        });
                    };
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _n, _i++, {
                            if (_y != null) _y[_i] = (("a".code : GoUInt8));
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
        var _x = repeat(((new Slice<GoUInt8>((("#".code : GoUInt8))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((((("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : GoString))) : GoString));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d:%d" : GoString))) : GoString)), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
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
        var _x = repeat(((new Slice<GoUInt8>((("#".code : GoUInt8))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((((("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : GoString))) : GoString));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d:%d" : GoString))) : GoString)), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
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
        var _x = repeat(((new Slice<GoUInt8>((("#".code : GoUInt8))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((((("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : GoString))) : GoString));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d:%d" : GoString))) : GoString)), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
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
        var _x = repeat(((new Slice<GoUInt8>((("#".code : GoUInt8))) : Slice<GoUInt8>)), ((2048 : GoInt)));
        var _cs:GoString = ((((("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : GoString))) : GoString));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((2048 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((64 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d:%d" : GoString))) : GoString)), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
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
        var _cs:GoString = ((((("0123456789abcdef" : GoString))) : GoString));
        {
            var _k:GoInt = ((1 : GoInt));
            Go.cfor(_k <= ((4096 : GoInt)), _k = _k << (((4 : GoUnTypedInt))), {
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j <= ((16 : GoInt)), _j = _j << (((1 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d:%d" : GoString))) : GoString)), Go.toInterface(_k), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            var _x = repeat(((((_cs.__slice__(0, _j) : GoString)) : Slice<GoByte>)), _k);
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
        var _x = ((((((("  the quick brown fox   " : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                trim(_x, (((((" " : GoString))) : GoString)));
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.testing.Testing.B):Void {
        var _key = ((new Slice<GoUInt8>(((1 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>));
        for (_0 => _skip in ((new GoArray<GoInt>(((2 : GoInt)), ((4 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((32 : GoInt)), ((64 : GoInt))) : GoArray<GoInt>))) {
            _b.run(stdgo.fmt.Fmt.sprintf(((((("IndexPeriodic%d" : GoString))) : GoString)), Go.toInterface(_skip)), function(_b:stdgo.testing.Testing.B):Void {
                var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
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
function testCompare(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _compareTests) {
            var _numShifts:GoInt = ((16 : GoInt));
            var _buffer = new Slice<GoUInt8>(...[for (i in 0 ... (((_tt._b != null ? _tt._b.length : ((0 : GoInt))) + _numShifts : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _offset:GoInt = ((0 : GoInt));
                Go.cfor(_offset <= _numShifts, _offset++, {
                    var _shiftedB = ((_buffer.__slice__(_offset, (_tt._b != null ? _tt._b.length : ((0 : GoInt))) + _offset) : Slice<GoUInt8>));
                    Go.copySlice(_shiftedB, _tt._b);
                    var _cmp:GoInt = compare(_tt._a, _shiftedB);
                    if (_cmp != _tt._i) {
                        _t.errorf((("Compare(%q, %q), offset %d = %v; want %v" : GoString)), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_offset), Go.toInterface(_cmp), Go.toInterface(_tt._i));
                    };
                });
            };
        };
    }
function testCompareIdenticalSlice(_t:stdgo.testing.Testing.T):Void {
        var _b:Slice<GoUInt8> = ((((((("Hello Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        if (compare(_b, _b) != ((0 : GoInt))) {
            _t.error(Go.toInterface(((((("b != b" : GoString))) : GoString))));
        };
        if (compare(_b, ((_b.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))) != ((1 : GoInt))) {
            _t.error(Go.toInterface(((((("b > b[:1] failed" : GoString))) : GoString))));
        };
    }
function testCompareBytes(_t:stdgo.testing.Testing.T):Void {
        var _lengths = new Slice<GoInt>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((128 : GoInt)), _i++, {
                _lengths = (_lengths != null ? _lengths.__append__(_i) : new Slice<GoInt>(_i));
            });
        };
        _lengths = (_lengths != null ? _lengths.__append__(((256 : GoInt)), ((512 : GoInt)), ((1024 : GoInt)), ((1333 : GoInt)), ((4095 : GoInt)), ((4096 : GoInt)), ((4097 : GoInt))) : new Slice<GoInt>(((256 : GoInt)), ((512 : GoInt)), ((1024 : GoInt)), ((1333 : GoInt)), ((4095 : GoInt)), ((4096 : GoInt)), ((4097 : GoInt))));
        if (!stdgo.testing.Testing.short() || (stdgo.internal.testenv.Testenv.builder() != ((((("" : GoString))) : GoString)))) {
            _lengths = (_lengths != null ? _lengths.__append__(((65535 : GoInt)), ((65536 : GoInt)), ((65537 : GoInt)), ((99999 : GoInt))) : new Slice<GoInt>(((65535 : GoInt)), ((65536 : GoInt)), ((65537 : GoInt)), ((99999 : GoInt))));
        };
        var _n:GoInt = (_lengths != null ? _lengths[(_lengths != null ? _lengths.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt)));
        var _a = new Slice<GoUInt8>(...[for (i in 0 ... ((_n + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((_n + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_0 => _len in _lengths) {
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
                _t.errorf((("CompareIdentical(%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_cmp));
            };
            if (_len > ((0 : GoInt))) {
                _cmp = compare(((_a.__slice__(0, _len - ((1 : GoInt))) : Slice<GoUInt8>)), ((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                if (_cmp != ((-1 : GoInt))) {
                    _t.errorf((("CompareAshorter(%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_cmp));
                };
                _cmp = compare(((_a.__slice__(0, _len) : Slice<GoUInt8>)), ((_b.__slice__(0, _len - ((1 : GoInt))) : Slice<GoUInt8>)));
                if (_cmp != ((1 : GoInt))) {
                    _t.errorf((("CompareBshorter(%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_cmp));
                };
            };
            {
                var _k:GoInt = ((0 : GoInt));
                Go.cfor(_k < _len, _k++, {
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8))) - ((1 : GoUInt8));
                    _cmp = compare(((_a.__slice__(0, _len) : Slice<GoUInt8>)), ((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                    if (_cmp != ((1 : GoInt))) {
                        _t.errorf((("CompareAbigger(%d,%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8))) + ((1 : GoUInt8));
                    _cmp = compare(((_a.__slice__(0, _len) : Slice<GoUInt8>)), ((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                    if (_cmp != ((-1 : GoInt))) {
                        _t.errorf((("CompareBbigger(%d,%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8)));
                });
            };
        };
    }
function testEndianBaseCompare(_t:stdgo.testing.Testing.T):Void {
        {};
        var _a = new Slice<GoUInt8>(...[for (i in 0 ... ((((512 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((512 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
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
                            _t.errorf((("CompareBbigger(%d,%d) = %d" : GoString)), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        if (_a != null) _a[_j] = (_b != null ? _b[_j] : ((0 : GoUInt8))) + ((1 : GoUInt8));
                        if (_a != null) _a[_j + ((1 : GoInt))] = (_b != null ? _b[_j + ((1 : GoInt))] : ((0 : GoUInt8))) - ((1 : GoUInt8));
                        _cmp = compare(((_a.__slice__(0, _i) : Slice<GoUInt8>)), ((_b.__slice__(0, _i) : Slice<GoUInt8>)));
                        if (_cmp != ((1 : GoInt))) {
                            _t.errorf((("CompareAbigger(%d,%d) = %d" : GoString)), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        if (_a != null) _a[_j] = (_b != null ? _b[_j] : ((0 : GoUInt8)));
                        if (_a != null) _a[_j + ((1 : GoInt))] = (_b != null ? _b[_j + ((1 : GoInt))] : ((0 : GoUInt8)));
                    });
                };
            });
        };
    }
function benchmarkCompareBytesEqual(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((((((("Hello Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        var _b2 = ((((((("Hello Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 != b2" : GoString))) : GoString))));
                };
            });
        };
    }
function benchmarkCompareBytesToNil(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((((((("Hello Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        var _b2:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((1 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 > b2 failed" : GoString))) : GoString))));
                };
            });
        };
    }
function benchmarkCompareBytesEmpty(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((((((("" : GoString))) : GoString)) : Slice<GoByte>));
        var _b2 = _b1;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 != b2" : GoString))) : GoString))));
                };
            });
        };
    }
function benchmarkCompareBytesIdentical(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((((((("Hello Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        var _b2 = _b1;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 != b2" : GoString))) : GoString))));
                };
            });
        };
    }
function benchmarkCompareBytesSameLength(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((((((("Hello Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        var _b2 = ((((((("Hello, Gophers" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 < b2 failed" : GoString))) : GoString))));
                };
            });
        };
    }
function benchmarkCompareBytesDifferentLength(_b:stdgo.testing.Testing.B):Void {
        var _b1 = ((((((("Hello Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        var _b2 = ((((((("Hello, Gophers!" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 < b2 failed" : GoString))) : GoString))));
                };
            });
        };
    }
function benchmarkCompareBytesBigUnaligned(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while ((_b1 != null ? _b1.length : ((0 : GoInt))) < ((1048576 : GoInt))) {
            _b1 = (_b1 != null ? _b1.__append__(...((((("Hello Gophers!" : GoString))) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((((("Hello Gophers!" : GoString))) : GoString)).__toArray__()));
        };
        var _b2 = (((((((("hello" : GoString))) : GoString)) : Slice<GoByte>)) != null ? ((((((("hello" : GoString))) : GoString)) : Slice<GoByte>)).__append__(..._b1.__toArray__()) : new Slice<GoUInt8>(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, ((_b2.__slice__((((((("hello" : GoString))) : GoString)) != null ? ((((("hello" : GoString))) : GoString)).length : ((0 : GoInt)))) : Slice<GoUInt8>))) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 != b2" : GoString))) : GoString))));
                };
            });
        };
        _b.setBytes((((_b1 != null ? _b1.length : ((0 : GoInt))) : GoInt64)));
    }
function benchmarkCompareBytesBig(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while ((_b1 != null ? _b1.length : ((0 : GoInt))) < ((1048576 : GoInt))) {
            _b1 = (_b1 != null ? _b1.__append__(...((((("Hello Gophers!" : GoString))) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((((("Hello Gophers!" : GoString))) : GoString)).__toArray__()));
        };
        var _b2 = (((new Slice<GoUInt8>() : Slice<GoUInt8>)) != null ? ((new Slice<GoUInt8>() : Slice<GoUInt8>)).__append__(..._b1.__toArray__()) : new Slice<GoUInt8>(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 != b2" : GoString))) : GoString))));
                };
            });
        };
        _b.setBytes((((_b1 != null ? _b1.length : ((0 : GoInt))) : GoInt64)));
    }
function benchmarkCompareBytesBigIdentical(_b:stdgo.testing.Testing.B):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while ((_b1 != null ? _b1.length : ((0 : GoInt))) < ((1048576 : GoInt))) {
            _b1 = (_b1 != null ? _b1.__append__(...((((("Hello Gophers!" : GoString))) : GoString)).__toArray__()) : new Slice<GoUInt8>(...((((("Hello Gophers!" : GoString))) : GoString)).__toArray__()));
        };
        var _b2 = _b1;
        _b.startTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(((((("b1 != b2" : GoString))) : GoString))));
                };
            });
        };
        _b.setBytes((((_b1 != null ? _b1.length : ((0 : GoInt))) : GoInt64)));
    }
function exampleBuffer():Void {
        var _b:Buffer = (({  } : Buffer));
        _b.write(((((((("Hello " : GoString))) : GoString)) : Slice<GoByte>)));
        stdgo.fmt.Fmt.fprintf({
            final __self__ = new Buffer_wrapper(_b);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
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
        }, ((((("world!" : GoString))) : GoString)));
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
        var _buf = stdgo.bytes.Bytes.newBufferString(((((("R29waGVycyBydWxlIQ==" : GoString))) : GoString)));
        var _dec:stdgo.io.Io.Reader = stdgo.encoding.base64.Base64.newDecoder(stdgo.encoding.base64.Base64.stdEncoding, {
            final __self__ = new Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
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
        var _buf:Buffer = ((new Buffer() : Buffer));
        _buf.write(((new Slice<GoUInt8>(
(("h".code : GoUInt8)),
(("e".code : GoUInt8)),
(("l".code : GoUInt8)),
(("l".code : GoUInt8)),
(("o".code : GoUInt8)),
((" ".code : GoUInt8)),
(("w".code : GoUInt8)),
(("o".code : GoUInt8)),
(("r".code : GoUInt8)),
(("l".code : GoUInt8)),
(("d".code : GoUInt8))) : Slice<GoUInt8>)));
        stdgo.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_Cap():Void {
        var _buf1 = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _buf2 = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic()));
        stdgo.fmt.Fmt.println(_buf1.cap_());
        stdgo.fmt.Fmt.println(_buf2.cap_());
    }
function exampleBuffer_Grow():Void {
        var _b:Buffer = (({  } : Buffer));
        _b.grow(((64 : GoInt)));
        var _bb = _b.bytes();
        _b.write(((((((("64 bytes or fewer" : GoString))) : GoString)) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((((("%q" : GoString))) : GoString)), Go.toInterface(((_bb.__slice__(0, _b.len()) : Slice<GoUInt8>))));
    }
function exampleBuffer_Len():Void {
        var _b:Buffer = (({  } : Buffer));
        _b.grow(((64 : GoInt)));
        _b.write(((((((("abcde" : GoString))) : GoString)) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((((("%d" : GoString))) : GoString)), Go.toInterface(_b.len()));
    }
function exampleBuffer_Next():Void {
        var _b:Buffer = (({  } : Buffer));
        _b.grow(((64 : GoInt)));
        _b.write(((((((("abcde" : GoString))) : GoString)) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((((("%s\n" : GoString))) : GoString)), Go.toInterface(((_b.next(((2 : GoInt))) : GoString))));
        stdgo.fmt.Fmt.printf(((((("%s\n" : GoString))) : GoString)), Go.toInterface(((_b.next(((2 : GoInt))) : GoString))));
        stdgo.fmt.Fmt.printf(((((("%s" : GoString))) : GoString)), Go.toInterface(((_b.next(((2 : GoInt))) : GoString))));
    }
function exampleBuffer_Read():Void {
        var _b:Buffer = (({  } : Buffer));
        _b.grow(((64 : GoInt)));
        _b.write(((((((("abcde" : GoString))) : GoString)) : Slice<GoByte>)));
        var _rdbuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _b.read(_rdbuf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(_n);
        stdgo.fmt.Fmt.println(((_b.string() : GoString)));
        stdgo.fmt.Fmt.println(((_rdbuf : GoString)));
    }
function exampleBuffer_ReadByte():Void {
        var _b:Buffer = (({  } : Buffer));
        _b.grow(((64 : GoInt)));
        _b.write(((((((("abcde" : GoString))) : GoString)) : Slice<GoByte>)));
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(_c);
        stdgo.fmt.Fmt.println(((_b.string() : GoString)));
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
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((((("seafood" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("foo" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((((("seafood" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("bar" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((((("seafood" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.contains(((((((("" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((((("I like seafood." : GoString))) : GoString)) : Slice<GoByte>)), ((((("fÄo!" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((((("I like seafood." : GoString))) : GoString)) : Slice<GoByte>)), ((((("去是伟大的." : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((((("I like seafood." : GoString))) : GoString)) : Slice<GoByte>)), ((((("" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsAny(((((((("" : GoString))) : GoString)) : Slice<GoByte>)), ((((("" : GoString))) : GoString))));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((((("I like seafood." : GoString))) : GoString)) : Slice<GoByte>)), (("f".code : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((((("I like seafood." : GoString))) : GoString)) : Slice<GoByte>)), (("ö".code : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((((("去是伟大的!" : GoString))) : GoString)) : Slice<GoByte>)), (("大".code : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((((("去是伟大的!" : GoString))) : GoString)) : Slice<GoByte>)), (("!".code : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.containsRune(((((((("" : GoString))) : GoString)) : Slice<GoByte>)), (("@".code : GoInt32))));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.count(((((((("cheese" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("e" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.count(((((((("five" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cut(((_s : Slice<GoByte>)), ((_sep : Slice<GoByte>))), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(((((("Cut(%q, %q) = %q, %q, %v\n" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show(((((("Gopher" : GoString))) : GoString)), ((((("Go" : GoString))) : GoString)));
        _show(((((("Gopher" : GoString))) : GoString)), ((((("ph" : GoString))) : GoString)));
        _show(((((("Gopher" : GoString))) : GoString)), ((((("er" : GoString))) : GoString)));
        _show(((((("Gopher" : GoString))) : GoString)), ((((("Badger" : GoString))) : GoString)));
    }
function exampleEqual():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equal(((((((("Go" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("Go" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equal(((((((("Go" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("C++" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.equalFold(((((((("Go" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("go" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(((((("Fields are: %q" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.fields(((((((("  foo bar  baz   " : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(((((("Fields are: %q" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.fieldsFunc(((((((("  foo1;bar2,baz3..." : GoString))) : GoString)) : Slice<GoByte>)), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((((((("Gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("Go" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((((((("Gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("C" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasPrefix(((((((("Gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((((("Amigo" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("go" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((((("Amigo" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("O" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((((("Amigo" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("Ami" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.hasSuffix(((((((("Amigo" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((((((("chicken" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("ken" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((((((("chicken" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("dmr" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexByte(((((((("chicken" : GoString))) : GoString)) : Slice<GoByte>)), (((("k".code : GoUInt8)) : GoByte))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexByte(((((((("chicken" : GoString))) : GoString)) : Slice<GoByte>)), (((("g".code : GoUInt8)) : GoByte))));
    }
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexFunc(((((((("Hello, 世界" : GoString))) : GoString)) : Slice<GoByte>)), _f));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexFunc(((((((("Hello, world" : GoString))) : GoString)) : Slice<GoByte>)), _f));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexAny(((((((("chicken" : GoString))) : GoString)) : Slice<GoByte>)), ((((("aeiouy" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexAny(((((((("crwth" : GoString))) : GoString)) : Slice<GoByte>)), ((((("aeiouy" : GoString))) : GoString))));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexRune(((((((("chicken" : GoString))) : GoString)) : Slice<GoByte>)), (("k".code : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.indexRune(((((((("chicken" : GoString))) : GoString)) : Slice<GoByte>)), (("d".code : GoInt32))));
    }
function exampleJoin():Void {
        var _s = ((new Slice<Slice<GoUInt8>>(((((((("foo" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("bar" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("baz" : GoString))) : GoString)) : Slice<GoByte>))) : Slice<Slice<GoUInt8>>));
        stdgo.fmt.Fmt.printf(((((("%s" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.join(_s, (((((((", " : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.index(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("go" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndex(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("go" : GoString))) : GoString)) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndex(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("rodent" : GoString))) : GoString)) : Slice<GoByte>))));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((("MüQp" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((((((("go 地鼠" : GoString))) : GoString)) : Slice<GoByte>)), ((((("地大" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexAny(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), ((((("z,!." : GoString))) : GoString))));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), (((("g".code : GoUInt8)) : GoByte))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), (((("r".code : GoUInt8)) : GoByte))));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexByte(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)), (((("z".code : GoUInt8)) : GoByte))));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((((((("go gopher!" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((((((("go gopher!" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct));
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.lastIndexFunc(((((((("go gopher!" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber));
    }
function exampleReader_Len():Void {
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.newReader(((((((("Hi!" : GoString))) : GoString)) : Slice<GoByte>))).len());
        stdgo.fmt.Fmt.println(stdgo.bytes.Bytes.newReader(((((((("こんにちは!" : GoString))) : GoString)) : Slice<GoByte>))).len());
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.printf(((((("ba%s" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.repeat(((((((("na" : GoString))) : GoString)) : Slice<GoByte>)), ((2 : GoInt)))));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.printf(((((("%s\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.replace(((((((("oink oink oink" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("k" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("ky" : GoString))) : GoString)) : Slice<GoByte>)), ((2 : GoInt)))));
        stdgo.fmt.Fmt.printf(((((("%s\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.replace(((((((("oink oink oink" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("oink" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("moo" : GoString))) : GoString)) : Slice<GoByte>)), ((-1 : GoInt)))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.printf(((((("%s\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.replaceAll(((((((("oink oink oink" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("oink" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("moo" : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleRunes():Void {
        var _rs = stdgo.bytes.Bytes.runes(((((((("go gopher" : GoString))) : GoString)) : Slice<GoByte>)));
        for (_0 => _r in _rs) {
            stdgo.fmt.Fmt.printf(((((("%#U\n" : GoString))) : GoString)), Go.toInterface(_r));
        };
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.split(((((((("a,b,c" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("," : GoString))) : GoString)) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.split(((((((("a man a plan a canal panama" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("a " : GoString))) : GoString)) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.split((((((((" xyz " : GoString))) : GoString)) : Slice<GoByte>)), ((((((("" : GoString))) : GoString)) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.split(((((((("" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("Bernardo O\'Higgins" : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.splitN(((((((("a,b,c" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("," : GoString))) : GoString)) : Slice<GoByte>)), ((2 : GoInt)))));
        var _z = stdgo.bytes.Bytes.splitN(((((((("a,b,c" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("," : GoString))) : GoString)) : Slice<GoByte>)), ((0 : GoInt)));
        stdgo.fmt.Fmt.printf(((((("%q (nil = %v)\n" : GoString))) : GoString)), Go.toInterface(_z), Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.splitAfter(((((((("a,b,c" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("," : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.splitAfterN(((((((("a,b,c" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("," : GoString))) : GoString)) : Slice<GoByte>)), ((2 : GoInt)))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.printf(((((("%s" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.title(((((((("her royal highness" : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.printf(((((("%s\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.toTitle(((((((("loud noises" : GoString))) : GoString)) : Slice<GoByte>)))));
        stdgo.fmt.Fmt.printf(((((("%s\n" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.toTitle(((((((("хлеб" : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleToTitleSpecial():Void {
        var _str = ((((((("ahoj vývojári golang" : GoString))) : GoString)) : Slice<GoByte>));
        var _totitle = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(((((("Original : " : GoString))) : GoString)) + ((_str : GoString)));
        stdgo.fmt.Fmt.println(((((("ToTitle : " : GoString))) : GoString)) + ((_totitle : GoString)));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.printf(((((("[%q]" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.trim((((((((" !!! Achtung! Achtung! !!! " : GoString))) : GoString)) : Slice<GoByte>)), ((((("! " : GoString))) : GoString)))));
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((((("go-gopher!" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((((("\"go-gopher!\"" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((((("go-gopher!" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimFunc(((((((("1234go-gopher!567" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(((stdgo.bytes.Bytes.trimLeft(((((((("453gopher8257" : GoString))) : GoString)) : Slice<GoByte>)), ((((("0123456789" : GoString))) : GoString))) : GoString)));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimLeftFunc(((((((("go-gopher" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimLeftFunc(((((((("go-gopher!" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimLeftFunc(((((((("1234go-gopher!567" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleTrimPrefix():Void {
        var _b:Slice<GoUInt8> = ((((((("Goodbye,, world!" : GoString))) : GoString)) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, ((((((("Goodbye," : GoString))) : GoString)) : Slice<GoByte>)));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, ((((((("See ya," : GoString))) : GoString)) : Slice<GoByte>)));
        stdgo.fmt.Fmt.printf(((((("Hello%s" : GoString))) : GoString)), Go.toInterface(_b));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.printf(((((("%s" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.trimSpace((((((((" \t\n a lone gopher \n\t\r\n" : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleTrimSuffix():Void {
        var _b:Slice<GoUInt8> = ((((((("Hello, goodbye, etc!" : GoString))) : GoString)) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, ((((((("goodbye, etc!" : GoString))) : GoString)) : Slice<GoByte>)));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, ((((((("gopher" : GoString))) : GoString)) : Slice<GoByte>)));
        _b = (_b != null ? _b.__append__(...stdgo.bytes.Bytes.trimSuffix(((((((("world!" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("x!" : GoString))) : GoString)) : Slice<GoByte>))).__toArray__()) : new Slice<GoUInt8>(...stdgo.bytes.Bytes.trimSuffix(((((((("world!" : GoString))) : GoString)) : Slice<GoByte>)), ((((((("x!" : GoString))) : GoString)) : Slice<GoByte>))).__toArray__()));
        stdgo.os.Os.stdout.write(_b);
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(((stdgo.bytes.Bytes.trimRight(((((((("453gopher8257" : GoString))) : GoString)) : Slice<GoByte>)), ((((("0123456789" : GoString))) : GoString))) : GoString)));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimRightFunc(((((((("go-gopher" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimRightFunc(((((((("go-gopher!" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(((stdgo.bytes.Bytes.trimRightFunc(((((((("1234go-gopher!567" : GoString))) : GoString)) : Slice<GoByte>)), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.printf(((((("%s" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.toLower(((((((("Gopher" : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleToLowerSpecial():Void {
        var _str = ((((((("AHOJ VÝVOJÁRİ GOLANG" : GoString))) : GoString)) : Slice<GoByte>));
        var _totitle = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(((((("Original : " : GoString))) : GoString)) + ((_str : GoString)));
        stdgo.fmt.Fmt.println(((((("ToLower : " : GoString))) : GoString)) + ((_totitle : GoString)));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.printf(((((("%s" : GoString))) : GoString)), Go.toInterface(stdgo.bytes.Bytes.toUpper(((((((("Gopher" : GoString))) : GoString)) : Slice<GoByte>)))));
    }
function exampleToUpperSpecial():Void {
        var _str = ((((((("ahoj vývojári golang" : GoString))) : GoString)) : Slice<GoByte>));
        var _totitle = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(((((("Original : " : GoString))) : GoString)) + ((_str : GoString)));
        stdgo.fmt.Fmt.println(((((("ToUpper : " : GoString))) : GoString)) + ((_totitle : GoString)));
    }
function testReader(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((((((("0123456789" : GoString))) : GoString)) : Slice<GoByte>)));
        var _tests = ((new Slice<T__struct_13>((({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_13))) : Slice<T__struct_13>));
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_tt._seekerr != ((((("" : GoString))) : GoString)))) {
                _t.errorf(((((("%d. want seek error %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_err != null) && (_err.error() != _tt._seekerr)) {
                _t.errorf(((((("%d. seek error = %q; want %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_err.error()), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_tt._wantpos != ((0 : GoInt64))) && (_tt._wantpos != _pos)) {
                _t.errorf(((((("%d. pos = %d, want %d" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_pos), Go.toInterface(_tt._wantpos));
            };
            var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _tt._readerr) {
                _t.errorf(((((("%d. read = %v; want %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._readerr));
                continue;
            };
            var _got:GoString = ((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
            if (_got != _tt._want) {
                _t.errorf(((((("%d. got %q; want %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
        };
    }
function testReadAfterBigSeek(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((((((("0123456789" : GoString))) : GoString)) : Slice<GoByte>)));
        {
            var __tmp__ = _r.seek((("2147483653" : GoInt64)), ((0 : GoInt))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((((("Read = %d, %v; want 0, EOF" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
function testReaderAt(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((((((("0123456789" : GoString))) : GoString)) : Slice<GoByte>)));
        var _tests = ((new Slice<T__struct_14>((({ _off : ((0 : GoInt64)), _n : ((10 : GoInt)), _want : ((((("0123456789" : GoString))) : GoString)), _wanterr : ((null : AnyInterface)) } : T__struct_14)), (({ _off : ((1 : GoInt64)), _n : ((10 : GoInt)), _want : ((((("123456789" : GoString))) : GoString)), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_14)), (({ _off : ((1 : GoInt64)), _n : ((9 : GoInt)), _want : ((((("123456789" : GoString))) : GoString)), _wanterr : ((null : AnyInterface)) } : T__struct_14)), (({ _off : ((11 : GoInt64)), _n : ((10 : GoInt)), _want : ((((("" : GoString))) : GoString)), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_14)), (({ _off : ((0 : GoInt64)), _n : ((0 : GoInt)), _want : ((((("" : GoString))) : GoString)), _wanterr : ((null : AnyInterface)) } : T__struct_14)), (({ _off : ((-1 : GoInt64)), _n : ((0 : GoInt)), _want : ((((("" : GoString))) : GoString)), _wanterr : Go.toInterface(((((("bytes.Reader.ReadAt: negative offset" : GoString))) : GoString))) } : T__struct_14))) : Slice<T__struct_14>));
        for (_i => _tt in _tests) {
            var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got:GoString = ((((_b.__slice__(0, _rn) : Slice<GoUInt8>)) : GoString));
            if (_got != _tt._want) {
                _t.errorf(((((("%d. got %q; want %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
            if (stdgo.fmt.Fmt.sprintf(((((("%v" : GoString))) : GoString)), Go.toInterface(_err)) != stdgo.fmt.Fmt.sprintf(((((("%v" : GoString))) : GoString)), Go.toInterface(_tt._wanterr))) {
                _t.errorf(((((("%d. got error = %v; want %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._wanterr));
            };
        };
    }
function testReaderAtConcurrent(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((((((("0123456789" : GoString))) : GoString)) : Slice<GoByte>)));
        var _wg:stdgo.sync.Sync.WaitGroup = (({  } : stdgo.sync.Sync.WaitGroup));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _wg.add(((1 : GoInt)));
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) ((0 : GoUInt8))]);
                            _r.readAt(((_buf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoInt64)));
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
        var _r = newReader(((new Slice<GoUInt8>() : Slice<GoUInt8>)));
        var _wg:stdgo.sync.Sync.WaitGroup = (({  } : stdgo.sync.Sync.WaitGroup));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _wg.add(((2 : GoInt)));
                Go.routine(() -> {
                    var a = function():Void {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) ((0 : GoUInt8))]);
                            _r.read(((_buf.__slice__(0) : Slice<GoUInt8>)));
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
                            _r.read(((null : Slice<GoUInt8>)));
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
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((30 : GoInt)), _i = _i + (((3 : GoInt))), {
                var _l:GoInt = ((0 : GoInt));
                if (_i > ((0 : GoInt))) {
                    _l = (_testString != null ? _testString.length : ((0 : GoInt))) / _i;
                };
                var _s:GoString = ((_testString.__slice__(0, _l) : GoString));
                var _r = newReader(((_testBytes.__slice__(0, _l) : Slice<GoUInt8>)));
                var _b:Buffer = (({  } : Buffer));
                var __tmp__ = _r.writeTo({
                    final __self__ = new Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
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
                    var _expect:GoInt64 = (((_s != null ? _s.length : ((0 : GoInt))) : GoInt64));
                    if (_n != _expect) {
                        _t.errorf(((((("got %v; want %v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(((((("for length %d: got error = %v; want nil" : GoString))) : GoString)), Go.toInterface(_l), Go.toInterface(_err));
                };
                if (((_b.string() : GoString)) != _s) {
                    _t.errorf(((((("got string %q; want %q" : GoString))) : GoString)), Go.toInterface(((_b.string() : GoString))), Go.toInterface(_s));
                };
                if (_r.len() != ((0 : GoInt))) {
                    _t.errorf(((((("reader contains %v bytes; want 0" : GoString))) : GoString)), Go.toInterface(_r.len()));
                };
            });
        };
    }
function testReaderLen(_t:stdgo.testing.Testing.T):Void {
        {};
        var _r = newReader(((((((("hello world" : GoString))) : GoString)) : Slice<GoByte>)));
        {
            var _got:GoInt = _r.len(), _want:GoInt = ((11 : GoInt));
            if (_got != _want) {
                _t.errorf(((((("r.Len(): got %d, want %d" : GoString))) : GoString)), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != ((10 : GoInt)))) {
                _t.errorf(((((("Read failed: read %d %v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _got:GoInt = _r.len(), _want:GoInt = ((1 : GoInt));
            if (_got != _want) {
                _t.errorf(((((("r.Len(): got %d, want %d" : GoString))) : GoString)), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != ((1 : GoInt)))) {
                _t.errorf(((((("Read failed: read %d %v; want 1, nil" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _got:GoInt = _r.len(), _want:GoInt = ((0 : GoInt));
            if (_got != _want) {
                _t.errorf(((((("r.Len(): got %d, want %d" : GoString))) : GoString)), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader(((((((("0123456789" : GoString))) : GoString)) : Slice<GoByte>)));
            {
                var __tmp__ = _reader.readRune(), _1:GoInt32 = __tmp__._0, _2:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err:stdgo.Error = _reader.unreadRune();
            if (_err == null) {
                _t.errorf(((((("Unreading after %s: expected error" : GoString))) : GoString)), Go.toInterface(_tt._name));
            };
        };
    }
function testReaderDoubleUnreadRune(_t:stdgo.testing.Testing.T):Void {
        var _buf = newBuffer(((((((("groucho" : GoString))) : GoString)) : Slice<GoByte>)));
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
                _t.fatal(Go.toInterface(((((("UnreadByte: expected error, got nil" : GoString))) : GoString))));
            };
        };
    }
@:structInit class T_nErr_testReaderCopyNothing_0 {
    public var _n : GoInt64 = 0;
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
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1_static_extension) class T_justReader_testReaderCopyNothing_1 {
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
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
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2_static_extension) class T_justWriter_testReaderCopyNothing_2 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
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
        var _discard:stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2 = ((new stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2(stdgo.io.Io.discard) : stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2));
        var _with:T_nErr_testReaderCopyNothing_0 = (({  } : stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0)), _withOut:T_nErr_testReaderCopyNothing_0 = (({  } : stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0));
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2_wrapper(_discard);
                __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _discard.write(__0) #else null #end;
                __self__;
            }, {
                final __self__ = new Reader_wrapper(newReader(((null : Slice<GoUInt8>))));
                __self__.len = #if !macro function():GoInt return newReader(((null : Slice<GoUInt8>))).len() #else null #end;
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).read(__0) #else null #end;
                __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readAt(_b, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readRune() #else null #end;
                __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void newReader(((null : Slice<GoUInt8>))).reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return newReader(((null : Slice<GoUInt8>))).size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return newReader(((null : Slice<GoUInt8>))).unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return newReader(((null : Slice<GoUInt8>))).unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).writeTo(_w) #else null #end;
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
                final __self__ = new stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1_wrapper(((new stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1({
                    final __self__ = new Reader_wrapper(newReader(((null : Slice<GoUInt8>))));
                    __self__.len = #if !macro function():GoInt return newReader(((null : Slice<GoUInt8>))).len() #else null #end;
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).read(__0) #else null #end;
                    __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readAt(_b, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readRune() #else null #end;
                    __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void newReader(((null : Slice<GoUInt8>))).reset(__0) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return newReader(((null : Slice<GoUInt8>))).size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return newReader(((null : Slice<GoUInt8>))).unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return newReader(((null : Slice<GoUInt8>))).unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).writeTo(_w) #else null #end;
                    __self__;
                }) : stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1)));
                __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1({
                    final __self__ = new Reader_wrapper(newReader(((null : Slice<GoUInt8>))));
                    __self__.len = #if !macro function():GoInt return newReader(((null : Slice<GoUInt8>))).len() #else null #end;
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).read(__0) #else null #end;
                    __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readAt(_b, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).readRune() #else null #end;
                    __self__.reset = #if !macro function(__0:Slice<GoUInt8>):Void newReader(((null : Slice<GoUInt8>))).reset(__0) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return newReader(((null : Slice<GoUInt8>))).size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return newReader(((null : Slice<GoUInt8>))).unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return newReader(((null : Slice<GoUInt8>))).unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return newReader(((null : Slice<GoUInt8>))).writeTo(_w) #else null #end;
                    __self__;
                }) : stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1)).read(__0) #else null #end;
                __self__;
            });
            _withOut._n = __tmp__._0;
            _withOut._err = __tmp__._1;
        };
        if (_with != _withOut) {
            _t.errorf(((((("behavior differs: with = %#v; without: %#v" : GoString))) : GoString)), Go.toInterface(_with), Go.toInterface(_withOut));
        };
    }
/**
    // tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((((((("abc" : GoString))) : GoString)) : Slice<GoByte>)));
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
        }, ((1 : GoInt64)));
        if (_r.len() != ((2 : GoInt))) {
            _t.errorf(((((("Len = %d; want 2" : GoString))) : GoString)), Go.toInterface(_r.len()));
        };
        if (_r.size() != ((3 : GoInt64))) {
            _t.errorf(((((("Size = %d; want 3" : GoString))) : GoString)), Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:stdgo.testing.Testing.T):Void {
        var _r = newReader(((((((("世界" : GoString))) : GoString)) : Slice<GoByte>)));
        {
            var __tmp__ = _r.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(((((("ReadRune: unexpected error: %v" : GoString))) : GoString)), Go.toInterface(_err));
            };
        };
        {};
        _r.reset(((((((("abcdef" : GoString))) : GoString)) : Slice<GoByte>)));
        {
            var _err:stdgo.Error = _r.unreadRune();
            if (_err == null) {
                _t.errorf(((((("UnreadRune: expected error, got nil" : GoString))) : GoString)));
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
            _t.errorf(((((("ReadAll: unexpected error: %v" : GoString))) : GoString)), Go.toInterface(_err));
        };
        {
            var _got:GoString = ((_buf : GoString));
            if (_got != ((((("abcdef" : GoString))) : GoString))) {
                _t.errorf(((((("ReadAll: got %q, want %q" : GoString))) : GoString)), Go.toInterface(_got), Go.toInterface(((((("abcdef" : GoString))) : GoString))));
            };
        };
    }
function testReaderZero(_t:stdgo.testing.Testing.T):Void {
        {
            var _l:GoInt = (((new Reader() : Reader))).len();
            if (_l != ((0 : GoInt))) {
                _t.errorf(((((("Len: got %d, want 0" : GoString))) : GoString)), Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).read(((null : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((((("Read: got %d, %v; want 0, io.EOF" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).readAt(((null : Slice<GoUInt8>)), ((11 : GoInt64))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((((("ReadAt: got %d, %v; want 0, io.EOF" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_b != ((0 : GoUInt8))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((((("ReadByte: got %d, %v; want 0, io.EOF" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).readRune(), _ch:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != ((0 : GoInt32))) || (_size != ((0 : GoInt)))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((((("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : GoString))) : GoString)), Go.toInterface(_ch), Go.toInterface(_size), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader))).seek(((11 : GoInt64)), ((0 : GoInt))), _offset:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_offset != ((11 : GoInt64))) || (_err != null)) {
                _t.errorf(((((("Seek: got %d, %v; want 11, nil" : GoString))) : GoString)), Go.toInterface(_offset), Go.toInterface(_err));
            };
        };
        {
            var _s:GoInt64 = (((new Reader() : Reader))).size();
            if (_s != ((0 : GoInt64))) {
                _t.errorf(((((("Size: got %d, want 0" : GoString))) : GoString)), Go.toInterface(_s));
            };
        };
        if ((((new Reader() : Reader))).unreadByte() == null) {
            _t.errorf(((((("UnreadByte: got nil, want error" : GoString))) : GoString)));
        };
        if ((((new Reader() : Reader))).unreadRune() == null) {
            _t.errorf(((((("UnreadRune: got nil, want error" : GoString))) : GoString)));
        };
        {
            var __tmp__ = (((new Reader() : Reader))).writeTo(stdgo.io.Io.discard), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt64))) || (_err != null)) {
                _t.errorf(((((("WriteTo: got %d, %v; want 0, nil" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
@:keep var _ = {
        try {
            _testBytes = new Slice<GoUInt8>(...[for (i in 0 ... ((((10000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((10000 : GoInt)), _i++, {
                    if (_testBytes != null) _testBytes[_i] = (("a".code : GoUInt8)) + (((_i % ((26 : GoInt))) : GoByte));
                });
            };
            _testString = ((_testBytes : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_negativeReader_static_extension {
    @:keep
    static public function read( _r:T_negativeReader, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((-1 : GoInt)), _1 : ((null : stdgo.Error)) };
    }
}
class T_negativeReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_negativeReader;
}
@:keep class T_panicReader_static_extension {
    @:keep
    static public function read( _r:T_panicReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_r._panic) {
            throw Go.toInterface(null);
        };
        return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
    }
}
class T_panicReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_panicReader;
}
@:keep class T_justReader_testReaderCopyNothing_1_static_extension {
    @:embedded
    public static function read( __self__:T_justReader_testReaderCopyNothing_1, __0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
}
class T_justReader_testReaderCopyNothing_1_wrapper {
    @:embedded
    public var read : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_justReader_testReaderCopyNothing_1;
}
@:keep class T_justWriter_testReaderCopyNothing_2_static_extension {
    @:embedded
    public static function write( __self__:T_justWriter_testReaderCopyNothing_2, __0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.write(__0);
}
class T_justWriter_testReaderCopyNothing_2_wrapper {
    @:embedded
    public var write : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_justWriter_testReaderCopyNothing_2;
}
