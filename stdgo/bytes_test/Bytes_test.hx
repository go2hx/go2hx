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
/**
    
    
    
**/
private var _readBytesTests = (new Slice<T__struct_0>(0, 0, ({ _buffer : Go.str(), _delim : (0 : GoUInt8), _expected : (new Slice<GoString>(0, 0, Go.str()) : Slice<GoString>), _err : stdgo.io.Io.eof } : T__struct_0), ({ _buffer : Go.str("a", 0), _delim : (0 : GoUInt8), _expected : (new Slice<GoString>(0, 0, Go.str("a", 0)) : Slice<GoString>), _err : (null : Error) } : T__struct_0), ({ _buffer : ("abbbaaaba" : GoString), _delim : (98 : GoUInt8), _expected : (new Slice<GoString>(0, 0, ("ab" : GoString), ("b" : GoString), ("b" : GoString), ("aaab" : GoString)) : Slice<GoString>), _err : (null : Error) } : T__struct_0), ({ _buffer : Go.str("hello", 1, "world"), _delim : (1 : GoUInt8), _expected : (new Slice<GoString>(0, 0, Go.str("hello", 1)) : Slice<GoString>), _err : (null : Error) } : T__struct_0), ({ _buffer : ("foo\nbar" : GoString), _delim : (0 : GoUInt8), _expected : (new Slice<GoString>(0, 0, ("foo\nbar" : GoString)) : Slice<GoString>), _err : stdgo.io.Io.eof } : T__struct_0), ({ _buffer : ("alpha\nbeta\ngamma\n" : GoString), _delim : (10 : GoUInt8), _expected : (new Slice<GoString>(0, 0, ("alpha\n" : GoString), ("beta\n" : GoString), ("gamma\n" : GoString)) : Slice<GoString>), _err : (null : Error) } : T__struct_0), ({ _buffer : ("alpha\nbeta\ngamma" : GoString), _delim : (10 : GoUInt8), _expected : (new Slice<GoString>(0, 0, ("alpha\n" : GoString), ("beta\n" : GoString), ("gamma" : GoString)) : Slice<GoString>), _err : stdgo.io.Io.eof } : T__struct_0)) : Slice<T__struct_0>);
/**
    
    
    
**/
private var _abcd = ("abcd" : GoString);
/**
    
    
    
**/
private var _faces = ("☺☻☹" : GoString);
/**
    
    
    
**/
private var _commas = ("1,2,3,4" : GoString);
/**
    
    
    
**/
private var _dots = ("1....2....3....4" : GoString);
/**
    
    
    
**/
private var _indexTests = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), Go.str(), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("foo" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fo" : GoString), ("foo" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), ("baz" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), ("foo" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : GoString), ("f" : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : GoString), ("foo" : GoString), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("barfoobarfoo" : GoString), ("foo" : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), Go.str(), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), ("o" : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : GoString), ("A" : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("x" : GoString), ("a" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("x" : GoString), ("x" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("b" : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("c" : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("x" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("barfoobarfooyyyzzzyyyzzzyyyzzzyyyxxxzzzyyy" : GoString), ("x" : GoString), (33 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofooofoboo" : GoString), ("oo" : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : GoString), ("ob" : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : GoString), ("boo" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : GoString), ("oboo" : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoooboo" : GoString), ("fooo" : GoString), (8 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : GoString), ("foboo" : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofoboo" : GoString), ("fofob" : GoString), (8 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffof" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffof" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofo" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofo" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofoo" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofoo" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofoob" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofoob" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofooba" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofooba" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofoobar" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofoobar" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofoobarf" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofoobarf" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofoobarfo" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofoobarfo" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foffofoobarfoo" : GoString), (13 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("foffofoobarfoo" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("ofoffofoobarfoo" : GoString), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("ofoffofoobarfoo" : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("fofoffofoobarfoo" : GoString), (11 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofofofoffofoobarfoo" : GoString), ("fofoffofoobarfoo" : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fofofofofoofofoffofoobarfoo" : GoString), ("foobars" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foofyfoobarfoobar" : GoString), ("y" : GoString), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oooooooooooooooooooooo" : GoString), ("r" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oxoxoxoxoxoxoxoxoxoxoxoy" : GoString), ("oy" : GoString), (22 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oxoxoxoxoxoxoxoxoxoxoxox" : GoString), ("oy" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("000000000000000000000000000000000000000000000000000000000000000000000001" : GoString), ("0000000000000000000000000000000000000000000000000000000000000000001" : GoString), (5 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
private var _lastIndexTests = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), Go.str(), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("foo" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("fo" : GoString), ("foo" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), ("foo" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), ("f" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : GoString), ("f" : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("oofofoofooo" : GoString), ("foo" : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("barfoobarfoo" : GoString), ("foo" : GoString), (9 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), Go.str(), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("foo" : GoString), ("o" : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : GoString), ("A" : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abcABCabc" : GoString), ("a" : GoString), (6 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
private var _indexAnyTests = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), Go.str(), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("abc" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : GoString), Go.str(), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(128), Go.str(255, "b"), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("aaa" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("xyz" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("xcz" : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("ab☺c" : GoString), ("x☺yz" : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : GoString), ("cx" : GoString), (("a☺b☻" : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : GoString), ("uvw☻xyz" : GoString), (("a☺b" : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("aRegExp*" : GoString), (".(|)*+?^$$[]" : GoString), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (" " : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("012abcba210" : GoString), Go.str(255, "b"), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str("012", 128, "bcb", 128, "210"), Go.str(255, "b"), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("0123456πabc" : GoString), Go.str(207, "b", 128), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
private var _lastIndexAnyTests = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), Go.str(), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("abc" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : GoString), Go.str(), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(128), Go.str(255, "b"), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("aaa" : GoString), ("a" : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("xyz" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("abc" : GoString), ("ab" : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("ab☺c" : GoString), ("x☺yz" : GoString), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : GoString), ("cx" : GoString), (("a☺b☻" : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : GoString), ("uvw☻xyz" : GoString), (("a☺b" : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("a.RegExp*" : GoString), (".(|)*+?^$$[]" : GoString), (8 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest((_dots + _dots) + _dots, (" " : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("012abcba210" : GoString), Go.str(255, "b"), (6 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str("012", 128, "bcb", 128, "210"), Go.str(255, "b"), (7 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest),
(new stdgo.bytes_test.Bytes_test.BinOpTest(("0123456πabc" : GoString), Go.str(207, "b", 128), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
/**
    
    
    
**/
private var _indexSizes = (new Slice<GoInt>(0, 0, (10 : GoInt), (32 : GoInt), (4096 : GoInt), (4194304 : GoInt), (67108864 : GoInt)) : Slice<GoInt>);
/**
    
    
    
**/
private var _isRaceBuilder = stdgo.strings.Strings.hasSuffix(stdgo.internal.testenv.Testenv.builder(), ("-race" : GoString));
/**
    
    
    
**/
private var _splittests = (new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.SplitTest(Go.str(), Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("a" : GoString), (0 : GoInt), (null : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, Go.str(), (2 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("bcd" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("a" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, Go.str(), ("bcd" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("z" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("abcd" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString), ("c" : GoString), ("d" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ("," : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ("..." : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), (".2" : GoString), (".3" : GoString), (".4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("☹" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺☻" : GoString), Go.str()) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("~" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺" : GoString), ("☻" : GoString), ("☹" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2 3 4" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3 4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : GoString), Go.str(), (2 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("23" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : GoString), Go.str(), (17 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("bT" : GoString), ("T" : GoString), (536870911 : GoInt), (new Slice<GoString>(0, 0, ("b" : GoString), Go.str()) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(Go.str(255, "-", 255), Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, Go.str(255), ("-" : GoString), Go.str(255)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(Go.str(255, "-", 255), ("-" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, Go.str(255), Go.str(255)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest)) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>);
/**
    
    
    
**/
private var _splitaftertests = (new Slice<stdgo.bytes_test.Bytes_test.SplitTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("a" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("bcd" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, ("z" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("abcd" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_abcd, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString), ("c" : GoString), ("d" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_commas, ("," : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1," : GoString), ("2," : GoString), ("3," : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_dots, ("..." : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1..." : GoString), (".2..." : GoString), (".3..." : GoString), (".4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("☹" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺☻☹" : GoString), Go.str()) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, ("~" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(_faces, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺" : GoString), ("☻" : GoString), ("☹" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2 3 4" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1 " : GoString), ("2 " : GoString), ("3 4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2 3" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1 " : GoString), ("2 " : GoString), ("3" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("1 2" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1 " : GoString), ("2" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : GoString), Go.str(), (2 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("23" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest),
(new stdgo.bytes_test.Bytes_test.SplitTest(("123" : GoString), Go.str(), (17 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.SplitTest)) : Slice<stdgo.bytes_test.Bytes_test.SplitTest>);
/**
    
    
    
**/
private var _fieldstests = (new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.FieldsTest(Go.str(), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((" " : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest((" \t " : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("  abc  " : GoString), (new Slice<GoString>(0, 0, ("abc" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1 2 3 4" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1  2  3  4" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1\t\t2\t\t3\t4" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("1\u20002\u20013\u20024" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("\u2000\u2001\u2002" : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(("\n™\t™\n" : GoString), (new Slice<GoString>(0, 0, ("™" : GoString), ("™" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest),
(new stdgo.bytes_test.Bytes_test.FieldsTest(_faces, (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest)) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>);
/**
    
    
    
**/
private var _upperTests = (new Slice<stdgo.bytes_test.Bytes_test.StringTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str(), (Go.str() : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("ONLYUPPER" : GoString), (("ONLYUPPER" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("abc" : GoString), (("ABC" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("AbC123" : GoString), (("ABC123" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("azAZ09_" : GoString), (("AZAZ09_" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : GoString), (("LONGSTRINGWITHMIXOFSMALLANDCAPS" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("longɐstringɐwithɐnonasciiⱯchars" : GoString), (("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("ɐɐɐɐɐ" : GoString), (("ⱯⱯⱯⱯⱯ" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("a\u0080\u{0010ffff}" : GoString), (("A\u0080\u{0010ffff}" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : Slice<stdgo.bytes_test.Bytes_test.StringTest>);
/**
    
    
    
**/
private var _lowerTests = (new Slice<stdgo.bytes_test.Bytes_test.StringTest>(0, 0, (new stdgo.bytes_test.Bytes_test.StringTest(Go.str(), (Go.str() : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("abc" : GoString), (("abc" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("AbC123" : GoString), (("abc123" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("azAZ09_" : GoString), (("azaz09_" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : GoString), (("longstringwithmixofsmallandcaps" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : GoString), (("longɐstringɐwithɐnonasciiɐchars" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("ⱭⱭⱭⱭⱭ" : GoString), (("ɑɑɑɑɑ" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest), (new stdgo.bytes_test.Bytes_test.StringTest(("A\u0080\u{0010ffff}" : GoString), (("a\u0080\u{0010ffff}" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : Slice<stdgo.bytes_test.Bytes_test.StringTest>);
/**
    
    
    
**/
private var _trimSpaceTests = (new Slice<stdgo.bytes_test.Bytes_test.StringTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("  a" : GoString), (("a" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("b  " : GoString), (("b" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("abc" : GoString), (("abc" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), (("abc" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" " : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("\u3000 " : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \u3000" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \t\r\n \t\t\r\r\n\n " : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \t\r\n x\t\t\r\r\n\n " : GoString), (("x" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : GoString), (("x\t\t\r\r\ny" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("1 \t\r\n2" : GoString), (("1 \t\r\n2" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str(" x", 128), (Go.str("x", 128) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str(" x", 192), (Go.str("x", 192) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str("x ", 192, 192, " "), (Go.str("x ", 192, 192) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str("x ", 192), (Go.str("x ", 192) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str("x ", 192, " "), (Go.str("x ", 192) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str("x ", 192, 192, " "), (Go.str("x ", 192, 192) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(Go.str("x ☺", 192, 192, " "), (Go.str("x ☺", 192, 192) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest),
(new stdgo.bytes_test.Bytes_test.StringTest(("x ☺ " : GoString), (("x ☺" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.StringTest)) : Slice<stdgo.bytes_test.Bytes_test.StringTest>);
/**
    
    
    
**/
private var _toValidUTF8Tests = (new Slice<T__struct_3>(
0,
0,
({ _in : Go.str(), _repl : ("�" : GoString), _out : Go.str() } : T__struct_3),
({ _in : ("abc" : GoString), _repl : ("�" : GoString), _out : ("abc" : GoString) } : T__struct_3),
({ _in : ("\ufddd" : GoString), _repl : ("�" : GoString), _out : ("\ufddd" : GoString) } : T__struct_3),
({ _in : Go.str("a", 255, "b"), _repl : ("�" : GoString), _out : ("a�b" : GoString) } : T__struct_3),
({ _in : Go.str("a", 255, "b�"), _repl : ("X" : GoString), _out : ("aXb�" : GoString) } : T__struct_3),
({ _in : Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl : Go.str(), _out : ("a☺b☺c☺" : GoString) } : T__struct_3),
({ _in : Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl : ("日本語" : GoString), _out : ("a☺日本語b☺日本語c☺日本語" : GoString) } : T__struct_3),
({ _in : Go.str(192, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_3),
({ _in : Go.str(224, 128, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_3),
({ _in : Go.str(237, 160, 128), _repl : ("abc" : GoString), _out : ("abc" : GoString) } : T__struct_3),
({ _in : Go.str(237, 191, 191), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_3),
({ _in : Go.str(240, 128, 128, 175), _repl : ("☺" : GoString), _out : ("☺" : GoString) } : T__struct_3),
({ _in : Go.str(248, 128, 128, 128, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_3),
({ _in : Go.str(252, 128, 128, 128, 128, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_3)) : Slice<T__struct_3>);
/**
    
    
    
**/
private var _longString = (("a" : GoString) + (new Slice<GoUInt8>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString)) + ("z" : GoString);
/**
    
    
    
**/
var repeatTests = (new Slice<stdgo.bytes_test.Bytes_test.RepeatTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.RepeatTest(Go.str(), Go.str(), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(Go.str(), Go.str(), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(Go.str(), Go.str(), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("-" : GoString), Go.str(), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("-" : GoString), ("-" : GoString), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("-" : GoString), ("----------" : GoString), (10 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(("abc " : GoString), ("abc abc abc " : GoString), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest((((0 : GoInt32) : GoRune) : GoString), (new Slice<GoUInt8>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString), (65536 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest),
(new stdgo.bytes_test.Bytes_test.RepeatTest(_longString, _longString + _longString, (2 : GoInt)) : stdgo.bytes_test.Bytes_test.RepeatTest)) : Slice<stdgo.bytes_test.Bytes_test.RepeatTest>);
/**
    
    
    
**/
var runesTests = (new Slice<stdgo.bytes_test.Bytes_test.RunesTest>(0, 0, (new stdgo.bytes_test.Bytes_test.RunesTest(Go.str(), (new Slice<GoInt32>(0, 0) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest((" " : GoString), (new Slice<GoInt32>(0, 0, (32 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(("ABC" : GoString), (new Slice<GoInt32>(0, 0, (65 : GoInt32), (66 : GoInt32), (67 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(("abc" : GoString), (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(("日本語" : GoString), (new Slice<GoInt32>(0, 0, (26085 : GoInt32), (26412 : GoInt32), (35486 : GoInt32)) : Slice<GoInt32>), false) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(Go.str("ab", 128, "c"), (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), true) : stdgo.bytes_test.Bytes_test.RunesTest), (new stdgo.bytes_test.Bytes_test.RunesTest(Go.str("ab", 192, "c"), (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), true) : stdgo.bytes_test.Bytes_test.RunesTest)) : Slice<stdgo.bytes_test.Bytes_test.RunesTest>);
/**
    
    
    
**/
private var _trimTests = (new Slice<stdgo.bytes_test.Bytes_test.TrimTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), ("abba" : GoString), ("a" : GoString), ("bb" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), ("abba" : GoString), ("ab" : GoString), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : GoString), ("abba" : GoString), ("ab" : GoString), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : GoString), ("abba" : GoString), ("ab" : GoString), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : GoString), ("abba" : GoString), ("a" : GoString), ("bba" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : GoString), ("abba" : GoString), ("b" : GoString), ("abba" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : GoString), ("abba" : GoString), ("a" : GoString), ("abb" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : GoString), ("abba" : GoString), ("b" : GoString), ("abba" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), ("<tag>" : GoString), ("<>" : GoString), ("tag" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), ("* listitem" : GoString), (" *" : GoString), ("listitem" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), ("\"quote\"" : GoString), ("\"" : GoString), ("quote" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), ("ⱯⱯɐɐⱯⱯ" : GoString), ("Ɐ" : GoString), ("ɐɐ" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), Go.str(128, "test", 255), Go.str(255), ("test" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), (" Ġ " : GoString), (" " : GoString), ("Ġ" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), (" Ġİ0" : GoString), ("0 " : GoString), ("Ġİ" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), ("abba" : GoString), Go.str(), ("abba" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), Go.str(), ("123" : GoString), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("Trim" : GoString), Go.str(), Go.str(), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : GoString), ("abba" : GoString), Go.str(), ("abba" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : GoString), Go.str(), ("123" : GoString), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimLeft" : GoString), Go.str(), Go.str(), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : GoString), ("abba" : GoString), Go.str(), ("abba" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : GoString), Go.str(), ("123" : GoString), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : GoString), Go.str(), Go.str(), Go.str()) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimRight" : GoString), Go.str("☺", 192), ("☺" : GoString), Go.str("☺", 192)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimPrefix" : GoString), ("aabb" : GoString), ("a" : GoString), ("abb" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimPrefix" : GoString), ("aabb" : GoString), ("b" : GoString), ("aabb" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimSuffix" : GoString), ("aabb" : GoString), ("a" : GoString), ("aabb" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest),
(new stdgo.bytes_test.Bytes_test.TrimTest(("TrimSuffix" : GoString), ("aabb" : GoString), ("b" : GoString), ("aab" : GoString)) : stdgo.bytes_test.Bytes_test.TrimTest)) : Slice<stdgo.bytes_test.Bytes_test.TrimTest>);
/**
    
    
    
**/
private var _trimNilTests = (new Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : GoString), (null : Slice<GoUInt8>), Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8), (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("ab" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8), (98 : GoUInt8)) : Slice<GoUInt8>), ("ab" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("Trim" : GoString), (("☺" : GoString) : Slice<GoByte>), ("☺" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : GoString), (null : Slice<GoUInt8>), Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8), (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("ab" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8), (98 : GoUInt8)) : Slice<GoUInt8>), ("ab" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimLeft" : GoString), (("☺" : GoString) : Slice<GoByte>), ("☺" : GoString), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : GoString), (null : Slice<GoUInt8>), Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), Go.str(), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8), (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("ab" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8), (98 : GoUInt8)) : Slice<GoUInt8>), ("ab" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimRight" : GoString), (("☺" : GoString) : Slice<GoByte>), ("☺" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : GoString), (null : Slice<GoUInt8>), Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), Go.str(), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimPrefix" : GoString), (("☺" : GoString) : Slice<GoByte>), ("☺" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : GoString), (null : Slice<GoUInt8>), Go.str(), (null : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), Go.str(), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : GoString), (new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), ("a" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest),
(new stdgo.bytes_test.Bytes_test.TrimNilTest(("TrimSuffix" : GoString), (("☺" : GoString) : Slice<GoByte>), ("☺" : GoString), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.bytes_test.Bytes_test.TrimNilTest)) : Slice<stdgo.bytes_test.Bytes_test.TrimNilTest>);
/**
    
    
    
**/
private var _isSpace = (new T_predicate(stdgo.unicode.Unicode.isSpace, ("IsSpace" : GoString)) : T_predicate);
/**
    
    
    
**/
private var _isDigit = (new T_predicate(stdgo.unicode.Unicode.isDigit, ("IsDigit" : GoString)) : T_predicate);
/**
    
    
    
**/
private var _isUpper = (new T_predicate(stdgo.unicode.Unicode.isUpper, ("IsUpper" : GoString)) : T_predicate);
/**
    
    
    
**/
private var _isValidRune = (new T_predicate(function(_r:GoRune):Bool {
        return _r != ((65533 : GoInt32));
    }, ("IsValidRune" : GoString)) : T_predicate);
/**
    
    
    
**/
private var _trimFuncTests = (new Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), (("hello" : GoString) : Slice<GoByte>), (("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString) : Slice<GoByte>), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isDigit == null ? null : _isDigit.__copy__()), ("๐๒12hello34๐๑" : GoString), (("hello" : GoString) : Slice<GoByte>), (("hello34๐๑" : GoString) : Slice<GoByte>), (("๐๒12hello" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isUpper == null ? null : _isUpper.__copy__()), ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : GoString), (("hello" : GoString) : Slice<GoByte>), (("helloEFⱯⱯGHⱯⱯ" : GoString) : Slice<GoByte>), (("ⱯⱯⱯⱯABCDhello" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()), ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : GoString), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString) : Slice<GoByte>), (("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : GoString) : Slice<GoByte>), (("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), ("hello๐๒1234๐๑helo" : GoString), (("๐๒1234๐๑" : GoString) : Slice<GoByte>), (("๐๒1234๐๑helo" : GoString) : Slice<GoByte>), (("hello๐๒1234๐๑" : GoString) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isValidRune == null ? null : _isValidRune.__copy__()), Go.str("ab", 192, "a", 192, "cd"), (Go.str(192, "a", 192) : Slice<GoByte>), (Go.str(192, "a", 192, "cd") : Slice<GoByte>), (Go.str("ab", 192, "a", 192) : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), Go.str(192, "a", 192), (("a" : GoString) : Slice<GoByte>), (Go.str("a", 192) : Slice<GoByte>), (Go.str(192, "a") : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), Go.str(), (null : Slice<GoUInt8>), (null : Slice<GoUInt8>), (Go.str() : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest),
(new stdgo.bytes_test.Bytes_test.TrimFuncTest((_isSpace == null ? null : _isSpace.__copy__()), (" " : GoString), (null : Slice<GoUInt8>), (null : Slice<GoUInt8>), (Go.str() : Slice<GoByte>)) : stdgo.bytes_test.Bytes_test.TrimFuncTest)) : Slice<stdgo.bytes_test.Bytes_test.TrimFuncTest>);
/**
    
    
    
**/
private var _indexFuncTests = (new Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str(), (_isValidRune == null ? null : _isValidRune.__copy__()), (-1 : GoInt), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("abc" : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (-1 : GoInt), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("0123" : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (0 : GoInt), (3 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("a1b" : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (1 : GoInt), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), (_isSpace == null ? null : _isSpace.__copy__()), (0 : GoInt), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("๐๒12hello34๐๑" : GoString), (_isDigit == null ? null : _isDigit.__copy__()), (0 : GoInt), (18 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : GoString), (_isUpper == null ? null : _isUpper.__copy__()), (0 : GoInt), (34 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(("12๐๒hello34๐๑" : GoString), (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), (8 : GoInt), (12 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str(128, "1"), (_isDigit == null ? null : _isDigit.__copy__()), (1 : GoInt), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str(128, "abc"), (_isDigit == null ? null : _isDigit.__copy__()), (-1 : GoInt), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str(192, "a", 192), (_isValidRune == null ? null : _isValidRune.__copy__()), (1 : GoInt), (1 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str(192, "a", 192), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (0 : GoInt), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str(192, "☺", 192), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (0 : GoInt), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str(192, "☺", 192, 192), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (0 : GoInt), (5 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str("ab", 192, "a", 192, "cd"), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (2 : GoInt), (4 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest),
(new stdgo.bytes_test.Bytes_test.IndexFuncTest(Go.str("a", 224, 128, "cd"), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (1 : GoInt), (2 : GoInt)) : stdgo.bytes_test.Bytes_test.IndexFuncTest)) : Slice<stdgo.bytes_test.Bytes_test.IndexFuncTest>);
/**
    
    
    
**/
var replaceTests = (new Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("hello" : GoString), ("l" : GoString), ("L" : GoString), (0 : GoInt), ("hello" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("hello" : GoString), ("l" : GoString), ("L" : GoString), (-1 : GoInt), ("heLLo" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("hello" : GoString), ("x" : GoString), ("X" : GoString), (-1 : GoInt), ("hello" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(Go.str(), ("x" : GoString), ("X" : GoString), (-1 : GoInt), Go.str()) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("radar" : GoString), ("r" : GoString), ("<r>" : GoString), (-1 : GoInt), ("<r>ada<r>" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(Go.str(), Go.str(), ("<>" : GoString), (-1 : GoInt), ("<>" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), ("a" : GoString), ("<>" : GoString), (-1 : GoInt), ("b<>n<>n<>" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), ("a" : GoString), ("<>" : GoString), (1 : GoInt), ("b<>nana" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), ("a" : GoString), ("<>" : GoString), (1000 : GoInt), ("b<>n<>n<>" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), ("an" : GoString), ("<>" : GoString), (-1 : GoInt), ("b<><>a" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), ("ana" : GoString), ("<>" : GoString), (-1 : GoInt), ("b<>na" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), Go.str(), ("<>" : GoString), (-1 : GoInt), ("<>b<>a<>n<>a<>n<>a<>" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), Go.str(), ("<>" : GoString), (10 : GoInt), ("<>b<>a<>n<>a<>n<>a<>" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), Go.str(), ("<>" : GoString), (6 : GoInt), ("<>b<>a<>n<>a<>n<>a" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), Go.str(), ("<>" : GoString), (5 : GoInt), ("<>b<>a<>n<>a<>na" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), Go.str(), ("<>" : GoString), (1 : GoInt), ("<>banana" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), ("a" : GoString), ("a" : GoString), (-1 : GoInt), ("banana" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("banana" : GoString), ("a" : GoString), ("a" : GoString), (1 : GoInt), ("banana" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest),
(new stdgo.bytes_test.Bytes_test.ReplaceTest(("☺☻☹" : GoString), Go.str(), ("<>" : GoString), (-1 : GoInt), ("<>☺<>☻<>☹<>" : GoString)) : stdgo.bytes_test.Bytes_test.ReplaceTest)) : Slice<stdgo.bytes_test.Bytes_test.ReplaceTest>);
/**
    
    
    
**/
var titleTests = (new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(
0,
0,
(new stdgo.bytes_test.Bytes_test.TitleTest(Go.str(), Go.str()) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("a" : GoString), ("A" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((" aaa aaa aaa " : GoString), (" Aaa Aaa Aaa " : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest((" Aaa Aaa Aaa " : GoString), (" Aaa Aaa Aaa " : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("123a456" : GoString), ("123a456" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("double-blind" : GoString), ("Double-Blind" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("ÿøû" : GoString), ("Ÿøû" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("with_underscore" : GoString), ("With_underscore" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest),
(new stdgo.bytes_test.Bytes_test.TitleTest(("unicode \u2028 line separator" : GoString), ("Unicode \u2028 Line Separator" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest)) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>);
/**
    
    
    
**/
var toTitleTests = (new Slice<stdgo.bytes_test.Bytes_test.TitleTest>(0, 0, (new stdgo.bytes_test.Bytes_test.TitleTest(Go.str(), Go.str()) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("a" : GoString), ("A" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((" aaa aaa aaa " : GoString), (" AAA AAA AAA " : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest((" Aaa Aaa Aaa " : GoString), (" AAA AAA AAA " : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("123a456" : GoString), ("123A456" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("double-blind" : GoString), ("DOUBLE-BLIND" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest), (new stdgo.bytes_test.Bytes_test.TitleTest(("ÿøû" : GoString), ("ŸØÛ" : GoString)) : stdgo.bytes_test.Bytes_test.TitleTest)) : Slice<stdgo.bytes_test.Bytes_test.TitleTest>);
/**
    
    
    
**/
var equalFoldTests = (new Slice<T__struct_6>(
0,
0,
({ _s : ("abc" : GoString), _t : ("abc" : GoString), _out : true } : T__struct_6),
({ _s : ("ABcd" : GoString), _t : ("ABcd" : GoString), _out : true } : T__struct_6),
({ _s : ("123abc" : GoString), _t : ("123ABC" : GoString), _out : true } : T__struct_6),
({ _s : ("αβδ" : GoString), _t : ("ΑΒΔ" : GoString), _out : true } : T__struct_6),
({ _s : ("abc" : GoString), _t : ("xyz" : GoString), _out : false } : T__struct_6),
({ _s : ("abc" : GoString), _t : ("XYZ" : GoString), _out : false } : T__struct_6),
({ _s : ("abcdefghijk" : GoString), _t : ("abcdefghijX" : GoString), _out : false } : T__struct_6),
({ _s : ("abcdefghijk" : GoString), _t : ("abcdefghijK" : GoString), _out : true } : T__struct_6),
({ _s : ("abcdefghijK" : GoString), _t : ("abcdefghijK" : GoString), _out : true } : T__struct_6),
({ _s : ("abcdefghijkz" : GoString), _t : ("abcdefghijKy" : GoString), _out : false } : T__struct_6),
({ _s : ("abcdefghijKz" : GoString), _t : ("abcdefghijKy" : GoString), _out : false } : T__struct_6)) : Slice<T__struct_6>);
/**
    
    
    
**/
private var _cutTests = (new Slice<T__struct_7>(0, 0, ({ _s : ("abc" : GoString), _sep : ("b" : GoString), _before : ("a" : GoString), _after : ("c" : GoString), _found : true } : T__struct_7), ({ _s : ("abc" : GoString), _sep : ("a" : GoString), _before : Go.str(), _after : ("bc" : GoString), _found : true } : T__struct_7), ({ _s : ("abc" : GoString), _sep : ("c" : GoString), _before : ("ab" : GoString), _after : Go.str(), _found : true } : T__struct_7), ({ _s : ("abc" : GoString), _sep : ("abc" : GoString), _before : Go.str(), _after : Go.str(), _found : true } : T__struct_7), ({ _s : ("abc" : GoString), _sep : Go.str(), _before : Go.str(), _after : ("abc" : GoString), _found : true } : T__struct_7), ({ _s : ("abc" : GoString), _sep : ("d" : GoString), _before : ("abc" : GoString), _after : Go.str(), _found : false } : T__struct_7), ({ _s : Go.str(), _sep : ("d" : GoString), _before : Go.str(), _after : Go.str(), _found : false } : T__struct_7), ({ _s : Go.str(), _sep : Go.str(), _before : Go.str(), _after : Go.str(), _found : true } : T__struct_7)) : Slice<T__struct_7>);
/**
    
    
    
**/
private var _cutPrefixTests = (new Slice<T__struct_8>(0, 0, ({ _s : ("abc" : GoString), _sep : ("a" : GoString), _after : ("bc" : GoString), _found : true } : T__struct_8), ({ _s : ("abc" : GoString), _sep : ("abc" : GoString), _after : Go.str(), _found : true } : T__struct_8), ({ _s : ("abc" : GoString), _sep : Go.str(), _after : ("abc" : GoString), _found : true } : T__struct_8), ({ _s : ("abc" : GoString), _sep : ("d" : GoString), _after : ("abc" : GoString), _found : false } : T__struct_8), ({ _s : Go.str(), _sep : ("d" : GoString), _after : Go.str(), _found : false } : T__struct_8), ({ _s : Go.str(), _sep : Go.str(), _after : Go.str(), _found : true } : T__struct_8)) : Slice<T__struct_8>);
/**
    
    
    
**/
private var _cutSuffixTests = (new Slice<T__struct_8>(0, 0, ({ _s : ("abc" : GoString), _sep : ("bc" : GoString), _after : ("a" : GoString), _found : true } : T__struct_8), ({ _s : ("abc" : GoString), _sep : ("abc" : GoString), _after : Go.str(), _found : true } : T__struct_8), ({ _s : ("abc" : GoString), _sep : Go.str(), _after : ("abc" : GoString), _found : true } : T__struct_8), ({ _s : ("abc" : GoString), _sep : ("d" : GoString), _after : ("abc" : GoString), _found : false } : T__struct_8), ({ _s : Go.str(), _sep : ("d" : GoString), _after : Go.str(), _found : false } : T__struct_8), ({ _s : Go.str(), _sep : Go.str(), _after : Go.str(), _found : true } : T__struct_8)) : Slice<T__struct_8>);
/**
    
    
    
**/
private var _containsTests = (new Slice<T__struct_9>(0, 0, ({ _b : (("hello" : GoString) : Slice<GoByte>), _subslice : (("hel" : GoString) : Slice<GoByte>), _want : true } : T__struct_9), ({ _b : (("日本語" : GoString) : Slice<GoByte>), _subslice : (("日本" : GoString) : Slice<GoByte>), _want : true } : T__struct_9), ({ _b : (("hello" : GoString) : Slice<GoByte>), _subslice : (("Hello, world" : GoString) : Slice<GoByte>), _want : false } : T__struct_9), ({ _b : (("東京" : GoString) : Slice<GoByte>), _subslice : (("京東" : GoString) : Slice<GoByte>), _want : false } : T__struct_9)) : Slice<T__struct_9>);
/**
    
    
    
**/
var containsAnyTests = (new Slice<T__struct_10>(
0,
0,
({ _b : (Go.str() : Slice<GoByte>), _substr : Go.str(), _expected : false } : T__struct_10),
({ _b : (Go.str() : Slice<GoByte>), _substr : ("a" : GoString), _expected : false } : T__struct_10),
({ _b : (Go.str() : Slice<GoByte>), _substr : ("abc" : GoString), _expected : false } : T__struct_10),
({ _b : (("a" : GoString) : Slice<GoByte>), _substr : Go.str(), _expected : false } : T__struct_10),
({ _b : (("a" : GoString) : Slice<GoByte>), _substr : ("a" : GoString), _expected : true } : T__struct_10),
({ _b : (("aaa" : GoString) : Slice<GoByte>), _substr : ("a" : GoString), _expected : true } : T__struct_10),
({ _b : (("abc" : GoString) : Slice<GoByte>), _substr : ("xyz" : GoString), _expected : false } : T__struct_10),
({ _b : (("abc" : GoString) : Slice<GoByte>), _substr : ("xcz" : GoString), _expected : true } : T__struct_10),
({ _b : (("a☺b☻c☹d" : GoString) : Slice<GoByte>), _substr : ("uvw☻xyz" : GoString), _expected : true } : T__struct_10),
({ _b : (("aRegExp*" : GoString) : Slice<GoByte>), _substr : (".(|)*+?^$$[]" : GoString), _expected : true } : T__struct_10),
({ _b : ((_dots + _dots) + _dots : Slice<GoByte>), _substr : (" " : GoString), _expected : false } : T__struct_10)) : Slice<T__struct_10>);
/**
    
    
    
**/
var containsRuneTests = (new Slice<T__struct_11>(0, 0, ({ _b : (Go.str() : Slice<GoByte>), _r : (97 : GoInt32), _expected : false } : T__struct_11), ({ _b : (("a" : GoString) : Slice<GoByte>), _r : (97 : GoInt32), _expected : true } : T__struct_11), ({ _b : (("aaa" : GoString) : Slice<GoByte>), _r : (97 : GoInt32), _expected : true } : T__struct_11), ({ _b : (("abc" : GoString) : Slice<GoByte>), _r : (121 : GoInt32), _expected : false } : T__struct_11), ({ _b : (("abc" : GoString) : Slice<GoByte>), _r : (99 : GoInt32), _expected : true } : T__struct_11), ({ _b : (("a☺b☻c☹d" : GoString) : Slice<GoByte>), _r : (120 : GoInt32), _expected : false } : T__struct_11), ({ _b : (("a☺b☻c☹d" : GoString) : Slice<GoByte>), _r : (9787 : GoInt32), _expected : true } : T__struct_11), ({ _b : (("aRegExp*" : GoString) : Slice<GoByte>), _r : (42 : GoInt32), _expected : true } : T__struct_11)) : Slice<T__struct_11>);
/**
    
    
    
**/
private var _makeFieldsInput = function():Slice<GoByte> {
        var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_i in 0 ... _x.length.toBasic()) {
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (stdgo.math.rand.Rand.intn((10 : GoInt)) == (0 : GoInt)))) {
                        _x[(_i : GoInt)] = (32 : GoUInt8);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (stdgo.math.rand.Rand.intn((10 : GoInt)) == (1 : GoInt)))) {
                        if ((_i > (0 : GoInt)) && (_x[(_i - (1 : GoInt) : GoInt)] == (120 : GoUInt8))) {
                            Go.copySlice((_x.__slice__(_i - (1 : GoInt)) : Slice<GoUInt8>), ("χ" : GoString));
                            break;
                        };
                        @:fallthrough {
                            __switchIndex__ = 2;
                            continue;
                        };
                        break;
                    } else {
                        _x[(_i : GoInt)] = (120 : GoUInt8);
                        break;
                    };
                    break;
                };
            };
        };
        return _x;
    };
/**
    
    
    
**/
private var _makeFieldsInputASCII = function():Slice<GoByte> {
        var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_i in 0 ... _x.length.toBasic()) {
            if (stdgo.math.rand.Rand.intn((10 : GoInt)) == ((0 : GoInt))) {
                _x[(_i : GoInt)] = (32 : GoUInt8);
            } else {
                _x[(_i : GoInt)] = (120 : GoUInt8);
            };
        };
        return _x;
    };
/**
    
    
    
**/
private var _bytesdata = (new Slice<T__struct_12>(0, 0, ({ _name : ("ASCII" : GoString), _data : _makeFieldsInputASCII() } : T__struct_12), ({ _name : ("Mixed" : GoString), _data : _makeFieldsInput() } : T__struct_12)) : Slice<T__struct_12>);
/**
    
    
    
**/
private var _benchInputHard = _makeBenchInputHard();
/**
    
    
    
**/
private var _compareTests = (new Slice<T__struct_1>(
0,
0,
({ _a : (Go.str() : Slice<GoByte>), _b : (Go.str() : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (("a" : GoString) : Slice<GoByte>), _b : (Go.str() : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (Go.str() : Slice<GoByte>), _b : (("a" : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : (("abc" : GoString) : Slice<GoByte>), _b : (("abc" : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (("abd" : GoString) : Slice<GoByte>), _b : (("abc" : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (("abc" : GoString) : Slice<GoByte>), _b : (("abd" : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : (("ab" : GoString) : Slice<GoByte>), _b : (("abc" : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : (("abc" : GoString) : Slice<GoByte>), _b : (("ab" : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (("x" : GoString) : Slice<GoByte>), _b : (("ab" : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (("ab" : GoString) : Slice<GoByte>), _b : (("x" : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : (("x" : GoString) : Slice<GoByte>), _b : (("a" : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (("b" : GoString) : Slice<GoByte>), _b : (("x" : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : (("abcdefgh" : GoString) : Slice<GoByte>), _b : (("abcdefgh" : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (("abcdefghi" : GoString) : Slice<GoByte>), _b : (("abcdefghi" : GoString) : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (("abcdefghi" : GoString) : Slice<GoByte>), _b : (("abcdefghj" : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1),
({ _a : (("abcdefghj" : GoString) : Slice<GoByte>), _b : (("abcdefghi" : GoString) : Slice<GoByte>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (null : Slice<GoUInt8>), _b : (null : Slice<GoUInt8>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (Go.str() : Slice<GoByte>), _b : (null : Slice<GoUInt8>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (null : Slice<GoUInt8>), _b : (Go.str() : Slice<GoByte>), _i : (0 : GoInt) } : T__struct_1),
({ _a : (("a" : GoString) : Slice<GoByte>), _b : (null : Slice<GoUInt8>), _i : (1 : GoInt) } : T__struct_1),
({ _a : (null : Slice<GoUInt8>), _b : (("a" : GoString) : Slice<GoByte>), _i : (-1 : GoInt) } : T__struct_1)) : Slice<T__struct_1>);
/**
    
    
    
**/
var unreadRuneErrorTests = (new Slice<T__struct_16>(0, 0, ({ _name : ("Read" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.read((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>));
    } } : T__struct_16), ({ _name : ("ReadByte" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.readByte();
    } } : T__struct_16), ({ _name : ("UnreadRune" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.unreadRune();
    } } : T__struct_16), ({ _name : ("Seek" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.seek(("0" : GoInt64), (1 : GoInt));
    } } : T__struct_16), ({ _name : ("WriteTo" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.writeTo(Go.asInterface(((new Buffer() : Buffer) : Ref<Buffer>)));
    } } : T__struct_16)) : Slice<T__struct_16>);
/**
    
    
    // make this bigger for a larger (and slower) test
**/
final n = ("10000" : GoUInt64);
/**
    
    
    // test data for write tests
**/
private var _testString : GoString = ("" : GoString);
/**
    
    
    // test data; same as testString but as a slice.
**/
private var _testBytes : Slice<GoByte> = (null : Slice<GoUInt8>);
/**
    
    
    
**/
private var _bmbuf : Slice<GoByte> = (null : Slice<GoUInt8>);
/**
    
    
    
**/
private final _space = ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.bytes_test.Bytes_test.T_negativeReader_static_extension) class T_negativeReader {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_panicReader(_panic);
    }
}
/**
    
    
    
**/
@:structInit class BinOpTest {
    public var _a : GoString = "";
    public var _b : GoString = "";
    public var _i : GoInt = 0;
    public function new(?_a:GoString, ?_b:GoString, ?_i:GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BinOpTest(_a, _b, _i);
    }
}
/**
    
    
    
**/
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_s, _sep, _n, _a);
    }
}
/**
    
    
    
**/
@:structInit class FieldsTest {
    public var _s : GoString = "";
    public var _a : Slice<GoString> = (null : Slice<GoString>);
    public function new(?_s:GoString, ?_a:Slice<GoString>) {
        if (_s != null) this._s = _s;
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FieldsTest(_s, _a);
    }
}
/**
    // Test case for any function which accepts and returns a byte slice.
    // For ease of creation, we write the input byte slice as a string.
    
    
**/
@:structInit class StringTest {
    public var _in : GoString = "";
    public var _out : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public function new(?_in:GoString, ?_out:Slice<GoUInt8>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out);
    }
}
/**
    
    
    
**/
@:structInit class RepeatTest {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public var _count : GoInt = 0;
    public function new(?_in:GoString, ?_out:GoString, ?_count:GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RepeatTest(_in, _out, _count);
    }
}
/**
    
    
    
**/
@:structInit class RunesTest {
    public var _in : GoString = "";
    public var _out : Slice<GoInt32> = (null : Slice<GoInt32>);
    public var _lossy : Bool = false;
    public function new(?_in:GoString, ?_out:Slice<GoInt32>, ?_lossy:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_lossy != null) this._lossy = _lossy;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RunesTest(_in, _out, _lossy);
    }
}
/**
    
    
    
**/
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TrimTest(_f, _in, _arg, _out);
    }
}
/**
    
    
    
**/
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TrimNilTest(_f, _in, _arg, _out);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_predicate {
    public var _f : GoInt32 -> Bool = null;
    public var _name : GoString = "";
    public function new(?_f:GoInt32 -> Bool, ?_name:GoString) {
        if (_f != null) this._f = _f;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_predicate(_f, _name);
    }
}
/**
    
    
    
**/
@:structInit class TrimFuncTest {
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = ({} : stdgo.bytes_test.Bytes_test.T_predicate);
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TrimFuncTest(_f, _in, _trimOut, _leftOut, _rightOut);
    }
}
/**
    
    
    
**/
@:structInit class IndexFuncTest {
    public var _in : GoString = "";
    public var _f : stdgo.bytes_test.Bytes_test.T_predicate = ({} : stdgo.bytes_test.Bytes_test.T_predicate);
    public var _first : GoInt = 0;
    public var _last : GoInt = 0;
    public function new(?_in:GoString, ?_f:stdgo.bytes_test.Bytes_test.T_predicate, ?_first:GoInt, ?_last:GoInt) {
        if (_in != null) this._in = _in;
        if (_f != null) this._f = _f;
        if (_first != null) this._first = _first;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IndexFuncTest(_in, _f, _first, _last);
    }
}
/**
    
    
    
**/
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ReplaceTest(_in, _old, _new, _n, _out);
    }
}
/**
    
    
    
**/
@:structInit class TitleTest {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public function new(?_in:GoString, ?_out:GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TitleTest(_in, _out);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _buffer : GoString;
    public var _delim : GoUInt8;
    public var _expected : Slice<GoString>;
    public var _err : Error;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _a : Slice<GoUInt8>;
    public var _b : Slice<GoUInt8>;
    public var _i : GoInt;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _in : GoString;
    public var _rune : GoInt32;
    public var _want : GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_3_static_extension) private typedef T__struct_3 = {
    public var _in : GoString;
    public var _repl : GoString;
    public var _out : GoString;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_4_static_extension) private typedef T__struct_4 = {
    public var _s : GoString;
    public var _count : GoInt;
    public var _errStr : GoString;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_5_static_extension) private typedef T__struct_5 = {
    public var _name : GoString;
    public var _trim : (Slice<GoUInt8>, GoInt32 -> Bool) -> Slice<GoUInt8>;
    public var _out : Slice<GoUInt8>;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_6_static_extension) private typedef T__struct_6 = {
    public var _s : GoString;
    public var _t : GoString;
    public var _out : Bool;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_7_static_extension) private typedef T__struct_7 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _before : GoString;
    public var _after : GoString;
    public var _found : Bool;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_8_static_extension) private typedef T__struct_8 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _after : GoString;
    public var _found : Bool;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_9_static_extension) private typedef T__struct_9 = {
    public var _b : Slice<GoUInt8>;
    public var _subslice : Slice<GoUInt8>;
    public var _want : Bool;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_10_static_extension) private typedef T__struct_10 = {
    public var _b : Slice<GoUInt8>;
    public var _substr : GoString;
    public var _expected : Bool;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_11_static_extension) private typedef T__struct_11 = {
    public var _b : Slice<GoUInt8>;
    public var _r : GoInt32;
    public var _expected : Bool;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_12_static_extension) private typedef T__struct_12 = {
    public var _name : GoString;
    public var _data : Slice<GoUInt8>;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_13_static_extension) private typedef T__struct_13 = {
    public var _name : GoString;
    public var _input : Slice<GoUInt8>;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_14_static_extension) private typedef T__struct_14 = {
    public var _off : GoInt64;
    public var _seek : GoInt;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wantpos : GoInt64;
    public var _readerr : Error;
    public var _seekerr : GoString;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_15_static_extension) private typedef T__struct_15 = {
    public var _off : GoInt64;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wanterr : AnyInterface;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.bytes_test.Bytes_test.T__struct_16_static_extension) private typedef T__struct_16 = {
    public var _name : GoString;
    public var _f : Ref<Reader> -> Void;
};
/**
    // Verify that contents of buf match the string s.
**/
private function _check(_t:Ref<stdgo.testing.Testing.T>, _testname:GoString, _buf:Ref<Buffer>, _s:GoString):Void {
        var _bytes = _buf.bytes();
        var _str:GoString = (_buf.string() : GoString);
        if (_buf.len() != ((_bytes.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(buf.Bytes()) == %d" : GoString), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_bytes.length)));
        };
        if (_buf.len() != ((_str.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(buf.String()) == %d" : GoString), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_str.length)));
        };
        if (_buf.len() != ((_s.length))) {
            _t.errorf(("%s: buf.Len() == %d, len(s) == %d" : GoString), Go.toInterface(_testname), Go.toInterface(_buf.len()), Go.toInterface((_s.length)));
        };
        if ((_bytes : GoString) != (_s)) {
            _t.errorf(("%s: string(buf.Bytes()) == %q, s == %q" : GoString), Go.toInterface(_testname), Go.toInterface((_bytes : GoString)), Go.toInterface(_s));
        };
    }
/**
    // Fill buf through n writes of string fus.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
private function _fillString(_t:Ref<stdgo.testing.Testing.T>, _testname:GoString, _buf:Ref<Buffer>, _s:GoString, _n:GoInt, _fus:GoString):GoString {
        _check(_t, _testname + (" (fill 1)" : GoString), _buf, _s);
        Go.cfor(_n > (0 : GoInt), _n--, {
            var __tmp__ = _buf.writeString(_fus), _m:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_m != ((_fus.length))) {
                _t.errorf(_testname + (" (fill 2): m == %d, expected %d" : GoString), Go.toInterface(_m), Go.toInterface((_fus.length)));
            };
            if (_err != null) {
                _t.errorf(_testname + (" (fill 3): err should always be nil, found err == %s" : GoString), Go.toInterface(_err));
            };
            _s = _s + (_fus);
            _check(_t, _testname + (" (fill 4)" : GoString), _buf, _s);
        });
        return _s;
    }
/**
    // Fill buf through n writes of byte slice fub.
    // The initial contents of buf corresponds to the string s;
    // the result is the final contents of buf returned as a string.
**/
private function _fillBytes(_t:Ref<stdgo.testing.Testing.T>, _testname:GoString, _buf:Ref<Buffer>, _s:GoString, _n:GoInt, _fub:Slice<GoByte>):GoString {
        _check(_t, _testname + (" (fill 1)" : GoString), _buf, _s);
        Go.cfor(_n > (0 : GoInt), _n--, {
            var __tmp__ = _buf.write(_fub), _m:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_m != ((_fub.length))) {
                _t.errorf(_testname + (" (fill 2): m == %d, expected %d" : GoString), Go.toInterface(_m), Go.toInterface((_fub.length)));
            };
            if (_err != null) {
                _t.errorf(_testname + (" (fill 3): err should always be nil, found err == %s" : GoString), Go.toInterface(_err));
            };
            _s = _s + ((_fub : GoString));
            _check(_t, _testname + (" (fill 4)" : GoString), _buf, _s);
        });
        return _s;
    }
function testNewBuffer(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer(_testBytes);
        _check(_t, ("NewBuffer" : GoString), _buf, _testString);
    }
function testNewBufferString(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBufferString(_testString);
        _check(_t, ("NewBufferString" : GoString), _buf, _testString);
    }
/**
    // Empty buf through repeated reads into fub.
    // The initial contents of buf corresponds to the string s.
**/
private function _empty(_t:Ref<stdgo.testing.Testing.T>, _testname:GoString, _buf:Ref<Buffer>, _s:GoString, _fub:Slice<GoByte>):Void {
        _check(_t, _testname + (" (empty 1)" : GoString), _buf, _s);
        while (true) {
            var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_n == ((0 : GoInt))) {
                break;
            };
            if (_err != null) {
                _t.errorf(_testname + (" (empty 2): err should always be nil, found err == %s" : GoString), Go.toInterface(_err));
            };
            _s = (_s.__slice__(_n) : GoString);
            _check(_t, _testname + (" (empty 3)" : GoString), _buf, _s);
        };
        _check(_t, _testname + (" (empty 4)" : GoString), _buf, Go.str());
    }
function testBasicOperations(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _check(_t, ("TestBasicOperations (1)" : GoString), (_buf : Ref<Buffer>), Go.str());
                _buf.reset();
                _check(_t, ("TestBasicOperations (2)" : GoString), (_buf : Ref<Buffer>), Go.str());
                _buf.truncate((0 : GoInt));
                _check(_t, ("TestBasicOperations (3)" : GoString), (_buf : Ref<Buffer>), Go.str());
                var __tmp__ = _buf.write((_testBytes.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                {
                    var _want:GoInt = (1 : GoInt);
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), (null : AnyInterface));
                    };
                };
                _check(_t, ("TestBasicOperations (4)" : GoString), (_buf : Ref<Buffer>), ("a" : GoString));
                _buf.writeByte(_testString[(1 : GoInt)]);
                _check(_t, ("TestBasicOperations (5)" : GoString), (_buf : Ref<Buffer>), ("ab" : GoString));
                {
                    var __tmp__ = _buf.write((_testBytes.__slice__((2 : GoInt), (26 : GoInt)) : Slice<GoUInt8>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var _want:GoInt = (24 : GoInt);
                    if ((_err != null) || (_n != _want)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want), (null : AnyInterface));
                    };
                };
                _check(_t, ("TestBasicOperations (6)" : GoString), (_buf : Ref<Buffer>), (_testString.__slice__((0 : GoInt), (26 : GoInt)) : GoString));
                _buf.truncate((26 : GoInt));
                _check(_t, ("TestBasicOperations (7)" : GoString), (_buf : Ref<Buffer>), (_testString.__slice__((0 : GoInt), (26 : GoInt)) : GoString));
                _buf.truncate((20 : GoInt));
                _check(_t, ("TestBasicOperations (8)" : GoString), (_buf : Ref<Buffer>), (_testString.__slice__((0 : GoInt), (20 : GoInt)) : GoString));
                _empty(_t, ("TestBasicOperations (9)" : GoString), (_buf : Ref<Buffer>), (_testString.__slice__((0 : GoInt), (20 : GoInt)) : GoString), new Slice<GoUInt8>((5 : GoInt).toBasic(), 0, ...[for (i in 0 ... (5 : GoInt).toBasic()) (0 : GoUInt8)]));
                _empty(_t, ("TestBasicOperations (10)" : GoString), (_buf : Ref<Buffer>), Go.str(), new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0 ... (100 : GoInt).toBasic()) (0 : GoUInt8)]));
                _buf.writeByte(_testString[(1 : GoInt)]);
                var __tmp__ = _buf.readByte(), _c:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
                {
                    var _want:GoUInt8 = _testString[(1 : GoInt)];
                    if ((_err != null) || (_c != _want)) {
                        _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : GoString), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(_want), (null : AnyInterface));
                    };
                };
                {
                    var __tmp__ = _buf.readByte();
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
                    _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : GoString), Go.toInterface(_c), Go.toInterface(_err), Go.toInterface(((0 : GoUInt8) : GoByte)), Go.toInterface(stdgo.io.Io.eof));
                };
            });
        };
    }
function testLargeStringWrites(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        var _limit:GoInt = (30 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _limit = (9 : GoInt);
        };
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < _limit, _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillString(_t, ("TestLargeWrites (1)" : GoString), (_buf : Ref<Buffer>), Go.str(), (5 : GoInt), _testString);
                _empty(_t, ("TestLargeStringWrites (2)" : GoString), (_buf : Ref<Buffer>), _s, new Slice<GoUInt8>(((_testString.length) / _i : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_testString.length) / _i : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, ("TestLargeStringWrites (3)" : GoString), (_buf : Ref<Buffer>), Go.str());
    }
function testLargeByteWrites(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        var _limit:GoInt = (30 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _limit = (9 : GoInt);
        };
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < _limit, _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, ("TestLargeWrites (1)" : GoString), (_buf : Ref<Buffer>), Go.str(), (5 : GoInt), _testBytes);
                _empty(_t, ("TestLargeByteWrites (2)" : GoString), (_buf : Ref<Buffer>), _s, new Slice<GoUInt8>(((_testString.length) / _i : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_testString.length) / _i : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, ("TestLargeByteWrites (3)" : GoString), (_buf : Ref<Buffer>), Go.str());
    }
function testLargeStringReads(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillString(_t, ("TestLargeReads (1)" : GoString), (_buf : Ref<Buffer>), Go.str(), (5 : GoInt), (_testString.__slice__((0 : GoInt), (_testString.length) / _i) : GoString));
                _empty(_t, ("TestLargeReads (2)" : GoString), (_buf : Ref<Buffer>), _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, ("TestLargeStringReads (3)" : GoString), (_buf : Ref<Buffer>), Go.str());
    }
function testLargeByteReads(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, ("TestLargeReads (1)" : GoString), (_buf : Ref<Buffer>), Go.str(), (5 : GoInt), (_testBytes.__slice__((0 : GoInt), (_testBytes.length) / _i) : Slice<GoUInt8>));
                _empty(_t, ("TestLargeReads (2)" : GoString), (_buf : Ref<Buffer>), _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
        _check(_t, ("TestLargeByteReads (3)" : GoString), (_buf : Ref<Buffer>), Go.str());
    }
function testMixedReadsAndWrites(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        var _s:GoString = Go.str();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (50 : GoInt), _i++, {
                var _wlen:GoInt = stdgo.math.rand.Rand.intn((_testString.length));
                if (_i % (2 : GoInt) == ((0 : GoInt))) {
                    _s = _fillString(_t, ("TestMixedReadsAndWrites (1)" : GoString), (_buf : Ref<Buffer>), _s, (1 : GoInt), (_testString.__slice__((0 : GoInt), _wlen) : GoString));
                } else {
                    _s = _fillBytes(_t, ("TestMixedReadsAndWrites (1)" : GoString), (_buf : Ref<Buffer>), _s, (1 : GoInt), (_testBytes.__slice__((0 : GoInt), _wlen) : Slice<GoUInt8>));
                };
                var _rlen:GoInt = stdgo.math.rand.Rand.intn((_testString.length));
                var _fub = new Slice<GoUInt8>((_rlen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_rlen : GoInt).toBasic()) (0 : GoUInt8)]);
                var __tmp__ = _buf.read(_fub), _n:GoInt = __tmp__._0, _0:Error = __tmp__._1;
                _s = (_s.__slice__(_n) : GoString);
            });
        };
        _empty(_t, ("TestMixedReadsAndWrites (2)" : GoString), (_buf : Ref<Buffer>), _s, new Slice<GoUInt8>((_buf.len() : GoInt).toBasic(), 0, ...[for (i in 0 ... (_buf.len() : GoInt).toBasic()) (0 : GoUInt8)]));
    }
function testCapWithPreallocatedSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]));
        var _n:GoInt = _buf.cap();
        if (_n != ((10 : GoInt))) {
            _t.errorf(("expected 10, got %d" : GoString), Go.toInterface(_n));
        };
    }
function testCapWithSliceAndWrittenData(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer(new Slice<GoUInt8>((0 : GoInt).toBasic(), (10 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]));
        _buf.write((("test" : GoString) : Slice<GoByte>));
        var _n:GoInt = _buf.cap();
        if (_n != ((10 : GoInt))) {
            _t.errorf(("expected 10, got %d" : GoString), Go.toInterface(_n));
        };
    }
function testNil(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b:Ref<Buffer> = (null : Ref<Buffer>);
        if ((_b.string() : GoString) != (("<nil>" : GoString))) {
            _t.errorf(("expected <nil>; got %q" : GoString), Go.toInterface((_b.string() : GoString)));
        };
    }
function testReadFrom(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, ("TestReadFrom (1)" : GoString), (_buf : Ref<Buffer>), Go.str(), (5 : GoInt), (_testBytes.__slice__((0 : GoInt), (_testBytes.length) / _i) : Slice<GoUInt8>));
                var _b:Buffer = ({} : Buffer);
                _b.readFrom(Go.asInterface((_buf : Ref<Buffer>)));
                _empty(_t, ("TestReadFrom (2)" : GoString), (_b : Ref<Buffer>), _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
    }
/**
    // Make sure that an empty Buffer remains empty when
    // it is "grown" before a Read that panics
**/
function testReadFromPanicReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        var _buf:Buffer = ({} : Buffer);
        try {
            var __tmp__ = _buf.readFrom(Go.asInterface((new T_panicReader() : T_panicReader))), _i:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_i != (("0" : GoInt64))) {
                _t.fatalf(("unexpected return from bytes.ReadFrom (1): got: %d, want %d" : GoString), Go.toInterface(_i), Go.toInterface((0 : GoInt)));
            };
            _check(_t, ("TestReadFromPanicReader (1)" : GoString), (_buf : Ref<Buffer>), Go.str());
            var _buf2:Buffer = ({} : Buffer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    _check(_t, ("TestReadFromPanicReader (2)" : GoString), (_buf2 : Ref<Buffer>), Go.str());
                };
                a();
            });
            _buf2.readFrom(Go.asInterface(({ _panic : true } : T_panicReader)));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testReadFromNegativeReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        var _b:Buffer = ({} : Buffer);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        final __type__ = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (__type__ == null) {
                            var _err:AnyInterface = __type__ == null ? (null : AnyInterface) : __type__.__underlying__();
                            _t.fatal(Go.toInterface(("bytes.Buffer.ReadFrom didn\'t panic" : GoString)));
                        } else if (Go.typeEquals((__type__ : Error))) {
                            var _err:Error = __type__ == null ? (null : Error) : __type__.__underlying__() == null ? (null : Error) : __type__ == null ? (null : Error) : __type__.__underlying__().value;
                            var _wantError:GoString = ("bytes.Buffer: reader returned negative count from Read" : GoString);
                            if (_err.error() != (_wantError)) {
                                _t.fatalf(("recovered panic: got %v, want %v" : GoString), Go.toInterface(_err.error()), Go.toInterface(_wantError));
                            };
                        } else {
                            var _err:AnyInterface = __type__ == null ? null : __type__.__underlying__();
                            _t.fatalf(("unexpected panic value: %#v" : GoString), _err);
                        };
                    };
                };
                a();
            });
            _b.readFrom(Go.asInterface(({} : stdgo.bytes_test.Bytes_test.T_negativeReader)));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:Buffer = ({} : Buffer);
        {
            var _i:GoInt = (3 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _s:GoString = _fillBytes(_t, ("TestWriteTo (1)" : GoString), (_buf : Ref<Buffer>), Go.str(), (5 : GoInt), (_testBytes.__slice__((0 : GoInt), (_testBytes.length) / _i) : Slice<GoUInt8>));
                var _b:Buffer = ({} : Buffer);
                _buf.writeTo(Go.asInterface((_b : Ref<Buffer>)));
                _empty(_t, ("TestWriteTo (2)" : GoString), (_b : Ref<Buffer>), _s, new Slice<GoUInt8>((_testString.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_testString.length : GoInt).toBasic()) (0 : GoUInt8)]));
            });
        };
    }
function testRuneIO(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _b = new Slice<GoUInt8>((4000 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4000 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _buf:Buffer = ({} : Buffer);
        var _n:GoInt = (0 : GoInt);
        {
            var _r:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_r < (1000 : GoInt32), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_b.__slice__(_n) : Slice<GoUInt8>), _r);
                var __tmp__ = _buf.writeRune(_r), _nbytes:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("WriteRune(%U) error: %s" : GoString), Go.toInterface(_r), Go.toInterface(_err));
                };
                if (_nbytes != (_size)) {
                    _t.fatalf(("WriteRune(%U) expected %d, got %d" : GoString), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_nbytes));
                };
                _n = _n + (_size);
            });
        };
        _b = (_b.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
        if (!equal(_buf.bytes(), _b)) {
            _t.fatalf(("incorrect result from WriteRune: %q not %q" : GoString), Go.toInterface(_buf.bytes()), Go.toInterface(_b));
        };
        var _p = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _r:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_r < (1000 : GoInt32), _r++, {
                var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_p, _r);
                var __tmp__ = _buf.readRune(), _nr:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:Error = __tmp__._2;
                if (((_nr != _r) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(("ReadRune(%U) got %U,%d not %U,%d (err=%s)" : GoString), Go.toInterface(_r), Go.toInterface(_nr), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
        _buf.reset();
        {
            var _err:Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface(("UnreadRune at EOF: got no error" : GoString)));
            };
        };
        {
            var __tmp__ = _buf.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:Error = __tmp__._2;
            if (_err == null) {
                _t.fatal(Go.toInterface(("ReadRune at EOF: got no error" : GoString)));
            };
        };
        {
            var _err:Error = _buf.unreadRune();
            if (_err == null) {
                _t.fatal(Go.toInterface(("UnreadRune after ReadRune at EOF: got no error" : GoString)));
            };
        };
        _buf.write(_b);
        {
            var _r:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_r < (1000 : GoInt32), _r++, {
                var __tmp__ = _buf.readRune(), _r1:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _2:Error = __tmp__._2;
                {
                    var _err:Error = _buf.unreadRune();
                    if (_err != null) {
                        _t.fatalf(("UnreadRune(%U) got error %q" : GoString), Go.toInterface(_r), Go.toInterface(_err));
                    };
                };
                var __tmp__ = _buf.readRune(), _r2:GoInt32 = __tmp__._0, _nbytes:GoInt = __tmp__._1, _err:Error = __tmp__._2;
                if ((((_r1 != _r2) || (_r1 != _r)) || (_nbytes != _size)) || (_err != null)) {
                    _t.fatalf(("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)" : GoString), Go.toInterface(_r), Go.toInterface(_r2), Go.toInterface(_nbytes), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_err));
                };
            });
        };
    }
function testWriteInvalidRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _r in (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32)) : Slice<GoInt32>)) {
            var _buf:Buffer = ({} : Buffer);
            _buf.writeRune(_r);
            _check(_t, stdgo.fmt.Fmt.sprintf(("TestWriteInvalidRune (%d)" : GoString), Go.toInterface(_r)), (_buf : Ref<Buffer>), ("�" : GoString));
        };
    }
function testNext(_t:Ref<stdgo.testing.Testing.T>):Void {
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
                                var __tmp__ = _buf.read((_tmp.__slice__((0 : GoInt), _i) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _0:Error = __tmp__._1;
                                if (_n != (_i)) {
                                    _t.fatalf(("Read %d returned %d" : GoString), Go.toInterface(_i), Go.toInterface(_n));
                                };
                                var _bb = _buf.next(_k);
                                var _want:GoInt = _k;
                                if (_want > (_j - _i)) {
                                    _want = _j - _i;
                                };
                                if ((_bb.length) != (_want)) {
                                    _t.fatalf(("in %d,%d: len(Next(%d)) == %d" : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface((_bb.length)));
                                };
                                for (_l => _v in _bb) {
                                    if (_v != ((_l + _i : GoByte))) {
                                        _t.fatalf(("in %d,%d: Next(%d)[%d] = %d, want %d" : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_k), Go.toInterface(_l), Go.toInterface(_v), Go.toInterface(_l + _i));
                                    };
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testReadBytes(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer);
            var _err:Error = (null : Error);
            for (_1 => _expected in _test._expected) {
                var _bytes:Slice<GoByte> = (null : Slice<GoUInt8>);
                {
                    var __tmp__ = _buf.readBytes(_test._delim);
                    _bytes = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_bytes : GoString) != (_expected)) {
                    _t.errorf(("expected %q, got %q" : GoString), Go.toInterface(_expected), Go.toInterface(_bytes));
                };
                if (_err != null) {
                    break;
                };
            };
            if (Go.toInterface(_err) != (Go.toInterface(_test._err))) {
                _t.errorf(("expected error %v, got %v" : GoString), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function testReadString(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _readBytesTests) {
            var _buf = newBufferString(_test._buffer);
            var _err:Error = (null : Error);
            for (_1 => _expected in _test._expected) {
                var _s:GoString = ("" : GoString);
                {
                    var __tmp__ = _buf.readString(_test._delim);
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_s != (_expected)) {
                    _t.errorf(("expected %q, got %q" : GoString), Go.toInterface(_expected), Go.toInterface(_s));
                };
                if (_err != null) {
                    break;
                };
            };
            if (Go.toInterface(_err) != (Go.toInterface(_test._err))) {
                _t.errorf(("expected error %v, got %v" : GoString), Go.toInterface(_test._err), Go.toInterface(_err));
            };
        };
    }
function benchmarkReadString(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        var _data = new Slice<GoUInt8>((32768 : GoInt).toBasic(), 0, ...[for (i in 0 ... (32768 : GoInt).toBasic()) (0 : GoUInt8)]);
        _data[(32767 : GoInt)] = (120 : GoUInt8);
        _b.setBytes((("32768" : GoInt64) : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _buf = newBuffer(_data);
                var __tmp__ = _buf.readString((120 : GoUInt8)), _8:GoString = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(Go.toInterface(_err));
                };
            });
        };
    }
function testGrow(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testGrow" + " skip function");
        return;
        var _x = (new Slice<GoUInt8>(0, 0, (120 : GoUInt8)) : Slice<GoUInt8>);
        var _y = (new Slice<GoUInt8>(0, 0, (121 : GoUInt8)) : Slice<GoUInt8>);
        var _tmp = new Slice<GoUInt8>((72 : GoInt).toBasic(), 0, ...[for (i in 0 ... (72 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_0 => _growLen in (new Slice<GoInt>(0, 0, (0 : GoInt), (100 : GoInt), (1000 : GoInt), (10000 : GoInt), (100000 : GoInt)) : Slice<GoInt>)) {
            for (_1 => _startLen in (new Slice<GoInt>(0, 0, (0 : GoInt), (100 : GoInt), (1000 : GoInt), (10000 : GoInt), (100000 : GoInt)) : Slice<GoInt>)) {
                var _xBytes = repeat(_x, _startLen);
                var _buf = newBuffer(_xBytes);
                var __tmp__ = _buf.read(_tmp), _readBytes:GoInt = __tmp__._0, _2:Error = __tmp__._1;
                var _yBytes = repeat(_y, _growLen);
                var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
                    _buf.grow(_growLen);
                    _buf.write(_yBytes);
                });
                if (_allocs != (0 : GoFloat64)) {
                    _t.errorf(("allocation occurred during write" : GoString));
                };
                if (!equal((_buf.bytes().__slice__((0 : GoInt), _startLen - _readBytes) : Slice<GoUInt8>), (_xBytes.__slice__(_readBytes) : Slice<GoUInt8>))) {
                    _t.errorf(("bad initial data at %d %d" : GoString), Go.toInterface(_startLen), Go.toInterface(_growLen));
                };
                if (!equal((_buf.bytes().__slice__(_startLen - _readBytes, (_startLen - _readBytes) + _growLen) : Slice<GoUInt8>), _yBytes)) {
                    _t.errorf(("bad written data at %d %d" : GoString), Go.toInterface(_startLen), Go.toInterface(_growLen));
                };
            };
        };
    }
function testGrowOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        __deferstack__.unshift(() -> {
            var a = function():Void {
                {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (Go.toInterface(_err) != (Go.toInterface(errTooLarge))) {
                        _t.errorf(("after too-large Grow, recover() = %v; want %v" : GoString), _err, Go.toInterface(errTooLarge));
                    };
                };
            };
            a();
        });
        try {
            var _buf = newBuffer(new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (0 : GoUInt8)]));
            {};
            _buf.grow((2147483647 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
/**
    // Was a bug: used to give EOF reading empty slice at EOF.
**/
function testReadEmptyAtEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = ({} : Buffer);
        var _slice = new Slice<GoUInt8>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = _b.read(_slice), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read error: %v" : GoString), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(("wrong count; got %d want 0" : GoString), Go.toInterface(_n));
        };
    }
function testUnreadByte(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = ({} : Buffer);
        {
            var _err:Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(("UnreadByte at EOF: got no error" : GoString)));
            };
        };
        {
            var __tmp__ = _b.readByte(), _0:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(Go.toInterface(("ReadByte at EOF: got no error" : GoString)));
            };
        };
        {
            var _err:Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(("UnreadByte after ReadByte at EOF: got no error" : GoString)));
            };
        };
        _b.writeString(("abcdefghijklmnopqrstuvwxyz" : GoString));
        {
            var __tmp__ = _b.read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (_err != null)) {
                _t.fatalf(("Read(nil) = %d,%v; want 0,nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _err:Error = _b.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(("UnreadByte after Read(nil): got no error" : GoString)));
            };
        };
        {
            var __tmp__ = _b.readBytes((109 : GoUInt8)), _1:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadBytes: %v" : GoString), Go.toInterface(_err));
            };
        };
        {
            var _err:Error = _b.unreadByte();
            if (_err != null) {
                _t.fatalf(("UnreadByte: %v" : GoString), Go.toInterface(_err));
            };
        };
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadByte: %v" : GoString), Go.toInterface(_err));
        };
        if (_c != ((109 : GoUInt8))) {
            _t.errorf(("ReadByte = %q; want %q" : GoString), Go.toInterface(_c), Go.toInterface((109 : GoInt32)));
        };
    }
/**
    // Tests that we occasionally compact. Issue 5154.
**/
function testBufferGrowth(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b:Buffer = ({} : Buffer);
        var _buf = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        _b.write((_buf.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>));
        var _cap0:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5120 : GoInt), _i++, {
                _b.write(_buf);
                _b.read(_buf);
                if (_i == ((0 : GoInt))) {
                    _cap0 = _b.cap();
                };
            });
        };
        var _cap1:GoInt = _b.cap();
        if (_cap1 > (_cap0 * (3 : GoInt))) {
            _t.errorf(("buffer cap = %d; too big (grew from %d)" : GoString), Go.toInterface(_cap1), Go.toInterface(_cap0));
        };
    }
function benchmarkWriteByte(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.setBytes(("4096" : GoInt64));
        var _buf = newBuffer(new Slice<GoUInt8>((4096 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4096 : GoInt).toBasic()) (0 : GoUInt8)]));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (4096 : GoInt), _i++, {
                        _buf.writeByte((120 : GoUInt8));
                    });
                };
            });
        };
    }
function benchmarkWriteRune(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        {};
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
function benchmarkBufferNotEmptyWriteRead(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = ({} : Buffer);
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
function benchmarkBufferFullSmallReads(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _b:Buffer = ({} : Buffer);
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
function benchmarkBufferWriteBlock(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _block = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_0 => _n in (new Slice<GoInt>(0, 0, (4096 : GoInt), (65536 : GoInt), (1048576 : GoInt)) : Slice<GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("N%d" : GoString), Go.toInterface(_n)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                _b.reportAllocs();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        var _bb:Buffer = ({} : Buffer);
                        while (_bb.len() < _n) {
                            _bb.write(_block);
                        };
                    });
                };
            });
        };
    }
private function _eq(_a:Slice<GoString>, _b:Slice<GoString>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_a.length), _i++, {
                if (_a[(_i : GoInt)] != (_b[(_i : GoInt)])) {
                    return false;
                };
            });
        };
        return true;
    }
private function _sliceOfString(_s:Slice<Slice<GoByte>>):Slice<GoString> {
        var _result = new Slice<GoString>((_s.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_s.length : GoInt).toBasic()) ("" : GoString)]);
        for (_i => _v in _s) {
            _result[(_i : GoInt)] = (_v : GoString);
        };
        return _result;
    }
function testEqual(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((10 : GoInt), function():Void {
            for (_0 => _tt in _compareTests) {
                var _eql:Bool = equal(_tt._a, _tt._b);
                if (_eql != ((_tt._i == (0 : GoInt)))) {
                    _t.errorf(("Equal(%q, %q) = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_eql));
                };
            };
        });
        if (_allocs > (0 : GoFloat64)) {
            _t.errorf(("Equal allocated %v times" : GoString), Go.toInterface(_allocs));
        };
    }
function testEqualExhaustive(_t:Ref<stdgo.testing.Testing.T>):Void {
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
                _a[(_i : GoInt)] = ((17 : GoInt) * _i : GoByte);
                _b_init[(_i : GoInt)] = (((23 : GoInt) * _i) + (100 : GoInt) : GoByte);
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
                                    _t.errorf(("Equal(%d, %d, %d) = false" : GoString), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y));
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
function testNotEqual(_t:Ref<stdgo.testing.Testing.T>):Void {
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
                                        _a[(_diffpos : GoInt)] = (1 : GoUInt8);
                                        if (equal((_a.__slice__(_x, _x + _len) : Slice<GoUInt8>), (_b.__slice__(_y, _y + _len) : Slice<GoUInt8>)) || equal((_b.__slice__(_y, _y + _len) : Slice<GoUInt8>), (_a.__slice__(_x, _x + _len) : Slice<GoUInt8>))) {
                                            _t.errorf(("NotEqual(%d, %d, %d, %d) = true" : GoString), Go.toInterface(_len), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_diffpos));
                                        };
                                        _a[(_diffpos : GoInt)] = (0 : GoUInt8);
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
private function _runIndexTests(_t:Ref<stdgo.testing.Testing.T>, _f:(_s:Slice<GoByte>, _sep:Slice<GoByte>) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_0 => _test in _testCases) {
            var _a = (_test._a : Slice<GoByte>);
            var _b = (_test._b : Slice<GoByte>);
            var _actual:GoInt = _f(_a, _b);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : GoString), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
        var _allocTests:Slice<T__struct_1> = (new Slice<T__struct_1>(0, 0, ({ _a : (("000000000000000000000000000000000000000000000000000000000000000000000001" : GoString) : Slice<GoByte>), _b : (("0000000000000000000000000000000000000000000000000000000000000000001" : GoString) : Slice<GoByte>), _i : (5 : GoInt) } : T__struct_1), ({ _a : (("000000000000000000000000000000000000000000000000000000000000000010000" : GoString) : Slice<GoByte>), _b : (("00000000000000000000000000000000000000000000000000000000000001" : GoString) : Slice<GoByte>), _i : (3 : GoInt) } : T__struct_1)) : Slice<T__struct_1>);
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
            {
                var _i:GoInt = index(_allocTests[(1 : GoInt)]._a, _allocTests[(1 : GoInt)]._b);
                if (_i != (_allocTests[(1 : GoInt)]._i)) {
                    _t.errorf(("Index([]byte(%q), []byte(%q)) = %v; want %v" : GoString), Go.toInterface(_allocTests[(1 : GoInt)]._a), Go.toInterface(_allocTests[(1 : GoInt)]._b), Go.toInterface(_i), Go.toInterface(_allocTests[(1 : GoInt)]._i));
                };
            };
            {
                var _i:GoInt = lastIndex(_allocTests[(0 : GoInt)]._a, _allocTests[(0 : GoInt)]._b);
                if (_i != (_allocTests[(0 : GoInt)]._i)) {
                    _t.errorf(("LastIndex([]byte(%q), []byte(%q)) = %v; want %v" : GoString), Go.toInterface(_allocTests[(0 : GoInt)]._a), Go.toInterface(_allocTests[(0 : GoInt)]._b), Go.toInterface(_i), Go.toInterface(_allocTests[(0 : GoInt)]._i));
                };
            };
        });
        if (_allocs != (0 : GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : GoString), Go.toInterface(_allocs));
        };
    }
private function _runIndexAnyTests(_t:Ref<stdgo.testing.Testing.T>, _f:(_s:Slice<GoByte>, _chars:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<BinOpTest>):Void {
        for (_0 => _test in _testCases) {
            var _a = (_test._a : Slice<GoByte>);
            var _actual:GoInt = _f(_a, _test._b);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : GoString), Go.toInterface(_funcName), Go.toInterface(_a), Go.toInterface(_test._b), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
function testIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, index, ("Index" : GoString), _indexTests);
    }
function testLastIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, lastIndex, ("LastIndex" : GoString), _lastIndexTests);
    }
function testIndexAny(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runIndexAnyTests(_t, indexAny, ("IndexAny" : GoString), _indexAnyTests);
    }
function testLastIndexAny(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runIndexAnyTests(_t, lastIndexAny, ("LastIndexAny" : GoString), _lastIndexAnyTests);
    }
function testIndexByte(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _indexTests) {
            if ((_tt._b.length) != ((1 : GoInt))) {
                continue;
            };
            var _a = (_tt._a : Slice<GoByte>);
            var _b:GoUInt8 = _tt._b[(0 : GoInt)];
            var _pos:GoInt = indexByte(_a, _b);
            if (_pos != (_tt._i)) {
                _t.errorf(("IndexByte(%q, \'%c\') = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_pos));
            };
            var _posp:GoInt = indexBytePortable(_a, _b);
            if (_posp != (_tt._i)) {
                _t.errorf(("indexBytePortable(%q, \'%c\') = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_b), Go.toInterface(_posp));
            };
        };
    }
function testLastIndexByte(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new Slice<stdgo.bytes_test.Bytes_test.BinOpTest>(0, 0, (new stdgo.bytes_test.Bytes_test.BinOpTest(Go.str(), ("q" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("abcdef" : GoString), ("q" : GoString), (-1 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("abcdefabcdef" : GoString), ("a" : GoString), (("abcdef" : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("abcdefabcdef" : GoString), ("f" : GoString), (("abcdefabcde" : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("zabcdefabcdef" : GoString), ("z" : GoString), (0 : GoInt)) : stdgo.bytes_test.Bytes_test.BinOpTest), (new stdgo.bytes_test.Bytes_test.BinOpTest(("a☺b☻c☹d" : GoString), ("b" : GoString), (("a☺" : GoString).length)) : stdgo.bytes_test.Bytes_test.BinOpTest)) : Slice<stdgo.bytes_test.Bytes_test.BinOpTest>);
        for (_0 => _test in _testCases) {
            var _actual:GoInt = lastIndexByte((_test._a : Slice<GoByte>), _test._b[(0 : GoInt)]);
            if (_actual != (_test._i)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : GoString), Go.toInterface(_test._a), Go.toInterface(_test._b[(0 : GoInt)]), Go.toInterface(_actual), Go.toInterface(_test._i));
            };
        };
    }
/**
    // test a larger buffer with different sizes and alignments
**/
function testIndexByteBig(_t:Ref<stdgo.testing.Testing.T>):Void {
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
                        _b1[(_j : GoInt)] = (120 : GoUInt8);
                        var _pos:GoInt = indexByte(_b1, (120 : GoUInt8));
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        _b1[(_j : GoInt)] = (0 : GoUInt8);
                        _pos = indexByte(_b1, (120 : GoUInt8));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(0, _i) : Slice<GoUInt8>);
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_b1.length), _j++, {
                        _b1[(_j : GoInt)] = (120 : GoUInt8);
                        var _pos:GoInt = indexByte(_b1, (120 : GoUInt8));
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        _b1[(_j : GoInt)] = (0 : GoUInt8);
                        _pos = indexByte(_b1, (120 : GoUInt8));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(_i / (2 : GoInt), _n - ((_i + (1 : GoInt)) / (2 : GoInt))) : Slice<GoUInt8>);
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_b1.length), _j++, {
                        _b1[(_j : GoInt)] = (120 : GoUInt8);
                        var _pos:GoInt = indexByte(_b1, (120 : GoUInt8));
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                        _b1[(_j : GoInt)] = (0 : GoUInt8);
                        _pos = indexByte(_b1, (120 : GoUInt8));
                        if (_pos != ((-1 : GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : GoString), Go.toInterface(_b1), Go.toInterface(_pos));
                        };
                    });
                };
            });
        };
    }
/**
    // test a small index across all page offsets
**/
function testIndexByteSmall(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = new Slice<GoUInt8>((5015 : GoInt).toBasic(), 0, ...[for (i in 0 ... (5015 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_b.length - (15 : GoInt)), _i++, {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        _b[(_i + _j : GoInt)] = ((100 : GoInt) + _j : GoByte);
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        var _p:GoInt = indexByte((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>), ((100 : GoInt) + _j : GoByte));
                        if (_p != (_j)) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : GoString), Go.toInterface((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>)), Go.toInterface((100 : GoInt) + _j), Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        _b[(_i + _j : GoInt)] = (0 : GoUInt8);
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
                        _b[(_i + _j : GoInt)] = (1 : GoUInt8);
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        var _p:GoInt = indexByte((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>), ((0 : GoUInt8) : GoByte));
                        if (_p != ((-1 : GoInt))) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : GoString), Go.toInterface((_b.__slice__(_i, _i + (15 : GoInt)) : Slice<GoUInt8>)), Go.toInterface((0 : GoInt)), Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (15 : GoInt), _j++, {
                        _b[(_i + _j : GoInt)] = (0 : GoUInt8);
                    });
                };
            });
        };
    }
function testIndexRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_2>(
0,
0,
({ _in : Go.str(), _rune : (97 : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : Go.str(), _rune : (9786 : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : ("foo" : GoString), _rune : (9785 : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : ("foo" : GoString), _rune : (111 : GoInt32), _want : (1 : GoInt) } : T__struct_2),
({ _in : ("foo☺bar" : GoString), _rune : (9786 : GoInt32), _want : (3 : GoInt) } : T__struct_2),
({ _in : ("foo☺☻☹bar" : GoString), _rune : (9785 : GoInt32), _want : (9 : GoInt) } : T__struct_2),
({ _in : ("a A x" : GoString), _rune : (65 : GoInt32), _want : (2 : GoInt) } : T__struct_2),
({ _in : ("some_text=some_value" : GoString), _rune : (61 : GoInt32), _want : (9 : GoInt) } : T__struct_2),
({ _in : ("☺a" : GoString), _rune : (97 : GoInt32), _want : (3 : GoInt) } : T__struct_2),
({ _in : ("a☻☺b" : GoString), _rune : (9786 : GoInt32), _want : (4 : GoInt) } : T__struct_2),
({ _in : ("�" : GoString), _rune : (65533 : GoInt32), _want : (0 : GoInt) } : T__struct_2),
({ _in : Go.str(255), _rune : (65533 : GoInt32), _want : (0 : GoInt) } : T__struct_2),
({ _in : ("☻x�" : GoString), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_2),
({ _in : Go.str("☻x", 226, 152), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_2),
({ _in : Go.str("☻x", 226, 152, "�"), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_2),
({ _in : Go.str("☻x", 226, 152, "x"), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_2),
({ _in : Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (-1 : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (55296 : GoInt32), _want : (-1 : GoInt) } : T__struct_2),
({ _in : Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (1114112 : GoInt32), _want : (-1 : GoInt) } : T__struct_2)) : Slice<T__struct_2>);
        for (_0 => _tt in _tests) {
            {
                var _got:GoInt = indexRune((_tt._in : Slice<GoByte>), _tt._rune);
                if (_got != (_tt._want)) {
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack = (("test世界" : GoString) : Slice<GoByte>);
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((1000 : GoInt), function():Void {
            {
                var _i:GoInt = indexRune(_haystack, (115 : GoInt32));
                if (_i != ((2 : GoInt))) {
                    _t.fatalf(("\'s\' at %d; want 2" : GoString), Go.toInterface(_i));
                };
            };
            {
                var _i:GoInt = indexRune(_haystack, (19990 : GoInt32));
                if (_i != ((4 : GoInt))) {
                    _t.fatalf(("\'世\' at %d; want 4" : GoString), Go.toInterface(_i));
                };
            };
        });
        if (_allocs != (0 : GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : GoString), Go.toInterface(_allocs));
        };
    }
/**
    // test count of a single byte across page offsets
**/
function testCountByte(_t:Ref<stdgo.testing.Testing.T>):Void {
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
                    _b[(_i + _j : GoInt)] = ((100 : GoUInt8) : GoByte);
                    var _p:GoInt = count((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (100 : GoUInt8)) : Slice<GoUInt8>));
                    if (_p != (_j + (1 : GoInt))) {
                        _t.errorf(("TestCountByte.Count(%q, 100) = %d" : GoString), Go.toInterface((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>)), Go.toInterface(_p));
                    };
                });
            };
        };
        var _maxWnd:GoInt = _windows[((_windows.length) - (1 : GoInt) : GoInt)];
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
                            _b[(_i + _j : GoInt)] = ((0 : GoUInt8) : GoByte);
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
                            _b[(_i + _j : GoInt)] = ((0 : GoUInt8) : GoByte);
                        });
                    };
                };
            });
        };
    }
/**
    // Make sure we don't count bytes outside our window
**/
function testCountByteNoMatch(_t:Ref<stdgo.testing.Testing.T>):Void {
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
                            _b[(_i + _j : GoInt)] = ((100 : GoUInt8) : GoByte);
                        });
                    };
                    var _p:GoInt = count((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>));
                    if (_p != ((0 : GoInt))) {
                        _t.errorf(("TestCountByteNoMatch(%q, 0) = %d" : GoString), Go.toInterface((_b.__slice__(_i, _i + _window) : Slice<GoUInt8>)), Go.toInterface(_p));
                    };
                    {
                        var _j:GoInt = (0 : GoInt);
                        Go.cfor(_j < _window, _j++, {
                            _b[(_i + _j : GoInt)] = ((0 : GoUInt8) : GoByte);
                        });
                    };
                };
            });
        };
    }
private function _valName(_x:GoInt):GoString {
        {
            var _s:GoInt = _x >> ("20" : GoUInt64);
            if (_s << ("20" : GoUInt64) == (_x)) {
                return stdgo.fmt.Fmt.sprintf(("%dM" : GoString), Go.toInterface(_s));
            };
        };
        {
            var _s:GoInt = _x >> ("10" : GoUInt64);
            if (_s << ("10" : GoUInt64) == (_x)) {
                return stdgo.fmt.Fmt.sprintf(("%dK" : GoString), Go.toInterface(_s));
            };
        };
        return stdgo.fmt.Fmt.sprint(Go.toInterface(_x));
    }
private function _benchBytes(_b:Ref<stdgo.testing.Testing.B>, _sizes:Slice<GoInt>, _f:(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt) -> Void):Void {
        for (_0 => _n in _sizes) {
            if (_isRaceBuilder && (_n > (4096 : GoInt))) {
                continue;
            };
            _b.run(_valName(_n), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                if ((_bmbuf.length) < _n) {
                    _bmbuf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
                };
                _b.setBytes((_n : GoInt64));
                _f(_b, _n);
            });
        };
    }
function benchmarkIndexByte(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexByte));
    }
function benchmarkIndexBytePortable(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexByte(indexBytePortable));
    }
private function _bmIndexByte(_index:(Slice<GoByte>, GoByte) -> GoInt):(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt) -> Void {
        return function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, (120 : GoUInt8));
                    if (_j != (_n - (1 : GoInt))) {
                        _b.fatal(Go.toInterface(("bad index" : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
        };
    }
function benchmarkIndexRune(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRune(indexRune));
    }
function benchmarkIndexRuneASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, _bmIndexRuneASCII(indexRune));
    }
private function _bmIndexRuneASCII(_index:(Slice<GoByte>, GoRune) -> GoInt):(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt) -> Void {
        return function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, (120 : GoInt32));
                    if (_j != (_n - (1 : GoInt))) {
                        _b.fatal(Go.toInterface(("bad index" : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
        };
    }
private function _bmIndexRune(_index:(Slice<GoByte>, GoRune) -> GoInt):(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt) -> Void {
        return function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            stdgo.unicode.utf8.Utf8.encodeRune((_buf.__slice__(_n - (3 : GoInt)) : Slice<GoUInt8>), (19990 : GoInt32));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = _index(_buf, (19990 : GoInt32));
                    if (_j != (_n - (3 : GoInt))) {
                        _b.fatal(Go.toInterface(("bad index" : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (3 : GoInt) : GoInt)] = (0 : GoUInt8);
            _buf[(_n - (2 : GoInt) : GoInt)] = (0 : GoUInt8);
            _buf[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
        };
    }
function benchmarkEqual(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("0" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
            var _buf1 = (_buf.__slice__((0 : GoInt), (0 : GoInt)) : Slice<GoUInt8>);
            var _buf2 = (_buf.__slice__((1 : GoInt), (1 : GoInt)) : Slice<GoUInt8>);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface(("bad equal" : GoString)));
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
private function _bmEqual(_equal:(Slice<GoByte>, Slice<GoByte>) -> Bool):(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt) -> Void {
        return function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            if ((_bmbuf.length) < ((2 : GoInt) * _n)) {
                _bmbuf = new Slice<GoUInt8>(((2 : GoInt) * _n : GoInt).toBasic(), 0, ...[for (i in 0 ... ((2 : GoInt) * _n : GoInt).toBasic()) (0 : GoUInt8)]);
            };
            var _buf1 = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            var _buf2 = (_bmbuf.__slice__(_n, (2 : GoInt) * _n) : Slice<GoUInt8>);
            _buf1[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            _buf2[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _eq:Bool = _equal(_buf1, _buf2);
                    if (!_eq) {
                        _b.fatal(Go.toInterface(("bad equal" : GoString)));
                    };
                });
            };
            _buf1[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
            _buf2[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
        };
    }
function benchmarkIndex(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != (_n - (7 : GoInt))) {
                        _b.fatal(Go.toInterface(("bad index" : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
        });
    }
function benchmarkIndexEasy(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            _buf[(_n - (7 : GoInt) : GoInt)] = (120 : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = index(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != (_n - (7 : GoInt))) {
                        _b.fatal(Go.toInterface(("bad index" : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
            _buf[(_n - (7 : GoInt) : GoInt)] = (0 : GoUInt8);
        });
    }
function benchmarkCount(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != ((1 : GoInt))) {
                        _b.fatal(Go.toInterface(("bad count" : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
        });
    }
function benchmarkCountEasy(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            _buf[(_n - (1 : GoInt) : GoInt)] = (120 : GoUInt8);
            _buf[(_n - (7 : GoInt) : GoInt)] = (120 : GoUInt8);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, (_buf.__slice__(_n - (7 : GoInt)) : Slice<GoUInt8>));
                    if (_j != ((1 : GoInt))) {
                        _b.fatal(Go.toInterface(("bad count" : GoString)), Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : GoInt) : GoInt)] = (0 : GoUInt8);
            _buf[(_n - (7 : GoInt) : GoInt)] = (0 : GoUInt8);
        });
    }
function benchmarkCountSingle(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchBytes(_b, _indexSizes, function(_b:Ref<stdgo.testing.Testing.B>, _n:GoInt):Void {
            var _buf = (_bmbuf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
            var _step:GoInt = (8 : GoInt);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_buf.length), _i = _i + (_step), {
                    _buf[(_i : GoInt)] = (1 : GoUInt8);
                });
            };
            var _expect:GoInt = (_buf.length + (_step - (1 : GoInt))) / _step;
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    var _j:GoInt = count(_buf, (new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>));
                    if (_j != (_expect)) {
                        _b.fatal(Go.toInterface(("bad count" : GoString)), Go.toInterface(_j), Go.toInterface(_expect));
                    };
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_buf.length), _i++, {
                    _buf[(_i : GoInt)] = (0 : GoUInt8);
                });
            };
        });
    }
function testSplit(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _splittests) {
            var _a = splitN((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>), _tt._n);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_1 => _v in _a) {
                _x = (_v.__append__((122 : GoUInt8)));
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
                var _want:GoString = _tt._a[((_tt._a.length) - (1 : GoInt) : GoInt)] + ("z" : GoString);
                if ((_x : GoString) != (_want)) {
                    _t.errorf(("last appended result was %s; want %s" : GoString), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s = join(_a, (_tt._sep : Slice<GoByte>));
            if ((_s : GoString) != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < (0 : GoInt)) {
                var _b = split((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(("Split disagrees withSplitN(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
            if ((_a.length) > (0 : GoInt)) {
                var _0 = _a[(0 : GoInt)], _1 = _s, _out = _1, _in = _0;
                if ((_in.capacity == _out.capacity) && (Go.pointer((_in.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]) == Go.pointer((_out.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]))) {
                    _t.errorf(("Join(%#v, %q) didn\'t copy" : GoString), Go.toInterface(_a), Go.toInterface(_tt._sep));
                };
            };
        };
    }
function testSplitAfter(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _splitaftertests) {
            var _a = splitAfterN((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>), _tt._n);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_1 => _v in _a) {
                _x = (_v.__append__((122 : GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_result), Go.toInterface(_tt._a));
                continue;
            };
            {
                var _want:GoString = _tt._a[((_tt._a.length) - (1 : GoInt) : GoInt)] + ("z" : GoString);
                if ((_x : GoString) != (_want)) {
                    _t.errorf(("last appended result was %s; want %s" : GoString), Go.toInterface(_x), Go.toInterface(_want));
                };
            };
            var _s = join(_a, (null : Slice<GoUInt8>));
            if ((_s : GoString) != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < (0 : GoInt)) {
                var _b = splitAfter((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(("SplitAfter disagrees withSplitAfterN(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _fieldstests) {
            var _b = (_tt._s : Slice<GoByte>);
            var _a = fields(_b);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_1 => _v in _a) {
                _x = (_v.__append__((122 : GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            if ((_b : GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : GoString), Go.toInterface((_b : GoString)), Go.toInterface(_tt._s));
            };
            if ((_tt._a.length) > (0 : GoInt)) {
                {
                    var _want:GoString = _tt._a[((_tt._a.length) - (1 : GoInt) : GoInt)] + ("z" : GoString);
                    if ((_x : GoString) != (_want)) {
                        _t.errorf(("last appended result was %s; want %s" : GoString), Go.toInterface(_x), Go.toInterface(_want));
                    };
                };
            };
        };
    }
function testFieldsFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _fieldstests) {
            var _a = fieldsFunc((_tt._s : Slice<GoByte>), stdgo.unicode.Unicode.isSpace);
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return _c == ((88 : GoInt32));
        };
        var _fieldsFuncTests:Slice<stdgo.bytes_test.Bytes_test.FieldsTest> = (new Slice<stdgo.bytes_test.Bytes_test.FieldsTest>(0, 0, (new stdgo.bytes_test.Bytes_test.FieldsTest(Go.str(), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest(("XX" : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest(("XXhiXXX" : GoString), (new Slice<GoString>(0, 0, ("hi" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest), (new stdgo.bytes_test.Bytes_test.FieldsTest(("aXXbXXXcX" : GoString), (new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString), ("c" : GoString)) : Slice<GoString>)) : stdgo.bytes_test.Bytes_test.FieldsTest)) : Slice<stdgo.bytes_test.Bytes_test.FieldsTest>);
        for (_1 => _tt in _fieldsFuncTests) {
            var _b = (_tt._s : Slice<GoByte>);
            var _a = fieldsFunc(_b, _pred);
            var _x:Slice<GoByte> = (null : Slice<GoUInt8>);
            for (_2 => _v in _a) {
                _x = (_v.__append__((122 : GoUInt8)));
            };
            var _result = _sliceOfString(_a);
            if (!_eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
            };
            if ((_b : GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : GoString), Go.toInterface(_b), Go.toInterface(_tt._s));
            };
            if ((_tt._a.length) > (0 : GoInt)) {
                {
                    var _want:GoString = _tt._a[((_tt._a.length) - (1 : GoInt) : GoInt)] + ("z" : GoString);
                    if ((_x : GoString) != (_want)) {
                        _t.errorf(("last appended result was %s; want %s" : GoString), Go.toInterface(_x), Go.toInterface(_want));
                    };
                };
            };
        };
    }
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
private function _runStringTests(_t:Ref<stdgo.testing.Testing.T>, _f:Slice<GoByte> -> Slice<GoByte>, _funcName:GoString, _testCases:Slice<StringTest>):Void {
        for (_0 => _tc in _testCases) {
            var _actual = _f((_tc._in : Slice<GoByte>));
            if ((_actual == null) && (_tc._out != null)) {
                _t.errorf(("%s(%q) = nil; want %q" : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_tc._out));
            };
            if ((_actual != null) && (_tc._out == null)) {
                _t.errorf(("%s(%q) = %q; want nil" : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual));
            };
            if (!equal(_actual, _tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
private function _tenRunes(_r:GoRune):GoString {
        var _runes = new Slice<GoInt32>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoInt32)]);
        for (_i in 0 ... _runes.length.toBasic()) {
            _runes[(_i : GoInt)] = _r;
        };
        return (_runes : GoString);
    }
/**
    // User-defined self-inverse mapping function
**/
private function _rot13(_r:GoRune):GoRune {
        {};
        if ((_r >= (97 : GoInt32)) && (_r <= (122 : GoInt32))) {
            return (((_r - (97 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32)) + (97 : GoInt32);
        };
        if ((_r >= (65 : GoInt32)) && (_r <= (90 : GoInt32))) {
            return (((_r - (65 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32)) + (65 : GoInt32);
        };
        return _r;
    }
function testMap(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _a:GoString = _tenRunes((97 : GoInt32));
        var _maxRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return (1114111 : GoInt32);
        };
        var _m = map(_maxRune, (_a : Slice<GoByte>));
        var _expect:GoString = _tenRunes((1114111 : GoInt32));
        if ((_m : GoString) != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _minRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return (97 : GoInt32);
        };
        _m = map(_minRune, (_tenRunes((1114111 : GoInt32)) : Slice<GoByte>));
        _expect = _a;
        if ((_m : GoString) != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, (("a to zed" : GoString) : Slice<GoByte>));
        _expect = ("n gb mrq" : GoString);
        if ((_m : GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, (("a to zed" : GoString) : Slice<GoByte>)));
        _expect = ("a to zed" : GoString);
        if ((_m : GoString) != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _dropNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (-1 : GoInt32);
        };
        _m = map(_dropNotLatin, (("Hello, 세계" : GoString) : Slice<GoByte>));
        _expect = ("Hello" : GoString);
        if ((_m : GoString) != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _invalidRune:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return (1114112 : GoInt32);
        };
        _m = map(_invalidRune, (("x" : GoString) : Slice<GoByte>));
        _expect = ("�" : GoString);
        if ((_m : GoString) != (_expect)) {
            _t.errorf(("invalidRune: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
    }
function testToUpper(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toUpper, ("ToUpper" : GoString), _upperTests);
    }
function testToLower(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toLower, ("ToLower" : GoString), _lowerTests);
    }
function benchmarkToUpper(_b:Ref<stdgo.testing.Testing.B>):Void {
        for (_0 => _tc in _upperTests) {
            var _tin = (_tc._in : Slice<GoByte>);
            _b.run(_tc._in, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual = toUpper(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(("ToUpper(%q) = %q; want %q" : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:Ref<stdgo.testing.Testing.B>):Void {
        for (_0 => _tc in _lowerTests) {
            var _tin = (_tc._in : Slice<GoByte>);
            _b.run(_tc._in, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual = toLower(_tin);
                        if (!equal(_actual, _tc._out)) {
                            _b.errorf(("ToLower(%q) = %q; want %q" : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function testToValidUTF8(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in _toValidUTF8Tests) {
            var _got = toValidUTF8((_tc._in : Slice<GoByte>), (_tc._repl : Slice<GoByte>));
            if (!equal(_got, (_tc._out : Slice<GoByte>))) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got), Go.toInterface(_tc._out));
            };
        };
    }
function testTrimSpace(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, trimSpace, ("TrimSpace" : GoString), _trimSpaceTests);
    }
function testRepeat(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in repeatTests) {
            var _tin = (_tt._in : Slice<GoByte>);
            var _tout = (_tt._out : Slice<GoByte>);
            var _a = repeat(_tin, _tt._count);
            if (!equal(_a, _tout)) {
                _t.errorf(("Repeat(%q, %d) = %q; want %q" : GoString), Go.toInterface(_tin), Go.toInterface(_tt._count), Go.toInterface(_a), Go.toInterface(_tout));
                continue;
            };
        };
    }
private function _repeat(_b:Slice<GoByte>, _count:GoInt):Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err:Error = (null : Error);
        __deferstack__.unshift(() -> {
            var a = function():Void {
                {
                    var _r:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_r != null) {
                        {
                            final __type__ = _r;
                            if (Go.typeEquals((__type__ : Error))) {
                                var _v:Error = __type__ == null ? (null : Error) : __type__.__underlying__() == null ? (null : Error) : __type__ == null ? (null : Error) : __type__.__underlying__().value;
                                _err = _v;
                            } else {
                                var _v:AnyInterface = __type__ == null ? null : __type__.__underlying__();
                                _err = stdgo.fmt.Fmt.errorf(("%s" : GoString), _v);
                            };
                        };
                    };
                };
            };
            a();
        });
        try {
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _err;
        };
    }
/**
    // See Issue golang.org/issue/16237
**/
function testRepeatCatchesOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = {
            var s:GoArray<T__struct_4> = new GoArray<T__struct_4>(...[for (i in 0 ... 7) ({ _s : ("" : GoString), _count : (0 : GoInt), _errStr : ("" : GoString) } : T__struct_4)]);
            s[0] = ({ _s : ("--" : GoString), _count : (-2147483647 : GoInt), _errStr : ("negative" : GoString) } : T__struct_4);
            s[1] = ({ _s : Go.str(), _count : ((("2147483647" : GoUInt) : GoUInt) : GoInt), _errStr : Go.str() } : T__struct_4);
            s[2] = ({ _s : ("-" : GoString), _count : (10 : GoInt), _errStr : Go.str() } : T__struct_4);
            s[3] = ({ _s : ("gopher" : GoString), _count : (0 : GoInt), _errStr : Go.str() } : T__struct_4);
            s[4] = ({ _s : ("-" : GoString), _count : (-1 : GoInt), _errStr : ("negative" : GoString) } : T__struct_4);
            s[5] = ({ _s : ("--" : GoString), _count : (-102 : GoInt), _errStr : ("negative" : GoString) } : T__struct_4);
            s[6] = ({ _s : (new Slice<GoUInt8>((255 : GoInt).toBasic(), 0, ...[for (i in 0 ... (255 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString), _count : ((("16843010" : GoUInt) : GoUInt) : GoInt), _errStr : ("overflow" : GoString) } : T__struct_4);
            s;
        };
        for (_i => _tt in _tests) {
            var _err:Error = _repeat((_tt._s : Slice<GoByte>), _tt._count);
            if (_tt._errStr == (Go.str())) {
                if (_err != null) {
                    _t.errorf(("#%d panicked %v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), _tt._errStr)) {
                _t.errorf(("#%d expected %q got %q" : GoString), Go.toInterface(_i), Go.toInterface(_tt._errStr), Go.toInterface(_err));
            };
        };
    }
private function _runesEqual(_a:Slice<GoRune>, _b:Slice<GoRune>):Bool {
        if ((_a.length) != ((_b.length))) {
            return false;
        };
        for (_i => _r in _a) {
            if (_r != (_b[(_i : GoInt)])) {
                return false;
            };
        };
        return true;
    }
function testRunes(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in runesTests) {
            var _tin = (_tt._in : Slice<GoByte>);
            var _a = runes(_tin);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(("Runes(%q) = %v; want %v" : GoString), Go.toInterface(_tin), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:GoString = (_a : GoString);
                if (_s != (_tt._in)) {
                    _t.errorf(("string(Runes(%q)) = %x; want %x" : GoString), Go.toInterface(_tin), Go.toInterface(_s), Go.toInterface(_tin));
                };
            };
        };
    }
function testTrim(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _toFn:GoString -> { var _0 : (Slice<GoUInt8>, GoString) -> Slice<GoUInt8>; var _1 : (Slice<GoUInt8>, Slice<GoUInt8>) -> Slice<GoUInt8>; } = function(_name:GoString):{ var _0 : (Slice<GoByte>, GoString) -> Slice<GoByte>; var _1 : (Slice<GoByte>, Slice<GoByte>) -> Slice<GoByte>; } {
            if (_name == (("Trim" : GoString))) {
                return { _0 : trim, _1 : null };
            } else if (_name == (("TrimLeft" : GoString))) {
                return { _0 : trimLeft, _1 : null };
            } else if (_name == (("TrimRight" : GoString))) {
                return { _0 : trimRight, _1 : null };
            } else if (_name == (("TrimPrefix" : GoString))) {
                return { _0 : null, _1 : trimPrefix };
            } else if (_name == (("TrimSuffix" : GoString))) {
                return { _0 : null, _1 : trimSuffix };
            } else {
                _t.errorf(("Undefined trim function %s" : GoString), Go.toInterface(_name));
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
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q, %q) = %q; want %q" : GoString), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
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
                    return ("nil" : GoString);
                } else {
                    return stdgo.fmt.Fmt.sprintf(("%q" : GoString), Go.toInterface(_s));
                };
            };
            if ((_actual.length) != ((0 : GoInt))) {
                _t.errorf(("%s(%s, %q) returned non-empty value" : GoString), Go.toInterface(_name), Go.toInterface(_report(_tc._in)), Go.toInterface(_tc._arg));
            } else {
                var _actualNil:Bool = _actual == null;
                var _outNil:Bool = _tc._out == null;
                if (_actualNil != (_outNil)) {
                    _t.errorf(("%s(%s, %q) got nil %t; want nil %t" : GoString), Go.toInterface(_name), Go.toInterface(_report(_tc._in)), Go.toInterface(_tc._arg), Go.toInterface(_actualNil), Go.toInterface(_outNil));
                };
            };
        };
    }
private function _not(_p:T_predicate):T_predicate {
        return (new T_predicate(function(_r:GoRune):Bool {
            return !_p._f(_r);
        }, ("not " : GoString) + _p._name) : T_predicate);
    }
function testTrimFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in _trimFuncTests) {
            var _trimmers = (new Slice<T__struct_5>(0, 0, ({ _name : ("TrimFunc" : GoString), _trim : trimFunc, _out : _tc._trimOut } : T__struct_5), ({ _name : ("TrimLeftFunc" : GoString), _trim : trimLeftFunc, _out : _tc._leftOut } : T__struct_5), ({ _name : ("TrimRightFunc" : GoString), _trim : trimRightFunc, _out : _tc._rightOut } : T__struct_5)) : Slice<T__struct_5>);
            for (_1 => _trimmer in _trimmers) {
                var _actual = _trimmer._trim((_tc._in : Slice<GoByte>), _tc._f._f);
                if ((_actual == null) && (_trimmer._out != null)) {
                    _t.errorf(("%s(%q, %q) = nil; want %q" : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_trimmer._out));
                };
                if ((_actual != null) && (_trimmer._out == null)) {
                    _t.errorf(("%s(%q, %q) = %q; want nil" : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual));
                };
                if (!equal(_actual, _trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual), Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in _indexFuncTests) {
            var _first:GoInt = indexFunc((_tc._in : Slice<GoByte>), _tc._f._f);
            if (_first != (_tc._first)) {
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first), Go.toInterface(_tc._first));
            };
            var _last:GoInt = lastIndexFunc((_tc._in : Slice<GoByte>), _tc._f._f);
            if (_last != (_tc._last)) {
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_last), Go.toInterface(_tc._last));
            };
        };
    }
function testReplace(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in replaceTests) {
            var _in = ((_tt._in : Slice<GoByte>).__append__(...("<spare>" : GoString).__toArray__()));
            _in = (_in.__slice__(0, (_tt._in.length)) : Slice<GoUInt8>);
            var _out = replace(_in, (_tt._old : Slice<GoByte>), (_tt._new : Slice<GoByte>), _tt._n);
            {
                var _s:GoString = (_out : GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
            if ((_in.capacity == _out.capacity) && (Go.pointer((_in.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]) == Go.pointer((_out.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)[(0 : GoInt)]))) {
                _t.errorf(("Replace(%q, %q, %q, %d) didn\'t copy" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n));
            };
            if (_tt._n == ((-1 : GoInt))) {
                var _out = replaceAll(_in, (_tt._old : Slice<GoByte>), (_tt._new : Slice<GoByte>));
                {
                    var _s:GoString = (_out : GoString);
                    if (_s != (_tt._out)) {
                        _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_s), Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
function testTitle(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in titleTests) {
            {
                var _s:GoString = (title((_tt._in : Slice<GoByte>)) : GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Title(%q) = %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testToTitle(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in toTitleTests) {
            {
                var _s:GoString = (toTitle((_tt._in : Slice<GoByte>)) : GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("ToTitle(%q) = %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testEqualFold(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold((_tt._s : Slice<GoByte>), (_tt._t : Slice<GoByte>));
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold((_tt._t : Slice<GoByte>), (_tt._s : Slice<GoByte>));
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : GoString), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testCut(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _cutTests) {
            {
                var __tmp__ = cut((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>)), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
                if ((((_before : GoString) != _tt._before) || ((_after : GoString) != _tt._after)) || (_found != _tt._found)) {
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutPrefix(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _cutPrefixTests) {
            {
                var __tmp__ = cutPrefix((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>)), _after:Slice<GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_after : GoString) != _tt._after) || (_found != _tt._found)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutSuffix(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _cutSuffixTests) {
            {
                var __tmp__ = cutSuffix((_tt._s : Slice<GoByte>), (_tt._sep : Slice<GoByte>)), _after:Slice<GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_after : GoString) != _tt._after) || (_found != _tt._found)) {
                    _t.errorf(("CutSuffix(%q, %q) = %q, %v, want %q, %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function testBufferGrowNegative(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        __deferstack__.unshift(() -> {
            var a = function():Void {
                {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_err == null) {
                        _t.fatal(Go.toInterface(("Grow(-1) should have panicked" : GoString)));
                    };
                };
            };
            a();
        });
        try {
            var _b:Buffer = ({} : Buffer);
            _b.grow((-1 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testBufferTruncateNegative(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        __deferstack__.unshift(() -> {
            var a = function():Void {
                {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_err == null) {
                        _t.fatal(Go.toInterface(("Truncate(-1) should have panicked" : GoString)));
                    };
                };
            };
            a();
        });
        try {
            var _b:Buffer = ({} : Buffer);
            _b.truncate((-1 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testBufferTruncateOutOfRange(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        __deferstack__.unshift(() -> {
            var a = function():Void {
                {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_err == null) {
                        _t.fatal(Go.toInterface(("Truncate(20) should have panicked" : GoString)));
                    };
                };
            };
            a();
        });
        try {
            var _b:Buffer = ({} : Buffer);
            _b.write(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]));
            _b.truncate((20 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testContains(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _containsTests) {
            {
                var _got:Bool = contains(_tt._b, _tt._subslice);
                if (_got != (_tt._want)) {
                    _t.errorf(("Contains(%q, %q) = %v, want %v" : GoString), Go.toInterface(_tt._b), Go.toInterface(_tt._subslice), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testContainsAny(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _ct in containsAnyTests) {
            if (containsAny(_ct._b, _ct._substr) != (_ct._expected)) {
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : GoString), Go.toInterface(_ct._b), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _ct in containsRuneTests) {
            if (containsRune(_ct._b, _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : GoString), Go.toInterface(_ct._b), Go.toInterface(_ct._r), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function benchmarkFields(_b:Ref<stdgo.testing.Testing.B>):Void {
        for (_0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _j:GoInt = (16 : GoInt);
                    Go.cfor(_j <= (1048576 : GoInt), _j = _j << (("4" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : GoString), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkFieldsFunc(_b:Ref<stdgo.testing.Testing.B>):Void {
        for (_0 => _sd in _bytesdata) {
            _b.run(_sd._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _j:GoInt = (16 : GoInt);
                    Go.cfor(_j <= (1048576 : GoInt), _j = _j << (("4" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : GoString), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkTrimSpace(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new Slice<T__struct_13>(0, 0, ({ _name : ("NoTrim" : GoString), _input : (("typical" : GoString) : Slice<GoByte>) } : T__struct_13), ({ _name : ("ASCII" : GoString), _input : (("  foo bar  " : GoString) : Slice<GoByte>) } : T__struct_13), ({ _name : ("SomeNonASCII" : GoString), _input : (("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : GoString) : Slice<GoByte>) } : T__struct_13), ({ _name : ("JustNonASCII" : GoString), _input : (("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : GoString) : Slice<GoByte>) } : T__struct_13)) : Slice<T__struct_13>);
        for (_0 => _test in _tests) {
            _b.run(_test._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        trimSpace(_test._input);
                    });
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new Slice<T__struct_13>(0, 0, ({ _name : ("Valid" : GoString), _input : (("typical" : GoString) : Slice<GoByte>) } : T__struct_13), ({ _name : ("InvalidASCII" : GoString), _input : (Go.str("foo", 255, "bar") : Slice<GoByte>) } : T__struct_13), ({ _name : ("InvalidNonASCII" : GoString), _input : (Go.str("日本語", 255, "日本語") : Slice<GoByte>) } : T__struct_13)) : Slice<T__struct_13>);
        var _replacement = (("�" : GoString) : Slice<GoByte>);
        _b.resetTimer();
        for (_0 => _test in _tests) {
            _b.run(_test._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        toValidUTF8(_test._input, _replacement);
                    });
                };
            });
        };
    }
private function _makeBenchInputHard():Slice<GoByte> {
        var _tokens = (new GoArray<GoString>(("<a>" : GoString), ("<p>" : GoString), ("<b>" : GoString), ("<strong>" : GoString), ("</a>" : GoString), ("</p>" : GoString), ("</b>" : GoString), ("</strong>" : GoString), ("hello" : GoString), ("world" : GoString)) : GoArray<GoString>);
        var _x = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while (true) {
            var _i:GoInt = stdgo.math.rand.Rand.intn((_tokens.length));
            if ((_x.length + _tokens[(_i : GoInt)].length) >= (1048576 : GoInt)) {
                break;
            };
            _x = _x.__appendref__(..._tokens[(_i : GoInt)].__toArray__());
        };
        return _x;
    }
private function _benchmarkIndexHard(_b:Ref<stdgo.testing.Testing.B>, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                index(_benchInputHard, _sep);
            });
        };
    }
private function _benchmarkLastIndexHard(_b:Ref<stdgo.testing.Testing.B>, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                lastIndex(_benchInputHard, _sep);
            });
        };
    }
private function _benchmarkCountHard(_b:Ref<stdgo.testing.Testing.B>, _sep:Slice<GoByte>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                count(_benchInputHard, _sep);
            });
        };
    }
function benchmarkIndexHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<>" : GoString) : Slice<GoByte>));
    }
function benchmarkIndexHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("</pre>" : GoString) : Slice<GoByte>));
    }
function benchmarkIndexHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<b>hello world</b>" : GoString) : Slice<GoByte>));
    }
function benchmarkIndexHard4(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, (("<pre><b>hello</b><strong>world</strong></pre>" : GoString) : Slice<GoByte>));
    }
function benchmarkLastIndexHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("<>" : GoString) : Slice<GoByte>));
    }
function benchmarkLastIndexHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("</pre>" : GoString) : Slice<GoByte>));
    }
function benchmarkLastIndexHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, (("<b>hello world</b>" : GoString) : Slice<GoByte>));
    }
function benchmarkCountHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("<>" : GoString) : Slice<GoByte>));
    }
function benchmarkCountHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("</pre>" : GoString) : Slice<GoByte>));
    }
function benchmarkCountHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, (("<b>hello world</b>" : GoString) : Slice<GoByte>));
    }
function benchmarkSplitEmptySeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, (null : Slice<GoUInt8>));
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("/" : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("hello" : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, _sep);
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("/" : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, (10 : GoInt));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _sep = (("hello" : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, _sep, (10 : GoInt));
            });
        };
    }
function benchmarkRepeat(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                repeat((("-" : GoString) : Slice<GoByte>), (80 : GoInt));
            });
        };
    }
function benchmarkRepeatLarge(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s = repeat((("@" : GoString) : Slice<GoByte>), (8192 : GoInt));
        {
            var _j:GoInt = (8 : GoInt);
            Go.cfor(_j <= (30 : GoInt), _j++, {
                for (_0 => _k in (new Slice<GoInt>(0, 0, (1 : GoInt), (16 : GoInt), (4097 : GoInt)) : Slice<GoInt>)) {
                    var _s = (_s.__slice__(0, _k) : Slice<GoUInt8>);
                    var _n:GoInt = ((1 : GoInt) << _j) / _k;
                    if (_n == ((0 : GoInt))) {
                        continue;
                    };
                    _b.run(stdgo.fmt.Fmt.sprintf(("%d/%d" : GoString), Go.toInterface((1 : GoInt) << _j), Go.toInterface(_k)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                        {
                            var _i:GoInt = (0 : GoInt);
                            Go.cfor(_i < _b.n, _i++, {
                                repeat(_s, _n);
                            });
                        };
                        _b.setBytes((_n * (_s.length) : GoInt64));
                    });
                };
            });
        };
    }
function benchmarkBytesCompare(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _n:GoInt = (1 : GoInt);
            Go.cfor(_n <= (2048 : GoInt), _n = _n << (("1" : GoUInt64)), {
                _b.run(stdgo.fmt.Fmt.sprint(Go.toInterface(_n)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                    var _x:Slice<GoUInt8> = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
                    var _y:Slice<GoUInt8> = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _n, _i++, {
                            _x[(_i : GoInt)] = (97 : GoUInt8);
                        });
                    };
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _n, _i++, {
                            _y[(_i : GoInt)] = (97 : GoUInt8);
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
function benchmarkIndexAnyASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, (35 : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkIndexAnyUTF8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, (35 : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkLastIndexAnyASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, (35 : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkLastIndexAnyUTF8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _x = repeat((new Slice<GoUInt8>(0, 0, (35 : GoUInt8)) : Slice<GoUInt8>), (2048 : GoInt));
        var _cs:GoString = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkTrimASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _cs:GoString = ("0123456789abcdef" : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (4096 : GoInt), _k = _k << (("4" : GoUInt64)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (16 : GoInt), _j = _j << (("1" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkTrimByte(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _x = (("  the quick brown fox   " : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                trim(_x, (" " : GoString));
            });
        };
    }
function benchmarkIndexPeriodic(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _key = (new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>);
        for (_0 => _skip in (new GoArray<GoInt>((2 : GoInt), (4 : GoInt), (8 : GoInt), (16 : GoInt), (32 : GoInt), (64 : GoInt)) : GoArray<GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("IndexPeriodic%d" : GoString), Go.toInterface(_skip)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                var _buf = new Slice<GoUInt8>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoUInt8)]);
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (_buf.length), _i = _i + (_skip), {
                        _buf[(_i : GoInt)] = (1 : GoUInt8);
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
function testClone(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _cloneTests:Slice<Slice<GoUInt8>> = (new Slice<Slice<GoUInt8>>(0, 0, ((null : Slice<GoUInt8>) : Slice<GoByte>), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), clone((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), ((stdgo.strings.Strings.repeat(("a" : GoString), (42 : GoInt)) : Slice<GoByte>).__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), ((stdgo.strings.Strings.repeat(("a" : GoString), (42 : GoInt)) : Slice<GoByte>).__slice__(0, (0 : GoInt), (0 : GoInt)) : Slice<GoUInt8>), (("short" : GoString) : Slice<GoByte>), (stdgo.strings.Strings.repeat(("a" : GoString), (42 : GoInt)) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>);
        for (_0 => _input in _cloneTests) {
            var _clone = clone(_input);
            if (!equal(_clone, _input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : GoString), Go.toInterface(_input), Go.toInterface(_clone), Go.toInterface(_input));
            };
            if ((_input == null) && (_clone != null)) {
                _t.errorf(("Clone(%#v) return value should be equal to nil slice." : GoString), Go.toInterface(_input));
            };
            if ((_input != null) && (_clone == null)) {
                _t.errorf(("Clone(%#v) return value should not be equal to nil slice." : GoString), Go.toInterface(_input));
            };
            if ((_input.capacity != (0 : GoInt)) && (stdgo.unsafe.Unsafe.sliceData(_input) == stdgo.unsafe.Unsafe.sliceData(_clone))) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : GoString), Go.toInterface(_input));
            };
        };
    }
function testCompare(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _compareTests) {
            var _numShifts:GoInt = (16 : GoInt);
            var _buffer = new Slice<GoUInt8>(((_tt._b.length) + _numShifts : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_tt._b.length) + _numShifts : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _offset:GoInt = (0 : GoInt);
                Go.cfor(_offset <= _numShifts, _offset++, {
                    var _shiftedB = (_buffer.__slice__(_offset, (_tt._b.length) + _offset) : Slice<GoUInt8>);
                    Go.copySlice(_shiftedB, _tt._b);
                    var _cmp:GoInt = compare(_tt._a, _shiftedB);
                    if (_cmp != (_tt._i)) {
                        _t.errorf(("Compare(%q, %q), offset %d = %v; want %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_offset), Go.toInterface(_cmp), Go.toInterface(_tt._i));
                    };
                });
            };
        };
    }
function testCompareIdenticalSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b:Slice<GoUInt8> = (("Hello Gophers!" : GoString) : Slice<GoByte>);
        if (compare(_b, _b) != ((0 : GoInt))) {
            _t.error(Go.toInterface(("b != b" : GoString)));
        };
        if (compare(_b, (_b.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)) != ((1 : GoInt))) {
            _t.error(Go.toInterface(("b > b[:1] failed" : GoString)));
        };
    }
function testCompareBytes(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testCompareBytes" + " skip function");
        return;
        var _lengths = new Slice<GoInt>((0 : GoInt).toBasic(), 0, ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoInt)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (128 : GoInt), _i++, {
                _lengths = _lengths.__appendref__(_i);
            });
        };
        _lengths = _lengths.__appendref__((256 : GoInt), (512 : GoInt), (1024 : GoInt), (1333 : GoInt), (4095 : GoInt), (4096 : GoInt), (4097 : GoInt));
        if (!stdgo.testing.Testing.short() || (stdgo.internal.testenv.Testenv.builder() != Go.str())) {
            _lengths = _lengths.__appendref__((65535 : GoInt), (65536 : GoInt), (65537 : GoInt), (99999 : GoInt));
        };
        var _n:GoInt = _lengths[((_lengths.length) - (1 : GoInt) : GoInt)];
        var _a = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
        var _b = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_0 => _len in _lengths) {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _len, _i++, {
                    _a[(_i : GoInt)] = ((1 : GoInt) + (((31 : GoInt) * _i) % (254 : GoInt)) : GoByte);
                    _b[(_i : GoInt)] = ((1 : GoInt) + (((31 : GoInt) * _i) % (254 : GoInt)) : GoByte);
                });
            };
            {
                var _i:GoInt = _len;
                Go.cfor(_i <= _n, _i++, {
                    _a[(_i : GoInt)] = (8 : GoUInt8);
                    _b[(_i : GoInt)] = (9 : GoUInt8);
                });
            };
            var _cmp:GoInt = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
            if (_cmp != ((0 : GoInt))) {
                _t.errorf(("CompareIdentical(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
            };
            if (_len > (0 : GoInt)) {
                _cmp = compare((_a.__slice__(0, _len - (1 : GoInt)) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
                if (_cmp != ((-1 : GoInt))) {
                    _t.errorf(("CompareAshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
                };
                _cmp = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len - (1 : GoInt)) : Slice<GoUInt8>));
                if (_cmp != ((1 : GoInt))) {
                    _t.errorf(("CompareBshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
                };
            };
            {
                var _k:GoInt = (0 : GoInt);
                Go.cfor(_k < _len, _k++, {
                    _b[(_k : GoInt)] = _a[(_k : GoInt)] - (1 : GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
                    if (_cmp != ((1 : GoInt))) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    _b[(_k : GoInt)] = _a[(_k : GoInt)] + (1 : GoUInt8);
                    _cmp = compare((_a.__slice__(0, _len) : Slice<GoUInt8>), (_b.__slice__(0, _len) : Slice<GoUInt8>));
                    if (_cmp != ((-1 : GoInt))) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    _b[(_k : GoInt)] = _a[(_k : GoInt)];
                });
            };
        };
    }
function testEndianBaseCompare(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _a = new Slice<GoUInt8>((512 : GoInt).toBasic(), 0, ...[for (i in 0 ... (512 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _b = new Slice<GoUInt8>((512 : GoInt).toBasic(), 0, ...[for (i in 0 ... (512 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (512 : GoInt), _i++, {
                _a[(_i : GoInt)] = ((1 : GoInt) + (((31 : GoInt) * _i) % (254 : GoInt)) : GoByte);
                _b[(_i : GoInt)] = ((1 : GoInt) + (((31 : GoInt) * _i) % (254 : GoInt)) : GoByte);
            });
        };
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i <= (512 : GoInt), _i = _i << (("1" : GoUInt64)), {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_i - (1 : GoInt)), _j++, {
                        _a[(_j : GoInt)] = _b[(_j : GoInt)] - (1 : GoUInt8);
                        _a[(_j + (1 : GoInt) : GoInt)] = _b[(_j + (1 : GoInt) : GoInt)] + (1 : GoUInt8);
                        var _cmp:GoInt = compare((_a.__slice__(0, _i) : Slice<GoUInt8>), (_b.__slice__(0, _i) : Slice<GoUInt8>));
                        if (_cmp != ((-1 : GoInt))) {
                            _t.errorf(("CompareBbigger(%d,%d) = %d" : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        _a[(_j : GoInt)] = _b[(_j : GoInt)] + (1 : GoUInt8);
                        _a[(_j + (1 : GoInt) : GoInt)] = _b[(_j + (1 : GoInt) : GoInt)] - (1 : GoUInt8);
                        _cmp = compare((_a.__slice__(0, _i) : Slice<GoUInt8>), (_b.__slice__(0, _i) : Slice<GoUInt8>));
                        if (_cmp != ((1 : GoInt))) {
                            _t.errorf(("CompareAbigger(%d,%d) = %d" : GoString), Go.toInterface(_i), Go.toInterface(_j), Go.toInterface(_cmp));
                        };
                        _a[(_j : GoInt)] = _b[(_j : GoInt)];
                        _a[(_j + (1 : GoInt) : GoInt)] = _b[(_j + (1 : GoInt) : GoInt)];
                    });
                };
            });
        };
    }
function benchmarkCompareBytesEqual(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : GoString) : Slice<GoByte>);
        var _b2 = (("Hello Gophers!" : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 != b2" : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesToNil(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : GoString) : Slice<GoByte>);
        var _b2:Slice<GoByte> = (null : Slice<GoUInt8>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((1 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 > b2 failed" : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesEmpty(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (Go.str() : Slice<GoByte>);
        var _b2 = _b1;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 != b2" : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesIdentical(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : GoString) : Slice<GoByte>);
        var _b2 = _b1;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 != b2" : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesSameLength(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : GoString) : Slice<GoByte>);
        var _b2 = (("Hello, Gophers" : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 < b2 failed" : GoString)));
                };
            });
        };
    }
function benchmarkCompareBytesDifferentLength(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _b1 = (("Hello Gophers!" : GoString) : Slice<GoByte>);
        var _b2 = (("Hello, Gophers!" : GoString) : Slice<GoByte>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((-1 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 < b2 failed" : GoString)));
                };
            });
        };
    }
private function _benchmarkCompareBytesBigUnaligned(_b:Ref<stdgo.testing.Testing.B>, _offset:GoInt):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while ((_b1.length) < (1048576 : GoInt)) {
            _b1 = _b1.__appendref__(...("Hello Gophers!" : GoString).__toArray__());
        };
        var _b2 = (((("12345678" : GoString) : Slice<GoByte>).__slice__(0, _offset) : Slice<GoUInt8>).__append__(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _j:GoInt = (0 : GoInt);
            Go.cfor(_j < _b.n, _j++, {
                if (compare(_b1, (_b2.__slice__(_offset) : Slice<GoUInt8>)) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 != b2" : GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : GoInt64));
    }
function benchmarkCompareBytesBigUnaligned(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:GoInt = (1 : GoInt);
            Go.cfor(_i < (8 : GoInt), _i++, {
                _b.run(stdgo.fmt.Fmt.sprintf(("offset=%d" : GoString), Go.toInterface(_i)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                    _benchmarkCompareBytesBigUnaligned(_b, _i);
                });
            });
        };
    }
function benchmarkCompareBytesBig(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while ((_b1.length) < (1048576 : GoInt)) {
            _b1 = _b1.__appendref__(...("Hello Gophers!" : GoString).__toArray__());
        };
        var _b2 = ((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>).__append__(..._b1.__toArray__()));
        _b.startTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 != b2" : GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : GoInt64));
    }
function benchmarkCompareBytesBigIdentical(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.stopTimer();
        var _b1 = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
        while ((_b1.length) < (1048576 : GoInt)) {
            _b1 = _b1.__appendref__(...("Hello Gophers!" : GoString).__toArray__());
        };
        var _b2 = _b1;
        _b.startTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                if (compare(_b1, _b2) != ((0 : GoInt))) {
                    _b.fatal(Go.toInterface(("b1 != b2" : GoString)));
                };
            });
        };
        _b.setBytes((_b1.length : GoInt64));
    }
function exampleBuffer():Void {
        var _b:Buffer = ({} : Buffer);
        _b.write((("Hello " : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.fprintf(Go.asInterface((_b : Ref<Buffer>)), ("world!" : GoString));
        _b.writeTo(Go.asInterface(stdgo.os.Os.stdout));
    }
function exampleBuffer_reader():Void {
        var _buf = stdgo.bytes.Bytes.newBufferString(("R29waGVycyBydWxlIQ==" : GoString));
        var _dec:stdgo.io.Io.Reader = stdgo.encoding.base64.Base64.newDecoder(stdgo.encoding.base64.Base64.stdEncoding, Go.asInterface(_buf));
        stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), _dec);
    }
function exampleBuffer_Bytes():Void {
        var _buf:Buffer = (new Buffer() : Buffer);
        _buf.write((new Slice<GoUInt8>(
0,
0,
(104 : GoUInt8),
(101 : GoUInt8),
(108 : GoUInt8),
(108 : GoUInt8),
(111 : GoUInt8),
(32 : GoUInt8),
(119 : GoUInt8),
(111 : GoUInt8),
(114 : GoUInt8),
(108 : GoUInt8),
(100 : GoUInt8)) : Slice<GoUInt8>));
        stdgo.os.Os.stdout.write(_buf.bytes());
    }
function exampleBuffer_Cap():Void {
        var _buf1 = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)]));
        var _buf2 = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((0 : GoInt).toBasic(), (10 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]));
        stdgo.fmt.Fmt.println(Go.toInterface(_buf1.cap()));
        stdgo.fmt.Fmt.println(Go.toInterface(_buf2.cap()));
    }
function exampleBuffer_Grow():Void {
        var _b:Buffer = ({} : Buffer);
        _b.grow((64 : GoInt));
        var _bb = _b.bytes();
        _b.write((("64 bytes or fewer" : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf(("%q" : GoString), Go.toInterface((_bb.__slice__(0, _b.len()) : Slice<GoUInt8>)));
    }
function exampleBuffer_Len():Void {
        var _b:Buffer = ({} : Buffer);
        _b.grow((64 : GoInt));
        _b.write((("abcde" : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf(("%d" : GoString), Go.toInterface(_b.len()));
    }
function exampleBuffer_Next():Void {
        var _b:Buffer = ({} : Buffer);
        _b.grow((64 : GoInt));
        _b.write((("abcde" : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface((_b.next((2 : GoInt)) : GoString)));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface((_b.next((2 : GoInt)) : GoString)));
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface((_b.next((2 : GoInt)) : GoString)));
    }
function exampleBuffer_Read():Void {
        var _b:Buffer = ({} : Buffer);
        _b.grow((64 : GoInt));
        _b.write((("abcde" : GoString) : Slice<GoByte>));
        var _rdbuf = new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = _b.read(_rdbuf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_n));
        stdgo.fmt.Fmt.println(Go.toInterface((_b.string() : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((_rdbuf : GoString)));
    }
function exampleBuffer_ReadByte():Void {
        var _b:Buffer = ({} : Buffer);
        _b.grow((64 : GoInt));
        _b.write((("abcde" : GoString) : Slice<GoByte>));
        var __tmp__ = _b.readByte(), _c:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_c));
        stdgo.fmt.Fmt.println(Go.toInterface((_b.string() : GoString)));
    }
function exampleCompare():Void {
        var _0:Slice<GoByte> = (null : Slice<GoUInt8>), _1:Slice<GoByte> = (null : Slice<GoUInt8>), _b:Slice<GoByte> = _1, _a:Slice<GoByte> = _0;
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
            return stdgo.bytes.Bytes.compare(_haystack[(_i : GoInt)], _needle) >= (0 : GoInt);
        });
        if ((_i < _haystack.length) && stdgo.bytes.Bytes.equal(_haystack[(_i : GoInt)], _needle)) {};
    }
function exampleContains():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : GoString) : Slice<GoByte>), (("foo" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : GoString) : Slice<GoByte>), (("bar" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((Go.str() : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : GoString) : Slice<GoByte>), ("fÄo!" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : GoString) : Slice<GoByte>), ("去是伟大的." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : GoString) : Slice<GoByte>), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((Go.str() : Slice<GoByte>), Go.str())));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : GoString) : Slice<GoByte>), (102 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : GoString) : Slice<GoByte>), (246 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : GoString) : Slice<GoByte>), (22823 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : GoString) : Slice<GoByte>), (33 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((Go.str() : Slice<GoByte>), (64 : GoInt32))));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.count((("cheese" : GoString) : Slice<GoByte>), (("e" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.count((("five" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cut((_s : Slice<GoByte>), (_sep : Slice<GoByte>)), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show(("Gopher" : GoString), ("Go" : GoString));
        _show(("Gopher" : GoString), ("ph" : GoString));
        _show(("Gopher" : GoString), ("er" : GoString));
        _show(("Gopher" : GoString), ("Badger" : GoString));
    }
function exampleEqual():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : GoString) : Slice<GoByte>), (("Go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : GoString) : Slice<GoByte>), (("C++" : GoString) : Slice<GoByte>))));
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equalFold((("Go" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.bytes.Bytes.fields((("  foo bar  baz   " : GoString) : Slice<GoByte>))));
    }
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.bytes.Bytes.fieldsFunc((("  foo1;bar2,baz3..." : GoString) : Slice<GoByte>), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : GoString) : Slice<GoByte>), (("Go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : GoString) : Slice<GoByte>), (("C" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (("O" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (("Ami" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : GoString) : Slice<GoByte>), (("ken" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : GoString) : Slice<GoByte>), (("dmr" : GoString) : Slice<GoByte>))));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : GoString) : Slice<GoByte>), ((107 : GoUInt8) : GoByte))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : GoString) : Slice<GoByte>), ((103 : GoUInt8) : GoByte))));
    }
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, 世界" : GoString) : Slice<GoByte>), _f)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, world" : GoString) : Slice<GoByte>), _f)));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexAny((("chicken" : GoString) : Slice<GoByte>), ("aeiouy" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexAny((("crwth" : GoString) : Slice<GoByte>), ("aeiouy" : GoString))));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : GoString) : Slice<GoByte>), (107 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : GoString) : Slice<GoByte>), (100 : GoInt32))));
    }
function exampleJoin():Void {
        var _s = (new Slice<Slice<GoUInt8>>(0, 0, (("foo" : GoString) : Slice<GoByte>), (("bar" : GoString) : Slice<GoByte>), (("baz" : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>);
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.join(_s, ((", " : GoString) : Slice<GoByte>))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((("go gopher" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : GoString) : Slice<GoByte>), (("rodent" : GoString) : Slice<GoByte>))));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : GoString) : Slice<GoByte>), ("MüQp" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go 地鼠" : GoString) : Slice<GoByte>), ("地大" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : GoString) : Slice<GoByte>), ("z,!." : GoString))));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : GoString) : Slice<GoByte>), ((103 : GoUInt8) : GoByte))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : GoString) : Slice<GoByte>), ((114 : GoUInt8) : GoByte))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : GoString) : Slice<GoByte>), ((122 : GoUInt8) : GoByte))));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber)));
    }
function exampleReader_Len():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.newReader((("Hi!" : GoString) : Slice<GoByte>)).len()));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.newReader((("こんにちは!" : GoString) : Slice<GoByte>)).len()));
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.printf(("ba%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.repeat((("na" : GoString) : Slice<GoByte>), (2 : GoInt))));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : GoString) : Slice<GoByte>), (("k" : GoString) : Slice<GoByte>), (("ky" : GoString) : Slice<GoByte>), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : GoString) : Slice<GoByte>), (("oink" : GoString) : Slice<GoByte>), (("moo" : GoString) : Slice<GoByte>), (-1 : GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.replaceAll((("oink oink oink" : GoString) : Slice<GoByte>), (("oink" : GoString) : Slice<GoByte>), (("moo" : GoString) : Slice<GoByte>))));
    }
function exampleRunes():Void {
        var _rs = stdgo.bytes.Bytes.runes((("go gopher" : GoString) : Slice<GoByte>));
        for (_0 => _r in _rs) {
            stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_r));
        };
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split((("a man a plan a canal panama" : GoString) : Slice<GoByte>), (("a " : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split(((" xyz " : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split((Go.str() : Slice<GoByte>), (("Bernardo O\'Higgins" : GoString) : Slice<GoByte>))));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.splitN((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>), (2 : GoInt))));
        var _z = stdgo.bytes.Bytes.splitN((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>), (0 : GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : GoString), Go.toInterface(_z), Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.splitAfter((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>))));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.splitAfterN((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>), (2 : GoInt))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.title((("her royal highness" : GoString) : Slice<GoByte>))));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.toTitle((("loud noises" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.toTitle((("хлеб" : GoString) : Slice<GoByte>))));
    }
function exampleToTitleSpecial():Void {
        var _str = (("ahoj vývojári golang" : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(Go.toInterface(("Original : " : GoString) + (_str : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("ToTitle : " : GoString) + (_totitle : GoString)));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.printf(("[%q]" : GoString), Go.toInterface(stdgo.bytes.Bytes.trim(((" !!! Achtung! Achtung! !!! " : GoString) : Slice<GoByte>), ("! " : GoString))));
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("\"go-gopher!\"" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("1234go-gopher!567" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(Go.toInterface((stdgo.bytes.Bytes.trimLeft((("453gopher8257" : GoString) : Slice<GoByte>), ("0123456789" : GoString)) : GoString)));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("1234go-gopher!567" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleTrimPrefix():Void {
        var _b:Slice<GoUInt8> = (("Goodbye,, world!" : GoString) : Slice<GoByte>);
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("Goodbye," : GoString) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("See ya," : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf(("Hello%s" : GoString), Go.toInterface(_b));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.trimSpace(((" \t\n a lone gopher \n\t\r\n" : GoString) : Slice<GoByte>))));
    }
function exampleTrimSuffix():Void {
        var _b:Slice<GoUInt8> = (("Hello, goodbye, etc!" : GoString) : Slice<GoByte>);
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("goodbye, etc!" : GoString) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("gopher" : GoString) : Slice<GoByte>));
        _b = _b.__appendref__(...stdgo.bytes.Bytes.trimSuffix((("world!" : GoString) : Slice<GoByte>), (("x!" : GoString) : Slice<GoByte>)).__toArray__());
        stdgo.os.Os.stdout.write(_b);
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(Go.toInterface((stdgo.bytes.Bytes.trimRight((("453gopher8257" : GoString) : Slice<GoByte>), ("0123456789" : GoString)) : GoString)));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("1234go-gopher!567" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.toLower((("Gopher" : GoString) : Slice<GoByte>))));
    }
function exampleToLowerSpecial():Void {
        var _str = (("AHOJ VÝVOJÁRİ GOLANG" : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(Go.toInterface(("Original : " : GoString) + (_str : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("ToLower : " : GoString) + (_totitle : GoString)));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.toUpper((("Gopher" : GoString) : Slice<GoByte>))));
    }
function exampleToUpperSpecial():Void {
        var _str = (("ahoj vývojári golang" : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(Go.toInterface(("Original : " : GoString) + (_str : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("ToUpper : " : GoString) + (_totitle : GoString)));
    }
function testReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : GoString) : Slice<GoByte>));
        var _tests = (new Slice<T__struct_14>(
0,
0,
({ _off : ("0" : GoInt64), _seek : (0 : GoInt), _n : (20 : GoInt), _want : ("0123456789" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_14),
({ _off : ("1" : GoInt64), _seek : (0 : GoInt), _n : (1 : GoInt), _want : ("1" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_14),
({ _off : ("1" : GoInt64), _seek : (1 : GoInt), _n : (2 : GoInt), _want : ("34" : GoString), _wantpos : ("3" : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_14),
({ _off : ("-1" : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("bytes.Reader.Seek: negative position" : GoString) } : T__struct_14),
({ _off : ("8589934592" : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : ("8589934592" : GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : GoString) } : T__struct_14),
({ _off : ("1" : GoInt64), _seek : (1 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : ("8589934593" : GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : GoString) } : T__struct_14),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (5 : GoInt), _want : ("01234" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_14),
({ _off : (0 : GoInt64), _seek : (1 : GoInt), _n : (5 : GoInt), _want : ("56789" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_14),
({ _off : ("-1" : GoInt64), _seek : (2 : GoInt), _n : (1 : GoInt), _want : ("9" : GoString), _wantpos : ("9" : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_14)) : Slice<T__struct_14>);
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err == null) && (_tt._seekerr != Go.str())) {
                _t.errorf(("%d. want seek error %q" : GoString), Go.toInterface(_i), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_err != null) && (_err.error() != _tt._seekerr)) {
                _t.errorf(("%d. seek error = %q; want %q" : GoString), Go.toInterface(_i), Go.toInterface(_err.error()), Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_tt._wantpos != ("0" : GoInt64)) && (_tt._wantpos != _pos)) {
                _t.errorf(("%d. pos = %d, want %d" : GoString), Go.toInterface(_i), Go.toInterface(_pos), Go.toInterface(_tt._wantpos));
            };
            var _buf = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(_tt._readerr))) {
                _t.errorf(("%d. read = %v; want %v" : GoString), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._readerr));
                continue;
            };
            var _got:GoString = ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
        };
    }
function testReadAfterBigSeek(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : GoString) : Slice<GoByte>));
        {
            var __tmp__ = _r.seek(("2147483653" : GoInt64), (0 : GoInt)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("Read = %d, %v; want 0, EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
function testReaderAt(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : GoString) : Slice<GoByte>));
        var _tests = (new Slice<T__struct_15>(0, 0, ({ _off : ("0" : GoInt64), _n : (10 : GoInt), _want : ("0123456789" : GoString), _wanterr : (null : AnyInterface) } : T__struct_15), ({ _off : ("1" : GoInt64), _n : (10 : GoInt), _want : ("123456789" : GoString), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_15), ({ _off : ("1" : GoInt64), _n : (9 : GoInt), _want : ("123456789" : GoString), _wanterr : (null : AnyInterface) } : T__struct_15), ({ _off : ("11" : GoInt64), _n : (10 : GoInt), _want : Go.str(), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_15), ({ _off : ("0" : GoInt64), _n : (0 : GoInt), _want : Go.str(), _wanterr : (null : AnyInterface) } : T__struct_15), ({ _off : ("-1" : GoInt64), _n : (0 : GoInt), _want : Go.str(), _wanterr : Go.toInterface(("bytes.Reader.ReadAt: negative offset" : GoString)) } : T__struct_15)) : Slice<T__struct_15>);
        for (_i => _tt in _tests) {
            var _b = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            var _got:GoString = ((_b.__slice__(0, _rn) : Slice<GoUInt8>) : GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
            if (stdgo.fmt.Fmt.sprintf(("%v" : GoString), Go.toInterface(_err)) != (stdgo.fmt.Fmt.sprintf(("%v" : GoString), _tt._wanterr))) {
                _t.errorf(("%d. got error = %v; want %v" : GoString), Go.toInterface(_i), Go.toInterface(_err), _tt._wanterr);
            };
        };
    }
function testReaderAtConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("0123456789" : GoString) : Slice<GoByte>));
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _wg.add((1 : GoInt));
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        __deferstack__.unshift(() -> _wg.done());
                        try {
                            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) (0 : GoUInt8)]);
                            _r.readAt((_buf.__slice__(0) : Slice<GoUInt8>), (_i : GoInt64));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (Go.recover_exception != null) throw Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            Go.recover_exception = __exception__.native;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (Go.recover_exception != null) throw Go.recover_exception;
                            return;
                        };
                    };
                    a(_i);
                });
            });
        };
        _wg.wait_();
    }
function testEmptyReaderConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>));
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _wg.add((2 : GoInt));
                Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        __deferstack__.unshift(() -> _wg.done());
                        try {
                            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1) (0 : GoUInt8)]);
                            _r.read((_buf.__slice__(0) : Slice<GoUInt8>));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (Go.recover_exception != null) throw Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            Go.recover_exception = __exception__.native;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (Go.recover_exception != null) throw Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
                Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        __deferstack__.unshift(() -> _wg.done());
                        try {
                            _r.read((null : Slice<GoUInt8>));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (Go.recover_exception != null) throw Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            Go.recover_exception = __exception__.native;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (Go.recover_exception != null) throw Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
function testReaderWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i = _i + ((3 : GoInt)), {
                var _l:GoInt = (0 : GoInt);
                if (_i > (0 : GoInt)) {
                    _l = (_testString.length) / _i;
                };
                var _s:GoString = (_testString.__slice__(0, _l) : GoString);
                var _r = newReader((_testBytes.__slice__(0, _l) : Slice<GoUInt8>));
                var _b:Buffer = ({} : Buffer);
                var __tmp__ = _r.writeTo(Go.asInterface((_b : Ref<Buffer>))), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                {
                    var _expect:GoInt64 = (_s.length : GoInt64);
                    if (_n != (_expect)) {
                        _t.errorf(("got %v; want %v" : GoString), Go.toInterface(_n), Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(("for length %d: got error = %v; want nil" : GoString), Go.toInterface(_l), Go.toInterface(_err));
                };
                if ((_b.string() : GoString) != (_s)) {
                    _t.errorf(("got string %q; want %q" : GoString), Go.toInterface((_b.string() : GoString)), Go.toInterface(_s));
                };
                if (_r.len() != ((0 : GoInt))) {
                    _t.errorf(("reader contains %v bytes; want 0" : GoString), Go.toInterface(_r.len()));
                };
            });
        };
    }
function testReaderLen(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _r = newReader((("hello world" : GoString) : Slice<GoByte>));
        {
            var _0:GoInt = _r.len(), _1:GoInt = (11 : GoInt), _want:GoInt = _1, _got:GoInt = _0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || (_n != (10 : GoInt))) {
                _t.errorf(("Read failed: read %d %v" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _0:GoInt = _r.len(), _1:GoInt = (1 : GoInt), _want:GoInt = _1, _got:GoInt = _0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var __tmp__ = _r.read(new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || (_n != (1 : GoInt))) {
                _t.errorf(("Read failed: read %d %v; want 1, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var _0:GoInt = _r.len(), _1:GoInt = (0 : GoInt), _want:GoInt = _1, _got:GoInt = _0;
            if (_got != (_want)) {
                _t.errorf(("r.Len(): got %d, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testUnreadRuneError(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader((("0123456789" : GoString) : Slice<GoByte>));
            {
                var __tmp__ = _reader.readRune(), _1:GoInt32 = __tmp__._0, _2:GoInt = __tmp__._1, _err:Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err:Error = _reader.unreadRune();
            if (_err == null) {
                _t.errorf(("Unreading after %s: expected error" : GoString), Go.toInterface(_tt._name));
            };
        };
    }
function testReaderDoubleUnreadRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = newBuffer((("groucho" : GoString) : Slice<GoByte>));
        {
            var __tmp__ = _buf.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:Error = _buf.unreadByte();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:Error = _buf.unreadByte();
            if (_err == null) {
                _t.fatal(Go.toInterface(("UnreadByte: expected error, got nil" : GoString)));
            };
        };
    }
/**
    
    
    
**/
@:structInit @:private class T_nErr_testReaderCopyNothing_0 {
    public var _n : GoInt64 = 0;
    public var _err : Error = (null : Error);
    public function new(?_n:GoInt64, ?_err:Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_nErr_testReaderCopyNothing_0(_n, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1_static_extension) class T_justReader_testReaderCopyNothing_1 {
    @:embedded
    public var reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function read(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return reader.read(__0);
    public function __copy__() {
        return new T_justReader_testReaderCopyNothing_1(reader);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2_static_extension) class T_justWriter_testReaderCopyNothing_2 {
    @:embedded
    public var writer : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public function new(?writer:stdgo.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function write(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return writer.write(__0);
    public function __copy__() {
        return new T_justWriter_testReaderCopyNothing_2(writer);
    }
}
/**
    // verify that copying from an empty reader always has the same results,
    // regardless of the presence of a WriteTo method.
**/
function testReaderCopyNothing(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        {};
        var _discard:stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2 = (new T_justWriter_testReaderCopyNothing_2(stdgo.io.Io.discard) : T_justWriter_testReaderCopyNothing_2);
        var _0:T_nErr_testReaderCopyNothing_0 = ({} : stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0), _1:T_nErr_testReaderCopyNothing_0 = ({} : stdgo.bytes_test.Bytes_test.T_nErr_testReaderCopyNothing_0), _withOut:T_nErr_testReaderCopyNothing_0 = _1, _with:T_nErr_testReaderCopyNothing_0 = _0;
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(_discard), Go.asInterface(newReader((null : Slice<GoUInt8>))));
            _with._n = __tmp__._0;
            _with._err = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(_discard), Go.asInterface((new T_justReader_testReaderCopyNothing_1(Go.asInterface(newReader((null : Slice<GoUInt8>)))) : T_justReader_testReaderCopyNothing_1)));
            _withOut._n = __tmp__._0;
            _withOut._err = __tmp__._1;
        };
        if (Go.toInterface(_with) != Go.toInterface(_withOut)) {
            _t.errorf(("behavior differs: with = %#v; without: %#v" : GoString), Go.toInterface(_with), Go.toInterface(_withOut));
        };
    }
/**
    // tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testReaderLenSize" + " skip function");
        return;
        var _r = newReader((("abc" : GoString) : Slice<GoByte>));
        stdgo.io.Io.copyN(stdgo.io.Io.discard, Go.asInterface(_r), ("1" : GoInt64));
        if (_r.len() != ((2 : GoInt))) {
            _t.errorf(("Len = %d; want 2" : GoString), Go.toInterface(_r.len()));
        };
        if (_r.size() != (("3" : GoInt64))) {
            _t.errorf(("Size = %d; want 3" : GoString), Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = newReader((("世界" : GoString) : Slice<GoByte>));
        {
            var __tmp__ = _r.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(("ReadRune: unexpected error: %v" : GoString), Go.toInterface(_err));
            };
        };
        {};
        _r.reset((("abcdef" : GoString) : Slice<GoByte>));
        {
            var _err:Error = _r.unreadRune();
            if (_err == null) {
                _t.errorf(("UnreadRune: expected error, got nil" : GoString));
            };
        };
        var __tmp__ = stdgo.io.Io.readAll(Go.asInterface(_r)), _buf:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadAll: unexpected error: %v" : GoString), Go.toInterface(_err));
        };
        {
            var _got:GoString = (_buf : GoString);
            if (_got != (("abcdef" : GoString))) {
                _t.errorf(("ReadAll: got %q, want %q" : GoString), Go.toInterface(_got), Go.toInterface(("abcdef" : GoString)));
            };
        };
    }
function testReaderZero(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _l:GoInt = (((new Reader() : Reader) : Ref<Reader>)).len();
            if (_l != ((0 : GoInt))) {
                _t.errorf(("Len: got %d, want 0" : GoString), Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).readAt((null : Slice<GoUInt8>), ("11" : GoInt64)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).readByte(), _b:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
            if ((_b != (0 : GoUInt8)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : GoString), Go.toInterface(_b), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).readRune(), _ch:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:Error = __tmp__._2;
            if (((_ch != (0 : GoInt32)) || (_size != (0 : GoInt))) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : GoString), Go.toInterface(_ch), Go.toInterface(_size), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).seek(("11" : GoInt64), (0 : GoInt)), _offset:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if ((_offset != ("11" : GoInt64)) || (_err != null)) {
                _t.errorf(("Seek: got %d, %v; want 11, nil" : GoString), Go.toInterface(_offset), Go.toInterface(_err));
            };
        };
        {
            var _s:GoInt64 = (((new Reader() : Reader) : Ref<Reader>)).size();
            if (_s != (("0" : GoInt64))) {
                _t.errorf(("Size: got %d, want 0" : GoString), Go.toInterface(_s));
            };
        };
        if ((((new Reader() : Reader) : Ref<Reader>)).unreadByte() == null) {
            _t.errorf(("UnreadByte: got nil, want error" : GoString));
        };
        if ((((new Reader() : Reader) : Ref<Reader>)).unreadRune() == null) {
            _t.errorf(("UnreadRune: got nil, want error" : GoString));
        };
        {
            var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).writeTo(stdgo.io.Io.discard), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != ("0" : GoInt64)) || (_err != null)) {
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
@:keep var _ = {
        try {
            _testBytes = new Slice<GoUInt8>((10000 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10000 : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (10000 : GoInt), _i++, {
                    _testBytes[(_i : GoInt)] = (97 : GoUInt8) + (_i % (26 : GoInt) : GoByte);
                });
            };
            _testString = (_testBytes : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_negativeReader_asInterface {
    @:keep
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_negativeReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_negativeReader_asInterface) class T_negativeReader_static_extension {
    @:keep
    static public function read( _r:Ref<T_negativeReader>, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (-1 : GoInt), _1 : (null : Error) };
    }
}
class T_panicReader_asInterface {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_panicReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_panicReader_asInterface) class T_panicReader_static_extension {
    @:keep
    static public function read( _r:T_panicReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_r._panic) {
            throw Go.toInterface(null);
        };
        return { _0 : (0 : GoInt), _1 : stdgo.io.Io.eof };
    }
}
class T_justReader_testReaderCopyNothing_1_asInterface {
    @:embedded
    public function read(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_justReader_testReaderCopyNothing_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_justReader_testReaderCopyNothing_1_asInterface) class T_justReader_testReaderCopyNothing_1_static_extension {
    @:embedded
    public static function read( __self__:T_justReader_testReaderCopyNothing_1, __0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.read(__0);
}
class T_justWriter_testReaderCopyNothing_2_asInterface {
    @:embedded
    public function write(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_justWriter_testReaderCopyNothing_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bytes_test.Bytes_test.T_justWriter_testReaderCopyNothing_2_asInterface) class T_justWriter_testReaderCopyNothing_2_static_extension {
    @:embedded
    public static function write( __self__:T_justWriter_testReaderCopyNothing_2, __0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.write(__0);
}
