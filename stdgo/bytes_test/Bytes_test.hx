package stdgo.bytes_test;
import stdgo.bytes.Bytes;
import stdgo.bytes.Bytes;
import stdgo.bytes.Bytes;
import stdgo.bytes.Bytes;
import stdgo.bytes.Bytes;
/**
    
    
    
**/
var _readBytesTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(7, 7, ({ _buffer : stdgo.Go.str(), _delim : (0 : stdgo.StdGoTypes.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), _err : stdgo.io.Io.eof } : T__struct_0), ({ _buffer : stdgo.Go.str("a", 0), _delim : (0 : stdgo.StdGoTypes.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.Go.str("a", 0)) : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : ("abbbaaaba" : stdgo.GoString), _delim : (98 : stdgo.StdGoTypes.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(4, 4, ("ab" : stdgo.GoString), ("b" : stdgo.GoString), ("b" : stdgo.GoString), ("aaab" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : stdgo.Go.str("hello", 1, "world"), _delim : (1 : stdgo.StdGoTypes.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.Go.str("hello", 1)) : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : ("foo\nbar" : stdgo.GoString), _delim : (0 : stdgo.StdGoTypes.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(1, 1, ("foo\nbar" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), _err : stdgo.io.Io.eof } : T__struct_0), ({ _buffer : ("alpha\nbeta\ngamma\n" : stdgo.GoString), _delim : (10 : stdgo.StdGoTypes.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(3, 3, ("alpha\n" : stdgo.GoString), ("beta\n" : stdgo.GoString), ("gamma\n" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), _err : (null : stdgo.Error) } : T__struct_0), ({ _buffer : ("alpha\nbeta\ngamma" : stdgo.GoString), _delim : (10 : stdgo.StdGoTypes.GoUInt8), _expected : (new stdgo.Slice<stdgo.GoString>(3, 3, ("alpha\n" : stdgo.GoString), ("beta\n" : stdgo.GoString), ("gamma" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), _err : stdgo.io.Io.eof } : T__struct_0)) : stdgo.Slice<T__struct_0>);
/**
    
    
    
**/
var _abcd : stdgo.GoString = ("abcd" : stdgo.GoString);
/**
    
    
    
**/
var _faces : stdgo.GoString = ("☺☻☹" : stdgo.GoString);
/**
    
    
    
**/
var _commas : stdgo.GoString = ("1,2,3,4" : stdgo.GoString);
/**
    
    
    
**/
var _dots : stdgo.GoString = ("1....2....3....4" : stdgo.GoString);
/**
    
    
    
**/
var _indexTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
55,
55,
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), stdgo.Go.str(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("foo" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fo" : stdgo.GoString), ("foo" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("baz" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("foo" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("f" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("foo" : stdgo.GoString), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("barfoobarfoo" : stdgo.GoString), ("foo" : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), stdgo.Go.str(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("o" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : stdgo.GoString), ("A" : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("x" : stdgo.GoString), ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("x" : stdgo.GoString), ("x" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("b" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("c" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("x" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("barfoobarfooyyyzzzyyyzzzyyyzzzyyyxxxzzzyyy" : stdgo.GoString), ("x" : stdgo.GoString), (33 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofooofoboo" : stdgo.GoString), ("oo" : stdgo.GoString), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("ob" : stdgo.GoString), (11 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("boo" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("oboo" : stdgo.GoString), (11 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoooboo" : stdgo.GoString), ("fooo" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("foboo" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : stdgo.GoString), ("fofob" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffof" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffof" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofo" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofo" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoo" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoo" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoob" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoob" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofooba" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofooba" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobar" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobar" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarf" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarf" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfo" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfo" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfoo" : stdgo.GoString), (13 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("foffofoobarfoo" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("ofoffofoobarfoo" : stdgo.GoString), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("ofoffofoobarfoo" : stdgo.GoString), (11 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("fofoffofoobarfoo" : stdgo.GoString), (11 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : stdgo.GoString), ("fofoffofoobarfoo" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : stdgo.GoString), ("foobars" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foofyfoobarfoobar" : stdgo.GoString), ("y" : stdgo.GoString), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oooooooooooooooooooooo" : stdgo.GoString), ("r" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oxoxoxoxoxoxoxoxoxoxoxoy" : stdgo.GoString), ("oy" : stdgo.GoString), (22 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oxoxoxoxoxoxoxoxoxoxoxox" : stdgo.GoString), ("oy" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("000000000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString), ("0000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString), (5 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
var _lastIndexTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
13,
13,
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), stdgo.Go.str(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("foo" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fo" : stdgo.GoString), ("foo" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("foo" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("f" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("f" : stdgo.GoString), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : stdgo.GoString), ("foo" : stdgo.GoString), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("barfoobarfoo" : stdgo.GoString), ("foo" : stdgo.GoString), (9 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), stdgo.Go.str(), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : stdgo.GoString), ("o" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : stdgo.GoString), ("A" : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : stdgo.GoString), ("a" : stdgo.GoString), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
var _indexAnyTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
17,
17,
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("abc" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(128), stdgo.Go.str(255, "b"), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("aaa" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("xcz" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("ab☺c" : stdgo.GoString), ("x☺yz" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("cx" : stdgo.GoString), (("a☺b☻" : stdgo.GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("uvw☻xyz" : stdgo.GoString), (("a☺b" : stdgo.GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("aRegExp*" : stdgo.GoString), (".(|)*+?^$[]" : stdgo.GoString), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (" " : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("012abcba210" : stdgo.GoString), stdgo.Go.str(255, "b"), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str("012", 128, "bcb", 128, "210"), stdgo.Go.str(255, "b"), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("0123456πabc" : stdgo.GoString), stdgo.Go.str(207, "b", 128), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
var _lastIndexAnyTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
17,
17,
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("abc" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(128), stdgo.Go.str(255, "b"), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("aaa" : stdgo.GoString), ("a" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : stdgo.GoString), ("ab" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("ab☺c" : stdgo.GoString), ("x☺yz" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("cx" : stdgo.GoString), (("a☺b☻" : stdgo.GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("uvw☻xyz" : stdgo.GoString), (("a☺b" : stdgo.GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a.RegExp*" : stdgo.GoString), (".(|)*+?^$[]" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (" " : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("012abcba210" : stdgo.GoString), stdgo.Go.str(255, "b"), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str("012", 128, "bcb", 128, "210"), stdgo.Go.str(255, "b"), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("0123456πabc" : stdgo.GoString), stdgo.Go.str(207, "b", 128), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
var _indexSizes : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(5, 5, (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt), (4096 : stdgo.StdGoTypes.GoInt), (4194304 : stdgo.StdGoTypes.GoInt), (67108864 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
/**
    
    
    
**/
var _isRaceBuilder : Bool = stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), ("-race" : stdgo.GoString));
/**
    
    
    
**/
var _splittests : stdgo.Slice<stdgo.bytes_test.Bytes_test.SplitTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
18,
18,
(new stdgo.bytes_test.Bytes_test.SplitTest(stdgo.Go.str(), stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("a" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, stdgo.Go.str(), (2 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("bcd" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str(), ("bcd" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("z" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ("abcd" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ("," : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ("..." : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString), (".2" : stdgo.GoString), (".3" : stdgo.GoString), (".4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("☹" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("☺☻" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("~" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, _faces) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2 3 4" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3 4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1" : stdgo.GoString), ("2" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str(), (2 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1" : stdgo.GoString), ("23" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str(), (17 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("bT" : stdgo.GoString), ("T" : stdgo.GoString), (536870911 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("b" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(stdgo.Go.str(255, "-", 255), stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, stdgo.Go.str(255), ("-" : stdgo.GoString), stdgo.Go.str(255)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(stdgo.Go.str(255, "-", 255), ("-" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str(255), stdgo.Go.str(255)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.SplitTest>);
/**
    
    
    
**/
var _splitaftertests : stdgo.Slice<stdgo.bytes_test.Bytes_test.SplitTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
13,
13,
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("bcd" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("z" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ("abcd" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ("," : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1," : stdgo.GoString), ("2," : stdgo.GoString), ("3," : stdgo.GoString), ("4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ("..." : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1..." : stdgo.GoString), (".2..." : stdgo.GoString), (".3..." : stdgo.GoString), (".4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("☹" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("☺☻☹" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("~" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, _faces) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, stdgo.Go.str(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2 3 4" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1 " : stdgo.GoString), ("2 " : stdgo.GoString), ("3 4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2 3" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1 " : stdgo.GoString), ("2 " : stdgo.GoString), ("3" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1 " : stdgo.GoString), ("2" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str(), (2 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1" : stdgo.GoString), ("23" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str(), (17 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.SplitTest>);
/**
    
    
    
**/
var _fieldstests : stdgo.Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(
11,
11,
(new stdgo.bytes_test.Bytes_test.FieldsTest(stdgo.Go.str(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((" " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((" \t " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("  abc  " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("abc" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1 2 3 4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1  2  3  4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1\t\t2\t\t3\t4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1\u20002\u20013\u20024" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("\u2000\u2001\u2002" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("\n™\t™\n" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("™" : stdgo.GoString), ("™" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(_faces, (new stdgo.Slice<stdgo.GoString>(1, 1, _faces) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.FieldsTest>);
/**
    
    
    
**/
var _upperTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest>(
9,
9,
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str(), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("ONLYUPPER" : stdgo.GoString), (("ONLYUPPER" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("abc" : stdgo.GoString), (("ABC" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("AbC123" : stdgo.GoString), (("ABC123" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("azAZ09_" : stdgo.GoString), (("AZAZ09_" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString), (("LONGSTRINGWITHMIXOFSMALLANDCAPS" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("longɐstringɐwithɐnonasciiⱯchars" : stdgo.GoString), (("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("ɐɐɐɐɐ" : stdgo.GoString), (("ⱯⱯⱯⱯⱯ" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("a\u0080\u{0010ffff}" : stdgo.GoString), (("A\u0080\u{0010ffff}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest>);
/**
    
    
    
**/
var _lowerTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest>(8, 8, (new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str(), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("abc" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("AbC123" : stdgo.GoString), (("abc123" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("azAZ09_" : stdgo.GoString), (("azaz09_" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString), (("longstringwithmixofsmallandcaps" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString), (("longɐstringɐwithɐnonasciiɐchars" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("ⱭⱭⱭⱭⱭ" : stdgo.GoString), (("ɑɑɑɑɑ" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("A\u0080\u{0010ffff}" : stdgo.GoString), (("a\u0080\u{0010ffff}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest>);
/**
    
    
    
**/
var _trimSpaceTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest>(
20,
20,
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("  a" : stdgo.GoString), (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("b  " : stdgo.GoString), (("b" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("abc" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" " : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("\u3000 " : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \u3000" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \t\r\n \t\t\r\r\n\n " : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \t\r\n x\t\t\r\r\n\n " : stdgo.GoString), (("x" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : stdgo.GoString), (("x\t\t\r\r\ny" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("1 \t\r\n2" : stdgo.GoString), (("1 \t\r\n2" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str(" x", 128), (stdgo.Go.str("x", 128) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str(" x", 192), (stdgo.Go.str("x", 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192, 192, " "), (stdgo.Go.str("x ", 192, 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192), (stdgo.Go.str("x ", 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192, " "), (stdgo.Go.str("x ", 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ", 192, 192, " "), (stdgo.Go.str("x ", 192, 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(stdgo.Go.str("x ☺", 192, 192, " "), (stdgo.Go.str("x ☺", 192, 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("x ☺ " : stdgo.GoString), (("x ☺" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.StringTest>);
/**
    
    
    
**/
var _toValidUTF8Tests : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(
14,
14,
({ _in : stdgo.Go.str(), _repl : ("�" : stdgo.GoString), _out : stdgo.Go.str() } : T__struct_3),
({ _in : ("abc" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : T__struct_3),
({ _in : ("\ufddd" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("\ufddd" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a", 255, "b"), _repl : ("�" : stdgo.GoString), _out : ("a�b" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a", 255, "b�"), _repl : ("X" : stdgo.GoString), _out : ("aXb�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl : stdgo.Go.str(), _out : ("a☺b☺c☺" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl : ("日本語" : stdgo.GoString), _out : ("a☺日本語b☺日本語c☺日本語" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(192, 175), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(224, 128, 175), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(237, 160, 128), _repl : ("abc" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(237, 191, 191), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(240, 128, 128, 175), _repl : ("☺" : stdgo.GoString), _out : ("☺" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(248, 128, 128, 128, 175), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3),
({ _in : stdgo.Go.str(252, 128, 128, 128, 128, 175), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_3)) : stdgo.Slice<T__struct_3>);
/**
    
    
    
**/
var _longString : stdgo.GoString = (("a" : stdgo.GoString) + (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((65536 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() : stdgo.GoString)) + ("z" : stdgo.GoString);
/**
    
    
    
**/
var repeatTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.RepeatTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.RepeatTest>(
9,
9,
(new stdgo.bytes_test.Bytes_test.RepeatTest(stdgo.Go.str(), stdgo.Go.str(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(stdgo.Go.str(), stdgo.Go.str(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(stdgo.Go.str(), stdgo.Go.str(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("-" : stdgo.GoString), stdgo.Go.str(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("-" : stdgo.GoString), ("-" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("-" : stdgo.GoString), ("----------" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("abc " : stdgo.GoString), ("abc abc abc " : stdgo.GoString), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest((((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((65536 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() : stdgo.GoString), (65536 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(_longString, _longString + _longString, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.RepeatTest>);
/**
    
    
    
**/
var runesTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.RunesTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.RunesTest>(7, 7, (new stdgo.bytes_test.Bytes_test.RunesTest(stdgo.Go.str(), (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((" " : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(1, 1, (32 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(("ABC" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(3, 3, (65 : stdgo.StdGoTypes.GoInt32), (66 : stdgo.StdGoTypes.GoInt32), (67 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(("abc" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(3, 3, (97 : stdgo.StdGoTypes.GoInt32), (98 : stdgo.StdGoTypes.GoInt32), (99 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(("日本語" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(3, 3, (26085 : stdgo.StdGoTypes.GoInt32), (26412 : stdgo.StdGoTypes.GoInt32), (35486 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(stdgo.Go.str("ab", 128, "c"), (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (97 : stdgo.StdGoTypes.GoInt32), (98 : stdgo.StdGoTypes.GoInt32), (65533 : stdgo.StdGoTypes.GoInt32), (99 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), true) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(stdgo.Go.str("ab", 192, "c"), (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (97 : stdgo.StdGoTypes.GoInt32), (98 : stdgo.StdGoTypes.GoInt32), (65533 : stdgo.StdGoTypes.GoInt32), (99 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), true) : stdgo.bytes_test.Bytes_test.RunesTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.RunesTest>);
/**
    
    
    
**/
var _trimTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimTest>(
29,
29,
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("bb" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("bba" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("b" : stdgo.GoString), ("abba" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("abb" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("b" : stdgo.GoString), ("abba" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("<tag>" : stdgo.GoString), ("<>" : stdgo.GoString), ("tag" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("* listitem" : stdgo.GoString), (" *" : stdgo.GoString), ("listitem" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("\"quote\"" : stdgo.GoString), ("\"" : stdgo.GoString), ("quote" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("ⱯⱯɐɐⱯⱯ" : stdgo.GoString), ("Ɐ" : stdgo.GoString), ("ɐɐ" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str(128, "test", 255), stdgo.Go.str(255), ("test" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), (" Ġ " : stdgo.GoString), (" " : stdgo.GoString), ("Ġ" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), (" Ġİ0" : stdgo.GoString), ("0 " : stdgo.GoString), ("Ġİ" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str(), ("abba" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str(), ("123" : stdgo.GoString), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str(), stdgo.Go.str(), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str(), ("abba" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), stdgo.Go.str(), ("123" : stdgo.GoString), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : stdgo.GoString), stdgo.Go.str(), stdgo.Go.str(), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str(), ("abba" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str(), ("123" : stdgo.GoString), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str(), stdgo.Go.str(), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str("☺", 192), ("☺" : stdgo.GoString), stdgo.Go.str("☺", 192)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimPrefix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("a" : stdgo.GoString), ("abb" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimPrefix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("b" : stdgo.GoString), ("aabb" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimSuffix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("a" : stdgo.GoString), ("aabb" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimSuffix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("b" : stdgo.GoString), ("aab" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TrimTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimTest>);
/**
    
    
    
**/
var _trimNilTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimNilTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>(
29,
29,
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (97 : stdgo.StdGoTypes.GoUInt8), (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (97 : stdgo.StdGoTypes.GoUInt8), (98 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("☺" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (97 : stdgo.StdGoTypes.GoUInt8), (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (97 : stdgo.StdGoTypes.GoUInt8), (98 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("ab" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("☺" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (97 : stdgo.StdGoTypes.GoUInt8), (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("ab" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (97 : stdgo.StdGoTypes.GoUInt8), (98 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("ab" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("☺" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("☺" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str(), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : stdgo.GoString), (("☺" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("☺" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>);
/**
    
    
    
**/
var _isSpace : stdgo.bytes_test.Bytes_test.T_predicate = (new T_predicate(stdgo.unicode.Unicode.isSpace, ("IsSpace" : stdgo.GoString)) : T_predicate);
/**
    
    
    
**/
var _isDigit : stdgo.bytes_test.Bytes_test.T_predicate = (new T_predicate(stdgo.unicode.Unicode.isDigit, ("IsDigit" : stdgo.GoString)) : T_predicate);
/**
    
    
    
**/
var _isUpper : stdgo.bytes_test.Bytes_test.T_predicate = (new T_predicate(stdgo.unicode.Unicode.isUpper, ("IsUpper" : stdgo.GoString)) : T_predicate);
/**
    
    
    
**/
var _isValidRune : stdgo.bytes_test.Bytes_test.T_predicate = (new T_predicate(function(_r:stdgo.StdGoTypes.GoRune):Bool {
        return _r != ((65533 : stdgo.StdGoTypes.GoInt32));
    }, ("IsValidRune" : stdgo.GoString)) : T_predicate);
/**
    
    
    
**/
var _trimFuncTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>(
9,
9,
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_isSpace?.__copy__(), ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_isDigit?.__copy__(), ("๐๒12hello34๐๑" : stdgo.GoString), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("hello34๐๑" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("๐๒12hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_isUpper?.__copy__(), ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("helloEFⱯⱯGHⱯⱯ" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("ⱯⱯⱯⱯABCDhello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_not(_isSpace?.__copy__())?.__copy__(), ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_not(_isDigit?.__copy__())?.__copy__(), ("hello๐๒1234๐๑helo" : stdgo.GoString), (("๐๒1234๐๑" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("๐๒1234๐๑helo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("hello๐๒1234๐๑" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_isValidRune?.__copy__(), stdgo.Go.str("ab", 192, "a", 192, "cd"), (stdgo.Go.str(192, "a", 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str(192, "a", 192, "cd") : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str("ab", 192, "a", 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_not(_isValidRune?.__copy__())?.__copy__(), stdgo.Go.str(192, "a", 192), (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str("a", 192) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str(192, "a") : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_isSpace?.__copy__(), stdgo.Go.str(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest(_isSpace?.__copy__(), (" " : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>);
/**
    
    
    
**/
var _indexFuncTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>(
16,
16,
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(), _isValidRune?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("abc" : stdgo.GoString), _isDigit?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("0123" : stdgo.GoString), _isDigit?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("a1b" : stdgo.GoString), _isDigit?.__copy__(), (1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), _isSpace?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("๐๒12hello34๐๑" : stdgo.GoString), _isDigit?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (18 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString), _isUpper?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (34 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("12๐๒hello34๐๑" : stdgo.GoString), _not(_isDigit?.__copy__())?.__copy__(), (8 : stdgo.StdGoTypes.GoInt), (12 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(128, "1"), _isDigit?.__copy__(), (1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(128, "abc"), _isDigit?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "a", 192), _isValidRune?.__copy__(), (1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "a", 192), _not(_isValidRune?.__copy__())?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "☺", 192), _not(_isValidRune?.__copy__())?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str(192, "☺", 192, 192), _not(_isValidRune?.__copy__())?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str("ab", 192, "a", 192, "cd"), _not(_isValidRune?.__copy__())?.__copy__(), (2 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(stdgo.Go.str("a", 224, 128, "cd"), _not(_isValidRune?.__copy__())?.__copy__(), (1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>);
/**
    
    
    
**/
var replaceTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.ReplaceTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>(
19,
19,
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("hello" : stdgo.GoString), ("l" : stdgo.GoString), ("L" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), ("hello" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("hello" : stdgo.GoString), ("l" : stdgo.GoString), ("L" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("heLLo" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("hello" : stdgo.GoString), ("x" : stdgo.GoString), ("X" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("hello" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(stdgo.Go.str(), ("x" : stdgo.GoString), ("X" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("radar" : stdgo.GoString), ("r" : stdgo.GoString), ("<r>" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("<r>ada<r>" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(stdgo.Go.str(), stdgo.Go.str(), ("<>" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("<>" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("b<>n<>n<>" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt), ("b<>nana" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (1000 : stdgo.StdGoTypes.GoInt), ("b<>n<>n<>" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("an" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("b<><>a" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("ana" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("b<>na" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str(), ("<>" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str(), ("<>" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt), ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str(), ("<>" : stdgo.GoString), (6 : stdgo.StdGoTypes.GoInt), ("<>b<>a<>n<>a<>n<>a" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str(), ("<>" : stdgo.GoString), (5 : stdgo.StdGoTypes.GoInt), ("<>b<>a<>n<>a<>na" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str(), ("<>" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt), ("<>banana" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("a" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("banana" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("a" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt), ("banana" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("☺☻☹" : stdgo.GoString), stdgo.Go.str(), ("<>" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt), ("<>☺<>☻<>☹<>" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>);
/**
    
    
    
**/
var titleTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.TitleTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.TitleTest>(
9,
9,
(new stdgo.bytes_test.Bytes_test.TitleTest(stdgo.Go.str(), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("a" : stdgo.GoString), ("A" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((" aaa aaa aaa " : stdgo.GoString), (" Aaa Aaa Aaa " : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((" Aaa Aaa Aaa " : stdgo.GoString), (" Aaa Aaa Aaa " : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("123a456" : stdgo.GoString), ("123a456" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("double-blind" : stdgo.GoString), ("Double-Blind" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("ÿøû" : stdgo.GoString), ("Ÿøû" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("with_underscore" : stdgo.GoString), ("With_underscore" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("unicode \u2028 line separator" : stdgo.GoString), ("Unicode \u2028 Line Separator" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.TitleTest>);
/**
    
    
    
**/
var toTitleTests : stdgo.Slice<stdgo.bytes_test.Bytes_test.TitleTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.TitleTest>(7, 7, (new stdgo.bytes_test.Bytes_test.TitleTest(stdgo.Go.str(), stdgo.Go.str()) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("a" : stdgo.GoString), ("A" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((" aaa aaa aaa " : stdgo.GoString), (" AAA AAA AAA " : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((" Aaa Aaa Aaa " : stdgo.GoString), (" AAA AAA AAA " : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("123a456" : stdgo.GoString), ("123A456" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("double-blind" : stdgo.GoString), ("DOUBLE-BLIND" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("ÿøû" : stdgo.GoString), ("ŸØÛ" : stdgo.GoString)) : stdgo.bytes_test.Bytes_test.TitleTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.TitleTest>);
/**
    
    
    
**/
var equalFoldTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(
11,
11,
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
({ _s : ("abcdefghijKz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : T__struct_6)) : stdgo.Slice<T__struct_6>);
/**
    
    
    
**/
var _cutTests : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(8, 8, ({ _s : ("abc" : stdgo.GoString), _sep : ("b" : stdgo.GoString), _before : ("a" : stdgo.GoString), _after : ("c" : stdgo.GoString), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("a" : stdgo.GoString), _before : stdgo.Go.str(), _after : ("bc" : stdgo.GoString), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("c" : stdgo.GoString), _before : ("ab" : stdgo.GoString), _after : stdgo.Go.str(), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _before : stdgo.Go.str(), _after : stdgo.Go.str(), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str(), _before : stdgo.Go.str(), _after : ("abc" : stdgo.GoString), _found : true } : T__struct_7), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _before : ("abc" : stdgo.GoString), _after : stdgo.Go.str(), _found : false } : T__struct_7), ({ _s : stdgo.Go.str(), _sep : ("d" : stdgo.GoString), _before : stdgo.Go.str(), _after : stdgo.Go.str(), _found : false } : T__struct_7), ({ _s : stdgo.Go.str(), _sep : stdgo.Go.str(), _before : stdgo.Go.str(), _after : stdgo.Go.str(), _found : true } : T__struct_7)) : stdgo.Slice<T__struct_7>);
/**
    
    
    
**/
var _cutPrefixTests : stdgo.Slice<T__struct_8> = (new stdgo.Slice<T__struct_8>(6, 6, ({ _s : ("abc" : stdgo.GoString), _sep : ("a" : stdgo.GoString), _after : ("bc" : stdgo.GoString), _found : true } : T__struct_8), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _after : stdgo.Go.str(), _found : true } : T__struct_8), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str(), _after : ("abc" : stdgo.GoString), _found : true } : T__struct_8), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _after : ("abc" : stdgo.GoString), _found : false } : T__struct_8), ({ _s : stdgo.Go.str(), _sep : ("d" : stdgo.GoString), _after : stdgo.Go.str(), _found : false } : T__struct_8), ({ _s : stdgo.Go.str(), _sep : stdgo.Go.str(), _after : stdgo.Go.str(), _found : true } : T__struct_8)) : stdgo.Slice<T__struct_8>);
/**
    
    
    
**/
var _cutSuffixTests : stdgo.Slice<T__struct_9> = (new stdgo.Slice<T__struct_9>(6, 6, ({ _s : ("abc" : stdgo.GoString), _sep : ("bc" : stdgo.GoString), _before : ("a" : stdgo.GoString), _found : true } : T__struct_9), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _before : stdgo.Go.str(), _found : true } : T__struct_9), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str(), _before : ("abc" : stdgo.GoString), _found : true } : T__struct_9), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _before : ("abc" : stdgo.GoString), _found : false } : T__struct_9), ({ _s : stdgo.Go.str(), _sep : ("d" : stdgo.GoString), _before : stdgo.Go.str(), _found : false } : T__struct_9), ({ _s : stdgo.Go.str(), _sep : stdgo.Go.str(), _before : stdgo.Go.str(), _found : true } : T__struct_9)) : stdgo.Slice<T__struct_9>);
/**
    
    
    
**/
var _containsTests : stdgo.Slice<T__struct_10> = (new stdgo.Slice<T__struct_10>(4, 4, ({ _b : (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _subslice : (("hel" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _want : true } : T__struct_10), ({ _b : (("日本語" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _subslice : (("日本" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _want : true } : T__struct_10), ({ _b : (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _subslice : (("Hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _want : false } : T__struct_10), ({ _b : (("東京" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _subslice : (("京東" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _want : false } : T__struct_10)) : stdgo.Slice<T__struct_10>);
/**
    
    
    
**/
var containsAnyTests : stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(
11,
11,
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : stdgo.Go.str(), _expected : false } : T__struct_11),
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : ("a" : stdgo.GoString), _expected : false } : T__struct_11),
({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : ("abc" : stdgo.GoString), _expected : false } : T__struct_11),
({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : stdgo.Go.str(), _expected : false } : T__struct_11),
({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : ("a" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("aaa" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : ("a" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : ("xyz" : stdgo.GoString), _expected : false } : T__struct_11),
({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : ("xcz" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : ("uvw☻xyz" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : (("aRegExp*" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : (".(|)*+?^$[]" : stdgo.GoString), _expected : true } : T__struct_11),
({ _b : ((_dots + _dots) + _dots : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _substr : (" " : stdgo.GoString), _expected : false } : T__struct_11)) : stdgo.Slice<T__struct_11>);
/**
    
    
    
**/
var containsRuneTests : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(8, 8, ({ _b : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (97 : stdgo.StdGoTypes.GoInt32), _expected : false } : T__struct_12), ({ _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (97 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_12), ({ _b : (("aaa" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (97 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_12), ({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (121 : stdgo.StdGoTypes.GoInt32), _expected : false } : T__struct_12), ({ _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (99 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_12), ({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (120 : stdgo.StdGoTypes.GoInt32), _expected : false } : T__struct_12), ({ _b : (("a☺b☻c☹d" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (9787 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_12), ({ _b : (("aRegExp*" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _r : (42 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_12)) : stdgo.Slice<T__struct_12>);
/**
    
    
    
**/
var _makeFieldsInput : () -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = function():stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _x = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1048576 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _x.length.toBasic()) {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = stdgo.math.rand.Rand.intn((10 : stdgo.StdGoTypes.GoInt));
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo.StdGoTypes.GoInt)))) {
                            _x[(_i : stdgo.StdGoTypes.GoInt)] = (32 : stdgo.StdGoTypes.GoUInt8);
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.StdGoTypes.GoInt)))) {
                            if ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_x[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (120 : stdgo.StdGoTypes.GoUInt8))) {
                                stdgo.Go.copySlice((_x.__slice__(_i - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("χ" : stdgo.GoString));
                                break;
                            };
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            _x[(_i : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        return _x;
    };
/**
    
    
    
**/
var _makeFieldsInputASCII : () -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = function():stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _x = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1048576 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _x.length.toBasic()) {
            if (stdgo.math.rand.Rand.intn((10 : stdgo.StdGoTypes.GoInt)) == ((0 : stdgo.StdGoTypes.GoInt))) {
                _x[(_i : stdgo.StdGoTypes.GoInt)] = (32 : stdgo.StdGoTypes.GoUInt8);
            } else {
                _x[(_i : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            };
        };
        return _x;
    };
/**
    
    
    
**/
var _bytesdata : stdgo.Slice<T__struct_13> = (new stdgo.Slice<T__struct_13>(2, 2, ({ _name : ("ASCII" : stdgo.GoString), _data : _makeFieldsInputASCII() } : T__struct_13), ({ _name : ("Mixed" : stdgo.GoString), _data : _makeFieldsInput() } : T__struct_13)) : stdgo.Slice<T__struct_13>);
/**
    
    
    
**/
var _benchInputHard : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = _makeBenchInputHard();
/**
    
    
    
**/
var _compareTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(
21,
21,
({ _a : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abd" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abd" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("ab" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("b" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("x" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abcdefgh" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abcdefgh" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abcdefghj" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("abcdefghj" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("abcdefghi" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _b : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _b : (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_1),
({ _a : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _b : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
/**
    
    
    
**/
var unreadRuneErrorTests : stdgo.Slice<T__struct_17> = (new stdgo.Slice<T__struct_17>(5, 5, ({ _name : ("Read" : stdgo.GoString), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.read((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
    } } : T__struct_17), ({ _name : ("ReadByte" : stdgo.GoString), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.readByte();
    } } : T__struct_17), ({ _name : ("UnreadRune" : stdgo.GoString), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.unreadRune();
    } } : T__struct_17), ({ _name : ("Seek" : stdgo.GoString), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.seek((0i64 : stdgo.StdGoTypes.GoInt64), (1 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_17), ({ _name : ("WriteTo" : stdgo.GoString), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef((new Buffer() : Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
    } } : T__struct_17)) : stdgo.Slice<T__struct_17>);
/**
    
    
    // make this bigger for a larger (and slower) test
**/
final n : stdgo.StdGoTypes.GoUInt64 = (10000i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    // test data for write tests
**/
var _testString = ("" : stdgo.GoString);
/**
    
    
    // test data; same as testString but as a slice.
**/
var _testBytes = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _bmbuf = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
final _space : stdgo.GoString = ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.bytes_test.Bytes_test.T_negativeReader_static_extension) class T_negativeReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_negativeReader();
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.bytes_test.Bytes_test.T_panicReader_static_extension) class T_panicReader {
    public var _panic : Bool = false;
    public function new(?_panic:Bool) {
        if (_panic != null) this._panic = _panic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_panicReader(_panic);
    }
}
/**
    
    
    
**/
@:structInit class BinOpTest {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _i : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_i:stdgo.StdGoTypes.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BinOpTest(_a, _b, _i);
    }
}
/**
    
    
    
**/
@:structInit class SplitTest {
    public var _s : stdgo.GoString = "";
    public var _sep : stdgo.GoString = "";
    public var _n : stdgo.StdGoTypes.GoInt = 0;
    public var _a : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:stdgo.StdGoTypes.GoInt, ?_a:stdgo.Slice<stdgo.GoString>) {
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
/**
    
    
    
**/
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
/**
    // Test case for any function which accepts and returns a byte slice.
    // For ease of creation, we write the input byte slice as a string.
    
    
**/
@:structInit class StringTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out);
    }
}
/**
    
    
    
**/
@:structInit class RepeatTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public var _count : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:stdgo.StdGoTypes.GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RepeatTest(_in, _out, _count);
    }
}
/**
    
    
    
**/
@:structInit class RunesTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
    public var _lossy : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.StdGoTypes.GoInt32>, ?_lossy:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_lossy != null) this._lossy = _lossy;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RunesTest(_in, _out, _lossy);
    }
}
/**
    
    
    
**/
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
/**
    
    
    
**/
@:structInit class TrimNilTest {
    public var _f : stdgo.GoString = "";
    public var _in : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _arg : stdgo.GoString = "";
    public var _out : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_f:stdgo.GoString, ?_in:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_arg:stdgo.GoString, ?_out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
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
/**
    
    
    
**/
@:structInit @:private class T_predicate {
    public var _f : stdgo.StdGoTypes.GoInt32 -> Bool = null;
    public var _name : stdgo.GoString = "";
    public function new(?_f:stdgo.StdGoTypes.GoInt32 -> Bool, ?_name:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_predicate(_f, _name);
    }
}
/**
    
    
    
**/
@:structInit class TrimFuncTest {
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = ({} : stdgo.bytes_test.Bytes_test.T_predicate);
    public var _in : stdgo.GoString = "";
    public var _trimOut : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _leftOut : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _rightOut : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_f:stdgo.bytes_test.Bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
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
/**
    
    
    
**/
@:structInit class IndexFuncTest {
    public var _in : stdgo.GoString = "";
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = ({} : stdgo.bytes_test.Bytes_test.T_predicate);
    public var _first : stdgo.StdGoTypes.GoInt = 0;
    public var _last : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_f:stdgo.bytes_test.Bytes_test.T_predicate, ?_first:stdgo.StdGoTypes.GoInt, ?_last:stdgo.StdGoTypes.GoInt) {
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
/**
    
    
    
**/
@:structInit class ReplaceTest {
    public var _in : stdgo.GoString = "";
    public var _old : stdgo.GoString = "";
    public var _new : stdgo.GoString = "";
    public var _n : stdgo.StdGoTypes.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_old:stdgo.GoString, ?_new:stdgo.GoString, ?_n:stdgo.StdGoTypes.GoInt, ?_out:stdgo.GoString) {
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
/**
    
    
    
**/
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _buffer : stdgo.GoString;
    public var _delim : stdgo.StdGoTypes.GoUInt8;
    public var _expected : stdgo.Slice<stdgo.GoString>;
    public var _err : stdgo.Error;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _a : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _b : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _i : stdgo.StdGoTypes.GoInt;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _in : stdgo.GoString;
    public var _rune : stdgo.StdGoTypes.GoInt32;
    public var _want : stdgo.StdGoTypes.GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _in : stdgo.GoString;
    public var _repl : stdgo.GoString;
    public var _out : stdgo.GoString;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _s : stdgo.GoString;
    public var _count : stdgo.StdGoTypes.GoInt;
    public var _errStr : stdgo.GoString;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _name : stdgo.GoString;
    public var _trim : (stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, stdgo.StdGoTypes.GoInt32 -> Bool) -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _out : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _s : stdgo.GoString;
    public var _t : stdgo.GoString;
    public var _out : Bool;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_7_static_extension) typedef T__struct_7 = {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_8_static_extension) typedef T__struct_8 = {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_9_static_extension) typedef T__struct_9 = {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _b : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _subslice : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _want : Bool;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _b : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _substr : stdgo.GoString;
    public var _expected : Bool;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _b : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _r : stdgo.StdGoTypes.GoInt32;
    public var _expected : Bool;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _name : stdgo.GoString;
    public var _data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _name : stdgo.GoString;
    public var _input : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _off : stdgo.StdGoTypes.GoInt64;
    public var _seek : stdgo.StdGoTypes.GoInt;
    public var _n : stdgo.StdGoTypes.GoInt;
    public var _want : stdgo.GoString;
    public var _wantpos : stdgo.StdGoTypes.GoInt64;
    public var _readerr : stdgo.Error;
    public var _seekerr : stdgo.GoString;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _off : stdgo.StdGoTypes.GoInt64;
    public var _n : stdgo.StdGoTypes.GoInt;
    public var _want : stdgo.GoString;
    public var _wanterr : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_17>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader> -> Void;
};
/**
    // Verify that contents of buf match the string s.
**/
function _check(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _testname:stdgo.GoString, _buf:stdgo.StdGoTypes.Ref<Buffer>, _s:stdgo.GoString):Void {
        var _bytes = _buf.bytes();
        var _str:stdgo.GoString = (_buf.string() : stdgo.GoString);
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
/**
    // Fill buf through n writes of string fus.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
function _fillString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _testname:stdgo.GoString, _buf:stdgo.StdGoTypes.Ref<Buffer>, _s:stdgo.GoString, _n:stdgo.StdGoTypes.GoInt, _fus:stdgo.GoString):stdgo.GoString {
        _check(_t, _testname + (" (fill 1)" : stdgo.GoString), _buf, _s);
        stdgo.Go.cfor(_n > (0 : stdgo.StdGoTypes.GoInt), _n--, {
            var __tmp__ = _buf.writeString(_fus), _m:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != ((_fus.length))) {
                _t.errorf(_testname + (" (fill 2): m == %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((_fus.length)));
            };
            if (_err != null) {
                _t.errorf(_testname + (" (fill 3): err should always be nil, found err == %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _s = _s + (_fus);
            _check(_t, _testname + (" (fill 4)" : stdgo.GoString), _buf, _s);
        });
        return _s;
    }
/**
    // Fill buf through n writes of byte slice fub.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
function _fillBytes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _testname:stdgo.GoString, _buf:stdgo.StdGoTypes.Ref<Buffer>, _s:stdgo.GoString, _n:stdgo.StdGoTypes.GoInt, _fub:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.GoString {
        _check(_t, _testname + (" (fill 1)" : stdgo.GoString), _buf, _s);
        stdgo.Go.cfor(_n > (0 : stdgo.StdGoTypes.GoInt), _n--, {
            var __tmp__ = _buf.write(_fub), _m:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m != ((_fub.length))) {
                _t.errorf(_testname + (" (fill 2): m == %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((_fub.length)));
            };
            if (_err != null) {
                _t.errorf(_testname + (" (fill 3): err should always be nil, found err == %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _s = _s + ((_fub : stdgo.GoString));
            _check(_t, _testname + (" (fill 4)" : stdgo.GoString), _buf, _s);
        });
        return _s;
    }
function testNewBuffer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer(_testBytes);
        _check(_t, ("NewBuffer" : stdgo.GoString), _buf, _testString);
    }
function testNewBufferString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBufferString(_testString);
        _check(_t, ("NewBufferString" : stdgo.GoString), _buf, _testString);
    }
/**
    // Empty buf through repeated reads into fub.
    // The initial contents of buf corresponds to the string s.
**/
function _empty(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _testname:stdgo.GoString, _buf:stdgo.StdGoTypes.Ref<Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        _check(_t, _testname + (" (empty 1)" : stdgo.GoString), _buf, _s);
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_err != null) {
                _t.errorf(_testname + (" (empty 2): err should always be nil, found err == %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _s = (_s.__slice__(_n) : stdgo.GoString);
            _check(_t, _testname + (" (empty 3)" : stdgo.GoString), _buf, _s);
        };
        _check(_t, _testname + (" (empty 4)" : stdgo.GoString), _buf, stdgo.Go.str());
    }
function testBasicOperations(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (5 : stdgo.StdGoTypes.GoInt), _i++, {
                _check(_t, ("TestBasicOperations (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
                _buf.reset();
                _check(_t, ("TestBasicOperations (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
                _buf.truncate((0 : stdgo.StdGoTypes.GoInt));
                _check(_t, ("TestBasicOperations (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
                var __tmp__ = _buf.write((_testBytes.__slice__((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.StdGoTypes.AnyInterface));
                    };
                };
                _check(_t, ("TestBasicOperations (4)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), ("a" : stdgo.GoString));
                _buf.writeByte(_testString[(1 : stdgo.StdGoTypes.GoInt)]);
                _check(_t, ("TestBasicOperations (5)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), ("ab" : stdgo.GoString));
                {
                    var __tmp__ = _buf.write((_testBytes.__slice__((2 : stdgo.StdGoTypes.GoInt), (26 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var _want:stdgo.StdGoTypes.GoInt = (24 : stdgo.StdGoTypes.GoInt);
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.StdGoTypes.AnyInterface));
                    };
                };
                _check(_t, ("TestBasicOperations (6)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.StdGoTypes.GoInt), (26 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString));
                _buf.truncate((26 : stdgo.StdGoTypes.GoInt));
                _check(_t, ("TestBasicOperations (7)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.StdGoTypes.GoInt), (26 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString));
                _buf.truncate((20 : stdgo.StdGoTypes.GoInt));
                _check(_t, ("TestBasicOperations (8)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.StdGoTypes.GoInt), (20 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString));
                _empty(_t, ("TestBasicOperations (9)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_testString.__slice__((0 : stdgo.StdGoTypes.GoInt), (20 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString), new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((5 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
                _empty(_t, ("TestBasicOperations (10)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str(), new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((100 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
                _buf.writeByte(_testString[(1 : stdgo.StdGoTypes.GoInt)]);
                var __tmp__ = _buf.readByte(), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want:stdgo.StdGoTypes.GoUInt8 = _testString[(1 : stdgo.StdGoTypes.GoInt)];
                    if ((_err != null) || (_c != _want)) {
                        _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.StdGoTypes.AnyInterface));
                    };
                };
                {
                    var __tmp__ = _buf.readByte();
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                    _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte)), stdgo.Go.toInterface(stdgo.io.Io.eof));
                };
            });
        };
    }
function testLargeStringWrites(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _limit:stdgo.StdGoTypes.GoInt = (30 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _limit = (9 : stdgo.StdGoTypes.GoInt);
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (3 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _limit, _i = _i + ((3 : stdgo.StdGoTypes.GoInt)), {
                var _s:stdgo.GoString = _fillString(_t, ("TestLargeWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str(), (5 : stdgo.StdGoTypes.GoInt), _testString);
                _empty(_t, ("TestLargeStringWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_testString.length) / _i : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            });
        };
        _check(_t, ("TestLargeStringWrites (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
    }
function testLargeByteWrites(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _limit:stdgo.StdGoTypes.GoInt = (30 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _limit = (9 : stdgo.StdGoTypes.GoInt);
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (3 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _limit, _i = _i + ((3 : stdgo.StdGoTypes.GoInt)), {
                var _s:stdgo.GoString = _fillBytes(_t, ("TestLargeWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str(), (5 : stdgo.StdGoTypes.GoInt), _testBytes);
                _empty(_t, ("TestLargeByteWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_testString.length) / _i : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            });
        };
        _check(_t, ("TestLargeByteWrites (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
    }
function testLargeStringReads(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:stdgo.StdGoTypes.GoInt = (3 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (30 : stdgo.StdGoTypes.GoInt), _i = _i + ((3 : stdgo.StdGoTypes.GoInt)), {
                var _s:stdgo.GoString = _fillString(_t, ("TestLargeReads (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str(), (5 : stdgo.StdGoTypes.GoInt), (_testString.__slice__((0 : stdgo.StdGoTypes.GoInt), (_testString.length) / _i) : stdgo.GoString));
                _empty(_t, ("TestLargeReads (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_testString.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            });
        };
        _check(_t, ("TestLargeStringReads (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
    }
function testLargeByteReads(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:stdgo.StdGoTypes.GoInt = (3 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (30 : stdgo.StdGoTypes.GoInt), _i = _i + ((3 : stdgo.StdGoTypes.GoInt)), {
                var _s:stdgo.GoString = _fillBytes(_t, ("TestLargeReads (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str(), (5 : stdgo.StdGoTypes.GoInt), (_testBytes.__slice__((0 : stdgo.StdGoTypes.GoInt), (_testBytes.length) / _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                _empty(_t, ("TestLargeReads (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_testString.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            });
        };
        _check(_t, ("TestLargeByteReads (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
    }
function testMixedReadsAndWrites(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _s:stdgo.GoString = stdgo.Go.str();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (50 : stdgo.StdGoTypes.GoInt), _i++, {
                var _wlen:stdgo.StdGoTypes.GoInt = stdgo.math.rand.Rand.intn((_testString.length));
                if (_i % (2 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _s = _fillString(_t, ("TestMixedReadsAndWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, (1 : stdgo.StdGoTypes.GoInt), (_testString.__slice__((0 : stdgo.StdGoTypes.GoInt), _wlen) : stdgo.GoString));
                } else {
                    _s = _fillBytes(_t, ("TestMixedReadsAndWrites (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, (1 : stdgo.StdGoTypes.GoInt), (_testBytes.__slice__((0 : stdgo.StdGoTypes.GoInt), _wlen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                };
                var _rlen:stdgo.StdGoTypes.GoInt = stdgo.math.rand.Rand.intn((_testString.length));
                var _fub = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_rlen : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                var __tmp__ = _buf.read(_fub), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                _s = (_s.__slice__(_n) : stdgo.GoString);
            });
        };
        _empty(_t, ("TestMixedReadsAndWrites (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_buf.len() : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
    }
function testCapWithPreallocatedSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
        var _n:stdgo.StdGoTypes.GoInt = _buf.cap();
        if (_n != ((10 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("expected 10, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testCapWithSliceAndWrittenData(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (10 : stdgo.StdGoTypes.GoInt)).__setNumber32__());
        _buf.write((("test" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        var _n:stdgo.StdGoTypes.GoInt = _buf.cap();
        if (_n != ((10 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("expected 10, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testNil(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:stdgo.StdGoTypes.Ref<Buffer> = (null : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        if ((_b.string() : stdgo.GoString) != (("<nil>" : stdgo.GoString))) {
            _t.errorf(("expected <nil>; got %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
    }
function testReadFrom(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:stdgo.StdGoTypes.GoInt = (3 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (30 : stdgo.StdGoTypes.GoInt), _i = _i + ((3 : stdgo.StdGoTypes.GoInt)), {
                var _s:stdgo.GoString = _fillBytes(_t, ("TestReadFrom (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str(), (5 : stdgo.StdGoTypes.GoInt), (_testBytes.__slice__((0 : stdgo.StdGoTypes.GoInt), (_testBytes.length) / _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                _b.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
                _empty(_t, ("TestReadFrom (2)" : stdgo.GoString), (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_testString.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            });
        };
    }
/**
    // Make sure that an empty Buffer remains empty when
    // it is "grown" before a Read that panics
**/
function testReadFromPanicReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var __tmp__ = _buf.readFrom(stdgo.Go.asInterface((new T_panicReader() : T_panicReader))), _i:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_i != ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                _t.fatalf(("unexpected return from bytes.ReadFrom (1): got: %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
            };
            _check(_t, ("TestReadFromPanicReader (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
            var _buf2:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    _check(_t, ("TestReadFromPanicReader (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf2) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str());
                };
                a();
            });
            _buf2.readFrom(stdgo.Go.asInterface(({ _panic : true } : T_panicReader)));
            for (defer in __deferstack__) {
                defer();
            };
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testReadFromNegativeReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        final __type__ = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (__type__ == null) {
                            var _err:stdgo.StdGoTypes.AnyInterface = __type__ == null ? (null : stdgo.StdGoTypes.AnyInterface) : __type__.__underlying__();
                            _t.fatal(stdgo.Go.toInterface(("bytes.Buffer.ReadFrom didn\'t panic" : stdgo.GoString)));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                            var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                            var _wantError:stdgo.GoString = ("bytes.Buffer: reader returned negative count from Read" : stdgo.GoString);
                            if (_err.error() != (_wantError)) {
                                _t.fatalf(("recovered panic: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(_wantError));
                            };
                        } else {
                            var _err:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                            _t.fatalf(("unexpected panic value: %#v" : stdgo.GoString), _err);
                        };
                    };
                };
                a();
            });
            _b.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.bytes_test.Bytes_test.T_negativeReader)) : stdgo.StdGoTypes.Ref<stdgo.bytes_test.Bytes_test.T_negativeReader>)));
            for (defer in __deferstack__) {
                defer();
            };
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testWriteTo(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:stdgo.StdGoTypes.GoInt = (3 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (30 : stdgo.StdGoTypes.GoInt), _i = _i + ((3 : stdgo.StdGoTypes.GoInt)), {
                var _s:stdgo.GoString = _fillBytes(_t, ("TestWriteTo (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), stdgo.Go.str(), (5 : stdgo.StdGoTypes.GoInt), (_testBytes.__slice__((0 : stdgo.StdGoTypes.GoInt), (_testBytes.length) / _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                _buf.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
                _empty(_t, ("TestWriteTo (2)" : stdgo.GoString), (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _s, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_testString.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            });
        };
    }
function testWriteAppend(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _got:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _want:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (1000 : stdgo.StdGoTypes.GoInt), _i++, {
                var _b = _got.availableBuffer();
                _b = stdgo.strconv.Strconv.appendInt(_b, (_i : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
                _want = stdgo.strconv.Strconv.appendInt(_want, (_i : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
                _got.write(_b);
            });
        };
        if (!equal(_got.bytes(), _want)) {
            _t.fatalf(("Bytes() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(_want));
        };
        var _n:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), function():Void {
            _got.reset();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1000 : stdgo.StdGoTypes.GoInt), _i++, {
                    var _b = _got.availableBuffer();
                    _b = stdgo.strconv.Strconv.appendInt(_b, (_i : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
                    _got.write(_b);
                });
            };
        });
        if (_n > (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("allocations occurred while appending" : stdgo.GoString));
        };
    }
function testRuneIO(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((4000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _r:stdgo.StdGoTypes.GoInt32 = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_r < (1000 : stdgo.StdGoTypes.GoInt32), _r++, {
                var _size:stdgo.StdGoTypes.GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_b.__slice__(_n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _r);
                var __tmp__ = _buf.writeRune(_r), _nbytes:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("WriteRune(%U) error: %s" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                };
                if (_nbytes != (_size)) {
                    _t.fatalf(("WriteRune(%U) expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_nbytes));
                };
                _n = _n + (_size);
            });
        };
        _b = (_b.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        if (!equal(_buf.bytes(), _b)) {
            _t.fatalf(("incorrect result from WriteRune: %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_b));
        };
        var _p = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((4 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _r:stdgo.StdGoTypes.GoInt32 = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_r < (1000 : stdgo.StdGoTypes.GoInt32), _r++, {
                var _size:stdgo.StdGoTypes.GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_p, _r);
                var __tmp__ = _buf.readRune(), _nr:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _nbytes:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_nr != _r) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(("ReadRune(%U) got %U,%d not %U,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_nr), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
        _buf.reset();
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _buf.readRune(), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __1:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("ReadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadRune after ReadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        _buf.write(_b);
        {
            var _r:stdgo.StdGoTypes.GoInt32 = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_r < (1000 : stdgo.StdGoTypes.GoInt32), _r++, {
                var __tmp__ = _buf.readRune(), _r1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1, __2:stdgo.Error = __tmp__._2;
                {
                    var _err:stdgo.Error = _buf.unreadRune();
                    if (_err != null) {
                        _t.fatalf(("UnreadRune(%U) got error %q" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                    };
                };
                var __tmp__ = _buf.readRune(), _r2:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _nbytes:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((((_r1 != _r2) || (_r1 != _r)) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testWriteInvalidRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _r in (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (-1 : stdgo.StdGoTypes.GoInt32), (1114112 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)) {
            var _buf:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            _buf.writeRune(_r);
            _check(_t, stdgo.fmt.Fmt.sprintf(("TestWriteInvalidRune (%d)" : stdgo.GoString), stdgo.Go.toInterface(_r)), (stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), ("�" : stdgo.GoString));
        };
    }
function testNext(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(5, 5, (0 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8), (4 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _tmp = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((5 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (5 : stdgo.StdGoTypes.GoInt), _i++, {
                {
                    var _j:stdgo.StdGoTypes.GoInt = _i;
                    stdgo.Go.cfor(_j <= (5 : stdgo.StdGoTypes.GoInt), _j++, {
                        {
                            var _k:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_k <= (6 : stdgo.StdGoTypes.GoInt), _k++, {
                                var _buf = newBuffer((_b.__slice__((0 : stdgo.StdGoTypes.GoInt), _j) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                                var __tmp__ = _buf.read((_tmp.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                                if (_n != (_i)) {
                                    _t.fatalf(("Read %d returned %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n));
                                };
                                var _bb = _buf.next(_k);
                                var _want:stdgo.StdGoTypes.GoInt = _k;
                                if (_want > (_j - _i)) {
                                    _want = _j - _i;
                                };
                                if ((_bb.length) != (_want)) {
                                    _t.fatalf(("in %d,%d: len(Next(%d)) == %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_bb.length)));
                                };
                                for (_l => _v in _bb) {
                                    if (_v != ((_l + _i : stdgo.StdGoTypes.GoByte))) {
                                        _t.fatalf(("in %d,%d: Next(%d)[%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_l + _i));
                                    };
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testReadBytes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer);
            var _err:stdgo.Error = (null : stdgo.Error);
            for (__1 => _expected in _test._expected) {
                var _bytes:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
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
function testReadString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer);
            var _err:stdgo.Error = (null : stdgo.Error);
            for (__1 => _expected in _test._expected) {
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = __tmp__._0;
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
function benchmarkReadString(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _data = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((32768 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _data[(32767 : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
        _b.setBytes((32768i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                var _buf = newBuffer(_data);
                var __tmp__ = _buf.readString((120 : stdgo.StdGoTypes.GoUInt8)), __8:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testGrow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testGrow" + " skip function");
        return;
        var _x = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (120 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _y = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (121 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _tmp = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((72 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _growLen in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(5, 5, (0 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt), (1000 : stdgo.StdGoTypes.GoInt), (10000 : stdgo.StdGoTypes.GoInt), (100000 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
            for (__1 => _startLen in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(5, 5, (0 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt), (1000 : stdgo.StdGoTypes.GoInt), (10000 : stdgo.StdGoTypes.GoInt), (100000 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
                var _xBytes = repeat(_x, _startLen);
                var _buf = newBuffer(_xBytes);
                var __tmp__ = _buf.read(_tmp), _readBytes:stdgo.StdGoTypes.GoInt = __tmp__._0, __2:stdgo.Error = __tmp__._1;
                var _yBytes = repeat(_y, _growLen);
                var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), function():Void {
                    _buf.grow(_growLen);
                    _buf.write(_yBytes);
                });
                if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
                    _t.errorf(("allocation occurred during write" : stdgo.GoString));
                };
                if (!equal((_buf.bytes().__slice__((0 : stdgo.StdGoTypes.GoInt), _startLen - _readBytes) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_xBytes.__slice__(_readBytes) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
                    _t.errorf(("bad initial data at %d %d" : stdgo.GoString), stdgo.Go.toInterface(_startLen), stdgo.Go.toInterface(_growLen));
                };
                if (!equal((_buf.bytes().__slice__(_startLen - _readBytes, (_startLen - _readBytes) + _growLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _yBytes)) {
                    _t.errorf(("bad written data at %d %d" : stdgo.GoString), stdgo.Go.toInterface(_startLen), stdgo.Go.toInterface(_growLen));
                };
            };
        };
    }
function testGrowOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err != (stdgo.Go.toInterface(errTooLarge))) {
                            _t.errorf(("after too-large Grow, recover() = %v; want %v" : stdgo.GoString), _err, stdgo.Go.toInterface(errTooLarge));
                        };
                    };
                };
                a();
            });
            var _buf = newBuffer(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            {};
            _buf.grow((2147483647 : stdgo.StdGoTypes.GoInt));
            for (defer in __deferstack__) {
                defer();
            };
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
/**
    // Was a bug: used to give EOF reading empty slice at EOF.
**/
function testReadEmptyAtEOF(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = _b.read(_slice), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("wrong count; got %d want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testUnreadByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _b.readByte(), __0:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("ReadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte after ReadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        _b.writeString(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString));
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (_err != null)) {
                _t.fatalf(("Read(nil) = %d,%v; want 0,nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte after Read(nil): got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _b.readBytes((109 : stdgo.StdGoTypes.GoUInt8)), __1:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadBytes: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.unreadByte();
            if (_err != null) {
                _t.fatalf(("UnreadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = _b.readByte(), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_c != ((109 : stdgo.StdGoTypes.GoUInt8))) {
            _t.errorf(("ReadByte = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((109 : stdgo.StdGoTypes.GoInt32)));
        };
    }
/**
    // Tests that we occasionally compact. Issue 5154.
**/
function testBufferGrowth(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1024 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b.write((_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        var _cap0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (5120 : stdgo.StdGoTypes.GoInt), _i++, {
                _b.write(_buf);
                _b.read(_buf);
                if (_i == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _cap0 = _b.cap();
                };
            });
        };
        var _cap1:stdgo.StdGoTypes.GoInt = _b.cap();
        if (_cap1 > (_cap0 * (3 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("buffer cap = %d; too big (grew from %d)" : stdgo.GoString), stdgo.Go.toInterface(_cap1), stdgo.Go.toInterface(_cap0));
        };
    }
function benchmarkWriteByte(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.setBytes((4096i64 : stdgo.StdGoTypes.GoInt64));
        var _buf = newBuffer(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((4096 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (4096 : stdgo.StdGoTypes.GoInt), _i++, {
                        _buf.writeByte((120 : stdgo.StdGoTypes.GoUInt8));
                    });
                };
            });
        };
    }
function benchmarkWriteRune(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        {};
        _b.setBytes(((4096 : stdgo.StdGoTypes.GoInt) * stdgo.unicode.utf8.Utf8.runeLen((9786 : stdgo.StdGoTypes.GoInt32)) : stdgo.StdGoTypes.GoInt64));
        var _buf = newBuffer(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((16384 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (4096 : stdgo.StdGoTypes.GoInt), _i++, {
                        _buf.writeRune((9786 : stdgo.StdGoTypes.GoInt32));
                    });
                };
            });
        };
    }
/**
    // From Issue 5154.
**/
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1024 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                _b.write((_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (5120 : stdgo.StdGoTypes.GoInt), _i++, {
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
function benchmarkBufferFullSmallReads(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1024 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                _b.write(_buf);
                while ((_b.len() + (20 : stdgo.StdGoTypes.GoInt)) < _b.cap()) {
                    _b.write((_buf.__slice__(0, (10 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                };
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (5120 : stdgo.StdGoTypes.GoInt), _i++, {
                        _b.read((_buf.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                        _b.write((_buf.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    });
                };
            });
        };
    }
function benchmarkBufferWriteBlock(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _block = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1024 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _n in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (4096 : stdgo.StdGoTypes.GoInt), (65536 : stdgo.StdGoTypes.GoInt), (1048576 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("N%d" : stdgo.GoString), stdgo.Go.toInterface(_n)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                _b.reportAllocs();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var _bb:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                        while (_bb.len() < _n) {
                            _bb.write(_block);
                        };
                    });
                };
            });
        };
    }
function benchmarkBufferAppendNoCopy(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _bb:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _bb.grow((16777216 : stdgo.StdGoTypes.GoInt));
        _b.setBytes((_bb.available() : stdgo.StdGoTypes.GoInt64));
        _b.reportAllocs();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _bb.reset();
                var _b = _bb.availableBuffer();
                _b = (_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                _bb.write(_b);
            });
        };
    }
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_a.length), _i++, {
                if (_a[(_i : stdgo.StdGoTypes.GoInt)] != (_b[(_i : stdgo.StdGoTypes.GoInt)])) {
                    return false;
                };
            });
        };
        return true;
    }
function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoByte>>):stdgo.Slice<stdgo.GoString> {
        var _result = new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
        for (_i => _v in _s) {
            _result[(_i : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.GoString);
        };
        return _result;
    }
function testEqual(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((10 : stdgo.StdGoTypes.GoInt), function():Void {
            for (__0 => _tt in _compareTests) {
                var _eql:Bool = equal(_tt._a, _tt._b);
                if (_eql != ((_tt._i == (0 : stdgo.StdGoTypes.GoInt)))) {
                    _t.errorf(("Equal(%q, %q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_eql));
                };
            };
        });
        if (_allocs > (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("Equal allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testEqualExhaustive(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _size:stdgo.StdGoTypes.GoInt = (128 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _size = (32 : stdgo.StdGoTypes.GoInt);
        };
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _b_init = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _size, _i++, {
                _a[(_i : stdgo.StdGoTypes.GoInt)] = ((17 : stdgo.StdGoTypes.GoInt) * _i : stdgo.StdGoTypes.GoByte);
                _b_init[(_i : stdgo.StdGoTypes.GoInt)] = (((23 : stdgo.StdGoTypes.GoInt) * _i) + (100 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoByte);
            });
        };
        {
            var _len:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_len <= _size, _len++, {
                {
                    var _x:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_x <= (_size - _len), _x++, {
                        {
                            var _y:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_y <= (_size - _len), _y++, {
                                stdgo.Go.copySlice(_b, _b_init);
                                stdgo.Go.copySlice((_b.__slice__(_y, _y + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_a.__slice__(_x, _x + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                                if (!equal((_a.__slice__(_x, _x + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(_y, _y + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) || !equal((_b.__slice__(_y, _y + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_a.__slice__(_x, _x + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
                                    _t.errorf(("Equal(%d, %d, %d) = false" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
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
function testNotEqual(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _size:stdgo.StdGoTypes.GoInt = (128 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _size = (32 : stdgo.StdGoTypes.GoInt);
        };
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _len:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_len <= _size, _len++, {
                {
                    var _x:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_x <= (_size - _len), _x++, {
                        {
                            var _y:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_y <= (_size - _len), _y++, {
                                {
                                    var _diffpos:stdgo.StdGoTypes.GoInt = _x;
                                    stdgo.Go.cfor(_diffpos < (_x + _len), _diffpos++, {
                                        _a[(_diffpos : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
                                        if (equal((_a.__slice__(_x, _x + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(_y, _y + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) || equal((_b.__slice__(_y, _y + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_a.__slice__(_x, _x + _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
                                            _t.errorf(("NotEqual(%d, %d, %d, %d) = true" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_diffpos));
                                        };
                                        _a[(_diffpos : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
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
function _runIndexTests(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _f:(_s:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sep:stdgo.Slice<stdgo.StdGoTypes.GoByte>) -> stdgo.StdGoTypes.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<BinOpTest>):Void {
        for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _b = (_test._b : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _actual:stdgo.StdGoTypes.GoInt = _f(_a, _b);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
        var _allocTests:stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(2, 2, ({ _a : (("000000000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("0000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (5 : stdgo.StdGoTypes.GoInt) } : T__struct_1), ({ _a : (("000000000000000000000000000000000000000000000000000000000000000010000" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _b : (("00000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _i : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), function():Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = index(_allocTests[(1 : stdgo.StdGoTypes.GoInt)]._a, _allocTests[(1 : stdgo.StdGoTypes.GoInt)]._b);
                if (_i != (_allocTests[(1 : stdgo.StdGoTypes.GoInt)]._i)) {
                    _t.errorf(("Index([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_allocTests[(1 : stdgo.StdGoTypes.GoInt)]._a), stdgo.Go.toInterface(_allocTests[(1 : stdgo.StdGoTypes.GoInt)]._b), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_allocTests[(1 : stdgo.StdGoTypes.GoInt)]._i));
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = lastIndex(_allocTests[(0 : stdgo.StdGoTypes.GoInt)]._a, _allocTests[(0 : stdgo.StdGoTypes.GoInt)]._b);
                if (_i != (_allocTests[(0 : stdgo.StdGoTypes.GoInt)]._i)) {
                    _t.errorf(("LastIndex([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_allocTests[(0 : stdgo.StdGoTypes.GoInt)]._a), stdgo.Go.toInterface(_allocTests[(0 : stdgo.StdGoTypes.GoInt)]._b), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_allocTests[(0 : stdgo.StdGoTypes.GoInt)]._i));
                };
            };
        });
        if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function _runIndexAnyTests(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _f:(_s:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _chars:stdgo.GoString) -> stdgo.StdGoTypes.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<BinOpTest>):Void {
        for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _actual:stdgo.StdGoTypes.GoInt = _f(_a, _test._b);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_test._b), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
    }
function testIndex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, index, ("Index" : stdgo.GoString), _indexTests);
    }
function testLastIndex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, lastIndex, ("LastIndex" : stdgo.GoString), _lastIndexTests);
    }
function testIndexAny(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexAnyTests(_t, indexAny, ("IndexAny" : stdgo.GoString), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexAnyTests(_t, lastIndexAny, ("LastIndexAny" : stdgo.GoString), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _indexTests) {
            if ((_tt._b.length) != ((1 : stdgo.StdGoTypes.GoInt))) {
                continue;
            };
            var _a = (_tt._a : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _b:stdgo.StdGoTypes.GoUInt8 = _tt._b[(0 : stdgo.StdGoTypes.GoInt)];
            var _pos:stdgo.StdGoTypes.GoInt = indexByte(_a, _b);
            if (_pos != (_tt._i)) {
                _t.errorf(("IndexByte(%q, \'%c\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_pos));
            };
            var _posp:stdgo.StdGoTypes.GoInt = indexBytePortable(_a, _b);
            if (_posp != (_tt._i)) {
                _t.errorf(("indexBytePortable(%q, \'%c\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_posp));
            };
        };
    }
function testLastIndexByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(6, 6, (new stdgo.bytes_test.Bytes_test.BinOpTest(stdgo.Go.str(), ("q" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("abcdef" : stdgo.GoString), ("q" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("abcdefabcdef" : stdgo.GoString), ("a" : stdgo.GoString), (("abcdef" : stdgo.GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("abcdefabcdef" : stdgo.GoString), ("f" : stdgo.GoString), (("abcdefabcde" : stdgo.GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("zabcdefabcdef" : stdgo.GoString), ("z" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("b" : stdgo.GoString), (("a☺" : stdgo.GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
        for (__0 => _test in _testCases) {
            var _actual:stdgo.StdGoTypes.GoInt = lastIndexByte((_test._a : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _test._b[(0 : stdgo.StdGoTypes.GoInt)]);
            if (_actual != (_test._i)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._a), stdgo.Go.toInterface(_test._b[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
    }
/**
    // test a larger buffer with different sizes and alignments
**/
function testIndexByteBig(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _n:stdgo.StdGoTypes.GoInt = (1024 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = (128 : stdgo.StdGoTypes.GoInt);
        };
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                var _b1 = (_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (_b1.length), _j++, {
                        _b1[(_j : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
                        var _pos:stdgo.StdGoTypes.GoInt = indexByte(_b1, (120 : stdgo.StdGoTypes.GoUInt8));
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                        _pos = indexByte(_b1, (120 : stdgo.StdGoTypes.GoUInt8));
                        if (_pos != ((-1 : stdgo.StdGoTypes.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (_b1.length), _j++, {
                        _b1[(_j : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
                        var _pos:stdgo.StdGoTypes.GoInt = indexByte(_b1, (120 : stdgo.StdGoTypes.GoUInt8));
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                        _pos = indexByte(_b1, (120 : stdgo.StdGoTypes.GoUInt8));
                        if (_pos != ((-1 : stdgo.StdGoTypes.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(_i / (2 : stdgo.StdGoTypes.GoInt), _n - ((_i + (1 : stdgo.StdGoTypes.GoInt)) / (2 : stdgo.StdGoTypes.GoInt))) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (_b1.length), _j++, {
                        _b1[(_j : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
                        var _pos:stdgo.StdGoTypes.GoInt = indexByte(_b1, (120 : stdgo.StdGoTypes.GoUInt8));
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                        _pos = indexByte(_b1, (120 : stdgo.StdGoTypes.GoUInt8));
                        if (_pos != ((-1 : stdgo.StdGoTypes.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
            });
        };
    }
/**
    // test a small index across all page offsets
**/
function testIndexByteSmall(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((5015 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_b.length - (15 : stdgo.StdGoTypes.GoInt)), _i++, {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (15 : stdgo.StdGoTypes.GoInt), _j++, {
                        _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = ((100 : stdgo.StdGoTypes.GoInt) + _j : stdgo.StdGoTypes.GoByte);
                    });
                };
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (15 : stdgo.StdGoTypes.GoInt), _j++, {
                        var _p:stdgo.StdGoTypes.GoInt = indexByte((_b.__slice__(_i, _i + (15 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ((100 : stdgo.StdGoTypes.GoInt) + _j : stdgo.StdGoTypes.GoByte));
                        if (_p != (_j)) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, _i + (15 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), stdgo.Go.toInterface((100 : stdgo.StdGoTypes.GoInt) + _j), stdgo.Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (15 : stdgo.StdGoTypes.GoInt), _j++, {
                        _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                    });
                };
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_b.length - (15 : stdgo.StdGoTypes.GoInt)), _i++, {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (15 : stdgo.StdGoTypes.GoInt), _j++, {
                        _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
                    });
                };
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (15 : stdgo.StdGoTypes.GoInt), _j++, {
                        var _p:stdgo.StdGoTypes.GoInt = indexByte((_b.__slice__(_i, _i + (15 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte));
                        if (_p != ((-1 : stdgo.StdGoTypes.GoInt))) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, _i + (15 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (15 : stdgo.StdGoTypes.GoInt), _j++, {
                        _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                    });
                };
            });
        };
    }
function testIndexRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_2>(
19,
19,
({ _in : stdgo.Go.str(), _rune : (97 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str(), _rune : (9786 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("foo" : stdgo.GoString), _rune : (9785 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("foo" : stdgo.GoString), _rune : (111 : stdgo.StdGoTypes.GoInt32), _want : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("foo☺bar" : stdgo.GoString), _rune : (9786 : stdgo.StdGoTypes.GoInt32), _want : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("foo☺☻☹bar" : stdgo.GoString), _rune : (9785 : stdgo.StdGoTypes.GoInt32), _want : (9 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("a A x" : stdgo.GoString), _rune : (65 : stdgo.StdGoTypes.GoInt32), _want : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("some_text=some_value" : stdgo.GoString), _rune : (61 : stdgo.StdGoTypes.GoInt32), _want : (9 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("☺a" : stdgo.GoString), _rune : (97 : stdgo.StdGoTypes.GoInt32), _want : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("a☻☺b" : stdgo.GoString), _rune : (9786 : stdgo.StdGoTypes.GoInt32), _want : (4 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("�" : stdgo.GoString), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str(255), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : ("☻x�" : stdgo.GoString), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152, "�"), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152, "x"), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (-1 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (55296 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (1114112 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        for (__0 => _tt in _tests) {
            {
                var _got:stdgo.StdGoTypes.GoInt = indexRune((_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._rune);
                if (_got != (_tt._want)) {
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._rune), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack = (("test世界" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((1000 : stdgo.StdGoTypes.GoInt), function():Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = indexRune(_haystack, (115 : stdgo.StdGoTypes.GoInt32));
                if (_i != ((2 : stdgo.StdGoTypes.GoInt))) {
                    _t.fatalf(("\'s\' at %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = indexRune(_haystack, (19990 : stdgo.StdGoTypes.GoInt32));
                if (_i != ((4 : stdgo.StdGoTypes.GoInt))) {
                    _t.fatalf(("\'世\' at %d; want 4" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
        });
        if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
/**
    // test count of a single byte across page offsets
**/
function testCountByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((5015 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _windows = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
14,
14,
(1 : stdgo.StdGoTypes.GoInt),
(2 : stdgo.StdGoTypes.GoInt),
(3 : stdgo.StdGoTypes.GoInt),
(4 : stdgo.StdGoTypes.GoInt),
(15 : stdgo.StdGoTypes.GoInt),
(16 : stdgo.StdGoTypes.GoInt),
(17 : stdgo.StdGoTypes.GoInt),
(31 : stdgo.StdGoTypes.GoInt),
(32 : stdgo.StdGoTypes.GoInt),
(33 : stdgo.StdGoTypes.GoInt),
(63 : stdgo.StdGoTypes.GoInt),
(64 : stdgo.StdGoTypes.GoInt),
(65 : stdgo.StdGoTypes.GoInt),
(128 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        var _testCountWindow:(stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt) -> Void = function(_i:stdgo.StdGoTypes.GoInt, _window:stdgo.StdGoTypes.GoInt):Void {
            {
                var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_j < _window, _j++, {
                    _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = ((100 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
                    var _p:stdgo.StdGoTypes.GoInt = count((_b.__slice__(_i, _i + _window) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (100 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_p != (_j + (1 : stdgo.StdGoTypes.GoInt))) {
                        _t.errorf(("TestCountByte.Count(%q, 100) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, _i + _window) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), stdgo.Go.toInterface(_p));
                    };
                });
            };
        };
        var _maxWnd:stdgo.StdGoTypes.GoInt = _windows[((_windows.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= ((2 : stdgo.StdGoTypes.GoInt) * _maxWnd), _i++, {
                for (__0 => _window in _windows) {
                    if (_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).length)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).length);
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_j < _window, _j++, {
                            _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
                        });
                    };
                };
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (4096 : stdgo.StdGoTypes.GoInt) - (_maxWnd + (1 : stdgo.StdGoTypes.GoInt));
            stdgo.Go.cfor(_i < (_b.length), _i++, {
                for (__1 => _window in _windows) {
                    if (_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).length)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).length);
                    };
                    _testCountWindow(_i, _window);
                    {
                        var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_j < _window, _j++, {
                            _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
                        });
                    };
                };
            });
        };
    }
/**
    // Make sure we don't count bytes outside our window
**/
function testCountByteNoMatch(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((5015 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _windows = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
14,
14,
(1 : stdgo.StdGoTypes.GoInt),
(2 : stdgo.StdGoTypes.GoInt),
(3 : stdgo.StdGoTypes.GoInt),
(4 : stdgo.StdGoTypes.GoInt),
(15 : stdgo.StdGoTypes.GoInt),
(16 : stdgo.StdGoTypes.GoInt),
(17 : stdgo.StdGoTypes.GoInt),
(31 : stdgo.StdGoTypes.GoInt),
(32 : stdgo.StdGoTypes.GoInt),
(33 : stdgo.StdGoTypes.GoInt),
(63 : stdgo.StdGoTypes.GoInt),
(64 : stdgo.StdGoTypes.GoInt),
(65 : stdgo.StdGoTypes.GoInt),
(128 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_b.length), _i++, {
                for (__0 => _window in _windows) {
                    if (_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).length)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).length);
                    };
                    {
                        var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_j < _window, _j++, {
                            _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = ((100 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
                        });
                    };
                    var _p:stdgo.StdGoTypes.GoInt = count((_b.__slice__(_i, _i + _window) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_p != ((0 : stdgo.StdGoTypes.GoInt))) {
                        _t.errorf(("TestCountByteNoMatch(%q, 0) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, _i + _window) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), stdgo.Go.toInterface(_p));
                    };
                    {
                        var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_j < _window, _j++, {
                            _b[(_i + _j : stdgo.StdGoTypes.GoInt)] = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
                        });
                    };
                };
            });
        };
    }
function _valName(_x:stdgo.StdGoTypes.GoInt):stdgo.GoString {
        {
            var _s:stdgo.StdGoTypes.GoInt = _x >> (20i64 : stdgo.StdGoTypes.GoUInt64);
            if (_s << (20i64 : stdgo.StdGoTypes.GoUInt64) == (_x)) {
                return stdgo.fmt.Fmt.sprintf(("%dM" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        {
            var _s:stdgo.StdGoTypes.GoInt = _x >> (10i64 : stdgo.StdGoTypes.GoUInt64);
            if (_s << (10i64 : stdgo.StdGoTypes.GoUInt64) == (_x)) {
                return stdgo.fmt.Fmt.sprintf(("%dK" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        return stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_x));
    }
function _benchBytes(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _sizes:stdgo.Slice<stdgo.StdGoTypes.GoInt>, _f:(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt) -> Void):Void {
        for (__0 => _n in _sizes) {
            if (_isRaceBuilder && (_n > (4096 : stdgo.StdGoTypes.GoInt))) {
                continue;
            };
            _b.run(_valName(_n), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                if ((_bmbuf.length) < _n) {
                    _bmbuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                };
                _b.setBytes((_n : stdgo.StdGoTypes.GoInt64));
                _f(_b, _n);
            });
        };
    }
function benchmarkIndexByte(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexByte));
    }
function benchmarkIndexBytePortable(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexBytePortable));
    }
function _bmIndexByte(_index:(stdgo.Slice<stdgo.StdGoTypes.GoByte>, stdgo.StdGoTypes.GoByte) -> stdgo.StdGoTypes.GoInt):(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt) -> Void {
        return function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = _index(_buf, (120 : stdgo.StdGoTypes.GoUInt8));
                    if (_j != (_n - (1 : stdgo.StdGoTypes.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        };
    }
function benchmarkIndexRune(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRune(indexRune));
    }
function benchmarkIndexRuneASCII(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRuneASCII(indexRune));
    }
function _bmIndexRuneASCII(_index:(stdgo.Slice<stdgo.StdGoTypes.GoByte>, stdgo.StdGoTypes.GoRune) -> stdgo.StdGoTypes.GoInt):(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt) -> Void {
        return function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = _index(_buf, (120 : stdgo.StdGoTypes.GoInt32));
                    if (_j != (_n - (1 : stdgo.StdGoTypes.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        };
    }
function _bmIndexRune(_index:(stdgo.Slice<stdgo.StdGoTypes.GoByte>, stdgo.StdGoTypes.GoRune) -> stdgo.StdGoTypes.GoInt):(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt) -> Void {
        return function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            stdgo.unicode.utf8.Utf8.encodeRune((_buf.__slice__(_n - (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (19990 : stdgo.StdGoTypes.GoInt32));
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = _index(_buf, (19990 : stdgo.StdGoTypes.GoInt32));
                    if (_j != (_n - (3 : stdgo.StdGoTypes.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
            _buf[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        };
    }
function benchmarkEqual(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            var _buf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoUInt8)]);
            var _buf1 = (_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var _buf2 = (_buf.__slice__((1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                    };
                });
            };
        });
        var _sizes = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
10,
10,
(1 : stdgo.StdGoTypes.GoInt),
(6 : stdgo.StdGoTypes.GoInt),
(9 : stdgo.StdGoTypes.GoInt),
(15 : stdgo.StdGoTypes.GoInt),
(16 : stdgo.StdGoTypes.GoInt),
(20 : stdgo.StdGoTypes.GoInt),
(32 : stdgo.StdGoTypes.GoInt),
(4096 : stdgo.StdGoTypes.GoInt),
(4194304 : stdgo.StdGoTypes.GoInt),
(67108864 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        _benchBytes(_b, _sizes, _bmEqual(equal));
    }
function _bmEqual(_equal:(stdgo.Slice<stdgo.StdGoTypes.GoByte>, stdgo.Slice<stdgo.StdGoTypes.GoByte>) -> Bool):(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt) -> Void {
        return function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            if ((_bmbuf.length) < ((2 : stdgo.StdGoTypes.GoInt) * _n)) {
                _bmbuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((2 : stdgo.StdGoTypes.GoInt) * _n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            };
            var _buf1 = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var _buf2 = (_bmbuf.__slice__(_n, (2 : stdgo.StdGoTypes.GoInt) * _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _buf1[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            _buf2[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = _equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                    };
                });
            };
            _buf1[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
            _buf2[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        };
    }
function benchmarkEqualBothUnaligned(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(2, 2, (64 : stdgo.StdGoTypes.GoInt), (4096 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        if (!_isRaceBuilder) {
            _sizes = (_sizes.__append__(...(new stdgo.Slice<stdgo.StdGoTypes.GoInt>(2, 2, (4194304 : stdgo.StdGoTypes.GoInt), (67108864 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>).__toArray__()));
        };
        var _maxSize:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt) * (_sizes[((_sizes.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + (8 : stdgo.StdGoTypes.GoInt));
        if ((_bmbuf.length) < _maxSize) {
            _bmbuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_maxSize : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        };
        for (__0 => _n in _sizes) {
            for (__1 => _off in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(4, 4, (0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
                var _buf1 = (_bmbuf.__slice__(_off, _off + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                var _buf2Start:stdgo.StdGoTypes.GoInt = (_bmbuf.length / (2 : stdgo.StdGoTypes.GoInt)) + _off;
                var _buf2 = (_bmbuf.__slice__(_buf2Start, _buf2Start + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                _buf1[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
                _buf2[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
                _b.run(stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_off)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    _b.setBytes((_n : stdgo.StdGoTypes.GoInt64));
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            var _eq:Bool = equal(_buf1, _buf2);
                            if (!_eq) {
                                _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                            };
                        });
                    };
                });
                _buf1[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                _buf2[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
            };
        };
    }
function benchmarkIndex(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = index(_buf, (_buf.__slice__(_n - (7 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_j != (_n - (7 : stdgo.StdGoTypes.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        });
    }
function benchmarkIndexEasy(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            _buf[(_n - (7 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = index(_buf, (_buf.__slice__(_n - (7 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_j != (_n - (7 : stdgo.StdGoTypes.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
            _buf[(_n - (7 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        });
    }
function benchmarkCount(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = count(_buf, (_buf.__slice__(_n - (7 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_j != ((1 : stdgo.StdGoTypes.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        });
    }
function benchmarkCountEasy(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            _buf[(_n - (7 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = count(_buf, (_buf.__slice__(_n - (7 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_j != ((1 : stdgo.StdGoTypes.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
            _buf[(_n - (7 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        });
    }
function benchmarkCountSingle(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _n:stdgo.StdGoTypes.GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var _step:stdgo.StdGoTypes.GoInt = (8 : stdgo.StdGoTypes.GoInt);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (_buf.length), _i = _i + (_step), {
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
                });
            };
            var _expect:stdgo.StdGoTypes.GoInt = (_buf.length + (_step - (1 : stdgo.StdGoTypes.GoInt))) / _step;
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _j:stdgo.StdGoTypes.GoInt = count(_buf, (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_j != (_expect)) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_expect));
                    };
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (_buf.length), _i++, {
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                });
            };
        });
    }
function testSplit(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testSplit" + " skip function");
        return;
        for (__0 => _tt in _splittests) {
            var _a = splitN((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._n);
            var _x:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.StdGoTypes.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if ((_tt._n == (0 : stdgo.StdGoTypes.GoInt)) || (_a.length == (0 : stdgo.StdGoTypes.GoInt))) {
                continue;
            };
            {
                var _want:stdgo.GoString = _tt._a[((_tt._a.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + ("z" : stdgo.GoString);
                if ((_x : stdgo.GoString) != (_want)) {
                    _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                };
            };
            var _s = join(_a, (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            if ((_s : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if (_tt._n < (0 : stdgo.StdGoTypes.GoInt)) {
                var _b = split((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("Split disagrees withSplitN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
            if ((_a.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                var __0 = _a[(0 : stdgo.StdGoTypes.GoInt)], __1 = _s, _out = __1, _in = __0;
                if ((_in.capacity == _out.capacity) && (stdgo.Go.pointer((_in.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)[(0 : stdgo.StdGoTypes.GoInt)]) == stdgo.Go.pointer((_out.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)[(0 : stdgo.StdGoTypes.GoInt)]))) {
                    _t.errorf(("Join(%#v, %q) didn\'t copy" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._sep));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _splitaftertests) {
            var _a = splitAfterN((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._n);
            var _x:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.StdGoTypes.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            {
                var _want:stdgo.GoString = _tt._a[((_tt._a.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + ("z" : stdgo.GoString);
                if ((_x : stdgo.GoString) != (_want)) {
                    _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                };
            };
            var _s = join(_a, (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            if ((_s : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if (_tt._n < (0 : stdgo.StdGoTypes.GoInt)) {
                var _b = splitAfter((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("SplitAfter disagrees withSplitAfterN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _fieldstests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _a = fields(_b);
            var _x:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.StdGoTypes.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if ((_b : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_tt._s));
            };
            if ((_tt._a.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                {
                    var _want:stdgo.GoString = _tt._a[((_tt._a.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + ("z" : stdgo.GoString);
                    if ((_x : stdgo.GoString) != (_want)) {
                        _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
    }
function testFieldsFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _fieldstests) {
            var _a = fieldsFunc((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isSpace);
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return _c == ((88 : stdgo.StdGoTypes.GoInt32));
        };
        var _fieldsFuncTests:stdgo.Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = (new stdgo.Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(4, 4, (new stdgo.bytes_test.Bytes_test.FieldsTest(stdgo.Go.str(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest(("XX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest(("XXhiXXX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("hi" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest(("aXXbXXXcX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest)) : stdgo.Slice<stdgo.bytes_test.Bytes_test.FieldsTest>);
        for (__1 => _tt in _fieldsFuncTests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _a = fieldsFunc(_b, _pred);
            var _x:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            for (__2 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.StdGoTypes.GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
            };
            if ((_b : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_tt._s));
            };
            if ((_tt._a.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                {
                    var _want:stdgo.GoString = _tt._a[((_tt._a.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + ("z" : stdgo.GoString);
                    if ((_x : stdgo.GoString) != (_want)) {
                        _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
    }
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runStringTests(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _f:stdgo.Slice<stdgo.StdGoTypes.GoByte> -> stdgo.Slice<stdgo.StdGoTypes.GoByte>, _funcName:stdgo.GoString, _testCases:stdgo.Slice<StringTest>):Void {
        for (__0 => _tc in _testCases) {
            var _actual = _f((_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            if ((_actual == null) && (_tc._out != null)) {
                _t.errorf(("%s(%q) = nil; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._out));
            };
            if ((_actual != null) && (_tc._out == null)) {
                _t.errorf(("%s(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual));
            };
            if (!equal(_actual, _tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_r:stdgo.StdGoTypes.GoRune):stdgo.GoString {
        var _runes = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _runes.length.toBasic()) {
            _runes[(_i : stdgo.StdGoTypes.GoInt)] = _r;
        };
        return (_runes : stdgo.GoString);
    }
/**
    // User-defined self-inverse mapping function
**/
function _rot13(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
        {};
        if ((_r >= (97 : stdgo.StdGoTypes.GoInt32)) && (_r <= (122 : stdgo.StdGoTypes.GoInt32))) {
            return (((_r - (97 : stdgo.StdGoTypes.GoInt32)) + (13 : stdgo.StdGoTypes.GoInt32)) % (26 : stdgo.StdGoTypes.GoInt32)) + (97 : stdgo.StdGoTypes.GoInt32);
        };
        if ((_r >= (65 : stdgo.StdGoTypes.GoInt32)) && (_r <= (90 : stdgo.StdGoTypes.GoInt32))) {
            return (((_r - (65 : stdgo.StdGoTypes.GoInt32)) + (13 : stdgo.StdGoTypes.GoInt32)) % (26 : stdgo.StdGoTypes.GoInt32)) + (65 : stdgo.StdGoTypes.GoInt32);
        };
        return _r;
    }
function testMap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _a:stdgo.GoString = _tenRunes((97 : stdgo.StdGoTypes.GoInt32));
        var _maxRune:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return (1114111 : stdgo.StdGoTypes.GoInt32);
        };
        var _m = map(_maxRune, (_a : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        var _expect:stdgo.GoString = _tenRunes((1114111 : stdgo.StdGoTypes.GoInt32));
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _minRune:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return (97 : stdgo.StdGoTypes.GoInt32);
        };
        _m = map(_minRune, (_tenRunes((1114111 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _expect = _a;
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map(_rot13, (("a to zed" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _expect = ("n gb mrq" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, (("a to zed" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)));
        _expect = ("a to zed" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _dropNotLatin:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (-1 : stdgo.StdGoTypes.GoInt32);
        };
        _m = map(_dropNotLatin, (("Hello, 세계" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _expect = ("Hello" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _invalidRune:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return (1114112 : stdgo.StdGoTypes.GoInt32);
        };
        _m = map(_invalidRune, (("x" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _expect = ("�" : stdgo.GoString);
        if ((_m : stdgo.GoString) != (_expect)) {
            _t.errorf(("invalidRune: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toUpper, ("ToUpper" : stdgo.GoString), _upperTests);
    }
function testToLower(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toLower, ("ToLower" : stdgo.GoString), _lowerTests);
    }
function benchmarkToUpper(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _tc in _upperTests) {
            var _tin = (_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            _b.run(_tc._in, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var _actual = toUpper(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(("ToUpper(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _tc in _lowerTests) {
            var _tin = (_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            _b.run(_tc._in, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var _actual = toLower(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(("ToLower(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function testToValidUTF8(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tc in _toValidUTF8Tests) {
            var _got = toValidUTF8((_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tc._repl : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            if (!equal(_got, (_tc._out : stdgo.Slice<stdgo.StdGoTypes.GoByte>))) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._repl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function testTrimSpace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, trimSpace, ("TrimSpace" : stdgo.GoString), _trimSpaceTests);
    }
function testRepeat(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in repeatTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _tout = (_tt._out : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _a = repeat(_tin, _tt._count);
            if (!equal(_a, _tout)) {
                _t.errorf(("Repeat(%q, %d) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_tt._count), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tout));
                continue;
            };
        };
    }
function _repeat(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _count:stdgo.StdGoTypes.GoInt):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err:stdgo.Error = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            {
                                final __type__ = _r;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                    var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                    _err = _v;
                                } else {
                                    var _v:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                                    _err = stdgo.fmt.Fmt.errorf(("%s" : stdgo.GoString), _v);
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
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
/**
    // See Issue golang.org/issue/16237
**/
function testRepeatCatchesOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = {
            var s:stdgo.GoArray<T__struct_4> = new stdgo.GoArray<T__struct_4>(...[for (i in 0 ... 7) ({ _s : ("" : stdgo.GoString), _count : (0 : stdgo.StdGoTypes.GoInt), _errStr : ("" : stdgo.GoString) } : T__struct_4)]);
            s[0] = ({ _s : ("--" : stdgo.GoString), _count : (-2147483647 : stdgo.StdGoTypes.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_4);
            s[1] = ({ _s : stdgo.Go.str(), _count : ((2147483647u32 : stdgo.StdGoTypes.GoUInt) : stdgo.StdGoTypes.GoInt), _errStr : stdgo.Go.str() } : T__struct_4);
            s[2] = ({ _s : ("-" : stdgo.GoString), _count : (10 : stdgo.StdGoTypes.GoInt), _errStr : stdgo.Go.str() } : T__struct_4);
            s[3] = ({ _s : ("gopher" : stdgo.GoString), _count : (0 : stdgo.StdGoTypes.GoInt), _errStr : stdgo.Go.str() } : T__struct_4);
            s[4] = ({ _s : ("-" : stdgo.GoString), _count : (-1 : stdgo.StdGoTypes.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_4);
            s[5] = ({ _s : ("--" : stdgo.GoString), _count : (-102 : stdgo.StdGoTypes.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_4);
            s[6] = ({ _s : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((255 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() : stdgo.GoString), _count : ((16843010u32 : stdgo.StdGoTypes.GoUInt) : stdgo.StdGoTypes.GoInt), _errStr : ("overflow" : stdgo.GoString) } : T__struct_4);
            s;
        };
        for (_i => _tt in _tests) {
            var _err:stdgo.Error = _repeat((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._count);
            if (_tt._errStr == (stdgo.Go.str())) {
                if (_err != null) {
                    _t.errorf(("#%d panicked %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), _tt._errStr)) {
                _t.errorf(("#%d expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._errStr), stdgo.Go.toInterface(_err));
            };
        };
    }
function _runesEqual(_a:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _b:stdgo.Slice<stdgo.StdGoTypes.GoRune>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        for (_i => _r in _a) {
            if (_r != (_b[(_i : stdgo.StdGoTypes.GoInt)])) {
                return false;
            };
        };
        return true;
    }
function testRunes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in runesTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            var _a = runes(_tin);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(("Runes(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:stdgo.GoString = (_a : stdgo.GoString);
                if (_s != (_tt._in)) {
                    _t.errorf(("string(Runes(%q)) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tin));
                };
            };
        };
    }
function testTrim(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _toFn:stdgo.GoString -> { var _0 : (stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : (stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; } = function(_name:stdgo.GoString):{ var _0 : (stdgo.Slice<stdgo.StdGoTypes.GoByte>, stdgo.GoString) -> stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : (stdgo.Slice<stdgo.StdGoTypes.GoByte>, stdgo.Slice<stdgo.StdGoTypes.GoByte>) -> stdgo.Slice<stdgo.StdGoTypes.GoByte>; } {
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
        };
        for (__0 => _tc in _trimTests) {
            var _name:stdgo.GoString = _tc._f;
            var __tmp__ = _toFn(_name), _f:(stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._1;
            if ((_f == null) && (_fb == null)) {
                continue;
            };
            var _actual:stdgo.GoString = ("" : stdgo.GoString);
            if (_f != null) {
                _actual = (_f((_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tc._arg) : stdgo.GoString);
            } else {
                _actual = (_fb((_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tc._arg : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.GoString);
            };
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
        for (__1 => _tc in _trimNilTests) {
            var _name:stdgo.GoString = _tc._f;
            var __tmp__ = _toFn(_name), _f:(stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) -> stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._1;
            if ((_f == null) && (_fb == null)) {
                continue;
            };
            var _actual:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            if (_f != null) {
                _actual = _f(_tc._in, _tc._arg);
            } else {
                _actual = _fb(_tc._in, (_tc._arg : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            };
            var _report = function(_s:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.GoString {
                if (_s == null) {
                    return ("nil" : stdgo.GoString);
                } else {
                    return stdgo.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            if ((_actual.length) != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("%s(%s, %q) returned non-empty value" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_report(_tc._in)), stdgo.Go.toInterface(_tc._arg));
            } else {
                var _actualNil:Bool = _actual == null;
                var _outNil:Bool = _tc._out == null;
                if (_actualNil != (_outNil)) {
                    _t.errorf(("%s(%s, %q) got nil %t; want nil %t" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_report(_tc._in)), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actualNil), stdgo.Go.toInterface(_outNil));
                };
            };
        };
    }
function _not(_p:T_predicate):T_predicate {
        return (new T_predicate(function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !_p._f(_r);
        }, ("not " : stdgo.GoString) + _p._name) : T_predicate);
    }
function testTrimFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tc in _trimFuncTests) {
            var _trimmers = (new stdgo.Slice<T__struct_5>(3, 3, ({ _name : ("TrimFunc" : stdgo.GoString), _trim : trimFunc, _out : _tc._trimOut } : T__struct_5), ({ _name : ("TrimLeftFunc" : stdgo.GoString), _trim : trimLeftFunc, _out : _tc._leftOut } : T__struct_5), ({ _name : ("TrimRightFunc" : stdgo.GoString), _trim : trimRightFunc, _out : _tc._rightOut } : T__struct_5)) : stdgo.Slice<T__struct_5>);
            for (__1 => _trimmer in _trimmers) {
                var _actual = _trimmer._trim((_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tc._f._f);
                if ((_actual == null) && (_trimmer._out != null)) {
                    _t.errorf(("%s(%q, %q) = nil; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_trimmer._out));
                };
                if ((_actual != null) && (_trimmer._out == null)) {
                    _t.errorf(("%s(%q, %q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual));
                };
                if (!equal(_actual, _trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tc in _indexFuncTests) {
            var _first:stdgo.StdGoTypes.GoInt = indexFunc((_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tc._f._f);
            if (_first != (_tc._first)) {
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_first), stdgo.Go.toInterface(_tc._first));
            };
            var _last:stdgo.StdGoTypes.GoInt = lastIndexFunc((_tc._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tc._f._f);
            if (_last != (_tc._last)) {
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_last), stdgo.Go.toInterface(_tc._last));
            };
        };
    }
function testReplace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in replaceTests) {
            var _in = ((_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>).__append__(...("<spare>" : stdgo.GoString).__toArray__()));
            _in = (_in.__slice__(0, (_tt._in.length)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var _out = replace(_in, (_tt._old : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._new : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._n);
            {
                var _s:stdgo.GoString = (_out : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
            if ((_in.capacity == _out.capacity) && (stdgo.Go.pointer((_in.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)[(0 : stdgo.StdGoTypes.GoInt)]) == stdgo.Go.pointer((_out.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)[(0 : stdgo.StdGoTypes.GoInt)]))) {
                _t.errorf(("Replace(%q, %q, %q, %d) didn\'t copy" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n));
            };
            if (_tt._n == ((-1 : stdgo.StdGoTypes.GoInt))) {
                var _out = replaceAll(_in, (_tt._old : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._new : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                {
                    var _s:stdgo.GoString = (_out : stdgo.GoString);
                    if (_s != (_tt._out)) {
                        _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
function testTitle(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in titleTests) {
            {
                var _s:stdgo.GoString = (title((_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Title(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testToTitle(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in toTitleTests) {
            {
                var _s:stdgo.GoString = (toTitle((_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("ToTitle(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testEqualFold(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._t : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold((_tt._t : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testCut(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _cutTests) {
            {
                var __tmp__ = cut((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _before:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
                if ((((_before : stdgo.GoString) != _tt._before) || ((_after : stdgo.GoString) != _tt._after)) || (_found != _tt._found)) {
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutPrefix(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _cutPrefixTests) {
            {
                var __tmp__ = cutPrefix((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _after:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_after : stdgo.GoString) != _tt._after) || (_found != _tt._found)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutSuffix(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _cutSuffixTests) {
            {
                var __tmp__ = cutSuffix((_tt._s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_tt._sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _before:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_before : stdgo.GoString) != _tt._before) || (_found != _tt._found)) {
                    _t.errorf(("CutSuffix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testBufferGrowNegative(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Grow(-1) should have panicked" : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            _b.grow((-1 : stdgo.StdGoTypes.GoInt));
            for (defer in __deferstack__) {
                defer();
            };
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testBufferTruncateNegative(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Truncate(-1) should have panicked" : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            _b.truncate((-1 : stdgo.StdGoTypes.GoInt));
            for (defer in __deferstack__) {
                defer();
            };
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testBufferTruncateOutOfRange(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Truncate(20) should have panicked" : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            _b.write(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            _b.truncate((20 : stdgo.StdGoTypes.GoInt));
            for (defer in __deferstack__) {
                defer();
            };
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testContains(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _containsTests) {
            {
                var _got:Bool = contains(_tt._b, _tt._subslice);
                if (_got != (_tt._want)) {
                    _t.errorf(("Contains(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_tt._subslice), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testContainsAny(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _ct in containsAnyTests) {
            if (containsAny(_ct._b, _ct._substr) != (_ct._expected)) {
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsRune(_ct._b, _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsFunc(_ct._b, function(_r:stdgo.StdGoTypes.GoRune):Bool {
                return _ct._r == (_r);
            }) != (_ct._expected)) {
                _t.errorf(("ContainsFunc(%q, func(%q)) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function benchmarkFields(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (16 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (1048576 : stdgo.StdGoTypes.GoInt), _j = _j << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.StdGoTypes.GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    fields(_data);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkFieldsFunc(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (16 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (1048576 : stdgo.StdGoTypes.GoInt), _j = _j << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.StdGoTypes.GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    fieldsFunc(_data, stdgo.unicode.Unicode.isSpace);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimSpace(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_14>(4, 4, ({ _name : ("NoTrim" : stdgo.GoString), _input : (("typical" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>) } : T__struct_14), ({ _name : ("ASCII" : stdgo.GoString), _input : (("  foo bar  " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>) } : T__struct_14), ({ _name : ("SomeNonASCII" : stdgo.GoString), _input : (("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>) } : T__struct_14), ({ _name : ("JustNonASCII" : stdgo.GoString), _input : (("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>) } : T__struct_14)) : stdgo.Slice<T__struct_14>);
        for (__0 => _test in _tests) {
            _b.run(_test._name, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        trimSpace(_test._input);
                    });
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_14>(3, 3, ({ _name : ("Valid" : stdgo.GoString), _input : (("typical" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>) } : T__struct_14), ({ _name : ("InvalidASCII" : stdgo.GoString), _input : (stdgo.Go.str("foo", 255, "bar") : stdgo.Slice<stdgo.StdGoTypes.GoByte>) } : T__struct_14), ({ _name : ("InvalidNonASCII" : stdgo.GoString), _input : (stdgo.Go.str("日本語", 255, "日本語") : stdgo.Slice<stdgo.StdGoTypes.GoByte>) } : T__struct_14)) : stdgo.Slice<T__struct_14>);
        var _replacement = (("�" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b.resetTimer();
        for (__0 => _test in _tests) {
            _b.run(_test._name, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        toValidUTF8(_test._input, _replacement);
                    });
                };
            });
        };
    }
function _makeBenchInputHard():stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _tokens = (new stdgo.GoArray<stdgo.GoString>(("<a>" : stdgo.GoString), ("<p>" : stdgo.GoString), ("<b>" : stdgo.GoString), ("<strong>" : stdgo.GoString), ("</a>" : stdgo.GoString), ("</p>" : stdgo.GoString), ("</b>" : stdgo.GoString), ("</strong>" : stdgo.GoString), ("hello" : stdgo.GoString), ("world" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>);
        var _x = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (1048576 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        while (true) {
            var _i:stdgo.StdGoTypes.GoInt = stdgo.math.rand.Rand.intn((_tokens.length));
            if ((_x.length + _tokens[(_i : stdgo.StdGoTypes.GoInt)].length) >= (1048576 : stdgo.StdGoTypes.GoInt)) {
                break;
            };
            _x = (_x.__append__(..._tokens[(_i : stdgo.StdGoTypes.GoInt)].__toArray__()));
        };
        return _x;
    }
function _benchmarkIndexHard(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _sep:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                index(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkLastIndexHard(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _sep:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                lastIndex(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkCountHard(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _sep:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                count(_benchInputHard, _sep);
            });
        };
    }
function benchmarkIndexHard1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkIndexHard2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("</pre>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkIndexHard3(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<b>hello world</b>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkIndexHard4(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<pre><b>hello</b><strong>world</strong></pre>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkLastIndexHard1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("<>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkLastIndexHard2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("</pre>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkLastIndexHard3(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("<b>hello world</b>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkCountHard1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("<>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkCountHard2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("</pre>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkCountHard3(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("<b>hello world</b>" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
function benchmarkSplitEmptySeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("/" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("/" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, (10 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, (10 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkRepeat(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                repeat((("-" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (80 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkRepeatLarge(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _s = repeat((("@" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (8192 : stdgo.StdGoTypes.GoInt));
        {
            var _j:stdgo.StdGoTypes.GoInt = (8 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_j <= (30 : stdgo.StdGoTypes.GoInt), _j++, {
                for (__0 => _k in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (1 : stdgo.StdGoTypes.GoInt), (16 : stdgo.StdGoTypes.GoInt), (4097 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
                    var _s = (_s.__slice__(0, _k) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                    var _n:stdgo.StdGoTypes.GoInt = ((1 : stdgo.StdGoTypes.GoInt) << _j) / _k;
                    if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
                        continue;
                    };
                    _b.run(stdgo.fmt.Fmt.sprintf(("%d/%d" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt) << _j), stdgo.Go.toInterface(_k)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < _b.n, _i++, {
                                repeat(_s, _n);
                            });
                        };
                        _b.setBytes((_n * (_s.length) : stdgo.StdGoTypes.GoInt64));
                    });
                };
            });
        };
    }
function benchmarkBytesCompare(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _n:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_n <= (2048 : stdgo.StdGoTypes.GoInt), _n = _n << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                _b.run(stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_n)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    var _x:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                    var _y:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _n, _i++, {
                            _x[(_i : stdgo.StdGoTypes.GoInt)] = (97 : stdgo.StdGoTypes.GoUInt8);
                        });
                    };
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _n, _i++, {
                            _y[(_i : stdgo.StdGoTypes.GoInt)] = (97 : stdgo.StdGoTypes.GoUInt8);
                        });
                    };
                    _b.resetTimer();
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            compare(_x, _y);
                        });
                    };
                });
            });
        };
    }
function benchmarkIndexAnyASCII(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (35 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (2048 : stdgo.StdGoTypes.GoInt));
        var _cs:stdgo.GoString = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    indexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkIndexAnyUTF8(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (35 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (2048 : stdgo.StdGoTypes.GoInt));
        var _cs:stdgo.GoString = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : stdgo.GoString);
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    indexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyASCII(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (35 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (2048 : stdgo.StdGoTypes.GoInt));
        var _cs:stdgo.GoString = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyUTF8(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (35 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (2048 : stdgo.StdGoTypes.GoInt));
        var _cs:stdgo.GoString = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : stdgo.GoString);
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimASCII(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _cs:stdgo.GoString = ("0123456789abcdef" : stdgo.GoString);
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (4096 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (16 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            var _x = repeat(((_cs.__slice__(0, _j) : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _k);
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    trim((_x.__slice__(0, _k) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimByte(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x = (("  the quick brown fox   " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                trim(_x, (" " : stdgo.GoString));
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _key = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (1 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        for (__0 => _skip in (new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((2 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt), (8 : stdgo.StdGoTypes.GoInt), (16 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("IndexPeriodic%d" : stdgo.GoString), stdgo.Go.toInterface(_skip)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((65536 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (_buf.length), _i = _i + (_skip), {
                        _buf[(_i : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
                    });
                };
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        index(_buf, _key);
                    });
                };
            });
        };
    }
function testClone(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testClone" + " skip function");
        return;
        var _cloneTests:stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>> = (new stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>(7, 7, ((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), clone((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), ((stdgo.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoByte>).__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ((stdgo.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoByte>).__slice__(0, (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (("short" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>);
        for (__0 => _input in _cloneTests) {
            var _clone = clone(_input);
            if (!equal(_clone, _input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_clone), stdgo.Go.toInterface(_input));
            };
            if ((_input == null) && (_clone != null)) {
                _t.errorf(("Clone(%#v) return value should be equal to nil slice." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if ((_input != null) && (_clone == null)) {
                _t.errorf(("Clone(%#v) return value should not be equal to nil slice." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if ((_input.capacity != (0 : stdgo.StdGoTypes.GoInt)) && (stdgo.unsafe.Unsafe.sliceData(_input) == stdgo.unsafe.Unsafe.sliceData(_clone))) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
        };
    }
function testCompare(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _compareTests) {
            var _numShifts:stdgo.StdGoTypes.GoInt = (16 : stdgo.StdGoTypes.GoInt);
            var _buffer = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_tt._b.length) + _numShifts : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            {
                var _offset:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_offset <= _numShifts, _offset++, {
                    var _shiftedB = (_buffer.__slice__(_offset, (_tt._b.length) + _offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                    stdgo.Go.copySlice(_shiftedB, _tt._b);
                    var _cmp:stdgo.StdGoTypes.GoInt = compare(_tt._a, _shiftedB);
                    if (_cmp != (_tt._i)) {
                        _t.errorf(("Compare(%q, %q), offset %d = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_cmp), stdgo.Go.toInterface(_tt._i));
                    };
                });
            };
        };
    }
function testCompareIdenticalSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        if (compare(_b, _b) != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("b != b" : stdgo.GoString)));
        };
        if (compare(_b, (_b.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("b > b[:1] failed" : stdgo.GoString)));
        };
    }
function testCompareBytes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testCompareBytes" + " skip function");
        return;
        var _lengths = new stdgo.Slice<stdgo.StdGoTypes.GoInt>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (128 : stdgo.StdGoTypes.GoInt), _i++, {
                _lengths = (_lengths.__append__(_i));
            });
        };
        _lengths = (_lengths.__append__((256 : stdgo.StdGoTypes.GoInt), (512 : stdgo.StdGoTypes.GoInt), (1024 : stdgo.StdGoTypes.GoInt), (1333 : stdgo.StdGoTypes.GoInt), (4095 : stdgo.StdGoTypes.GoInt), (4096 : stdgo.StdGoTypes.GoInt), (4097 : stdgo.StdGoTypes.GoInt)));
        if (!stdgo.testing.Testing.short()) {
            _lengths = (_lengths.__append__((65535 : stdgo.StdGoTypes.GoInt), (65536 : stdgo.StdGoTypes.GoInt), (65537 : stdgo.StdGoTypes.GoInt), (99999 : stdgo.StdGoTypes.GoInt)));
        };
        var _n:stdgo.StdGoTypes.GoInt = _lengths[((_lengths.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _len in _lengths) {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _len, _i++, {
                    _a[(_i : stdgo.StdGoTypes.GoInt)] = ((1 : stdgo.StdGoTypes.GoInt) + (((31 : stdgo.StdGoTypes.GoInt) * _i) % (254 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoByte);
                    _b[(_i : stdgo.StdGoTypes.GoInt)] = ((1 : stdgo.StdGoTypes.GoInt) + (((31 : stdgo.StdGoTypes.GoInt) * _i) % (254 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoByte);
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = _len;
                stdgo.Go.cfor(_i <= _n, _i++, {
                    _a[(_i : stdgo.StdGoTypes.GoInt)] = (8 : stdgo.StdGoTypes.GoUInt8);
                    _b[(_i : stdgo.StdGoTypes.GoInt)] = (9 : stdgo.StdGoTypes.GoUInt8);
                });
            };
            var _cmp:stdgo.StdGoTypes.GoInt = compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            if (_cmp != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("CompareIdentical(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
            };
            if (_len > (0 : stdgo.StdGoTypes.GoInt)) {
                _cmp = compare((_a.__slice__(0, _len - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                if (_cmp != ((-1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("CompareAshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
                _cmp = compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(0, _len - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                if (_cmp != ((1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("CompareBshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
            };
            {
                var _k:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_k < _len, _k++, {
                    _b[(_k : stdgo.StdGoTypes.GoInt)] = _a[(_k : stdgo.StdGoTypes.GoInt)] - (1 : stdgo.StdGoTypes.GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_cmp != ((1 : stdgo.StdGoTypes.GoInt))) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.StdGoTypes.GoInt)] = _a[(_k : stdgo.StdGoTypes.GoInt)] + (1 : stdgo.StdGoTypes.GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_cmp != ((-1 : stdgo.StdGoTypes.GoInt))) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.StdGoTypes.GoInt)] = _a[(_k : stdgo.StdGoTypes.GoInt)];
                });
            };
        };
    }
function testEndianBaseCompare(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((512 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((512 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (512 : stdgo.StdGoTypes.GoInt), _i++, {
                _a[(_i : stdgo.StdGoTypes.GoInt)] = ((1 : stdgo.StdGoTypes.GoInt) + (((31 : stdgo.StdGoTypes.GoInt) * _i) % (254 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoByte);
                _b[(_i : stdgo.StdGoTypes.GoInt)] = ((1 : stdgo.StdGoTypes.GoInt) + (((31 : stdgo.StdGoTypes.GoInt) * _i) % (254 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoByte);
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (512 : stdgo.StdGoTypes.GoInt), _i = _i << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (_i - (1 : stdgo.StdGoTypes.GoInt)), _j++, {
                        _a[(_j : stdgo.StdGoTypes.GoInt)] = _b[(_j : stdgo.StdGoTypes.GoInt)] - (1 : stdgo.StdGoTypes.GoUInt8);
                        _a[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _b[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + (1 : stdgo.StdGoTypes.GoUInt8);
                        var _cmp:stdgo.StdGoTypes.GoInt = compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                        if (_cmp != ((-1 : stdgo.StdGoTypes.GoInt))) {
                            _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_cmp));
                        };
                        _a[(_j : stdgo.StdGoTypes.GoInt)] = _b[(_j : stdgo.StdGoTypes.GoInt)] + (1 : stdgo.StdGoTypes.GoUInt8);
                        _a[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _b[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] - (1 : stdgo.StdGoTypes.GoUInt8);
                        _cmp = compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                        if (_cmp != ((1 : stdgo.StdGoTypes.GoInt))) {
                            _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_cmp));
                        };
                        _a[(_j : stdgo.StdGoTypes.GoInt)] = _b[(_j : stdgo.StdGoTypes.GoInt)];
                        _a[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _b[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
                    });
                };
            });
        };
    }
function benchmarkCompareBytesEqual(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _b2 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesToNil(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _b2:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((1 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 > b2 failed" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesEmpty(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _b2 = _b1;
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesIdentical(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _b2 = _b1;
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesSameLength(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _b2 = (("Hello, Gophers" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 < b2 failed" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesDifferentLength(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _b2 = (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 < b2 failed" : stdgo.GoString)));
                };
            });
        };
    }
function _benchmarkCompareBytesBigUnaligned(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _offset:stdgo.StdGoTypes.GoInt):Void {
        _b.stopTimer();
        var _b1 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (1048576 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        while ((_b1.length) < (1048576 : stdgo.StdGoTypes.GoInt)) {
            _b1 = (_b1.__append__(...("Hello Gophers!" : stdgo.GoString).__toArray__()));
        };
        var _b2 = (((("12345678" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>).__slice__(0, _offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__append__(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_j < _b.n, _j++, {
                if (compare(_b1, (_b2.__slice__(_offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : stdgo.StdGoTypes.GoInt64));
    }
function benchmarkCompareBytesBigUnaligned(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (8 : stdgo.StdGoTypes.GoInt), _i++, {
                _b.run(stdgo.fmt.Fmt.sprintf(("offset=%d" : stdgo.GoString), stdgo.Go.toInterface(_i)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    _benchmarkCompareBytesBigUnaligned(_b, _i);
                });
            });
        };
    }
function _benchmarkCompareBytesBigBothUnaligned(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _offset:stdgo.StdGoTypes.GoInt):Void {
        _b.stopTimer();
        var _pattern = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _b1 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (1048576 : stdgo.StdGoTypes.GoInt) + (_pattern.length)).__setNumber32__();
        while ((_b1.length) < (1048576 : stdgo.StdGoTypes.GoInt)) {
            _b1 = (_b1.__append__(..._pattern.__toArray__()));
        };
        var _b2 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_b1.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        stdgo.Go.copySlice(_b2, _b1);
        _b.startTimer();
        {
            var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_j < _b.n, _j++, {
                if (compare((_b1.__slice__(_offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b2.__slice__(_offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes(((_b1.__slice__(_offset) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).length : stdgo.StdGoTypes.GoInt64));
    }
function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (8 : stdgo.StdGoTypes.GoInt), _i++, {
                _b.run(stdgo.fmt.Fmt.sprintf(("offset=%d" : stdgo.GoString), stdgo.Go.toInterface(_i)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    _benchmarkCompareBytesBigBothUnaligned(_b, _i);
                });
            });
        };
    }
function benchmarkCompareBytesBig(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.stopTimer();
        var _b1 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (1048576 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        while ((_b1.length) < (1048576 : stdgo.StdGoTypes.GoInt)) {
            _b1 = (_b1.__append__(...("Hello Gophers!" : stdgo.GoString).__toArray__()));
        };
        var _b2 = ((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__append__(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : stdgo.StdGoTypes.GoInt64));
    }
function benchmarkCompareBytesBigIdentical(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.stopTimer();
        var _b1 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (1048576 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        while ((_b1.length) < (1048576 : stdgo.StdGoTypes.GoInt)) {
            _b1 = (_b1.__append__(...("Hello Gophers!" : stdgo.GoString).__toArray__()));
        };
        var _b2 = _b1;
        _b.startTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 != b2" : stdgo.GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : stdgo.StdGoTypes.GoInt64));
    }
function exampleBuffer():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _b.write((("Hello " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), ("world!" : stdgo.GoString));
        _b.writeTo(stdgo.Go.asInterface(stdgo.os.Os.stdout));
    }
function exampleBuffer_reader():Void {
        var _buf = stdgo.bytes.Bytes.newBufferString(("R29waGVycyBydWxlIQ==" : stdgo.GoString));
        var _dec:stdgo.io.Io.Reader = stdgo.encoding.base64.Base64.newDecoder(stdgo.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(_buf));
        stdgo.io.Io.copy(stdgo.Go.asInterface(stdgo.os.Os.stdout), _dec);
    }
function exampleBuffer_Bytes():Void {
        var _buf:stdgo.bytes.Bytes.Buffer = (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer);
        _buf.write((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
11,
11,
(104 : stdgo.StdGoTypes.GoUInt8),
(101 : stdgo.StdGoTypes.GoUInt8),
(108 : stdgo.StdGoTypes.GoUInt8),
(108 : stdgo.StdGoTypes.GoUInt8),
(111 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(119 : stdgo.StdGoTypes.GoUInt8),
(111 : stdgo.StdGoTypes.GoUInt8),
(114 : stdgo.StdGoTypes.GoUInt8),
(108 : stdgo.StdGoTypes.GoUInt8),
(100 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        stdgo.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_AvailableBuffer():Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (4 : stdgo.StdGoTypes.GoInt), _i++, {
                var _b = _buf.availableBuffer();
                _b = stdgo.strconv.Strconv.appendInt(_b, (_i : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
                _b = (_b.__append__((32 : stdgo.StdGoTypes.GoUInt8)));
                _buf.write(_b);
            });
        };
        stdgo.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_Cap():Void {
        var _buf1 = stdgo.bytes.Bytes.newBuffer(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
        var _buf2 = stdgo.bytes.Bytes.newBuffer(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (10 : stdgo.StdGoTypes.GoInt)).__setNumber32__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_buf1.cap()));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_buf2.cap()));
    }
function exampleBuffer_Grow():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.StdGoTypes.GoInt));
        var _bb = _b.bytes();
        _b.write((("64 bytes or fewer" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        stdgo.fmt.Fmt.printf(("%q" : stdgo.GoString), stdgo.Go.toInterface((_bb.__slice__(0, _b.len()) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
    }
function exampleBuffer_Len():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.StdGoTypes.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        stdgo.fmt.Fmt.printf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_b.len()));
    }
function exampleBuffer_Next():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.StdGoTypes.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)));
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)));
    }
function exampleBuffer_Read():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.StdGoTypes.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        var _rdbuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = _b.read(_rdbuf), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_n));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_rdbuf : stdgo.GoString)));
    }
function exampleBuffer_ReadByte():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _b.grow((64 : stdgo.StdGoTypes.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        var __tmp__ = _b.readByte(), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_c));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
    }
function exampleClone():Void {
        var _b = (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _clone = stdgo.bytes.Bytes.clone(_b);
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
        _clone[(0 : stdgo.StdGoTypes.GoInt)] = (100 : stdgo.StdGoTypes.GoUInt8);
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
    }
function exampleCompare():Void {
        var __0:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), __1:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _b:stdgo.Slice<stdgo.StdGoTypes.GoByte> = __1, _a:stdgo.Slice<stdgo.StdGoTypes.GoByte> = __0;
        if (stdgo.bytes.Bytes.compare(_a, _b) < (0 : stdgo.StdGoTypes.GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) <= (0 : stdgo.StdGoTypes.GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) > (0 : stdgo.StdGoTypes.GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) >= (0 : stdgo.StdGoTypes.GoInt)) {};
        if (stdgo.bytes.Bytes.equal(_a, _b)) {};
        if (!stdgo.bytes.Bytes.equal(_a, _b)) {};
    }
function exampleCompare_search():Void {
        var _needle:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _haystack:stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>);
        var _i:stdgo.StdGoTypes.GoInt = stdgo.sort.Sort.search((_haystack.length), function(_i:stdgo.StdGoTypes.GoInt):Bool {
            return stdgo.bytes.Bytes.compare(_haystack[(_i : stdgo.StdGoTypes.GoInt)], _needle) >= (0 : stdgo.StdGoTypes.GoInt);
        });
        if ((_i < _haystack.length) && stdgo.bytes.Bytes.equal(_haystack[(_i : stdgo.StdGoTypes.GoInt)], _needle)) {};
    }
function exampleContains():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("foo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.contains((stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("fÄo!" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("去是伟大的." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.str())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsAny((stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.str())));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (102 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (246 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (22823 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (33 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.containsRune((stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (64 : stdgo.StdGoTypes.GoInt32))));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.count((("cheese" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("e" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.count((("five" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleCut():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cut((_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _before:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("Badger" : stdgo.GoString));
    }
function exampleCutPrefix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cutPrefix((_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _after:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
function exampleCutSuffix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cutSuffix((_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_sep : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _before:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
function exampleEqual():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("C++" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.equalFold((("Go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.fields((("  foo bar  baz   " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleFieldsFunc():Void {
        var _f:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.fieldsFunc((("  foo1;bar2,baz3..." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("Go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("C" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("O" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("Ami" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("ken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("dmr" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ((107 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ((103 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte))));
    }
function exampleIndexFunc():Void {
        var _f:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _f)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _f)));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexAny((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("aeiouy" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexAny((("crwth" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("aeiouy" : stdgo.GoString))));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (107 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (100 : stdgo.StdGoTypes.GoInt32))));
    }
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>(3, 3, (("foo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("baz" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>);
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.join(_s, ((", " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.index((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("go" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("rodent" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("MüQp" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go 地鼠" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("地大" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("z,!." : stdgo.GoString))));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ((103 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ((114 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ((122 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte))));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isLetter)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isPunct)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isNumber)));
    }
function exampleMap():Void {
        var _rot13:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            if ((_r >= (65 : stdgo.StdGoTypes.GoInt32)) && (_r <= (90 : stdgo.StdGoTypes.GoInt32))) {
                return (65 : stdgo.StdGoTypes.GoInt32) + (((_r - (65 : stdgo.StdGoTypes.GoInt32)) + (13 : stdgo.StdGoTypes.GoInt32)) % (26 : stdgo.StdGoTypes.GoInt32));
            } else if ((_r >= (97 : stdgo.StdGoTypes.GoInt32)) && (_r <= (122 : stdgo.StdGoTypes.GoInt32))) {
                return (97 : stdgo.StdGoTypes.GoInt32) + (((_r - (97 : stdgo.StdGoTypes.GoInt32)) + (13 : stdgo.StdGoTypes.GoInt32)) % (26 : stdgo.StdGoTypes.GoInt32));
            };
            return _r;
        };
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.map(_rot13, (("\'Twas brillig and the slithy gopher..." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleReader_Len():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.newReader((("Hi!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)).len()));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.newReader((("こんにちは!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)).len()));
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.printf(("ba%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.repeat((("na" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (2 : stdgo.StdGoTypes.GoInt))));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("k" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("ky" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (-1 : stdgo.StdGoTypes.GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.replaceAll((("oink oink oink" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("oink" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("moo" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleRunes():Void {
        var _rs = stdgo.bytes.Bytes.runes((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        for (__0 => _r in _rs) {
            stdgo.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split((("a man a plan a canal panama" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("a " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split(((" xyz " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.split((stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("Bernardo O\'Higgins" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (2 : stdgo.StdGoTypes.GoInt))));
        var _z = stdgo.bytes.Bytes.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (0 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.splitAfter((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.splitAfterN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (2 : stdgo.StdGoTypes.GoInt))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.title((("her royal highness" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toTitle((("loud noises" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toTitle((("хлеб" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleToTitleSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _totitle = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Original : " : stdgo.GoString) + (_str : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ToTitle : " : stdgo.GoString) + (_totitle : stdgo.GoString)));
    }
function exampleToValidUTF8():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toValidUTF8((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("�" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toValidUTF8((stdgo.Go.str("a", 255, "b", 192, 175, "c", 255) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (stdgo.Go.str() : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toValidUTF8((stdgo.Go.str(237, 160, 128) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.printf(("[%q]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.trim(((" !!! Achtung! Achtung! !!! " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("! " : stdgo.GoString))));
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("\"go-gopher!\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeft((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
function exampleTrimPrefix():Void {
        var _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (("Goodbye,, world!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("Goodbye," : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("See ya," : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        stdgo.fmt.Fmt.printf(("Hello%s" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.trimSpace(((" \t\n a lone gopher \n\t\r\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleTrimSuffix():Void {
        var _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (("Hello, goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _b = (_b.__append__(...stdgo.bytes.Bytes.trimSuffix((("world!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("x!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)).__toArray__()));
        stdgo.os.Os.stdout.write(_b);
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRight((("453gopher8257" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), ("0123456789" : stdgo.GoString)) : stdgo.GoString)));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isLetter) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isPunct) : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.unicode.Unicode.isNumber) : stdgo.GoString)));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toLower((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleToLowerSpecial():Void {
        var _str = (("AHOJ VÝVOJÁRİ GOLANG" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _totitle = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Original : " : stdgo.GoString) + (_str : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ToLower : " : stdgo.GoString) + (_totitle : stdgo.GoString)));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.bytes.Bytes.toUpper((("Gopher" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>))));
    }
function exampleToUpperSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _totitle = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Original : " : stdgo.GoString) + (_str : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ToUpper : " : stdgo.GoString) + (_totitle : stdgo.GoString)));
    }
function testReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        var _tests = (new stdgo.Slice<T__struct_15>(
9,
9,
({ _off : (0i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (20 : stdgo.StdGoTypes.GoInt), _want : ("0123456789" : stdgo.GoString), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15),
({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (1 : stdgo.StdGoTypes.GoInt), _want : ("1" : stdgo.GoString), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15),
({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _seek : (1 : stdgo.StdGoTypes.GoInt), _n : (2 : stdgo.StdGoTypes.GoInt), _want : ("34" : stdgo.GoString), _wantpos : (3i64 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15),
({ _off : (-1i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (0 : stdgo.StdGoTypes.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("bytes.Reader.Seek: negative position" : stdgo.GoString) } : T__struct_15),
({ _off : (8589934592i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (0 : stdgo.StdGoTypes.GoInt), _want : ("" : stdgo.GoString), _wantpos : (8589934592i64 : stdgo.StdGoTypes.GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : stdgo.GoString) } : T__struct_15),
({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _seek : (1 : stdgo.StdGoTypes.GoInt), _n : (0 : stdgo.StdGoTypes.GoInt), _want : ("" : stdgo.GoString), _wantpos : (8589934593i64 : stdgo.StdGoTypes.GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : stdgo.GoString) } : T__struct_15),
({ _off : (0 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (5 : stdgo.StdGoTypes.GoInt), _want : ("01234" : stdgo.GoString), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15),
({ _off : (0 : stdgo.StdGoTypes.GoInt64), _seek : (1 : stdgo.StdGoTypes.GoInt), _n : (5 : stdgo.StdGoTypes.GoInt), _want : ("56789" : stdgo.GoString), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15),
({ _off : (-1i64 : stdgo.StdGoTypes.GoInt64), _seek : (2 : stdgo.StdGoTypes.GoInt), _n : (1 : stdgo.StdGoTypes.GoInt), _want : ("9" : stdgo.GoString), _wantpos : (9i64 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_15)) : stdgo.Slice<T__struct_15>);
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_tt._seekerr != stdgo.Go.str())) {
                _t.errorf(("%d. want seek error %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_err != null) && (_err.error() != _tt._seekerr)) {
                _t.errorf(("%d. seek error = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_tt._wantpos != (0i64 : stdgo.StdGoTypes.GoInt64)) && (_tt._wantpos != _pos)) {
                _t.errorf(("%d. pos = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_tt._wantpos));
            };
            var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_tt._n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = _r.read(_buf), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt._readerr))) {
                _t.errorf(("%d. read = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._readerr));
                continue;
            };
            var _got:stdgo.GoString = ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testReadAfterBigSeek(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        {
            var __tmp__ = _r.seek((2147483653i64 : stdgo.StdGoTypes.GoInt64), (0 : stdgo.StdGoTypes.GoInt)), __0:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _r.read(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("Read = %d, %v; want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function testReaderAt(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        var _tests = (new stdgo.Slice<T__struct_16>(6, 6, ({ _off : (0i64 : stdgo.StdGoTypes.GoInt64), _n : (10 : stdgo.StdGoTypes.GoInt), _want : ("0123456789" : stdgo.GoString), _wanterr : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16), ({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _n : (10 : stdgo.StdGoTypes.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : stdgo.Go.toInterface(stdgo.io.Io.eof) } : T__struct_16), ({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _n : (9 : stdgo.StdGoTypes.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16), ({ _off : (11i64 : stdgo.StdGoTypes.GoInt64), _n : (10 : stdgo.StdGoTypes.GoInt), _want : stdgo.Go.str(), _wanterr : stdgo.Go.toInterface(stdgo.io.Io.eof) } : T__struct_16), ({ _off : (0i64 : stdgo.StdGoTypes.GoInt64), _n : (0 : stdgo.StdGoTypes.GoInt), _want : stdgo.Go.str(), _wanterr : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16), ({ _off : (-1i64 : stdgo.StdGoTypes.GoInt64), _n : (0 : stdgo.StdGoTypes.GoInt), _want : stdgo.Go.str(), _wanterr : stdgo.Go.toInterface(("bytes.Reader.ReadAt: negative offset" : stdgo.GoString)) } : T__struct_16)) : stdgo.Slice<T__struct_16>);
        for (_i => _tt in _tests) {
            var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_tt._n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got:stdgo.GoString = ((_b.__slice__(0, _rn) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
            if (stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err)) != (stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString), _tt._wanterr))) {
                _t.errorf(("%d. got error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), _tt._wanterr);
            };
        };
    }
function testReaderAtConcurrent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (5 : stdgo.StdGoTypes.GoInt), _i++, {
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.StdGoTypes.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 1) (0 : stdgo.StdGoTypes.GoUInt8)]);
                            _r.readAt((_buf.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoInt64));
                            for (defer in __deferstack__) {
                                defer();
                            };
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
                            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testEmptyReaderConcurrent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (5 : stdgo.StdGoTypes.GoInt), _i++, {
                _wg.add((2 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            var _buf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 1) (0 : stdgo.StdGoTypes.GoUInt8)]);
                            _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                            for (defer in __deferstack__) {
                                defer();
                            };
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
                            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
                            _r.read((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                            for (defer in __deferstack__) {
                                defer();
                            };
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
                            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testReaderWriteTo(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (30 : stdgo.StdGoTypes.GoInt), _i = _i + ((3 : stdgo.StdGoTypes.GoInt)), {
                var _l:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                    _l = (_testString.length) / _i;
                };
                var _s:stdgo.GoString = (_testString.__slice__(0, _l) : stdgo.GoString);
                var _r = newReader((_testBytes.__slice__(0, _l) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                var _b:Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))), _n:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect:stdgo.StdGoTypes.GoInt64 = (_s.length : stdgo.StdGoTypes.GoInt64);
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
                if (_r.len() != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("reader contains %v bytes; want 0" : stdgo.GoString), stdgo.Go.toInterface(_r.len()));
                };
            });
        };
    }
function testReaderLen(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _r = newReader((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        {
            var __0:stdgo.StdGoTypes.GoInt = _r.len(), __1:stdgo.StdGoTypes.GoInt = (11 : stdgo.StdGoTypes.GoInt), _want:stdgo.StdGoTypes.GoInt = __1, _got:stdgo.StdGoTypes.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != (10 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("Read failed: read %d %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0:stdgo.StdGoTypes.GoInt = _r.len(), __1:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt), _want:stdgo.StdGoTypes.GoInt = __1, _got:stdgo.StdGoTypes.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != (1 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("Read failed: read %d %v; want 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0:stdgo.StdGoTypes.GoInt = _r.len(), __1:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _want:stdgo.StdGoTypes.GoInt = __1, _got:stdgo.StdGoTypes.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            {
                var __tmp__ = _reader.readRune(), __1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __2:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err:stdgo.Error = _reader.unreadRune();
            if (_err == null) {
                _t.errorf(("Unreading after %s: expected error" : stdgo.GoString), stdgo.Go.toInterface(_tt._name));
            };
        };
    }
function testReaderDoubleUnreadRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer((("groucho" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        {
            var __tmp__ = _buf.readRune(), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __1:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadByte();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _buf.unreadByte();
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte: expected error, got nil" : stdgo.GoString)));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testReaderCopyNothing_0___localname___nErr {
    public var _n : stdgo.StdGoTypes.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.StdGoTypes.GoInt64, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testReaderCopyNothing_0___localname___nErr(_n, _err);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_testReaderCopyNothing_1___localname___justReader_static_extension) class T_testReaderCopyNothing_1___localname___justReader {
    @:embedded
    public var reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return reader.read(__0);
    public function __copy__() {
        return new T_testReaderCopyNothing_1___localname___justReader(reader);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.bytes_test.Bytes_test.T_testReaderCopyNothing_2___localname___justWriter_static_extension) class T_testReaderCopyNothing_2___localname___justWriter {
    @:embedded
    public var writer : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return writer.write(__0);
    public function __copy__() {
        return new T_testReaderCopyNothing_2___localname___justWriter(writer);
    }
}
/**
    // verify that copying from an empty reader always has the same results,
    // regardless of the presence of a WriteTo method.
**/
function testReaderCopyNothing(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        {};
        var _discard:stdgo.bytes_test.Bytes_test.T_testReaderCopyNothing_2___localname___justWriter = (new T_testReaderCopyNothing_2___localname___justWriter(stdgo.io.Io.discard) : T_testReaderCopyNothing_2___localname___justWriter);
        var __0:T_testReaderCopyNothing_0___localname___nErr = ({} : stdgo.bytes_test.Bytes_test.T_testReaderCopyNothing_0___localname___nErr), __1:T_testReaderCopyNothing_0___localname___nErr = ({} : stdgo.bytes_test.Bytes_test.T_testReaderCopyNothing_0___localname___nErr), _withOut:T_testReaderCopyNothing_0___localname___nErr = __1, _with:T_testReaderCopyNothing_0___localname___nErr = __0;
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.Go.asInterface(_discard), stdgo.Go.asInterface(newReader((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))));
            _with._n = __tmp__._0;
            _with._err = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.Go.asInterface(_discard), stdgo.Go.asInterface((new T_testReaderCopyNothing_1___localname___justReader(stdgo.Go.asInterface(newReader((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)))) : T_testReaderCopyNothing_1___localname___justReader)));
            _withOut._n = __tmp__._0;
            _withOut._err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_with) != stdgo.Go.toInterface(_withOut)) {
            _t.errorf(("behavior differs: with = %#v; without: %#v" : stdgo.GoString), stdgo.Go.toInterface(_with), stdgo.Go.toInterface(_withOut));
        };
    }
/**
    // tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testReaderLenSize" + " skip function");
        return;
        var _r = newReader((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        stdgo.io.Io.copyN(stdgo.io.Io.discard, stdgo.Go.asInterface(_r), (1i64 : stdgo.StdGoTypes.GoInt64));
        if (_r.len() != ((2 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("Len = %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_r.len()));
        };
        if (_r.size() != ((3i64 : stdgo.StdGoTypes.GoInt64))) {
            _t.errorf(("Size = %d; want 3" : stdgo.GoString), stdgo.Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("世界" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        {
            var __tmp__ = _r.readRune(), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __1:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(("ReadRune: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {};
        _r.reset((("abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        {
            var _err:stdgo.Error = _r.unreadRune();
            if (_err == null) {
                _t.errorf(("UnreadRune: expected error, got nil" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo.io.Io.readAll(stdgo.Go.asInterface(_r)), _buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadAll: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got:stdgo.GoString = (_buf : stdgo.GoString);
            if (_got != (("abcdef" : stdgo.GoString))) {
                _t.errorf(("ReadAll: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("abcdef" : stdgo.GoString)));
            };
        };
    }
function testReaderZero(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _l:stdgo.StdGoTypes.GoInt = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).len();
            if (_l != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("Len: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).read((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).readAt((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (11i64 : stdgo.StdGoTypes.GoInt64)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).readByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_b != (0 : stdgo.StdGoTypes.GoUInt8)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).readRune(), _ch:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != (0 : stdgo.StdGoTypes.GoInt32)) || (_size != (0 : stdgo.StdGoTypes.GoInt))) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_ch), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).seek((11i64 : stdgo.StdGoTypes.GoInt64), (0 : stdgo.StdGoTypes.GoInt)), _offset:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_offset != (11i64 : stdgo.StdGoTypes.GoInt64)) || (_err != null)) {
                _t.errorf(("Seek: got %d, %v; want 11, nil" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _s:stdgo.StdGoTypes.GoInt64 = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).size();
            if (_s != ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                _t.errorf(("Size: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        if ((stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).unreadByte() == null) {
            _t.errorf(("UnreadByte: got nil, want error" : stdgo.GoString));
        };
        if ((stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).unreadRune() == null) {
            _t.errorf(("UnreadRune: got nil, want error" : stdgo.GoString));
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new Reader() : Reader)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Reader>).writeTo(stdgo.io.Io.discard), _n:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0i64 : stdgo.StdGoTypes.GoInt64)) || (_err != null)) {
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
@:keep var _ = {
        try {
            _testBytes = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (10000 : stdgo.StdGoTypes.GoInt), _i++, {
                    _testBytes[(_i : stdgo.StdGoTypes.GoInt)] = (97 : stdgo.StdGoTypes.GoUInt8) + (_i % (26 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoByte);
                });
            };
            _testString = (_testBytes : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_negativeReader_asInterface {
    @:keep
    public dynamic function read(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_negativeReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_negativeReader_asInterface) class T_negativeReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_negativeReader>, _0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_negativeReader> = _r;
        return { _0 : (-1 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Error) };
    }
}
class T_panicReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_panicReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_panicReader_asInterface) class T_panicReader_static_extension {
    @:keep
    static public function read( _r:T_panicReader, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:T_panicReader = _r?.__copy__();
        if (_r._panic) {
            throw stdgo.Go.toInterface(("oops" : stdgo.GoString));
        };
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.io.Io.eof };
    }
}
class T_testReaderCopyNothing_1___localname___justReader_asInterface {
    @:embedded
    public dynamic function read(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testReaderCopyNothing_1___localname___justReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_testReaderCopyNothing_1___localname___justReader_asInterface) class T_testReaderCopyNothing_1___localname___justReader_static_extension {
    @:embedded
    public static function read( __self__:T_testReaderCopyNothing_1___localname___justReader, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.read(__0);
}
class T_testReaderCopyNothing_2___localname___justWriter_asInterface {
    @:embedded
    public dynamic function write(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testReaderCopyNothing_2___localname___justWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_testReaderCopyNothing_2___localname___justWriter_asInterface) class T_testReaderCopyNothing_2___localname___justWriter_static_extension {
    @:embedded
    public static function write( __self__:T_testReaderCopyNothing_2___localname___justWriter, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.write(__0);
}
