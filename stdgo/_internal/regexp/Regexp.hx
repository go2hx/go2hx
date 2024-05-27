package stdgo._internal.regexp;
private var __go2hxdoc__package : Bool;
var _sink : stdgo.GoString = ("" : stdgo.GoString);
final _visitedBits : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final _maxBacktrackProg : stdgo.GoUInt64 = (500i64 : stdgo.GoUInt64);
final _maxBacktrackVector : stdgo.GoUInt64 = (262144i64 : stdgo.GoUInt64);
var _bitStatePool : stdgo._internal.sync.Sync.Pool = ({} : stdgo._internal.sync.Sync.Pool);
var _onePassPool : stdgo._internal.sync.Sync.Pool = ({} : stdgo._internal.sync.Sync.Pool);
var _arrayNoInts : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(0, 0);
var _text : stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
final _mergeFailed : stdgo.GoUInt32 = (-1u32 : stdgo.GoUInt32);
var _matchPool : stdgo.GoArray<stdgo._internal.sync.Sync.Pool> = new stdgo.GoArray<stdgo._internal.sync.Sync.Pool>(5, 5, ...[for (i in 0 ... 5) ({} : stdgo._internal.sync.Sync.Pool)]);
final _endOfText : stdgo.GoInt32 = (-1 : stdgo.GoInt32);
var _specialBytes : stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
final _startSize : stdgo.GoUInt64 = (10i64 : stdgo.GoUInt64);
var _noRune : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _noNext : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
var _anyRuneNotNL : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(0 : stdgo.GoInt32), (9 : stdgo.GoInt32), (11 : stdgo.GoInt32), (1114111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _anyRune : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(0 : stdgo.GoInt32), (1114111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _matchSize : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(5, 5, ...[(128 : stdgo.GoInt), (512 : stdgo.GoInt), (2048 : stdgo.GoInt), (16384 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>);
var _goodRe : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(17, 17, ...[
stdgo.Go.str()?.__copy__(),
("." : stdgo.GoString),
("^.$" : stdgo.GoString),
("a" : stdgo.GoString),
("a*" : stdgo.GoString),
("a+" : stdgo.GoString),
("a?" : stdgo.GoString),
("a|b" : stdgo.GoString),
("a*|b*" : stdgo.GoString),
("(a*|b)(c*|d)" : stdgo.GoString),
("[a-z]" : stdgo.GoString),
("[a-abc-c\\-\\]\\[]" : stdgo.GoString),
("[a-z]+" : stdgo.GoString),
("[abc]" : stdgo.GoString),
("[^1234]" : stdgo.GoString),
("[^\\n]" : stdgo.GoString),
("\\!\\\\" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _badRe : stdgo.Slice<stdgo._internal.regexp.Regexp.T_stringError> = null;
var _replaceTests : stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceTest>(72, 72, ...[
(new stdgo._internal.regexp.Regexp.ReplaceTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("xaxbxcx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("b" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), ("ac" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("b" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("axc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("y" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("y" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("y" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("y" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("日" : stdgo.GoString), ("x日x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[^日]" : stdgo.GoString), ("x" : stdgo.GoString), ("abc日def" : stdgo.GoString), ("xxx日xxx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("xdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("xdabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabcex" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("xdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("abc" : stdgo.GoString), ("def" : stdgo.GoString), ("abcdefg" : stdgo.GoString), ("defdefg" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("bc" : stdgo.GoString), ("BC" : stdgo.GoString), ("abcbcdcdedef" : stdgo.GoString), ("aBCBCdcdedef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("abc" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abcdabc" : stdgo.GoString), ("d" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("x" : stdgo.GoString), ("xXx" : stdgo.GoString), ("xxxXxxx" : stdgo.GoString), ("xXxxXxxXxXxXxxXxxXx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("abc" : stdgo.GoString), ("d" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("abc" : stdgo.GoString), ("d" : stdgo.GoString), ("abc" : stdgo.GoString), ("d" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest((".+" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("def" : stdgo.GoString), ("xdxexfx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("abcbcdcdedef" : stdgo.GoString), ("xdxdedef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("abcbcdcdedef" : stdgo.GoString), ("xdxdxexdxexfx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("($0)" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)n(a)n(a)" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("(${0})" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)n(a)n(a)" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)an(a)an(a)a" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)an(a)an(a)a" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, ${1}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, world" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, $1x" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, " : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, ${1}x" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, worldx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("<$0><$1><$2><$3>" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("<hello, world><world><><>" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, $noun!" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, world!" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, ${noun}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, world" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("hihihi" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("bye" : stdgo.GoString), ("byebyebye" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$xyz" : stdgo.GoString), ("hi" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("${x}yz" : stdgo.GoString), ("hi" : stdgo.GoString), ("hiyz" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("hello $$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("hello $x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("${oops" : stdgo.GoString), ("aaa" : stdgo.GoString), ("${oops" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("$$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(x)?" : stdgo.GoString), ("$1" : stdgo.GoString), ("123" : stdgo.GoString), ("123" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("abc" : stdgo.GoString), ("$1" : stdgo.GoString), ("123" : stdgo.GoString), ("123" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(a)(b){0}(c)" : stdgo.GoString), (".$1|$3." : stdgo.GoString), ("xacxacx" : stdgo.GoString), ("x.a|c.x.a|c.x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(a)(((b))){0}c" : stdgo.GoString), (".$1." : stdgo.GoString), ("xacxacx" : stdgo.GoString), ("x.a.x.a.x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("((a(b){0}){3}){5}(h)" : stdgo.GoString), ("y caramb$2" : stdgo.GoString), ("say aaaaaaaaaaaaaaaah" : stdgo.GoString), ("say ay caramba" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("((a(b){0}){3}){5}h" : stdgo.GoString), ("y caramb$2" : stdgo.GoString), ("say aaaaaaaaaaaaaaaah" : stdgo.GoString), ("say ay caramba" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest)].concat([for (i in 72 ... (72 > 72 ? 72 : 72 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.ReplaceTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceTest>);
var _replaceLiteralTests : stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceTest>(15, 15, ...[
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("($0)" : stdgo.GoString), ("banana" : stdgo.GoString), ("b($0)n($0)n($0)" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("(${0})" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(${0})n(${0})n(${0})" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(${0})$0n(${0})$0n(${0})$0" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(${0})$0n(${0})$0n(${0})$0" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, ${1}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, ${1}" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, $noun!" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, $noun!" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, ${noun}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, ${noun}" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("$x$x$x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("bye" : stdgo.GoString), ("$x$x$x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$xyz" : stdgo.GoString), ("hi" : stdgo.GoString), ("$xyz" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("${x}yz" : stdgo.GoString), ("hi" : stdgo.GoString), ("${x}yz" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("hello $$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("hello $$x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("${oops" : stdgo.GoString), ("aaa" : stdgo.GoString), ("${oops" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("$$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest),
(new stdgo._internal.regexp.Regexp.ReplaceTest(("a+" : stdgo.GoString), ("$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceTest)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.ReplaceTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceTest>);
var _replaceFuncTests : stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceFuncTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceFuncTest>(3, 3, ...[(new stdgo._internal.regexp.Regexp.ReplaceFuncTest(("[a-c]" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.GoString {
        return ((("x" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }, ("defabcdef" : stdgo.GoString), ("defxayxbyxcydef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceFuncTest), (new stdgo._internal.regexp.Regexp.ReplaceFuncTest(("[a-c]+" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.GoString {
        return ((("x" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }, ("defabcdef" : stdgo.GoString), ("defxabcydef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceFuncTest), (new stdgo._internal.regexp.Regexp.ReplaceFuncTest(("[a-c]*" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.GoString {
        return ((("x" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }, ("defabcdef" : stdgo.GoString), ("xydxyexyfxabcydxyexyfxy" : stdgo.GoString)) : stdgo._internal.regexp.Regexp.ReplaceFuncTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.ReplaceFuncTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.ReplaceFuncTest>);
var _metaTests : stdgo.Slice<stdgo._internal.regexp.Regexp.MetaTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.MetaTest>(6, 6, ...[(new stdgo._internal.regexp.Regexp.MetaTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), true) : stdgo._internal.regexp.Regexp.MetaTest), (new stdgo._internal.regexp.Regexp.MetaTest(("foo" : stdgo.GoString), ("foo" : stdgo.GoString), ("foo" : stdgo.GoString), true) : stdgo._internal.regexp.Regexp.MetaTest), (new stdgo._internal.regexp.Regexp.MetaTest(("日本語+" : stdgo.GoString), ("日本語\\+" : stdgo.GoString), ("日本語" : stdgo.GoString), false) : stdgo._internal.regexp.Regexp.MetaTest), (new stdgo._internal.regexp.Regexp.MetaTest(("foo\\.\\$" : stdgo.GoString), ("foo\\\\\\.\\\\\\$" : stdgo.GoString), ("foo.$" : stdgo.GoString), true) : stdgo._internal.regexp.Regexp.MetaTest), (new stdgo._internal.regexp.Regexp.MetaTest(("foo.\\$" : stdgo.GoString), ("foo\\.\\\\\\$" : stdgo.GoString), ("foo" : stdgo.GoString), false) : stdgo._internal.regexp.Regexp.MetaTest), (new stdgo._internal.regexp.Regexp.MetaTest(("!@#$%^&*()_+-=[{]}\\|,<.>/?~" : stdgo.GoString), ("!@#\\$%\\^&\\*\\(\\)_\\+-=\\[\\{\\]\\}\\\\\\|,<\\.>/\\?~" : stdgo.GoString), ("!@#" : stdgo.GoString), false) : stdgo._internal.regexp.Regexp.MetaTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.MetaTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.MetaTest>);
var _literalPrefixTests : stdgo.Slice<stdgo._internal.regexp.Regexp.MetaTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.MetaTest>(11, 11, ...[
(new stdgo._internal.regexp.Regexp.MetaTest(("^0^0$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("0" : stdgo.GoString), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("^0^" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("^0$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("0" : stdgo.GoString), true) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("$0^" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("$0$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("^^0$$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("^$^$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("$$0^^" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("a\\x{fffd}b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("\\x{fffd}b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest),
(new stdgo._internal.regexp.Regexp.MetaTest(("�" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp.MetaTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.MetaTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.MetaTest>);
var _emptySubexpIndices : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>(2, 2, ...[(new stdgo._internal.regexp.Regexp.T_subexpIndex(stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.regexp.Regexp.T_subexpIndex), (new stdgo._internal.regexp.Regexp.T_subexpIndex(("missing" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.regexp.Regexp.T_subexpIndex)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.T_subexpIndex)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>);
var _subexpCases : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpCase> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpCase>(11, 11, ...[
(new stdgo._internal.regexp.Regexp.T_subexpCase(stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase((".*" : stdgo.GoString), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("abba" : stdgo.GoString), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("ab(b)a" : stdgo.GoString), (1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("ab(.*)a" : stdgo.GoString), (1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("(.*)ab(.*)a" : stdgo.GoString), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("(.*)(ab)(.*)a" : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("(.*)((a)b)(.*)a" : stdgo.GoString), (4 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("(.*)(\\(ab)(.*)a" : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("(.*)(\\(a\\)b)(.*)a" : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _emptySubexpIndices) : stdgo._internal.regexp.Regexp.T_subexpCase),
(new stdgo._internal.regexp.Regexp.T_subexpCase(("(?P<foo>.*)(?P<bar>(a)b)(?P<foo>.*)a" : stdgo.GoString), (4 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString), ("bar" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>(4, 4, ...[(new stdgo._internal.regexp.Regexp.T_subexpIndex(stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.regexp.Regexp.T_subexpIndex), (new stdgo._internal.regexp.Regexp.T_subexpIndex(("missing" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.regexp.Regexp.T_subexpIndex), (new stdgo._internal.regexp.Regexp.T_subexpIndex(("foo" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.regexp.Regexp.T_subexpIndex), (new stdgo._internal.regexp.Regexp.T_subexpIndex(("bar" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.regexp.Regexp.T_subexpIndex)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.T_subexpIndex)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>)) : stdgo._internal.regexp.Regexp.T_subexpCase)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.T_subexpCase)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpCase>);
var _splitTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(23, 23, ...[
({ _s : ("foo:and:bar" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("foo" : stdgo.GoString), ("and" : stdgo.GoString), ("bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo:and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (2 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("foo" : stdgo.GoString), ("and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : ("foo" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), (":and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : ("bar" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("foo:and:" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foo:and:bar" : stdgo.GoString), _r : ("baz" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo:and:bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("baabaab" : stdgo.GoString), _r : ("a" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("baabaab" : stdgo.GoString), _r : ("a*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("b" : stdgo.GoString), ("b" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("baabaab" : stdgo.GoString), _r : ("ba*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foobar" : stdgo.GoString), _r : ("f*b*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), ("o" : stdgo.GoString), ("o" : stdgo.GoString), ("a" : stdgo.GoString), ("r" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foobar" : stdgo.GoString), _r : ("f+.*b+" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), ("ar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foobooboar" : stdgo.GoString), _r : ("o{2}" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("f" : stdgo.GoString), ("b" : stdgo.GoString), ("boar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("a,b,c,d,e,f" : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (3 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c,d,e,f" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("a,b,c,d,e,f" : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (0 : stdgo.GoInt), _out : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("," : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : (",,," : stdgo.GoString), _r : ("," : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : ("," : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : (".*" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : (".+" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : stdgo.Go.str()?.__copy__(), _r : stdgo.Go.str()?.__copy__(), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("foobar" : stdgo.GoString), _r : stdgo.Go.str()?.__copy__(), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("f" : stdgo.GoString), ("o" : stdgo.GoString), ("o" : stdgo.GoString), ("b" : stdgo.GoString), ("a" : stdgo.GoString), ("r" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : ("abaabaccadaaae" : stdgo.GoString), _r : ("a*" : stdgo.GoString), _n : (5 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("cadaaae" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0),
({ _s : (":x:y:z:" : stdgo.GoString), _r : (":" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), ("y" : stdgo.GoString), ("z" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_0)].concat([for (i in 23 ... (23 > 23 ? 23 : 23 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _r : ("" : stdgo.GoString), _n : (0 : stdgo.GoInt), _out : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _compileBenchData : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(3, 3, ...[({ _name : ("Onepass" : stdgo.GoString), _re : ("^a.[l-nA-Cg-j]?e$" : stdgo.GoString) } : T__struct_2), ({ _name : ("Medium" : stdgo.GoString), _re : ("^((a|b|[d-z0-9])*(日){4,5}.)+$" : stdgo.GoString) } : T__struct_2), ({ _name : ("Hard" : stdgo.GoString), _re : (stdgo._internal.strings.Strings.repeat(("((abc)*|" : stdgo.GoString), (50 : stdgo.GoInt)) + stdgo._internal.strings.Strings.repeat((")" : stdgo.GoString), (50 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() } : T__struct_2)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _re : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
var _minInputLenTests : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(12, 12, ...[
({ regexp : stdgo.Go.str()?.__copy__(), _min : (0 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("a" : stdgo.GoString), _min : (1 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("aa" : stdgo.GoString), _min : (2 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("(aa)a" : stdgo.GoString), _min : (3 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("(?:aa)a" : stdgo.GoString), _min : (3 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("a?a" : stdgo.GoString), _min : (1 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("(aaa)|(aa)" : stdgo.GoString), _min : (2 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("(aa)+a" : stdgo.GoString), _min : (3 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("(aa)*a" : stdgo.GoString), _min : (1 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("(aa){3,5}" : stdgo.GoString), _min : (6 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("[a-z]" : stdgo.GoString), _min : (1 : stdgo.GoInt) } : T__struct_3),
({ regexp : ("日" : stdgo.GoString), _min : (3 : stdgo.GoInt) } : T__struct_3)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ regexp : ("" : stdgo.GoString), _min : (0 : stdgo.GoInt) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
var _run : stdgo.Slice<(stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; }> = (new stdgo.Slice<(stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; }>(4, 4, ...[_runFull, _runPartial, _runFullLongest, _runPartialLongest]) : stdgo.Slice<(stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; }>);
var _match : stdgo.Slice<(stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.GoString; }> = (new stdgo.Slice<(stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.GoString; }>(4, 4, ...[_matchFull, _matchPartial, _matchFullLongest, _matchPartialLongest]) : stdgo.Slice<(stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.GoString; }>);
var _notab : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = null;
var _benchData : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(6, 6, ...[({ _name : ("Easy0" : stdgo.GoString), _re : ("ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString) } : T__struct_2), ({ _name : ("Easy0i" : stdgo.GoString), _re : ("(?i)ABCDEFGHIJklmnopqrstuvwxyz$" : stdgo.GoString) } : T__struct_2), ({ _name : ("Easy1" : stdgo.GoString), _re : ("A[AB]B[BC]C[CD]D[DE]E[EF]F[FG]G[GH]H[HI]I[IJ]J$" : stdgo.GoString) } : T__struct_2), ({ _name : ("Medium" : stdgo.GoString), _re : ("[XYZ]ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString) } : T__struct_2), ({ _name : ("Hard" : stdgo.GoString), _re : ("[ -~]*ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString) } : T__struct_2), ({ _name : ("Hard1" : stdgo.GoString), _re : ("ABCD|CDEF|EFGH|GHIJ|IJKL|KLMN|MNOP|OPQR|QRST|STUV|UVWX|WXYZ" : stdgo.GoString) } : T__struct_2)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _re : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
var _benchSizes : stdgo.Slice<T__struct_4> = (new stdgo.Slice<T__struct_4>(6, 6, ...[({ _name : ("16" : stdgo.GoString), _n : (16 : stdgo.GoInt) } : T__struct_4), ({ _name : ("32" : stdgo.GoString), _n : (32 : stdgo.GoInt) } : T__struct_4), ({ _name : ("1K" : stdgo.GoString), _n : (1024 : stdgo.GoInt) } : T__struct_4), ({ _name : ("32K" : stdgo.GoString), _n : (32768 : stdgo.GoInt) } : T__struct_4), ({ _name : ("1M" : stdgo.GoString), _n : (1048576 : stdgo.GoInt) } : T__struct_4), ({ _name : ("32M" : stdgo.GoString), _n : (33554432 : stdgo.GoInt) } : T__struct_4)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _n : (0 : stdgo.GoInt) } : T__struct_4)])) : stdgo.Slice<T__struct_4>);
var _findTests : stdgo.Slice<stdgo._internal.regexp.Regexp.FindTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp.FindTest>(85, 85, ...[
(new stdgo._internal.regexp.Regexp.FindTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("^abcdefg" : stdgo.GoString), ("abcdefg" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (7 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("a+" : stdgo.GoString), ("baaab" : stdgo.GoString), _build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("abcd.." : stdgo.GoString), ("abcdef" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("x" : stdgo.GoString), ("y" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("b" : stdgo.GoString), ("abc" : stdgo.GoString), _build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("." : stdgo.GoString), ("a" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest((".*" : stdgo.GoString), ("abcdef" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("^" : stdgo.GoString), ("abcde" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("$" : stdgo.GoString), ("abcde" : stdgo.GoString), _build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("^abcd$" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("^bcd\'" : stdgo.GoString), ("abcdef" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("^abcd$" : stdgo.GoString), ("abcde" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("a+" : stdgo.GoString), ("baaab" : stdgo.GoString), _build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("a*" : stdgo.GoString), ("baaab" : stdgo.GoString), _build((3 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[a-z]+" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[^a-z]+" : stdgo.GoString), ("ab1234cd" : stdgo.GoString), _build((1 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[a\\-\\]z]+" : stdgo.GoString), ("az]-bcz" : stdgo.GoString), _build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[^\\n]+" : stdgo.GoString), ("abcd\n" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[日本語]+" : stdgo.GoString), ("日本語日本語" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (18 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("日本語+" : stdgo.GoString), ("日本語" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (9 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("日本語+" : stdgo.GoString), ("日本語語語語" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (18 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("()" : stdgo.GoString), stdgo.Go.str()?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(a)" : stdgo.GoString), ("a" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(.)(.)" : stdgo.GoString), ("日a" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(.*)" : stdgo.GoString), stdgo.Go.str()?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(.*)" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(..)(..)" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(([^xyz]*)(d))" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("((a|b|c)*(d))" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(((a|b|c)*)(d))" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(4 : stdgo.GoInt),
(0 : stdgo.GoInt),
(4 : stdgo.GoInt),
(0 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\a\\f\\n\\r\\t\\v" : stdgo.GoString), ("\x07\x0C\n\r\t\x0B" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[\\a\\f\\n\\r\\t\\v]+" : stdgo.GoString), ("\x07\x0C\n\r\t\x0B" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("a*(|(b))c*" : stdgo.GoString), ("aacc" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(.*).*" : stdgo.GoString), ("ab" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[.]" : stdgo.GoString), ("." : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("/$" : stdgo.GoString), ("/abc/" : stdgo.GoString), _build((1 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("/$" : stdgo.GoString), ("/abc" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("." : stdgo.GoString), ("abc" : stdgo.GoString), _build((3 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(.)" : stdgo.GoString), ("abc" : stdgo.GoString), _build((3 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest((".(.)" : stdgo.GoString), ("abcd" : stdgo.GoString), _build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("ab*" : stdgo.GoString), ("abbaab" : stdgo.GoString), _build((3 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("a(b*)" : stdgo.GoString), ("abbaab" : stdgo.GoString), _build((3 : stdgo.GoInt),
(0 : stdgo.GoInt),
(3 : stdgo.GoInt),
(1 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(6 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("ab$" : stdgo.GoString), ("cab" : stdgo.GoString), _build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("axxb$" : stdgo.GoString), ("axxcb" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("data" : stdgo.GoString), ("daXY data" : stdgo.GoString), _build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("da(.)a$" : stdgo.GoString), ("daXY data" : stdgo.GoString), _build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("zx+" : stdgo.GoString), ("zzx" : stdgo.GoString), _build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("ab$" : stdgo.GoString), ("abcab" : stdgo.GoString), _build((1 : stdgo.GoInt), (3 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(aa)*$" : stdgo.GoString), ("a" : stdgo.GoString), _build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?:.|(?:.a))" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?:A(?:A|a))" : stdgo.GoString), ("Aa" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?:A|(?:A|a))" : stdgo.GoString), ("a" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(a){0}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?-s)(?:(?:^).)" : stdgo.GoString), ("\n" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?s)(?:(?:^).)" : stdgo.GoString), ("\n" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?:(?:^).)" : stdgo.GoString), ("\n" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\b" : stdgo.GoString), ("x" : stdgo.GoString), _build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\b" : stdgo.GoString), ("xx" : stdgo.GoString), _build((2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\b" : stdgo.GoString), ("x y" : stdgo.GoString), _build((4 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\b" : stdgo.GoString), ("xx yy" : stdgo.GoString), _build((4 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (5 : stdgo.GoInt), (5 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\B" : stdgo.GoString), ("x" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\B" : stdgo.GoString), ("xx" : stdgo.GoString), _build((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\B" : stdgo.GoString), ("x y" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\B" : stdgo.GoString), ("xx yy" : stdgo.GoString), _build((2 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(|a)*" : stdgo.GoString), ("aa" : stdgo.GoString), _build((3 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[^\\S\\s]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[^\\S[:space:]]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[^\\D\\d]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[^\\D[:digit:]]" : stdgo.GoString), ("abcd" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?i)\\W" : stdgo.GoString), ("x" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?i)\\W" : stdgo.GoString), ("k" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("(?i)\\W" : stdgo.GoString), ("s" : stdgo.GoString), (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>)) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\!\\\"\\#\\$\\%\\&\\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\{\\|\\}\\~" : stdgo.GoString), ("!\"#$%&\'()*+,-./:;<=>?@[\\]^_{|}~" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (31 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[\\!\\\"\\#\\$\\%\\&\\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\{\\|\\}\\~]+" : stdgo.GoString), ("!\"#$%&\'()*+,-./:;<=>?@[\\]^_{|}~" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (31 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\`" : stdgo.GoString), ("`" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[\\`]+" : stdgo.GoString), ("`" : stdgo.GoString), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("�" : stdgo.GoString), stdgo.Go.str(255)?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("�" : stdgo.GoString), stdgo.Go.str("hello", 255, "world")?.__copy__(), _build((1 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest((".*" : stdgo.GoString), stdgo.Go.str("hello", 255, "world")?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (11 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("\\x{fffd}" : stdgo.GoString), stdgo.Go.str(194, 0)?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[�]" : stdgo.GoString), stdgo.Go.str(255)?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("[\\x{fffd}]" : stdgo.GoString), stdgo.Go.str(194, 0)?.__copy__(), _build((1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest),
(new stdgo._internal.regexp.Regexp.FindTest(("." : stdgo.GoString), ("qwertyuiopasdfghjklzxcvbnm1234567890" : stdgo.GoString), _build((36 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt),
(11 : stdgo.GoInt),
(12 : stdgo.GoInt),
(12 : stdgo.GoInt),
(13 : stdgo.GoInt),
(13 : stdgo.GoInt),
(14 : stdgo.GoInt),
(14 : stdgo.GoInt),
(15 : stdgo.GoInt),
(15 : stdgo.GoInt),
(16 : stdgo.GoInt),
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(17 : stdgo.GoInt),
(18 : stdgo.GoInt),
(18 : stdgo.GoInt),
(19 : stdgo.GoInt),
(19 : stdgo.GoInt),
(20 : stdgo.GoInt),
(20 : stdgo.GoInt),
(21 : stdgo.GoInt),
(21 : stdgo.GoInt),
(22 : stdgo.GoInt),
(22 : stdgo.GoInt),
(23 : stdgo.GoInt),
(23 : stdgo.GoInt),
(24 : stdgo.GoInt),
(24 : stdgo.GoInt),
(25 : stdgo.GoInt),
(25 : stdgo.GoInt),
(26 : stdgo.GoInt),
(26 : stdgo.GoInt),
(27 : stdgo.GoInt),
(27 : stdgo.GoInt),
(28 : stdgo.GoInt),
(28 : stdgo.GoInt),
(29 : stdgo.GoInt),
(29 : stdgo.GoInt),
(30 : stdgo.GoInt),
(30 : stdgo.GoInt),
(31 : stdgo.GoInt),
(31 : stdgo.GoInt),
(32 : stdgo.GoInt),
(32 : stdgo.GoInt),
(33 : stdgo.GoInt),
(33 : stdgo.GoInt),
(34 : stdgo.GoInt),
(34 : stdgo.GoInt),
(35 : stdgo.GoInt),
(35 : stdgo.GoInt),
(36 : stdgo.GoInt))) : stdgo._internal.regexp.Regexp.FindTest)].concat([for (i in 85 ... (85 > 85 ? 85 : 85 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.FindTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp.FindTest>);
var _runeMergeTests : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(13, 13, ...[
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (1u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(71 : stdgo.GoInt32), (71 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32), (71 : stdgo.GoInt32), (71 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (2u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(71 : stdgo.GoInt32), (71 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32), (71 : stdgo.GoInt32), (71 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(2u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(6, 6, ...[(60 : stdgo.GoInt32), (60 : stdgo.GoInt32), (71 : stdgo.GoInt32), (71 : stdgo.GoInt32), (101 : stdgo.GoInt32), (101 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(69 : stdgo.GoInt32), (69 : stdgo.GoInt32), (88 : stdgo.GoInt32), (88 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(10, 10, ...[(60 : stdgo.GoInt32), (60 : stdgo.GoInt32), (69 : stdgo.GoInt32), (69 : stdgo.GoInt32), (71 : stdgo.GoInt32), (71 : stdgo.GoInt32), (88 : stdgo.GoInt32), (88 : stdgo.GoInt32), (101 : stdgo.GoInt32), (101 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(5, 5, ...[(1u32 : stdgo.GoUInt32), (2u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32), (2u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (74 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(71 : stdgo.GoInt32), (71 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (74 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(68 : stdgo.GoInt32), (75 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (74 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(74 : stdgo.GoInt32), (75 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (74 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(65 : stdgo.GoInt32), (69 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (74 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(71 : stdgo.GoInt32), (74 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(69 : stdgo.GoInt32), (74 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(65 : stdgo.GoInt32), (71 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5),
({ _left : (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(69 : stdgo.GoInt32), (74 : stdgo.GoInt32), (60 : stdgo.GoInt32), (65 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _right : (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(66 : stdgo.GoInt32), (67 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _merged : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _next : (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (1u32 : stdgo.GoUInt32), _rightPC : (2u32 : stdgo.GoUInt32) } : T__struct_5)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _left : (null : stdgo.Slice<stdgo.GoInt32>), _right : (null : stdgo.Slice<stdgo.GoInt32>), _merged : (null : stdgo.Slice<stdgo.GoInt32>), _next : (null : stdgo.Slice<stdgo.GoUInt32>), _leftPC : (0 : stdgo.GoUInt32), _rightPC : (0 : stdgo.GoUInt32) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
var _onePassTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(35, 35, ...[
({ _re : ("^(?:a|(?:a*))$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^(?:(a)|(?:a*))$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^(?:(?:(?:.(?:$))?))$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^abcd$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:(?:a{0,})*?)$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^(?:(?:a+)*)$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:(?:a|(?:aa)))$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:[^\\s\\S])$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:(?:a{3,4}){0,})$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^(?:(?:(?:a*)+))$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^[a-c]+$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^[a-c]*$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:a*)$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:(?:aa)|a)$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^[a-c]*" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^...$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:a|(?:aa))$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a((b))c$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a.[l-nA-Cg-j]?e$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a((b))$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a(?:(b)|(c))c$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a(?:(b*)|(c))c$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^a(?:b|c)$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a(?:b?|c)$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a(?:b?|c?)$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^a(?:b?|c+)$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a(?:b+|(bc))d$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^a(?:bc)+$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a(?:[bcd])+$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a((?:[bcd])+)$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^a(:?b|c)*d$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^.bc(d|e)*$" : stdgo.GoString), _isOnePass : true } : T__struct_6),
({ _re : ("^(?:(?:aa)|.)$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ("^(?:(?:a{1,2}){1,2})$" : stdgo.GoString), _isOnePass : false } : T__struct_6),
({ _re : ((("^l" : stdgo.GoString) + stdgo._internal.strings.Strings.repeat(("o" : stdgo.GoString), (512 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("ng$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _isOnePass : true } : T__struct_6)].concat([for (i in 35 ... (35 > 35 ? 35 : 35 : stdgo.GoInt).toBasic()) ({ _re : ("" : stdgo.GoString), _isOnePass : false } : T__struct_6)])) : stdgo.Slice<T__struct_6>);
var _onePassTests1 : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(1, 1, ...[({ _re : ("^a(/b+(#c+)*)*$" : stdgo.GoString), _match : ("a/b#c" : stdgo.GoString) } : T__struct_7)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({ _re : ("" : stdgo.GoString), _match : ("" : stdgo.GoString) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
@:keep class T_input_static_extension {
    static public function _context(t:T_input, _pos:stdgo.GoInt):T_lazyFlag return t._context(_pos);
    static public function _index(t:T_input, _re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return t._index(_re, _pos);
    static public function _hasPrefix(t:T_input, _re:stdgo.Ref<Regexp>):Bool return t._hasPrefix(_re);
    static public function _canCheckPrefix(t:T_input):Bool return t._canCheckPrefix();
    static public function _step(t:T_input, _pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } return t._step(_pos);
}
typedef T_input = stdgo.StructType & {
    /**
        
        
        advance one rune
    **/
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; };
    /**
        
        
        can we look ahead without losing info?
    **/
    public dynamic function _canCheckPrefix():Bool;
    /**
        
        
        
    **/
    public dynamic function _hasPrefix(_re:stdgo.Ref<Regexp>):Bool;
    /**
        
        
        
    **/
    public dynamic function _index(_re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt;
    /**
        
        
        
    **/
    public dynamic function _context(_pos:stdgo.GoInt):T_lazyFlag;
};
@:structInit @:private class T_stringError {
    public var _re : stdgo.GoString = "";
    public var _err : stdgo.GoString = "";
    public function new(?_re:stdgo.GoString, ?_err:stdgo.GoString) {
        if (_re != null) this._re = _re;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringError(_re, _err);
    }
}
@:structInit class ReplaceTest {
    public var _pattern : stdgo.GoString = "";
    public var _replacement : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public function new(?_pattern:stdgo.GoString, ?_replacement:stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString) {
        if (_pattern != null) this._pattern = _pattern;
        if (_replacement != null) this._replacement = _replacement;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReplaceTest(_pattern, _replacement, _input, _output);
    }
}
@:structInit class ReplaceFuncTest {
    public var _pattern : stdgo.GoString = "";
    public var _replacement : stdgo.GoString -> stdgo.GoString = null;
    public var _input : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public function new(?_pattern:stdgo.GoString, ?_replacement:stdgo.GoString -> stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString) {
        if (_pattern != null) this._pattern = _pattern;
        if (_replacement != null) this._replacement = _replacement;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReplaceFuncTest(_pattern, _replacement, _input, _output);
    }
}
@:structInit class MetaTest {
    public var _pattern : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public var _literal : stdgo.GoString = "";
    public var _isLiteral : Bool = false;
    public function new(?_pattern:stdgo.GoString, ?_output:stdgo.GoString, ?_literal:stdgo.GoString, ?_isLiteral:Bool) {
        if (_pattern != null) this._pattern = _pattern;
        if (_output != null) this._output = _output;
        if (_literal != null) this._literal = _literal;
        if (_isLiteral != null) this._isLiteral = _isLiteral;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MetaTest(_pattern, _output, _literal, _isLiteral);
    }
}
@:structInit @:private class T_subexpIndex {
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_index:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subexpIndex(_name, _index);
    }
}
@:structInit @:private class T_subexpCase {
    public var _input : stdgo.GoString = "";
    public var _num : stdgo.GoInt = 0;
    public var _names : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _indices : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>);
    public function new(?_input:stdgo.GoString, ?_num:stdgo.GoInt, ?_names:stdgo.Slice<stdgo.GoString>, ?_indices:stdgo.Slice<stdgo._internal.regexp.Regexp.T_subexpIndex>) {
        if (_input != null) this._input = _input;
        if (_num != null) this._num = _num;
        if (_names != null) this._names = _names;
        if (_indices != null) this._indices = _indices;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subexpCase(_input, _num, _names, _indices);
    }
}
@:structInit @:private class T_job {
    public var _pc : stdgo.GoUInt32 = 0;
    public var _arg : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_pc:stdgo.GoUInt32, ?_arg:Bool, ?_pos:stdgo.GoInt) {
        if (_pc != null) this._pc = _pc;
        if (_arg != null) this._arg = _arg;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_job(_pc, _arg, _pos);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_bitState_static_extension) class T_bitState {
    public var _end : stdgo.GoInt = 0;
    public var _cap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _jobs : stdgo.Slice<stdgo._internal.regexp.Regexp.T_job> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>);
    public var _visited : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _inputs : stdgo._internal.regexp.Regexp.T_inputs = ({} : stdgo._internal.regexp.Regexp.T_inputs);
    public function new(?_end:stdgo.GoInt, ?_cap:stdgo.Slice<stdgo.GoInt>, ?_matchcap:stdgo.Slice<stdgo.GoInt>, ?_jobs:stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>, ?_visited:stdgo.Slice<stdgo.GoUInt32>, ?_inputs:stdgo._internal.regexp.Regexp.T_inputs) {
        if (_end != null) this._end = _end;
        if (_cap != null) this._cap = _cap;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_jobs != null) this._jobs = _jobs;
        if (_visited != null) this._visited = _visited;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bitState(_end, _cap, _matchcap, _jobs, _visited, _inputs);
    }
}
@:structInit @:private class T_queue {
    public var _sparse : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dense : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>);
    public function new(?_sparse:stdgo.Slice<stdgo.GoUInt32>, ?_dense:stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_queue(_sparse, _dense);
    }
}
@:structInit @:private class T_entry {
    public var _pc : stdgo.GoUInt32 = 0;
    public var _t : stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>);
    public function new(?_pc:stdgo.GoUInt32, ?_t:stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>) {
        if (_pc != null) this._pc = _pc;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_pc, _t);
    }
}
@:structInit @:private class T_thread {
    public var _inst : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
    public var _cap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_inst:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>, ?_cap:stdgo.Slice<stdgo.GoInt>) {
        if (_inst != null) this._inst = _inst;
        if (_cap != null) this._cap = _cap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_thread(_inst, _cap);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_machine_static_extension) class T_machine {
    public var _re : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>);
    public var _p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>);
    public var _q0 : stdgo._internal.regexp.Regexp.T_queue = ({} : stdgo._internal.regexp.Regexp.T_queue);
    public var _q1 : stdgo._internal.regexp.Regexp.T_queue = ({} : stdgo._internal.regexp.Regexp.T_queue);
    public var _pool : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>>);
    public var _matched : Bool = false;
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _inputs : stdgo._internal.regexp.Regexp.T_inputs = ({} : stdgo._internal.regexp.Regexp.T_inputs);
    public function new(?_re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>, ?_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>, ?_q0:stdgo._internal.regexp.Regexp.T_queue, ?_q1:stdgo._internal.regexp.Regexp.T_queue, ?_pool:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>>, ?_matched:Bool, ?_matchcap:stdgo.Slice<stdgo.GoInt>, ?_inputs:stdgo._internal.regexp.Regexp.T_inputs) {
        if (_re != null) this._re = _re;
        if (_p != null) this._p = _p;
        if (_q0 != null) this._q0 = _q0;
        if (_q1 != null) this._q1 = _q1;
        if (_pool != null) this._pool = _pool;
        if (_matched != null) this._matched = _matched;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_machine(_re, _p, _q0, _q1, _pool, _matched, _matchcap, _inputs);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_inputs_static_extension) class T_inputs {
    public var _bytes : stdgo._internal.regexp.Regexp.T_inputBytes = ({} : stdgo._internal.regexp.Regexp.T_inputBytes);
    public var _string : stdgo._internal.regexp.Regexp.T_inputString = ({} : stdgo._internal.regexp.Regexp.T_inputString);
    public var _reader : stdgo._internal.regexp.Regexp.T_inputReader = ({} : stdgo._internal.regexp.Regexp.T_inputReader);
    public function new(?_bytes:stdgo._internal.regexp.Regexp.T_inputBytes, ?_string:stdgo._internal.regexp.Regexp.T_inputString, ?_reader:stdgo._internal.regexp.Regexp.T_inputReader) {
        if (_bytes != null) this._bytes = _bytes;
        if (_string != null) this._string = _string;
        if (_reader != null) this._reader = _reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputs(_bytes, _string, _reader);
    }
}
@:structInit @:private class T_onePassMachine {
    public var _inputs : stdgo._internal.regexp.Regexp.T_inputs = ({} : stdgo._internal.regexp.Regexp.T_inputs);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_inputs:stdgo._internal.regexp.Regexp.T_inputs, ?_matchcap:stdgo.Slice<stdgo.GoInt>) {
        if (_inputs != null) this._inputs = _inputs;
        if (_matchcap != null) this._matchcap = _matchcap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_onePassMachine(_inputs, _matchcap);
    }
}
@:structInit @:using(stdgo._internal.regexp.Regexp.FindTest_static_extension) class FindTest {
    public var _pat : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _matches : stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
    public function new(?_pat:stdgo.GoString, ?_text:stdgo.GoString, ?_matches:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>) {
        if (_pat != null) this._pat = _pat;
        if (_text != null) this._text = _text;
        if (_matches != null) this._matches = _matches;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FindTest(_pat, _text, _matches);
    }
}
@:structInit @:private class T_onePassProg {
    public var inst : stdgo.Slice<stdgo._internal.regexp.Regexp.T_onePassInst> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp.T_onePassInst>);
    public var start : stdgo.GoInt = 0;
    public var numCap : stdgo.GoInt = 0;
    public function new(?inst:stdgo.Slice<stdgo._internal.regexp.Regexp.T_onePassInst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_onePassProg(inst, start, numCap);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_onePassInst_static_extension) class T_onePassInst {
    @:embedded
    public var inst : stdgo._internal.regexp.syntax.Syntax.Inst = ({} : stdgo._internal.regexp.syntax.Syntax.Inst);
    public var next : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?inst:stdgo._internal.regexp.syntax.Syntax.Inst, ?next:stdgo.Slice<stdgo.GoUInt32>) {
        if (inst != null) this.inst = inst;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function matchEmptyWidth(_old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool return inst.matchEmptyWidth(_old, _new);
    @:embedded
    public function matchRune(_nameOff:stdgo.GoInt32):Bool return inst.matchRune(_nameOff);
    @:embedded
    public function matchRunePos(_nameOff:stdgo.GoInt32):stdgo.GoInt return inst.matchRunePos(_nameOff);
    @:embedded
    public function string():stdgo.GoString return inst.string();
    @:embedded
    public function _op():stdgo._internal.regexp.syntax.Syntax.InstOp return inst._op();
    public function __copy__() {
        return new T_onePassInst(inst, next);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_queueOnePass_static_extension) class T_queueOnePass {
    public var _sparse : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dense : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _size : stdgo.GoUInt32 = 0;
    public var _nextIndex : stdgo.GoUInt32 = 0;
    public function new(?_sparse:stdgo.Slice<stdgo.GoUInt32>, ?_dense:stdgo.Slice<stdgo.GoUInt32>, ?_size:stdgo.GoUInt32, ?_nextIndex:stdgo.GoUInt32) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
        if (_size != null) this._size = _size;
        if (_nextIndex != null) this._nextIndex = _nextIndex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_queueOnePass(_sparse, _dense, _size, _nextIndex);
    }
}
@:structInit @:using(stdgo._internal.regexp.Regexp.Regexp_static_extension) class Regexp {
    public var _expr : stdgo.GoString = "";
    public var _prog : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>);
    public var _onepass : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassProg> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassProg>);
    public var _numSubexp : stdgo.GoInt = 0;
    public var _maxBitStateLen : stdgo.GoInt = 0;
    public var _subexpNames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _prefix : stdgo.GoString = "";
    public var _prefixBytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _prefixRune : stdgo.GoInt32 = 0;
    public var _prefixEnd : stdgo.GoUInt32 = 0;
    public var _mpool : stdgo.GoInt = 0;
    public var _matchcap : stdgo.GoInt = 0;
    public var _prefixComplete : Bool = false;
    public var _cond : stdgo._internal.regexp.syntax.Syntax.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
    public var _minInputLen : stdgo.GoInt = 0;
    public var _longest : Bool = false;
    public function new(?_expr:stdgo.GoString, ?_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>, ?_onepass:stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassProg>, ?_numSubexp:stdgo.GoInt, ?_maxBitStateLen:stdgo.GoInt, ?_subexpNames:stdgo.Slice<stdgo.GoString>, ?_prefix:stdgo.GoString, ?_prefixBytes:stdgo.Slice<stdgo.GoUInt8>, ?_prefixRune:stdgo.GoInt32, ?_prefixEnd:stdgo.GoUInt32, ?_mpool:stdgo.GoInt, ?_matchcap:stdgo.GoInt, ?_prefixComplete:Bool, ?_cond:stdgo._internal.regexp.syntax.Syntax.EmptyOp, ?_minInputLen:stdgo.GoInt, ?_longest:Bool) {
        if (_expr != null) this._expr = _expr;
        if (_prog != null) this._prog = _prog;
        if (_onepass != null) this._onepass = _onepass;
        if (_numSubexp != null) this._numSubexp = _numSubexp;
        if (_maxBitStateLen != null) this._maxBitStateLen = _maxBitStateLen;
        if (_subexpNames != null) this._subexpNames = _subexpNames;
        if (_prefix != null) this._prefix = _prefix;
        if (_prefixBytes != null) this._prefixBytes = _prefixBytes;
        if (_prefixRune != null) this._prefixRune = _prefixRune;
        if (_prefixEnd != null) this._prefixEnd = _prefixEnd;
        if (_mpool != null) this._mpool = _mpool;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_prefixComplete != null) this._prefixComplete = _prefixComplete;
        if (_cond != null) this._cond = _cond;
        if (_minInputLen != null) this._minInputLen = _minInputLen;
        if (_longest != null) this._longest = _longest;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regexp(
_expr,
_prog,
_onepass,
_numSubexp,
_maxBitStateLen,
_subexpNames,
_prefix,
_prefixBytes,
_prefixRune,
_prefixEnd,
_mpool,
_matchcap,
_prefixComplete,
_cond,
_minInputLen,
_longest);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_inputString_static_extension) class T_inputString {
    public var _str : stdgo.GoString = "";
    public function new(?_str:stdgo.GoString) {
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputString(_str);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_inputBytes_static_extension) class T_inputBytes {
    public var _str : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_str:stdgo.Slice<stdgo.GoUInt8>) {
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputBytes(_str);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.Regexp.T_inputReader_static_extension) class T_inputReader {
    public var _r : stdgo._internal.io.Io.RuneReader = (null : stdgo._internal.io.Io.RuneReader);
    public var _atEOT : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io.RuneReader, ?_atEOT:Bool, ?_pos:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_atEOT != null) this._atEOT = _atEOT;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputReader(_r, _atEOT, _pos);
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _s : stdgo.GoString;
    public var _r : stdgo.GoString;
    public var _n : stdgo.GoInt;
    public var _out : stdgo.Slice<stdgo.GoString>;
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _reFlags : stdgo._internal.regexp.syntax.Syntax.Flags;
    public var _expMatch : Bool;
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _name : stdgo.GoString;
    public var _re : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_3_static_extension) typedef T__struct_3 = {
    public var regexp : stdgo.GoString;
    public var _min : stdgo.GoInt;
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _name : stdgo.GoString;
    public var _n : stdgo.GoInt;
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _left : stdgo.Slice<stdgo.GoInt32>;
    public var _right : stdgo.Slice<stdgo.GoInt32>;
    public var _merged : stdgo.Slice<stdgo.GoInt32>;
    public var _next : stdgo.Slice<stdgo.GoUInt32>;
    public var _leftPC : stdgo.GoUInt32;
    public var _rightPC : stdgo.GoUInt32;
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _re : stdgo.GoString;
    public var _isOnePass : Bool;
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
@:keep @:allow(stdgo._internal.regexp.Regexp.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.regexp.Regexp.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _re : stdgo.GoString;
    public var _match : stdgo.GoString;
};
@:named @:using(stdgo._internal.regexp.Regexp.T_lazyFlag_static_extension) typedef T_lazyFlag = stdgo.GoUInt64;
@:named @:using(stdgo._internal.regexp.Regexp.T_runeSlice_static_extension) typedef T_runeSlice = stdgo.Slice<stdgo.GoInt32>;
function _compileTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):stdgo.Ref<Regexp> {
        var __tmp__ = compile(_expr?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_error == stdgo.Go.str()) && (_err != null) : Bool)) {
            _t.error(stdgo.Go.toInterface(("compiling `" : stdgo.GoString)), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(("`; unexpected error: " : stdgo.GoString)), stdgo.Go.toInterface(_err.error()));
        };
        if (((_error != stdgo.Go.str()) && (_err == null) : Bool)) {
            _t.error(stdgo.Go.toInterface(("compiling `" : stdgo.GoString)), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(("`; missing error" : stdgo.GoString)));
        } else if (((_error != stdgo.Go.str()) && !stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _error?.__copy__()) : Bool)) {
            _t.error(stdgo.Go.toInterface(("compiling `" : stdgo.GoString)), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(("`; wrong error: " : stdgo.GoString)), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(("; want " : stdgo.GoString)), stdgo.Go.toInterface(_error));
        };
        return _re;
    }
function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_goodRe.length) : Bool), _i++, {
                _compileTest(_t, _goodRe[(_i : stdgo.GoInt)]?.__copy__(), stdgo.Go.str()?.__copy__());
            });
        };
    }
function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_badRe.length) : Bool), _i++, {
                _compileTest(_t, _badRe[(_i : stdgo.GoInt)]._re?.__copy__(), _badRe[(_i : stdgo.GoInt)]._err?.__copy__());
            });
        };
    }
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:stdgo.Ref<FindTest>):Void {
        var _re = _compileTest(_t, _test._pat?.__copy__(), stdgo.Go.str()?.__copy__());
        if (_re == null || (_re : Dynamic).__nil__) {
            return;
        };
        var _m:Bool = _re.matchString(_test._text?.__copy__());
        if (_m != (((_test._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            _t.errorf(("MatchString failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
        _m = _re.match((_test._text : stdgo.Slice<stdgo.GoByte>));
        if (_m != (((_test._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _matchTest(_t, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>));
        };
    }
function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:stdgo.Ref<FindTest>):Void {
        var __tmp__ = matchString(_test._pat?.__copy__(), _test._text?.__copy__()), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            return;
        };
        if (_m != (((_test._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
function testMatchFunction(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _matchFunctionTest(_t, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>));
        };
    }
function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:stdgo.Ref<FindTest>):Void {
        var _re = _compileTest(_t, _test._pat?.__copy__(), stdgo.Go.str()?.__copy__());
        if (_re == null || (_re : Dynamic).__nil__) {
            return;
        };
        var _m1:Bool = _re.matchString(_test._text?.__copy__());
        var _m2:Bool = _re.copy().matchString(_test._text?.__copy__());
        if (_m1 != (_m2)) {
            _t.errorf(("Copied Regexp match failure on %s: original gave %t; copy gave %t; should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
function testCopyMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _copyMatchTest(_t, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>));
        };
    }
function testReplaceAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _replaceTests) {
            var __tmp__ = compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            var _actual:stdgo.GoString = _re.replaceAllString(_tc._input?.__copy__(), _tc._replacement?.__copy__())?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceAllString(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (_re.replaceAll((_tc._input : stdgo.Slice<stdgo.GoByte>), (_tc._replacement : stdgo.Slice<stdgo.GoByte>)) : stdgo.GoString)?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceAll(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
    }
function testReplaceAllLiteral(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _replaceTests) {
            if (stdgo._internal.strings.Strings.contains(_tc._replacement?.__copy__(), ("$" : stdgo.GoString))) {
                continue;
            };
            var __tmp__ = compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            var _actual:stdgo.GoString = _re.replaceAllLiteralString(_tc._input?.__copy__(), _tc._replacement?.__copy__())?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceAllLiteralString(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (_re.replaceAllLiteral((_tc._input : stdgo.Slice<stdgo.GoByte>), (_tc._replacement : stdgo.Slice<stdgo.GoByte>)) : stdgo.GoString)?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceAllLiteral(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
        for (__25 => _tc in _replaceLiteralTests) {
            var __tmp__ = compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            var _actual:stdgo.GoString = _re.replaceAllLiteralString(_tc._input?.__copy__(), _tc._replacement?.__copy__())?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceAllLiteralString(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (_re.replaceAllLiteral((_tc._input : stdgo.Slice<stdgo.GoByte>), (_tc._replacement : stdgo.Slice<stdgo.GoByte>)) : stdgo.GoString)?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceAllLiteral(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
    }
function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _replaceFuncTests) {
            var __tmp__ = compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            var _actual:stdgo.GoString = _re.replaceAllStringFunc(_tc._input?.__copy__(), _tc._replacement)?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (_re.replaceAllFunc((_tc._input : stdgo.Slice<stdgo.GoByte>), function(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
                return (_tc._replacement((_s : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoByte>);
            }) : stdgo.GoString)?.__copy__();
            if (_actual != (_tc._output)) {
                _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
    }
function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _metaTests) {
            var _quoted:stdgo.GoString = quoteMeta(_tc._pattern?.__copy__())?.__copy__();
            if (_quoted != (_tc._output)) {
                _t.errorf(("QuoteMeta(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_quoted), stdgo.Go.toInterface(_tc._output));
                continue;
            };
            if (_tc._pattern != (stdgo.Go.str())) {
                var __tmp__ = compile(_quoted?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Unexpected error compiling QuoteMeta(`%s`): %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _src:stdgo.GoString = ((("abc" : stdgo.GoString) + _tc._pattern?.__copy__() : stdgo.GoString) + ("def" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                var _repl:stdgo.GoString = ("xyz" : stdgo.GoString);
                var _replaced:stdgo.GoString = _re.replaceAllString(_src?.__copy__(), _repl?.__copy__())?.__copy__();
                var _expected:stdgo.GoString = ("abcxyzdef" : stdgo.GoString);
                if (_replaced != (_expected)) {
                    _t.errorf(("QuoteMeta(`%s`).Replace(`%s`,`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_repl), stdgo.Go.toInterface(_replaced), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in (_metaTests.__append__(...(_literalPrefixTests : Array<stdgo._internal.regexp.Regexp.MetaTest>)))) {
            var _re = mustCompile(_tc._pattern?.__copy__());
            var __tmp__ = _re.literalPrefix(), _str:stdgo.GoString = __tmp__._0, _complete:Bool = __tmp__._1;
            if (_complete != (_tc._isLiteral)) {
                _t.errorf(("LiteralPrefix(`%s`) = %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_complete), stdgo.Go.toInterface(_tc._isLiteral));
            };
            if (_str != (_tc._literal)) {
                _t.errorf(("LiteralPrefix(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_tc._literal));
            };
        };
    }
function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _subexpCases) {
            var _re = mustCompile(_c._input?.__copy__());
            var _n:stdgo.GoInt = _re.numSubexp();
            if (_n != (_c._num)) {
                _t.errorf(("%q: NumSubexp = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_c._num));
                continue;
            };
            var _names = _re.subexpNames();
            if ((_names.length) != (((1 : stdgo.GoInt) + _n : stdgo.GoInt))) {
                _t.errorf(("%q: len(SubexpNames) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface((_names.length)), stdgo.Go.toInterface(_n));
                continue;
            };
            if (_c._names != null) {
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < ((1 : stdgo.GoInt) + _n : stdgo.GoInt) : Bool), _i++, {
                        if (_names[(_i : stdgo.GoInt)] != (_c._names[(_i : stdgo.GoInt)])) {
                            _t.errorf(("%q: SubexpNames[%d] = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_c._names[(_i : stdgo.GoInt)]));
                        };
                    });
                };
            };
            for (__25 => _subexp in _c._indices) {
                var _index:stdgo.GoInt = _re.subexpIndex(_subexp._name?.__copy__());
                if (_index != (_subexp._index)) {
                    _t.errorf(("%q: SubexpIndex(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_subexp._name), stdgo.Go.toInterface(_index), stdgo.Go.toInterface(_subexp._index));
                };
            };
        };
    }
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in _splitTests) {
            var __tmp__ = compile(_test._r?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("#%d: %q: compile error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_err.error()));
                continue;
            };
            var _split = _re.split(_test._s?.__copy__(), _test._n);
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out))) {
                _t.errorf(("#%d: %q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out));
            };
            if (quoteMeta(_test._r?.__copy__()) == (_test._r)) {
                var _strsplit = stdgo._internal.strings.Strings.splitN(_test._s?.__copy__(), _test._r?.__copy__(), _test._n);
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit))) {
                    _t.errorf(("#%d: Split(%q, %q, %d): regexp vs strings mismatch\nregexp=%q\nstrings=%q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit));
                };
            };
        };
    }
function testParseAndCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _expr:stdgo.GoString = ("a$" : stdgo.GoString);
        var _s:stdgo.GoString = ("a\nb" : stdgo.GoString);
        for (_i => _tc in (new stdgo.Slice<T__struct_1>(2, 2, ...[({ _reFlags : (212 : stdgo._internal.regexp.syntax.Syntax.Flags), _expMatch : false } : T__struct_1), ({ _reFlags : (196 : stdgo._internal.regexp.syntax.Syntax.Flags), _expMatch : true } : T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _reFlags : ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax.Flags), _expMatch : false } : T__struct_1)])) : stdgo.Slice<T__struct_1>)) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax.parse(_expr?.__copy__(), _tc._reFlags), _parsed:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%d: parse: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = compile((_parsed.string() : stdgo.GoString)?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%d: compile: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            {
                var _match:Bool = _re.matchString(_s?.__copy__());
                if (_match != (_tc._expMatch)) {
                    _t.errorf(("%d: %q.MatchString(%q)=%t; expected=%t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_tc._expMatch));
                };
            };
        };
    }
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax.parse(("^x{1,1000}y{1,1000}$" : stdgo.GoString), (212 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("parse: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax.compile(_re.simplify()), _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("compile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_compileOnePass(_p) != null && ((_compileOnePass(_p) : Dynamic).__nil__ == null || !(_compileOnePass(_p) : Dynamic).__nil__)) {
            _t.fatalf(("makeOnePass succeeded; wanted nil" : stdgo.GoString));
        };
    }
function testSwitchBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _re = mustCompile(("a|b" : stdgo.GoString));
        var _long = (new stdgo.Slice<stdgo.GoUInt8>((262145 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _re.match(_long);
        _re.match((_long.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
function benchmarkFind(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _re = mustCompile(("a+b+" : stdgo.GoString));
        var _wantSubs:stdgo.GoString = ("aaabb" : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b.startTimer();
        _b.reportAllocs();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _subs = _re.find(_s);
                if ((_subs : stdgo.GoString) != (_wantSubs)) {
                    _b.fatalf(("Find(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs), stdgo.Go.toInterface(_wantSubs));
                };
            });
        };
    }
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _re = mustCompile(("a+b+" : stdgo.GoString));
        var _s = (("acddee" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b.reportAllocs();
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _all = _re.findAll(_s, (-1 : stdgo.GoInt));
                if (_all != null) {
                    _b.fatalf(("FindAll(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_all));
                };
            });
        };
    }
function benchmarkFindString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _re = mustCompile(("a+b+" : stdgo.GoString));
        var _wantSubs:stdgo.GoString = ("aaabb" : stdgo.GoString);
        var _s:stdgo.GoString = ((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _b.startTimer();
        _b.reportAllocs();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _subs:stdgo.GoString = _re.findString(_s?.__copy__())?.__copy__();
                if (_subs != (_wantSubs)) {
                    _b.fatalf(("FindString(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs), stdgo.Go.toInterface(_wantSubs));
                };
            });
        };
    }
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _re = mustCompile(("a(a+b+)b" : stdgo.GoString));
        var _wantSubs:stdgo.GoString = ("aaabb" : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b.startTimer();
        _b.reportAllocs();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _subs = _re.findSubmatch(_s);
                if ((_subs[(0 : stdgo.GoInt)] : stdgo.GoString) != (_wantSubs)) {
                    _b.fatalf(("FindSubmatch(%q)[0] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_wantSubs));
                };
                if ((_subs[(1 : stdgo.GoInt)] : stdgo.GoString) != (("aab" : stdgo.GoString))) {
                    _b.fatalf(("FindSubmatch(%q)[1] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(("aab" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _re = mustCompile(("a(a+b+)b" : stdgo.GoString));
        var _wantSubs:stdgo.GoString = ("aaabb" : stdgo.GoString);
        var _s:stdgo.GoString = ((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _b.startTimer();
        _b.reportAllocs();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _subs = _re.findStringSubmatch(_s?.__copy__());
                if (_subs[(0 : stdgo.GoInt)] != (_wantSubs)) {
                    _b.fatalf(("FindStringSubmatch(%q)[0] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_wantSubs));
                };
                if (_subs[(1 : stdgo.GoInt)] != (("aab" : stdgo.GoString))) {
                    _b.fatalf(("FindStringSubmatch(%q)[1] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(("aab" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x:stdgo.GoString = (stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (50 : stdgo.GoInt)) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _b.stopTimer();
        var _re = mustCompile(("y" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (!_re.matchString(_x?.__copy__())) {
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
            });
        };
    }
function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x:stdgo.GoString = (stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (50 : stdgo.GoInt)) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _b.stopTimer();
        var _re = mustCompile((".y" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (!_re.matchString(_x?.__copy__())) {
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
            });
        };
    }
function benchmarkMatchClass(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x:stdgo.GoString = (stdgo._internal.strings.Strings.repeat(("xxxx" : stdgo.GoString), (20 : stdgo.GoInt)) + ("w" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        var _re = mustCompile(("[abcdw]" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (!_re.matchString(_x?.__copy__())) {
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
            });
        };
    }
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x:stdgo.GoString = (stdgo._internal.strings.Strings.repeat(("bbbb" : stdgo.GoString), (20 : stdgo.GoInt)) + ("c" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        var _re = mustCompile(("[ac]" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (!_re.matchString(_x?.__copy__())) {
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
            });
        };
    }
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x:stdgo.GoString = ("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        _b.stopTimer();
        var _re = mustCompile(("[cjrw]" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.replaceAllString(_x?.__copy__(), stdgo.Go.str()?.__copy__());
            });
        };
    }
function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("^zbc(d|e)" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (15 : stdgo.GoInt) : Bool), _i++, {
                _x = (_x.__append__(...(_x : Array<stdgo.GoUInt8>)));
            });
        };
        var _re = mustCompile(("^zbc(d|e)" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("^.bc(d|e)" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (15 : stdgo.GoInt) : Bool), _i++, {
                _x = (_x.__append__(...(_x : Array<stdgo.GoUInt8>)));
            });
        };
        var _re = mustCompile(("^.bc(d|e)" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcddddddeeeededd" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("^.bc(d|e)*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcddddddeeeededd" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile((".bc(d|e)*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcddddddeeeededd" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("^.bc(?:d|e)*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcddddddeeeededd" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile((".bc(?:d|e)*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("^abcdefghijklmnopqrstuvwxyz.*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("^.bcdefghijklmnopqrstuvwxyz.*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (("this is a long line that contains foo bar baz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("foo (ba+r)? baz" : stdgo.GoString));
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _re.match(_x);
            };
        });
    }
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (("this is a long line that contains foo bar baz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = mustCompile(("foo (ba+r)? baz" : stdgo.GoString));
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _re = _re.copy();
            while (_pb.next()) {
                _re.match(_x);
            };
        });
    }
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _specials = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i:stdgo.GoUInt8 = ((0 : stdgo.GoUInt8) : stdgo.GoByte);
            stdgo.Go.cfor((_i < (128 : stdgo.GoUInt8) : Bool), _i++, {
                if (_special(_i)) {
                    _specials = (_specials.__append__(_i));
                };
            });
        };
        var _s:stdgo.GoString = (_specials : stdgo.GoString)?.__copy__();
        _b.setBytes((_s.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _sink = quoteMeta(_s?.__copy__())?.__copy__();
            });
        };
    }
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoString = ("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        _b.setBytes((_s.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _sink = quoteMeta(_s?.__copy__())?.__copy__();
            });
        };
    }
function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _data in _compileBenchData) {
            _b.run(_data._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _b.reportAllocs();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        {
                            var __tmp__ = compile(_data._re?.__copy__()), __25:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _b.fatal(stdgo.Go.toInterface(_err));
                            };
                        };
                    });
                };
            });
        };
    }
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _re1 = mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        var _re2 = mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        _re1.matchString(("abcdefghijklmn" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        _re2.matchString(("abcdefghijklmn" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        _re2.matchString(stdgo._internal.strings.Strings.repeat(("abcdefghijklmn" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__());
        if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
    }
function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _minInputLenTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax.parse(_tt.regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            var _m:stdgo.GoInt = _minInputLen(_re);
            if (_m != (_tt._min)) {
                _t.errorf(("regexp %#q has minInputLen %d, should be %d" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_tt._min));
            };
        };
    }
function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _unmarshaled = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>);
        for (_i => _ in _goodRe) {
            var _re = _compileTest(_t, _goodRe[(_i : stdgo.GoInt)]?.__copy__(), stdgo.Go.str()?.__copy__());
            var __tmp__ = _re.marshalText(), _marshaled:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("regexp %#q failed to marshal: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_err));
                continue;
            };
            {
                var _err:stdgo.Error = _unmarshaled.unmarshalText(_marshaled);
                if (_err != null) {
                    _t.errorf(("regexp %#q failed to unmarshal: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if ((_unmarshaled.string() : stdgo.GoString) != (_goodRe[(_i : stdgo.GoInt)])) {
                _t.errorf(("UnmarshalText returned unexpected value: %s" : stdgo.GoString), stdgo.Go.toInterface((_unmarshaled.string() : stdgo.GoString)));
            };
        };
        _t.run(("invalid pattern" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>);
            var _err:stdgo.Error = _re.unmarshalText((("\\" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("unexpected success" : stdgo.GoString)));
            };
        });
    }
function _newBitState():stdgo.Ref<T_bitState> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_bitStatePool.get() : stdgo.Ref<T_bitState>)) : stdgo.Ref<T_bitState>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_bitState>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _b = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp.T_bitState)) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_bitState>);
        };
        return _b;
    }
function _freeBitState(_b:stdgo.Ref<T_bitState>):Void {
        _b._inputs._clear();
        _bitStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):stdgo.GoInt {
        if (!_shouldBacktrack(_prog)) {
            return (0 : stdgo.GoInt);
        };
        return ((262144 : stdgo.GoInt) / (_prog.inst.length) : stdgo.GoInt);
    }
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Bool {
        return ((_prog.inst.length) <= (500 : stdgo.GoInt) : Bool);
    }
function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):T_lazyFlag {
        return ((((_r1 : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_r2 : stdgo.GoUInt32) : stdgo.GoUInt64) : stdgo.GoUInt64) : T_lazyFlag);
    }
function _newOnePassMachine():stdgo.Ref<T_onePassMachine> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_onePassPool.get() : stdgo.Ref<T_onePassMachine>)) : stdgo.Ref<T_onePassMachine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassMachine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp.T_onePassMachine)) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassMachine>);
        };
        return _m;
    }
function _freeOnePassMachine(_m:stdgo.Ref<T_onePassMachine>):Void {
        _m._inputs._clear();
        _onePassPool.put(stdgo.Go.toInterface(_m));
    }
function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping TestRE2Exhaustive during short test" : stdgo.GoString)));
        };
        _testRE2(_t, ("testdata/re2-exhaustive.txt.bz2" : stdgo.GoString));
    }
function testRE2Search(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testRE2(_t, ("testdata/re2-search.txt" : stdgo.GoString));
    }
function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _file:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _txt:stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
            if (stdgo._internal.strings.Strings.hasSuffix(_file?.__copy__(), (".bz2" : stdgo.GoString))) {
                var _z:stdgo._internal.io.Io.Reader = stdgo._internal.compress.bzip2.Bzip2.newReader(stdgo.Go.asInterface(_f));
                _txt = _z;
                _file = (_file.__slice__(0, ((_file.length) - ((".bz2" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                _txt = stdgo.Go.asInterface(_f);
            };
            var _lineno:stdgo.GoInt = (0 : stdgo.GoInt);
            var _scanner = stdgo._internal.bufio.Bufio.newScanner(_txt);
            var __0:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __1:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __2:Bool = false, __3:stdgo.Ref<Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>), __4:stdgo.Ref<Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.GoInt = (0 : stdgo.GoInt), _ncase:stdgo.GoInt = __6, _nfail:stdgo.GoInt = __5, _refull:stdgo.Ref<Regexp> = __4, _re:stdgo.Ref<Regexp> = __3, _inStrings:Bool = __2, _input:stdgo.Slice<stdgo.GoString> = __1, _str:stdgo.Slice<stdgo.GoString> = __0;
            {
                var _lineno:stdgo.GoInt = (1 : stdgo.GoInt);
                stdgo.Go.cfor(_scanner.scan(), _lineno++, {
                    var _line:stdgo.GoString = _scanner.text()?.__copy__();
                    if (_line == (stdgo.Go.str())) {
                        _t.fatalf(("%s:%d: unexpected blank line" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno));
                    } else if (_line[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8))) {
                        continue;
                    } else if ((((65 : stdgo.GoUInt8) <= _line[(0 : stdgo.GoInt)] : Bool) && (_line[(0 : stdgo.GoInt)] <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _t.logf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_line));
                        continue;
                    } else if (_line == (("strings" : stdgo.GoString))) {
                        _str = (_str.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _inStrings = true;
                    } else if (_line == (("regexps" : stdgo.GoString))) {
                        _inStrings = false;
                    } else if (_line[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        var __tmp__ = stdgo._internal.strconv.Strconv.unquote(_line?.__copy__()), _q:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("%s:%d: unquote %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
                        };
                        if (_inStrings) {
                            _str = (_str.__append__(_q?.__copy__()));
                            continue;
                        };
                        if ((_input.length) != ((0 : stdgo.GoInt))) {
                            _t.fatalf(("%s:%d: out of sync: have %d strings left before %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_input.length)), stdgo.Go.toInterface(_q));
                        };
                        {
                            var __tmp__ = _tryCompile(_q?.__copy__());
                            _re = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            if (_err.error() == (("error parsing regexp: invalid escape sequence: `\\C`" : stdgo.GoString))) {
                                continue;
                            };
                            _t.errorf(("%s:%d: compile %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_err));
                            {
                                _nfail++;
                                if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                    _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                };
                            };
                            continue;
                        };
                        var _full:stdgo.GoString = ((("\\A(?:" : stdgo.GoString) + _q?.__copy__() : stdgo.GoString) + (")\\z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            var __tmp__ = _tryCompile(_full?.__copy__());
                            _refull = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _t.fatalf(("%s:%d: compile full %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_full), stdgo.Go.toInterface(_err));
                        };
                        _input = _str;
                    } else if (((_line[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _line[(0 : stdgo.GoInt)] : Bool) && (_line[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _ncase++;
                        if (_re == null || (_re : Dynamic).__nil__) {
                            continue;
                        };
                        if ((_input.length) == ((0 : stdgo.GoInt))) {
                            _t.fatalf(("%s:%d: out of sync: no input remaining" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno));
                        };
                        var _text:stdgo.GoString = ("" : stdgo.GoString);
                        {
                            final __tmp__0 = _input[(0 : stdgo.GoInt)]?.__copy__();
                            final __tmp__1 = (_input.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                            _text = __tmp__0;
                            _input = __tmp__1;
                        };
                        if ((!_isSingleBytes(_text?.__copy__()) && stdgo._internal.strings.Strings.contains((_re.string() : stdgo.GoString)?.__copy__(), ("\\B" : stdgo.GoString)) : Bool)) {
                            continue;
                        };
                        var _res = stdgo._internal.strings.Strings.split(_line?.__copy__(), (";" : stdgo.GoString));
                        if ((_res.length) != ((_run.length))) {
                            _t.fatalf(("%s:%d: have %d test results, want %d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_res.length)), stdgo.Go.toInterface((_run.length)));
                        };
                        for (_i => _ in _res) {
                            var __tmp__ = _run[(_i : stdgo.GoInt)](_re, _refull, _text?.__copy__()), _have:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1;
                            var _want = _parseResult(_t, _file?.__copy__(), _lineno, _res[(_i : stdgo.GoInt)]?.__copy__());
                            if (!_same(_have, _want)) {
                                _t.errorf(("%s:%d: %#q%s.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_suffix), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
                                {
                                    _nfail++;
                                    if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                        _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                    };
                                };
                                continue;
                            };
                            var __tmp__ = _match[(_i : stdgo.GoInt)](_re, _refull, _text?.__copy__()), _b:Bool = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1;
                            if (_b != ((_want != null))) {
                                _t.errorf(("%s:%d: %#q%s.MatchString(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_suffix), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(!_b));
                                {
                                    _nfail++;
                                    if ((_nfail >= (100 : stdgo.GoInt) : Bool)) {
                                        _t.fatalf(("stopping after %d errors" : stdgo.GoString), stdgo.Go.toInterface(_nfail));
                                    };
                                };
                                continue;
                            };
                        };
                    } else {
                        _t.fatalf(("%s:%d: out of sync: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line));
                    };
                });
            };
            {
                var _err:stdgo.Error = _scanner.err();
                if (_err != null) {
                    _t.fatalf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_err));
                };
            };
            if ((_input.length) != ((0 : stdgo.GoInt))) {
                _t.fatalf(("%s:%d: out of sync: have %d strings left at EOF" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((_input.length)));
            };
            _t.logf(("%d cases tested" : stdgo.GoString), stdgo.Go.toInterface(_ncase));
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
function _runFull(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        _refull._longest = false;
        return { _0 : _refull.findStringSubmatchIndex(_text?.__copy__()), _1 : ("[full]" : stdgo.GoString) };
    }
function _runPartial(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        _re._longest = false;
        return { _0 : _re.findStringSubmatchIndex(_text?.__copy__()), _1 : stdgo.Go.str()?.__copy__() };
    }
function _runFullLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        _refull._longest = true;
        return { _0 : _refull.findStringSubmatchIndex(_text?.__copy__()), _1 : ("[full,longest]" : stdgo.GoString) };
    }
function _runPartialLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.GoString; } {
        _re._longest = true;
        return { _0 : _re.findStringSubmatchIndex(_text?.__copy__()), _1 : ("[longest]" : stdgo.GoString) };
    }
function _matchFull(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        _refull._longest = false;
        return { _0 : _refull.matchString(_text?.__copy__()), _1 : ("[full]" : stdgo.GoString) };
    }
function _matchPartial(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        _re._longest = false;
        return { _0 : _re.matchString(_text?.__copy__()), _1 : stdgo.Go.str()?.__copy__() };
    }
function _matchFullLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        _refull._longest = true;
        return { _0 : _refull.matchString(_text?.__copy__()), _1 : ("[full,longest]" : stdgo.GoString) };
    }
function _matchPartialLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        _re._longest = true;
        return { _0 : _re.matchString(_text?.__copy__()), _1 : ("[longest]" : stdgo.GoString) };
    }
function _isSingleBytes(_s:stdgo.GoString):Bool {
        for (__0 => _c in _s) {
            if ((_c >= (128 : stdgo.GoInt32) : Bool)) {
                return false;
            };
        };
        return true;
    }
function _tryCompile(_s:stdgo.GoString):{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _re:stdgo.Ref<Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>), _err:stdgo.Error = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            _err = stdgo._internal.fmt.Fmt.errorf(("panic: %v" : stdgo.GoString), _r);
                        };
                    };
                };
                a();
            });
            {
                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = compile(_s?.__copy__());
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : _re, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : _re, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _parseResult(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        if (_res == (("-" : stdgo.GoString))) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n:stdgo.GoInt = (1 : stdgo.GoInt);
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (_res.length) : Bool), _j++, {
                if (_res[(_j : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                    _n++;
                };
            });
        };
        var _out = (new stdgo.Slice<stdgo.GoInt>(((2 : stdgo.GoInt) * _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        _n = (0 : stdgo.GoInt);
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j <= (_res.length) : Bool), _j++, {
                if (((_j == (_res.length)) || (_res[(_j : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                    var _pair:stdgo.GoString = (_res.__slice__(_i, _j) : stdgo.GoString)?.__copy__();
                    if (_pair == (("-" : stdgo.GoString))) {
                        _out[(_n : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                        _out[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    } else {
                        var __tmp__ = stdgo._internal.strings.Strings.cut(_pair?.__copy__(), ("-" : stdgo.GoString)), _loStr:stdgo.GoString = __tmp__._0, _hiStr:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
                        var __tmp__ = stdgo._internal.strconv.Strconv.atoi(_loStr?.__copy__()), _lo:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        var __tmp__ = stdgo._internal.strconv.Strconv.atoi(_hiStr?.__copy__()), _hi:stdgo.GoInt = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                        if (((_err1 != null || _err2 != null : Bool) || (_lo > _hi : Bool) : Bool)) {
                            _t.fatalf(("%s:%d: invalid pair %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pair));
                        };
                        _out[(_n : stdgo.GoInt)] = _lo;
                        _out[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
                    };
                    _n = (_n + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _i = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
            });
        };
        return _out;
    }
function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Bool {
        if ((_x.length) != ((_y.length))) {
            return false;
        };
        for (_i => _xi in _x) {
            if (_xi != (_y[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
function testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = stdgo._internal.path.filepath.Filepath.glob(("testdata/*.dat" : stdgo.GoString)), _files:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__8 => _file in _files) {
            _t.log(stdgo.Go.toInterface(_file));
            _testFowler(_t, _file?.__copy__());
        };
    }
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _file:stdgo.GoString):Void {
        stdgo._internal.internal.Macro.controlFlow({
            var __deferstack__:Array<Void -> Void> = [];
            try {
                var __tmp__ = stdgo._internal.os.Os.open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                    return;
                };
                __deferstack__.unshift(() -> _f.close());
                var _b = stdgo._internal.bufio.Bufio.newReader(stdgo.Go.asInterface(_f));
                var _lineno:stdgo.GoInt = (0 : stdgo.GoInt);
                var _lastRegexp:stdgo.GoString = stdgo.Go.str()?.__copy__();
                @:label("Reading") while (true) {
                    _lineno++;
                    var __tmp__ = _b.readString((10 : stdgo.GoUInt8)), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                            _t.errorf(("%s:%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_err));
                        };
                        @:jump("Reading") break;
                    };
                    if (((_line[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) || (_line[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                        @:jump("Reading") continue;
                    };
                    _line = (_line.__slice__(0, ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    var _field = _notab.findAllString(_line?.__copy__(), (-1 : stdgo.GoInt));
                    for (_i => _f in _field) {
                        if (_f == (("NULL" : stdgo.GoString))) {
                            _field[(_i : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                        };
                        if (_f == (("NIL" : stdgo.GoString))) {
                            _t.logf(("%s:%d: skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line));
                            @:jump("Reading") continue;
                        };
                    };
                    if ((_field.length) == ((0 : stdgo.GoInt))) {
                        @:jump("Reading") continue;
                    };
                    var _flag:stdgo.GoString = _field[(0 : stdgo.GoInt)]?.__copy__();
                    {
                        final __value__ = _flag[(0 : stdgo.GoInt)];
                        if (__value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((124 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8))) {
                            _flag = (_flag.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            if (_flag == (stdgo.Go.str())) {
                                @:jump("Reading") continue;
                            };
                        } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                            var _ok:Bool = false;
                            {
                                {
                                    var __tmp__ = stdgo._internal.strings.Strings.cut((_flag.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString));
                                    _flag = __tmp__._1?.__copy__();
                                    _ok = __tmp__._2;
                                };
                                if (!_ok) {
                                    _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line));
                                    @:jump("Reading") continue;
                                };
                            };
                        } else if (__value__ == ((67 : stdgo.GoUInt8)) || __value__ == ((78 : stdgo.GoUInt8)) || __value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                            _t.logf(("skip: %s" : stdgo.GoString), stdgo.Go.toInterface(_line));
                            @:jump("Reading") continue;
                        };
                    };
                    if (((_field.length) < (4 : stdgo.GoInt) : Bool)) {
                        _t.errorf(("%s:%d: too few fields: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_line));
                        @:jump("Reading") continue;
                    };
                    if (stdgo._internal.strings.Strings.contains(_flag?.__copy__(), ("$" : stdgo.GoString))) {
                        var _f:stdgo.GoString = ((("\"" : stdgo.GoString) + _field[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv.unquote(_f?.__copy__());
                                _field[(1 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_f));
                            };
                        };
                        _f = ((("\"" : stdgo.GoString) + _field[(2 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv.unquote(_f?.__copy__());
                                _field[(2 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _t.errorf(("%s:%d: cannot unquote %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_f));
                            };
                        };
                    };
                    if (_field[(1 : stdgo.GoInt)] == (("SAME" : stdgo.GoString))) {
                        _field[(1 : stdgo.GoInt)] = _lastRegexp?.__copy__();
                    };
                    _lastRegexp = _field[(1 : stdgo.GoInt)]?.__copy__();
                    var _text:stdgo.GoString = _field[(2 : stdgo.GoInt)]?.__copy__();
                    var __tmp__ = _parseFowlerResult(_field[(3 : stdgo.GoInt)]?.__copy__()), _ok:Bool = __tmp__._0, _shouldCompile:Bool = __tmp__._1, _shouldMatch:Bool = __tmp__._2, _pos:stdgo.Slice<stdgo.GoInt> = __tmp__._3;
                    if (!_ok) {
                        _t.errorf(("%s:%d: cannot parse result %#q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_field[(3 : stdgo.GoInt)]));
                        @:jump("Reading") continue;
                    };
                    @:label("Testing") for (__72 => _c in _flag) {
                        var _pattern:stdgo.GoString = _field[(1 : stdgo.GoInt)]?.__copy__();
                        var _syn:stdgo._internal.regexp.syntax.Syntax.Flags = (4 : stdgo._internal.regexp.syntax.Syntax.Flags);
                        {
                            final __value__ = _c;
                            if (__value__ == ((69 : stdgo.GoInt32))) {} else if (__value__ == ((76 : stdgo.GoInt32))) {
                                _pattern = quoteMeta(_pattern?.__copy__())?.__copy__();
                            } else {
                                @:jump("Testing") continue;
                            };
                        };
                        for (__73 => _c in _flag) {
                            {
                                final __value__ = _c;
                                if (__value__ == ((105 : stdgo.GoInt32))) {
                                    _syn = (_syn | ((1 : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
                                };
                            };
                        };
                        var __tmp__ = _compile(_pattern?.__copy__(), _syn, true), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            if (_shouldCompile) {
                                _t.errorf(("%s:%d: %#q did not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern));
                            };
                            @:jump("Testing") continue;
                        };
                        if (!_shouldCompile) {
                            _t.errorf(("%s:%d: %#q should not compile" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern));
                            @:jump("Testing") continue;
                        };
                        var _match:Bool = _re.matchString(_text?.__copy__());
                        if (_match != (_shouldMatch)) {
                            _t.errorf(("%s:%d: %#q.Match(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_shouldMatch));
                            @:jump("Testing") continue;
                        };
                        var _have = _re.findStringSubmatchIndex(_text?.__copy__());
                        if ((((_have.length) > (0 : stdgo.GoInt) : Bool)) != (_match)) {
                            _t.errorf(("%s:%d: %#q.Match(%#q) = %v, but %#q.FindSubmatchIndex(%#q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_have));
                            @:jump("Testing") continue;
                        };
                        if (((_have.length) > (_pos.length) : Bool)) {
                            _have = (_have.__slice__(0, (_pos.length)) : stdgo.Slice<stdgo.GoInt>);
                        };
                        if (!_same(_have, _pos)) {
                            _t.errorf(("%s:%d: %#q.FindSubmatchIndex(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_pos));
                        };
                    };
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
        });
    }
function _parseFowlerResult(_s:stdgo.GoString):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; var _3 : stdgo.Slice<stdgo.GoInt>; } {
        var _ok:Bool = false, _compiled:Bool = false, _matched:Bool = false, _pos:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        if (_s == (stdgo.Go.str())) {
            _ok = true;
            _compiled = true;
            _matched = true;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        } else if (_s == (("NOMATCH" : stdgo.GoString))) {
            _ok = true;
            _compiled = true;
            _matched = false;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        } else if ((((65 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) && (_s[(0 : stdgo.GoInt)] <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
            _ok = true;
            _compiled = false;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        };
        _compiled = true;
        var _x:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        while (_s != (stdgo.Go.str())) {
            var _end:stdgo.GoByte = (41 : stdgo.GoUInt8);
            if (((_x.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                if (_s[(0 : stdgo.GoInt)] != ((40 : stdgo.GoUInt8))) {
                    _ok = false;
                    return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
                };
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _end = (44 : stdgo.GoUInt8);
            };
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while (((_i < (_s.length) : Bool) && (_s[(_i : stdgo.GoInt)] != _end) : Bool)) {
                _i++;
            };
            if (((_i == (0 : stdgo.GoInt)) || (_i == (_s.length)) : Bool)) {
                _ok = false;
                return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
            };
            var _v:stdgo.GoInt = (-1 : stdgo.GoInt);
            var _err:stdgo.Error = (null : stdgo.Error);
            if ((_s.__slice__(0, _i) : stdgo.GoString) != (("?" : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv.atoi((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _ok = false;
                    return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
                };
            };
            _x = (_x.__append__(_v));
            _s = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        if (((_x.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            _ok = false;
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        };
        _ok = true;
        _matched = true;
        _pos = _x;
        return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
    }
function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        if (((_text.length) >= _n : Bool)) {
            return (_text.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _text = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _x:stdgo.GoUInt32 = (-1u32 : stdgo.GoUInt32);
        for (_i => _ in _text) {
            _x = (_x + (_x) : stdgo.GoUInt32);
            _x = (_x ^ ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            if (((_x : stdgo.GoInt32) < (0 : stdgo.GoInt32) : Bool)) {
                _x = (_x ^ ((-2004316433u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            if ((_x % (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                _text[(_i : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
            } else {
                _text[(_i : stdgo.GoInt)] = (((_x % (95u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoByte);
            };
        };
        return _text;
    }
function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _isRaceBuilder:Bool = stdgo._internal.strings.Strings.hasSuffix(stdgo._internal.internal.testenv.Testenv.builder()?.__copy__(), ("-race" : stdgo.GoString));
        for (__0 => _data in _benchData) {
            var _r = mustCompile(_data._re?.__copy__());
            for (__1 => _size in _benchSizes) {
                if ((((_isRaceBuilder || stdgo._internal.testing.Testing.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                    continue;
                };
                var _t = _makeText(_size._n);
                _b.run(((_data._name + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _size._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    _b.setBytes((_size._n : stdgo.GoInt64));
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            if (_r.match(_t)) {
                                _b.fatal(stdgo.Go.toInterface(("match!" : stdgo.GoString)));
                            };
                        });
                    };
                });
            };
        };
    }
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _isRaceBuilder:Bool = stdgo._internal.strings.Strings.hasSuffix(stdgo._internal.internal.testenv.Testenv.builder()?.__copy__(), ("-race" : stdgo.GoString));
        var _r = mustCompile(("(?s)\\A.*\\z" : stdgo.GoString));
        if (_r._onepass == null || (_r._onepass : Dynamic).__nil__) {
            _b.fatalf(("want onepass regex, but %q is not onepass" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
        for (__8 => _size in _benchSizes) {
            if ((((_isRaceBuilder || stdgo._internal.testing.Testing.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _t = _makeText(_size._n);
            _b.run(_size._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _b.setBytes((_size._n : stdgo.GoInt64));
                _b.reportAllocs();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        if (!_r.match(_t)) {
                            _b.fatal(stdgo.Go.toInterface(("not match!" : stdgo.GoString)));
                        };
                    });
                };
            });
        };
    }
function testLongest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = compile(("a(|b)" : stdgo.GoString)), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0:stdgo.GoString = _re.findString(("ab" : stdgo.GoString))?.__copy__(), __1:stdgo.GoString = ("a" : stdgo.GoString), _w:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_w)) {
                _t.errorf(("first match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        _re.longest();
        {
            var __0:stdgo.GoString = _re.findString(("ab" : stdgo.GoString))?.__copy__(), __1:stdgo.GoString = ("ab" : stdgo.GoString), _w:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_w)) {
                _t.errorf(("longest match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _longRegex = mustCompile(("(one|two|three|four|five|six|seven|eight|nine|ten|eleven|twelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|nineteen|twenty|twentyone|twentytwo|twentythree|twentyfour|twentyfive|twentysix|twentyseven|twentyeight|twentynine|thirty|thirtyone|thirtytwo|thirtythree|thirtyfour|thirtyfive|thirtysix|thirtyseven|thirtyeight|thirtynine|forty|fortyone|fortytwo|fortythree|fortyfour|fortyfive|fortysix|fortyseven|fortyeight|fortynine|fifty|fiftyone|fiftytwo|fiftythree|fiftyfour|fiftyfive|fiftysix|fiftyseven|fiftyeight|fiftynine|sixty|sixtyone|sixtytwo|sixtythree|sixtyfour|sixtyfive|sixtysix|sixtyseven|sixtyeight|sixtynine|seventy|seventyone|seventytwo|seventythree|seventyfour|seventyfive|seventysix|seventyseven|seventyeight|seventynine|eighty|eightyone|eightytwo|eightythree|eightyfour|eightyfive|eightysix|eightyseven|eightyeight|eightynine|ninety|ninetyone|ninetytwo|ninetythree|ninetyfour|ninetyfive|ninetysix|ninetyseven|ninetyeight|ninetynine|onehundred)" : stdgo.GoString));
        if (!_longRegex.matchString(("two" : stdgo.GoString))) {
            _t.errorf(("longRegex.MatchString(\"two\") was false, want true" : stdgo.GoString));
        };
        if (_longRegex.matchString(("xxx" : stdgo.GoString))) {
            _t.errorf(("longRegex.MatchString(\"xxx\") was true, want false" : stdgo.GoString));
        };
    }
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        var _x = new stdgo.Slice<stdgo.GoInt>(_x.length, 0, ..._x);
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var _runLength:stdgo.GoInt = ((_x.length) / _n : stdgo.GoInt);
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((_runLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            stdgo.Go.copySlice(_ret[(_i : stdgo.GoInt)], (_x.__slice__(_j) : stdgo.Slice<stdgo.GoInt>));
            _j = (_j + (_runLength) : stdgo.GoInt);
            if ((_j > (_x.length) : Bool)) {
                throw stdgo.Go.toInterface(("invalid build entry" : stdgo.GoString));
            };
        };
        return _ret;
    }
function testFind(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _re = mustCompile(_test._pat?.__copy__());
            if ((_re.string() : stdgo.GoString) != (_test._pat)) {
                _t.errorf(("String() = `%s`; should be `%s`" : stdgo.GoString), stdgo.Go.toInterface((_re.string() : stdgo.GoString)), stdgo.Go.toInterface(_test._pat));
            };
            var _result = _re.find((_test._text : stdgo.Slice<stdgo.GoByte>));
            if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                var _expect:stdgo.GoString = (_test._text.__slice__(_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)], _test._matches[(0 : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                if ((_result.length) != (_result.capacity)) {
                    _t.errorf(("expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(_result.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
                if (_expect != ((_result : stdgo.GoString))) {
                    _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
function testFindString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _result:stdgo.GoString = mustCompile(_test._pat?.__copy__()).findString(_test._text?.__copy__())?.__copy__();
            if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != stdgo.Go.str()) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == stdgo.Go.str()) : Bool)) {
                if (_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] != (_test._matches[(0 : stdgo.GoInt)][((1 : stdgo.GoInt) : stdgo.GoInt)])) {
                    _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            } else if (((_test._matches != null) && (_result != stdgo.Go.str()) : Bool)) {
                var _expect:stdgo.GoString = (_test._text.__slice__(_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)], _test._matches[(0 : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                if (_expect != (_result)) {
                    _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
function _testFindIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result == null) : Bool)) {
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result != null) : Bool)) {
            var _expect = _test._matches[(0 : stdgo.GoInt)];
            if (((_expect[(0 : stdgo.GoInt)] != _result[(0 : stdgo.GoInt)]) || (_expect[(1 : stdgo.GoInt)] != _result[(1 : stdgo.GoInt)]) : Bool)) {
                _t.errorf(("expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
        };
    }
function testFindIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findIndex((_test._text : stdgo.Slice<stdgo.GoByte>)), _t);
        };
    }
function testFindStringIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findStringIndex(_test._text?.__copy__()), _t);
        };
    }
function testFindReaderIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findReaderIndex(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_test._text?.__copy__()))), _t);
        };
    }
function testFindAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _result = mustCompile(_test._pat?.__copy__()).findAll((_test._text : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.fatalf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                if ((_test._matches.length) != ((_result.length))) {
                    _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    continue;
                };
                for (_k => _e in _test._matches) {
                    var _got = _result[(_k : stdgo.GoInt)];
                    if ((_got.length) != (_got.capacity)) {
                        _t.errorf(("match %d: expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_got.length)), stdgo.Go.toInterface(_got.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    var _expect:stdgo.GoString = (_test._text.__slice__(_e[(0 : stdgo.GoInt)], _e[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                    if (_expect != ((_got : stdgo.GoString))) {
                        _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                };
            };
        };
    }
function testFindAllString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _result = mustCompile(_test._pat?.__copy__()).findAllString(_test._text?.__copy__(), (-1 : stdgo.GoInt));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                if ((_test._matches.length) != ((_result.length))) {
                    _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    continue;
                };
                for (_k => _e in _test._matches) {
                    var _expect:stdgo.GoString = (_test._text.__slice__(_e[(0 : stdgo.GoInt)], _e[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                    if (_expect != (_result[(_k : stdgo.GoInt)])) {
                        _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                };
            };
        };
    }
function _testFindAllIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result == null) : Bool)) {
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result != null) : Bool)) {
            if ((_test._matches.length) != ((_result.length))) {
                _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                return;
            };
            for (_k => _e in _test._matches) {
                if (((_e[(0 : stdgo.GoInt)] != _result[(_k : stdgo.GoInt)][(0 : stdgo.GoInt)]) || (_e[(1 : stdgo.GoInt)] != _result[(_k : stdgo.GoInt)][(1 : stdgo.GoInt)]) : Bool)) {
                    _t.errorf(("match %d: expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_result[(_k : stdgo.GoInt)]), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindAllIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findAllIndex((_test._text : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt)), _t);
        };
    }
function testFindAllStringIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindAllIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findAllStringIndex(_test._text?.__copy__(), (-1 : stdgo.GoInt)), _t);
        };
    }
function _testSubmatchBytes(_test:stdgo.Ref<FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if ((_submatches.length) != (((_result.length) * (2 : stdgo.GoInt) : stdgo.GoInt))) {
            _t.errorf(("match %d: expected %d submatches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_submatches.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            return;
        };
        {
            var _k:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_k < (_submatches.length) : Bool), _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                if (_submatches[(_k : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                    if (_result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)] != null) {
                        _t.errorf(("match %d: expected nil got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    continue;
                };
                var _got = _result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)];
                if ((_got.length) != (_got.capacity)) {
                    _t.errorf(("match %d: expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)), stdgo.Go.toInterface(_got.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
                var _expect:stdgo.GoString = (_test._text.__slice__(_submatches[(_k : stdgo.GoInt)], _submatches[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                if (_expect != ((_got : stdgo.GoString))) {
                    _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
            });
        };
    }
function testFindSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _result = mustCompile(_test._pat?.__copy__()).findSubmatch((_test._text : stdgo.Slice<stdgo.GoByte>));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                _testSubmatchBytes((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), (0 : stdgo.GoInt), _test._matches[(0 : stdgo.GoInt)], _result, _t);
            };
        };
    }
function _testSubmatchString(_test:stdgo.Ref<FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if ((_submatches.length) != (((_result.length) * (2 : stdgo.GoInt) : stdgo.GoInt))) {
            _t.errorf(("match %d: expected %d submatches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_submatches.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            return;
        };
        {
            var _k:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_k < (_submatches.length) : Bool), _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                if (_submatches[(_k : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                    if (_result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)] != (stdgo.Go.str())) {
                        _t.errorf(("match %d: expected nil got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    continue;
                };
                var _expect:stdgo.GoString = (_test._text.__slice__(_submatches[(_k : stdgo.GoInt)], _submatches[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                if (_expect != (_result[((_k / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
                    _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
            });
        };
    }
function testFindStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _result = mustCompile(_test._pat?.__copy__()).findStringSubmatch(_test._text?.__copy__());
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                _testSubmatchString((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), (0 : stdgo.GoInt), _test._matches[(0 : stdgo.GoInt)], _result, _t);
            };
        };
    }
function _testSubmatchIndices(_test:stdgo.Ref<FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if ((_expect.length) != ((_result.length))) {
            _t.errorf(("match %d: expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_expect.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(((_result.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            return;
        };
        for (_k => _e in _expect) {
            if (_e != (_result[(_k : stdgo.GoInt)])) {
                _t.errorf(("match %d: submatch error: expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
        };
    }
function _testFindSubmatchIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result == null) : Bool)) {
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result != null) : Bool)) {
            _testSubmatchIndices(_test, (0 : stdgo.GoInt), _test._matches[(0 : stdgo.GoInt)], _result, _t);
        };
    }
function testFindSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findSubmatchIndex((_test._text : stdgo.Slice<stdgo.GoByte>)), _t);
        };
    }
function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findStringSubmatchIndex(_test._text?.__copy__()), _t);
        };
    }
function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findReaderSubmatchIndex(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_test._text?.__copy__()))), _t);
        };
    }
function testFindAllSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _result = mustCompile(_test._pat?.__copy__()).findAllSubmatch((_test._text : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if ((_test._matches.length) != ((_result.length))) {
                _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                for (_k => _match in _test._matches) {
                    _testSubmatchBytes((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), _k, _match, _result[(_k : stdgo.GoInt)], _t);
                };
            };
        };
    }
function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            var _result = mustCompile(_test._pat?.__copy__()).findAllStringSubmatch(_test._text?.__copy__(), (-1 : stdgo.GoInt));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if ((_test._matches.length) != ((_result.length))) {
                _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                for (_k => _match in _test._matches) {
                    _testSubmatchString((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), _k, _match, _result[(_k : stdgo.GoInt)], _t);
                };
            };
        };
    }
function _testFindAllSubmatchIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result == null) : Bool)) {
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((_test._matches.length) != ((_result.length))) {
            _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result != null) : Bool)) {
            for (_k => _match in _test._matches) {
                _testSubmatchIndices(_test, _k, _match, _result[(_k : stdgo.GoInt)], _t);
            };
        };
    }
function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindAllSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findAllSubmatchIndex((_test._text : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt)), _t);
        };
    }
function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _findTests) {
            _testFindAllSubmatchIndex((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp.FindTest>), mustCompile(_test._pat?.__copy__()).findAllStringSubmatchIndex(_test._text?.__copy__(), (-1 : stdgo.GoInt)), _t);
        };
    }
function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } {
        var _prefix:stdgo.GoString = ("" : stdgo.GoString), _complete:Bool = false, _pc:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _i = (stdgo.Go.setRef(_p.inst[(_p.start : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        if (((_i.op != (3 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || ((((_i.arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) & (4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) == (0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp)), _2 : (_p.start : stdgo.GoUInt32) };
        };
        _pc = _i.out;
        _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        while (_i.op == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
            _pc = _i.out;
            _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        };
        if (((_iop(_i) != (7 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (_i.rune.length != (1 : stdgo.GoInt)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp)), _2 : (_p.start : stdgo.GoUInt32) };
        };
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        while ((((_iop(_i) == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp)) && (_i.rune.length) == ((1 : stdgo.GoInt)) : Bool) && ((_i.arg : stdgo._internal.regexp.syntax.Syntax.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)) : Bool) && (_i.rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            _buf.writeRune(_i.rune[(0 : stdgo.GoInt)]);
            {
                final __tmp__0 = _i.out;
                final __tmp__1 = (stdgo.Go.setRef(_p.inst[(_i.out : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
                _pc = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (((_i.op == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp)) && ((_i.arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : Bool) && (_p.inst[(_i.out : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) : Bool)) {
            _complete = true;
        };
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _complete, _2 : _pc };
    }
function _onePassNext(_i:stdgo.Ref<T_onePassInst>, _r:stdgo.GoRune):stdgo.GoUInt32 {
        var _next:stdgo.GoInt = _i.matchRunePos(_r);
        if ((_next >= (0 : stdgo.GoInt) : Bool)) {
            return _i.next[(_next : stdgo.GoInt)];
        };
        if (_i.inst.op == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
            return _i.inst.out;
        };
        return (0u32 : stdgo.GoUInt32);
    }
function _iop(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>):stdgo._internal.regexp.syntax.Syntax.InstOp {
        var _op:stdgo._internal.regexp.syntax.Syntax.InstOp = _i.op;
        {
            final __value__ = _op;
            if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _op = (7 : stdgo._internal.regexp.syntax.Syntax.InstOp);
            };
        };
        return _op;
    }
function _newQueue(_size:stdgo.GoInt):stdgo.Ref<T_queueOnePass> {
        var _q:stdgo.Ref<T_queueOnePass> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_queueOnePass>);
        return (stdgo.Go.setRef(({ _sparse : (new stdgo.Slice<stdgo.GoUInt32>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _dense : (new stdgo.Slice<stdgo.GoUInt32>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>) } : stdgo._internal.regexp.Regexp.T_queueOnePass)) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_queueOnePass>);
    }
function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _leftLen:stdgo.GoInt = ((_leftRunes : stdgo.Slice<stdgo.GoInt32>).length);
            var _rightLen:stdgo.GoInt = ((_rightRunes : stdgo.Slice<stdgo.GoInt32>).length);
            if ((((_leftLen & (1 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_rightLen & (1 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                throw stdgo.Go.toInterface(("mergeRuneSets odd length []rune" : stdgo.GoString));
            };
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _rx:stdgo.GoInt = __1, _lx:stdgo.GoInt = __0;
            var _merged = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _next = (new stdgo.Slice<stdgo.GoUInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
            var _ok:Bool = true;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (!_ok) {
                        _merged = (null : stdgo.Slice<stdgo.GoInt32>);
                        _next = (null : stdgo.Slice<stdgo.GoUInt32>);
                    };
                };
                a();
            });
            var _ix:stdgo.GoInt = (-1 : stdgo.GoInt);
            var _extend = function(_newLow:stdgo.Pointer<stdgo.GoInt>, _newArray:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _pc:stdgo.GoUInt32):Bool {
                if (((_ix > (0 : stdgo.GoInt) : Bool) && (((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value : stdgo.GoInt)] <= _merged[(_ix : stdgo.GoInt)] : Bool) : Bool)) {
                    return false;
                };
                _merged = (_merged.__append__(((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value : stdgo.GoInt)], ((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value + (1 : stdgo.GoInt) : stdgo.GoInt)]));
                _newLow.value = (_newLow.value + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _ix = (_ix + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _next = (_next.__append__(_pc));
                return true;
            };
            while (((_lx < _leftLen : Bool) || (_rx < _rightLen : Bool) : Bool)) {
                if ((_rx >= _rightLen : Bool)) {
                    _ok = _extend(stdgo.Go.pointer(_lx), _leftRunes, _leftPC);
                } else if ((_lx >= _leftLen : Bool)) {
                    _ok = _extend(stdgo.Go.pointer(_rx), _rightRunes, _rightPC);
                } else if ((((_rightRunes : stdgo.Slice<stdgo.GoInt32>))[(_rx : stdgo.GoInt)] < ((_leftRunes : stdgo.Slice<stdgo.GoInt32>))[(_lx : stdgo.GoInt)] : Bool)) {
                    _ok = _extend(stdgo.Go.pointer(_rx), _rightRunes, _rightPC);
                } else {
                    _ok = _extend(stdgo.Go.pointer(_lx), _leftRunes, _leftPC);
                };
                if (!_ok) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : _noRune, _1 : _noNext };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : _merged, _1 : _next };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (null : stdgo.Slice<stdgo.GoUInt32>) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (null : stdgo.Slice<stdgo.GoUInt32>) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _cleanupOnePass(_prog:stdgo.Ref<T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Void {
        for (_ix => _instOriginal in _original.inst) {
            {
                final __value__ = _instOriginal.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {} else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    _prog.inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    _prog.inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                    _prog.inst[(_ix : stdgo.GoInt)] = ({ inst : _instOriginal?.__copy__() } : stdgo._internal.regexp.Regexp.T_onePassInst);
                };
            };
        };
    }
function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):stdgo.Ref<T_onePassProg> {
        var _p = (stdgo.Go.setRef(({ start : _prog.start, numCap : _prog.numCap, inst : (new stdgo.Slice<stdgo._internal.regexp.Regexp.T_onePassInst>((_prog.inst.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_prog.inst.length : stdgo.GoInt).toBasic() > 0 ? (_prog.inst.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.T_onePassInst)]) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_onePassInst>) } : stdgo._internal.regexp.Regexp.T_onePassProg)) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassProg>);
        for (_i => _inst in _prog.inst) {
            _p.inst[(_i : stdgo.GoInt)] = ({ inst : _inst?.__copy__() } : stdgo._internal.regexp.Regexp.T_onePassInst);
        };
        for (_pc => _ in _p.inst) {
            {
                final __value__ = _p.inst[(_pc : stdgo.GoInt)].inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    var _p_A_Other = stdgo.Go.pointer(_p.inst[(_pc : stdgo.GoInt)].inst.out);
                    var _p_A_Alt = stdgo.Go.pointer(_p.inst[(_pc : stdgo.GoInt)].inst.arg);
                    var _instAlt:stdgo._internal.regexp.Regexp.T_onePassInst = _p.inst[(_p_A_Alt.value : stdgo.GoInt)];
                    if (!(((_instAlt.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (_instAlt.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax.InstOp)) : Bool))) {
                        {
                            final __tmp__0 = _p_A_Other;
                            final __tmp__1 = _p_A_Alt;
                            _p_A_Alt = __tmp__0;
                            _p_A_Other = __tmp__1;
                        };
                        _instAlt = _p.inst[(_p_A_Alt.value : stdgo.GoInt)];
                        if (!(((_instAlt.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (_instAlt.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax.InstOp)) : Bool))) {
                            continue;
                        };
                    };
                    var _instOther:stdgo._internal.regexp.Regexp.T_onePassInst = _p.inst[(_p_A_Other.value : stdgo.GoInt)];
                    if (((_instOther.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (_instOther.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax.InstOp)) : Bool)) {
                        continue;
                    };
                    var _p_B_Alt = stdgo.Go.pointer(_p.inst[(_p_A_Alt.value : stdgo.GoInt)].inst.out);
                    var _p_B_Other = stdgo.Go.pointer(_p.inst[(_p_A_Alt.value : stdgo.GoInt)].inst.arg);
                    var _patch:Bool = false;
                    if (_instAlt.inst.out == ((_pc : stdgo.GoUInt32))) {
                        _patch = true;
                    } else if (_instAlt.inst.arg == ((_pc : stdgo.GoUInt32))) {
                        _patch = true;
                        {
                            final __tmp__0 = _p_B_Other;
                            final __tmp__1 = _p_B_Alt;
                            _p_B_Alt = __tmp__0;
                            _p_B_Other = __tmp__1;
                        };
                    };
                    if (_patch) {
                        _p_B_Alt.value = _p_A_Other.value;
                    };
                    if (_p_A_Other.value == (_p_B_Alt.value)) {
                        _p_A_Alt.value = _p_B_Other.value;
                    };
                } else {
                    continue;
                };
            };
        };
        return _p;
    }
function _makeOnePass(_p:stdgo.Ref<T_onePassProg>):stdgo.Ref<T_onePassProg> {
        if (((_p.inst.length) >= (1000 : stdgo.GoInt) : Bool)) {
            return null;
        };
        var __0:stdgo.Ref<stdgo._internal.regexp.Regexp.T_queueOnePass> = _newQueue((_p.inst.length)), __1:stdgo.Ref<stdgo._internal.regexp.Regexp.T_queueOnePass> = _newQueue((_p.inst.length)), __2:(stdgo.GoUInt32, stdgo.Slice<Bool>) -> Bool = null, __3:stdgo.Slice<stdgo.Slice<stdgo.GoInt32>> = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>((_p.inst.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>), _onePassRunes:stdgo.Slice<stdgo.Slice<stdgo.GoInt32>> = __3, _check:(stdgo.GoUInt32, stdgo.Slice<Bool>) -> Bool = __2, _visitQueue:stdgo.Ref<stdgo._internal.regexp.Regexp.T_queueOnePass> = __1, _instQueue:stdgo.Ref<stdgo._internal.regexp.Regexp.T_queueOnePass> = __0;
        _check = function(_pc:stdgo.GoUInt32, _m:stdgo.Slice<Bool>):Bool {
            var _ok:Bool = false;
            _ok = true;
            var _inst = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassInst>);
            if (_visitQueue._contains(_pc)) {
                return _ok;
            };
            _visitQueue._insert(_pc);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _inst.inst.op;
                        if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _ok = (_check(_inst.inst.out, _m) && _check(_inst.inst.arg, _m) : Bool);
                            var _matchOut:Bool = _m[(_inst.inst.out : stdgo.GoInt)];
                            var _matchArg:Bool = _m[(_inst.inst.arg : stdgo.GoInt)];
                            if ((_matchOut && _matchArg : Bool)) {
                                _ok = false;
                                break;
                            };
                            if (_matchArg) {
                                {
                                    final __tmp__0 = _inst.inst.arg;
                                    final __tmp__1 = _inst.inst.out;
                                    _inst.inst.out = __tmp__0;
                                    _inst.inst.arg = __tmp__1;
                                };
                                {
                                    final __tmp__0 = _matchArg;
                                    final __tmp__1 = _matchOut;
                                    _matchOut = __tmp__0;
                                    _matchArg = __tmp__1;
                                };
                            };
                            if (_matchOut) {
                                _m[(_pc : stdgo.GoInt)] = true;
                                _inst.inst.op = (1 : stdgo._internal.regexp.syntax.Syntax.InstOp);
                            };
                            {
                                var __tmp__ = _mergeRuneSets((stdgo.Go.setRef(_onePassRunes[(_inst.inst.out : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), (stdgo.Go.setRef(_onePassRunes[(_inst.inst.arg : stdgo.GoInt)]) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), _inst.inst.out, _inst.inst.arg);
                                _onePassRunes[(_pc : stdgo.GoInt)] = __tmp__._0;
                                _inst.next = __tmp__._1;
                            };
                            if ((((_inst.next.length) > (0 : stdgo.GoInt) : Bool) && (_inst.next[(0 : stdgo.GoInt)] == (-1u32 : stdgo.GoUInt32)) : Bool)) {
                                _ok = false;
                                break;
                            };
                            break;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _ok = _check(_inst.inst.out, _m);
                            _m[(_pc : stdgo.GoInt)] = _m[(_inst.inst.out : stdgo.GoInt)];
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_onePassRunes[(_inst.inst.out : stdgo.GoInt)] : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            break;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _ok = _check(_inst.inst.out, _m);
                            _m[(_pc : stdgo.GoInt)] = _m[(_inst.inst.out : stdgo.GoInt)];
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_onePassRunes[(_inst.inst.out : stdgo.GoInt)] : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            break;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = _inst.inst.op == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp));
                            break;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            if ((_inst.inst.rune.length) == ((0 : stdgo.GoInt))) {
                                _onePassRunes[(_pc : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                                _inst.next = (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[_inst.inst.out]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                                break;
                            };
                            var _runes = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            if (((_inst.inst.rune.length == (1 : stdgo.GoInt)) && (((_inst.inst.arg : stdgo._internal.regexp.syntax.Syntax.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax.Flags)) : Bool)) {
                                var _r0:stdgo.GoInt32 = _inst.inst.rune[(0 : stdgo.GoInt)];
                                _runes = (_runes.__append__(_r0, _r0));
                                {
                                    var _r1:stdgo.GoInt32 = stdgo._internal.unicode.Unicode.simpleFold(_r0);
                                    stdgo.Go.cfor(_r1 != (_r0), _r1 = stdgo._internal.unicode.Unicode.simpleFold(_r1), {
                                        _runes = (_runes.__append__(_r1, _r1));
                                    });
                                };
                                stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((_runes : T_runeSlice)));
                            } else {
                                _runes = (_runes.__append__(...(_inst.inst.rune : Array<stdgo.GoInt32>)));
                            };
                            _onePassRunes[(_pc : stdgo.GoInt)] = _runes;
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            _inst.inst.op = (7 : stdgo._internal.regexp.syntax.Syntax.InstOp);
                            break;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            var _runes = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            if (((_inst.inst.arg : stdgo._internal.regexp.syntax.Syntax.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                                var _r0:stdgo.GoInt32 = _inst.inst.rune[(0 : stdgo.GoInt)];
                                _runes = (_runes.__append__(_r0, _r0));
                                {
                                    var _r1:stdgo.GoInt32 = stdgo._internal.unicode.Unicode.simpleFold(_r0);
                                    stdgo.Go.cfor(_r1 != (_r0), _r1 = stdgo._internal.unicode.Unicode.simpleFold(_r1), {
                                        _runes = (_runes.__append__(_r1, _r1));
                                    });
                                };
                                stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((_runes : T_runeSlice)));
                            } else {
                                _runes = (_runes.__append__(_inst.inst.rune[(0 : stdgo.GoInt)], _inst.inst.rune[(0 : stdgo.GoInt)]));
                            };
                            _onePassRunes[(_pc : stdgo.GoInt)] = _runes;
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            _inst.inst.op = (7 : stdgo._internal.regexp.syntax.Syntax.InstOp);
                            break;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_anyRune : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[_inst.inst.out]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            break;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                            _m[(_pc : stdgo.GoInt)] = false;
                            if (((_inst.next.length) > (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _instQueue._insert(_inst.inst.out);
                            _onePassRunes[(_pc : stdgo.GoInt)] = ((new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>).__append__(...(_anyRuneNotNL : Array<stdgo.GoInt32>)));
                            _inst.next = (new stdgo.Slice<stdgo.GoUInt32>((((_onePassRunes[(_pc : stdgo.GoInt)].length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                            for (_i => _ in _inst.next) {
                                _inst.next[(_i : stdgo.GoInt)] = _inst.inst.out;
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            return _ok;
        };
        _instQueue._clear();
        _instQueue._insert((_p.start : stdgo.GoUInt32));
        var _m = (new stdgo.Slice<Bool>((_p.inst.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        while (!_instQueue._empty()) {
            _visitQueue._clear();
            var _pc:stdgo.GoUInt32 = _instQueue._next();
            if (!_check(_pc, _m)) {
                _p = null;
                break;
            };
        };
        if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
            for (_i => _ in _p.inst) {
                _p.inst[(_i : stdgo.GoInt)].inst.rune = _onePassRunes[(_i : stdgo.GoInt)];
            };
        };
        return _p;
    }
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):stdgo.Ref<T_onePassProg> {
        var _p:stdgo.Ref<T_onePassProg> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassProg>);
        if (_prog.start == ((0 : stdgo.GoInt))) {
            return null;
        };
        if (((_prog.inst[(_prog.start : stdgo.GoInt)].op != (3 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (((_prog.inst[(_prog.start : stdgo.GoInt)].arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp) & (4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != (4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : Bool)) {
            return null;
        };
        for (__0 => _inst in _prog.inst) {
            var _opOut:stdgo._internal.regexp.syntax.Syntax.InstOp = _prog.inst[(_inst.out : stdgo.GoInt)].op;
            {
                final __value__ = _inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    if (((_opOut == (4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (_prog.inst[(_inst.arg : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) : Bool)) {
                        return null;
                    };
                } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (((_inst.arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) == ((8 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                            continue;
                        };
                        return null;
                    };
                } else {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        return null;
                    };
                };
            };
        };
        _p = _onePassCopy(_prog);
        _p = _makeOnePass(_p);
        if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
            _cleanupOnePass(_p, _prog);
        };
        return _p;
    }
function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_ix => _test in _runeMergeTests) {
            var __tmp__ = _mergeRuneSets((stdgo.Go.setRef(_test._left) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), (stdgo.Go.setRef(_test._right) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), _test._leftPC, _test._rightPC), _merged:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _next:stdgo.Slice<stdgo.GoUInt32> = __tmp__._1;
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_merged), stdgo.Go.toInterface(_test._merged))) {
                _t.errorf(("mergeRuneSet :%d (%v, %v) merged\n have\n%v\nwant\n%v" : stdgo.GoString), stdgo.Go.toInterface(_ix), stdgo.Go.toInterface(_test._left), stdgo.Go.toInterface(_test._right), stdgo.Go.toInterface(_merged), stdgo.Go.toInterface(_test._merged));
            };
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_test._next))) {
                _t.errorf(("mergeRuneSet :%d(%v, %v) next\n have\n%v\nwant\n%v" : stdgo.GoString), stdgo.Go.toInterface(_ix), stdgo.Go.toInterface(_test._left), stdgo.Go.toInterface(_test._right), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_test._next));
            };
        };
    }
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>), __1:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>), __2:stdgo.Error = (null : stdgo.Error), _err:stdgo.Error = __2, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __1, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = __0;
        for (__0 => _test in _onePassTests) {
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax.parse(_test._re?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax.Flags));
                    _re = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.errorf(("Parse(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            _re = _re.simplify();
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax.compile(_re);
                    _p = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.errorf(("Compile(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            var _isOnePass:Bool = _compileOnePass(_p) != null && ((_compileOnePass(_p) : Dynamic).__nil__ == null || !(_compileOnePass(_p) : Dynamic).__nil__);
            if (_isOnePass != (_test._isOnePass)) {
                _t.errorf(("CompileOnePass(%q) got isOnePass=%v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_isOnePass), stdgo.Go.toInterface(_test._isOnePass));
            };
        };
    }
function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _onePassTests1) {
            var __tmp__ = compile(_test._re?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Compile(%q): got err: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                continue;
            };
            if (_re._onepass == null || (_re._onepass : Dynamic).__nil__) {
                _t.errorf(("Compile(%q): got nil, want one-pass" : stdgo.GoString), stdgo.Go.toInterface(_test._re));
                continue;
            };
            if (!_re.matchString(_test._match?.__copy__())) {
                _t.errorf(("onepass %q did not match %q" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_test._match));
            };
        };
    }
function compile(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } {
        return _compile(_expr?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax.Flags), false);
    }
function compilePOSIX(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } {
        return _compile(_expr?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax.Flags), true);
    }
function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Syntax.Flags, _longest:Bool):{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax.parse(_expr?.__copy__(), _mode), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _maxCap:stdgo.GoInt = _re.maxCap();
        var _capNames = _re.capNames();
        _re = _re.simplify();
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax.compile(_re), _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _matchcap:stdgo.GoInt = _prog.numCap;
        if ((_matchcap < (2 : stdgo.GoInt) : Bool)) {
            _matchcap = (2 : stdgo.GoInt);
        };
        var _regexp = (stdgo.Go.setRef(({ _expr : _expr?.__copy__(), _prog : _prog, _onepass : _compileOnePass(_prog), _numSubexp : _maxCap, _subexpNames : _capNames, _cond : _prog.startCond(), _longest : _longest, _matchcap : _matchcap, _minInputLen : _minInputLen(_re) } : stdgo._internal.regexp.Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>);
        if (_regexp._onepass == null || (_regexp._onepass : Dynamic).__nil__) {
            {
                var __tmp__ = _prog.prefix();
                _regexp._prefix = __tmp__._0?.__copy__();
                _regexp._prefixComplete = __tmp__._1;
            };
            _regexp._maxBitStateLen = _maxBitStateLen(_prog);
        } else {
            {
                var __tmp__ = _onePassPrefix(_prog);
                _regexp._prefix = __tmp__._0?.__copy__();
                _regexp._prefixComplete = __tmp__._1;
                _regexp._prefixEnd = __tmp__._2;
            };
        };
        if (_regexp._prefix != (stdgo.Go.str())) {
            _regexp._prefixBytes = (_regexp._prefix : stdgo.Slice<stdgo.GoByte>);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_regexp._prefix?.__copy__());
                _regexp._prefixRune = __tmp__._0;
            };
        };
        var _n:stdgo.GoInt = (_prog.inst.length);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((_matchSize[(_i : stdgo.GoInt)] != (0 : stdgo.GoInt)) && (_matchSize[(_i : stdgo.GoInt)] < _n : Bool) : Bool)) {
            _i++;
        };
        _regexp._mpool = _i;
        return { _0 : _regexp, _1 : (null : stdgo.Error) };
    }
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>):stdgo.GoInt {
        {
            final __value__ = _re.op;
            if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _l:stdgo.GoInt = (0 : stdgo.GoInt);
                for (__0 => _r in _re.rune) {
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        _l++;
                    } else {
                        _l = (_l + (stdgo._internal.unicode.utf8.Utf8.runeLen(_r)) : stdgo.GoInt);
                    };
                };
                return _l;
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _minInputLen(_re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return (_re.min * _minInputLen(_re.sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _l:stdgo.GoInt = (0 : stdgo.GoInt);
                for (__1 => _sub in _re.sub) {
                    _l = (_l + (_minInputLen(_sub)) : stdgo.GoInt);
                };
                return _l;
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _l:stdgo.GoInt = _minInputLen(_re.sub[(0 : stdgo.GoInt)]);
                var _lnext:stdgo.GoInt = (0 : stdgo.GoInt);
                for (__2 => _sub in (_re.sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>)) {
                    _lnext = _minInputLen(_sub);
                    if ((_lnext < _l : Bool)) {
                        _l = _lnext;
                    };
                };
                return _l;
            } else {
                return (0 : stdgo.GoInt);
            };
        };
    }
function mustCompile(_str:stdgo.GoString):stdgo.Ref<Regexp> {
        var __tmp__ = compile(_str?.__copy__()), _regexp:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface((((("regexp: Compile(" : stdgo.GoString) + _quote(_str?.__copy__())?.__copy__() : stdgo.GoString) + ("): " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        return _regexp;
    }
function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<Regexp> {
        var __tmp__ = compilePOSIX(_str?.__copy__()), _regexp:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface((((("regexp: CompilePOSIX(" : stdgo.GoString) + _quote(_str?.__copy__())?.__copy__() : stdgo.GoString) + ("): " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        return _regexp;
    }
function _quote(_s:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.strconv.Strconv.canBackquote(_s?.__copy__())) {
            return ((("`" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return stdgo._internal.strconv.Strconv.quote(_s?.__copy__())?.__copy__();
    }
function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.Io.RuneReader):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = compile(_pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.matchReader(_r), _1 : (null : stdgo.Error) };
    }
function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = compile(_pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.matchString(_s?.__copy__()), _1 : (null : stdgo.Error) };
    }
function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = compile(_pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.match(_b), _1 : (null : stdgo.Error) };
    }
function _special(_b:stdgo.GoByte):Bool {
        return ((_b < (128 : stdgo.GoUInt8) : Bool) && ((_specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_b / (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
    }
function quoteMeta(_s:stdgo.GoString):stdgo.GoString {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if (_special(_s[(_i : stdgo.GoInt)])) {
                    break;
                };
            });
        };
        if ((_i >= (_s.length) : Bool)) {
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((((2 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) - _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_b, (_s.__slice__(0, _i) : stdgo.GoString));
        var _j:stdgo.GoInt = _i;
        stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
            if (_special(_s[(_i : stdgo.GoInt)])) {
                _b[(_j : stdgo.GoInt)] = (92 : stdgo.GoUInt8);
                _j++;
            };
            _b[(_j : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
            _j++;
        });
        return ((_b.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
function _extract(_str:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        var _name:stdgo.GoString = ("" : stdgo.GoString), _num:stdgo.GoInt = (0 : stdgo.GoInt), _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if (_str == (stdgo.Go.str())) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        var _brace:Bool = false;
        if (_str[(0 : stdgo.GoInt)] == ((123 : stdgo.GoUInt8))) {
            _brace = true;
            _str = (_str.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_i < (_str.length) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_str.__slice__(_i) : stdgo.GoString)?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((!stdgo._internal.unicode.Unicode.isLetter(_rune) && !stdgo._internal.unicode.Unicode.isDigit(_rune) : Bool) && (_rune != (95 : stdgo.GoInt32)) : Bool)) {
                break;
            };
            _i = (_i + (_size) : stdgo.GoInt);
        };
        if (_i == ((0 : stdgo.GoInt))) {
            return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
        };
        _name = (_str.__slice__(0, _i) : stdgo.GoString)?.__copy__();
        if (_brace) {
            if (((_i >= (_str.length) : Bool) || (_str[(_i : stdgo.GoInt)] != (125 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
            };
            _i++;
        };
        _num = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_name.length) : Bool), _i++, {
                if ((((_name[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) || ((57 : stdgo.GoUInt8) < _name[(_i : stdgo.GoInt)] : Bool) : Bool) || (_num >= (100000000 : stdgo.GoInt) : Bool) : Bool)) {
                    _num = (-1 : stdgo.GoInt);
                    break;
                };
                _num = (((_num * (10 : stdgo.GoInt) : stdgo.GoInt) + (_name[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
            });
        };
        if (((_name[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) && ((_name.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _num = (-1 : stdgo.GoInt);
        };
        _rest = (_str.__slice__(_i) : stdgo.GoString)?.__copy__();
        _ok = true;
        return { _0 : _name, _1 : _num, _2 : _rest, _3 : _ok };
    }
@:keep var _ = {
        try {
            for (__0 => _b in (("\\.+*?()|[]{}^$" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) {
                _specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (_specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_b / (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_bitState_asInterface {
    @:keep
    public dynamic function _push(_re:stdgo.Ref<Regexp>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _arg:Bool):Void __self__.value._push(_re, _pc, _pos, _arg);
    @:keep
    public dynamic function _shouldVisit(_pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool return __self__.value._shouldVisit(_pc, _pos);
    @:keep
    public dynamic function _reset(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>, _end:stdgo.GoInt, _ncap:stdgo.GoInt):Void __self__.value._reset(_prog, _end, _ncap);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_bitState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_bitState_asInterface) class T_bitState_static_extension {
    @:keep
    static public function _push( _b:stdgo.Ref<T_bitState>, _re:stdgo.Ref<Regexp>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _arg:Bool):Void {
        @:recv var _b:stdgo.Ref<T_bitState> = _b;
        if (((_re._prog.inst[(_pc : stdgo.GoInt)].op != (5 : stdgo._internal.regexp.syntax.Syntax.InstOp)) && ((_arg || _b._shouldVisit(_pc, _pos) : Bool)) : Bool)) {
            _b._jobs = (_b._jobs.__append__(({ _pc : _pc, _arg : _arg, _pos : _pos } : stdgo._internal.regexp.Regexp.T_job)));
        };
    }
    @:keep
    static public function _shouldVisit( _b:stdgo.Ref<T_bitState>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<T_bitState> = _b;
        var _n:stdgo.GoUInt = ((((_pc : stdgo.GoInt) * ((_b._end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + _pos : stdgo.GoInt) : stdgo.GoUInt);
        if ((_b._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            return false;
        };
        _b._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] = (_b._visited[((_n / (32u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return true;
    }
    @:keep
    static public function _reset( _b:stdgo.Ref<T_bitState>, _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>, _end:stdgo.GoInt, _ncap:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<T_bitState> = _b;
        _b._end = _end;
        if (_b._jobs.capacity == ((0 : stdgo.GoInt))) {
            _b._jobs = (new stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>((0 : stdgo.GoInt).toBasic(), (256 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (256 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (256 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.T_job)]) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>);
        } else {
            _b._jobs = (_b._jobs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>);
        };
        var _visitedSize:stdgo.GoInt = ((((((_prog.inst.length) * ((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (32 : stdgo.GoInt) : stdgo.GoInt);
        if ((_b._visited.capacity < _visitedSize : Bool)) {
            _b._visited = (new stdgo.Slice<stdgo.GoUInt32>((_visitedSize : stdgo.GoInt).toBasic(), (8192 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        } else {
            _b._visited = (_b._visited.__slice__(0, _visitedSize) : stdgo.Slice<stdgo.GoUInt32>);
            for (_i => _ in _b._visited) {
                _b._visited[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
            };
        };
        if ((_b._cap.capacity < _ncap : Bool)) {
            _b._cap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        } else {
            _b._cap = (_b._cap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        for (_i => _ in _b._cap) {
            _b._cap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        if ((_b._matchcap.capacity < _ncap : Bool)) {
            _b._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        } else {
            _b._matchcap = (_b._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        for (_i => _ in _b._matchcap) {
            _b._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
    }
}
class T_machine_asInterface {
    @:keep
    public dynamic function _add(_q:stdgo.Ref<T_queue>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _cap:stdgo.Slice<stdgo.GoInt>, _cond:stdgo.Pointer<T_lazyFlag>, _t:stdgo.Ref<T_thread>):stdgo.Ref<T_thread> return __self__.value._add(_q, _pc, _pos, _cap, _cond, _t);
    @:keep
    public dynamic function _step(_runq:stdgo.Ref<T_queue>, _nextq:stdgo.Ref<T_queue>, _pos:stdgo.GoInt, _nextPos:stdgo.GoInt, _c:stdgo.GoRune, _nextCond:stdgo.Pointer<T_lazyFlag>):Void __self__.value._step(_runq, _nextq, _pos, _nextPos, _c, _nextCond);
    @:keep
    public dynamic function _clear(_q:stdgo.Ref<T_queue>):Void __self__.value._clear(_q);
    @:keep
    public dynamic function _match(_i:T_input, _pos:stdgo.GoInt):Bool return __self__.value._match(_i, _pos);
    @:keep
    public dynamic function _alloc(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>):stdgo.Ref<T_thread> return __self__.value._alloc(_i);
    @:keep
    public dynamic function _init(_ncap:stdgo.GoInt):Void __self__.value._init(_ncap);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_machine>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_machine_asInterface) class T_machine_static_extension {
    @:keep
    static public function _add( _m:stdgo.Ref<T_machine>, _q:stdgo.Ref<T_queue>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _cap:stdgo.Slice<stdgo.GoInt>, _cond:stdgo.Pointer<T_lazyFlag>, _t:stdgo.Ref<T_thread>):stdgo.Ref<T_thread> {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _m:stdgo.Ref<T_machine> = _m;
            @:label("Again") if (_pc == ((0u32 : stdgo.GoUInt32))) {
                return _t;
            };
            {
                var _j:stdgo.GoUInt32 = _q._sparse[(_pc : stdgo.GoInt)];
                if (((_j < (_q._dense.length : stdgo.GoUInt32) : Bool) && (_q._dense[(_j : stdgo.GoInt)]._pc == _pc) : Bool)) {
                    return _t;
                };
            };
            var _j:stdgo.GoInt = (_q._dense.length);
            _q._dense = (_q._dense.__slice__(0, (_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>);
            var _d = (stdgo.Go.setRef(_q._dense[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_entry>);
            _d._t = null;
            _d._pc = _pc;
            _q._sparse[(_pc : stdgo.GoInt)] = (_j : stdgo.GoUInt32);
            var _i = (stdgo.Go.setRef(_m._p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
            {
                final __value__ = _i.op;
                if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {} else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    _t = _m._add(_q, _i.out, _pos, _cap, _cond, _t);
                    _pc = _i.arg;
                    @:goto "Again";
                } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    if (_cond.value._match((_i.arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                        _pc = _i.out;
                        @:goto "Again";
                    };
                } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    _pc = _i.out;
                    @:goto "Again";
                } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    if (((_i.arg : stdgo.GoInt) < (_cap.length) : Bool)) {
                        var _opos:stdgo.GoInt = _cap[(_i.arg : stdgo.GoInt)];
                        _cap[(_i.arg : stdgo.GoInt)] = _pos;
                        _m._add(_q, _i.out, _pos, _cap, _cond, null);
                        _cap[(_i.arg : stdgo.GoInt)] = _opos;
                    } else {
                        _pc = _i.out;
                        @:goto "Again";
                    };
                } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                    if (_t == null || (_t : Dynamic).__nil__) {
                        _t = _m._alloc(_i);
                    } else {
                        _t._inst = _i;
                    };
                    if ((((_cap.length) > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.pointer(_t._cap[(0 : stdgo.GoInt)]) != stdgo.Go.pointer(_cap[(0 : stdgo.GoInt)])) : Bool)) {
                        stdgo.Go.copySlice(_t._cap, _cap);
                    };
                    _d._t = _t;
                    _t = null;
                } else {
                    throw stdgo.Go.toInterface(("unhandled" : stdgo.GoString));
                };
            };
            return _t;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _step( _m:stdgo.Ref<T_machine>, _runq:stdgo.Ref<T_queue>, _nextq:stdgo.Ref<T_queue>, _pos:stdgo.GoInt, _nextPos:stdgo.GoInt, _c:stdgo.GoRune, _nextCond:stdgo.Pointer<T_lazyFlag>):Void {
        @:recv var _m:stdgo.Ref<T_machine> = _m;
        var _longest:Bool = _m._re._longest;
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (_runq._dense.length) : Bool), _j++, {
                var _d = (stdgo.Go.setRef(_runq._dense[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_entry>);
                var _t = _d._t;
                if (_t == null || (_t : Dynamic).__nil__) {
                    continue;
                };
                if ((((_longest && _m._matched : Bool) && ((_t._cap.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_m._matchcap[(0 : stdgo.GoInt)] < _t._cap[(0 : stdgo.GoInt)] : Bool) : Bool)) {
                    _m._pool = (_m._pool.__append__(_t));
                    continue;
                };
                var _i = _t._inst;
                var _add:Bool = false;
                {
                    final __value__ = _i.op;
                    if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if ((((_t._cap.length) > (0 : stdgo.GoInt) : Bool) && (((!_longest || !_m._matched : Bool) || (_m._matchcap[(1 : stdgo.GoInt)] < _pos : Bool) : Bool)) : Bool)) {
                            _t._cap[(1 : stdgo.GoInt)] = _pos;
                            stdgo.Go.copySlice(_m._matchcap, _t._cap);
                        };
                        if (!_longest) {
                            for (__0 => _d in (_runq._dense.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>)) {
                                if (_d._t != null && ((_d._t : Dynamic).__nil__ == null || !(_d._t : Dynamic).__nil__)) {
                                    _m._pool = (_m._pool.__append__(_d._t));
                                };
                            };
                            _runq._dense = (_runq._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>);
                        };
                        _m._matched = true;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        _add = _i.matchRune(_c);
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        _add = _c == (_i.rune[((0 : stdgo.GoInt) : stdgo.GoInt)]);
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        _add = true;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        _add = _c != ((10 : stdgo.GoInt32));
                    } else {
                        throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    };
                };
                if (_add) {
                    _t = _m._add(_nextq, _i.out, _nextPos, _t._cap, _nextCond, _t);
                };
                if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                    _m._pool = (_m._pool.__append__(_t));
                };
            });
        };
        _runq._dense = (_runq._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>);
    }
    @:keep
    static public function _clear( _m:stdgo.Ref<T_machine>, _q:stdgo.Ref<T_queue>):Void {
        @:recv var _m:stdgo.Ref<T_machine> = _m;
        for (__0 => _d in _q._dense) {
            if (_d._t != null && ((_d._t : Dynamic).__nil__ == null || !(_d._t : Dynamic).__nil__)) {
                _m._pool = (_m._pool.__append__(_d._t));
            };
        };
        _q._dense = (_q._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>);
    }
    @:keep
    static public function _match( _m:stdgo.Ref<T_machine>, _i:T_input, _pos:stdgo.GoInt):Bool {
        @:recv var _m:stdgo.Ref<T_machine> = _m;
        var _startCond:stdgo._internal.regexp.syntax.Syntax.EmptyOp = _m._re._cond;
        if (_startCond == ((255 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            return false;
        };
        _m._matched = false;
        for (_i => _ in _m._matchcap) {
            _m._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        var __0 = (stdgo.Go.setRef(_m._q0) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_queue>), __1 = (stdgo.Go.setRef(_m._q1) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_queue>), _nextq = __1, _runq = __0;
        var __0:stdgo.GoInt32 = (-1 : stdgo.GoInt32), __1:stdgo.GoInt32 = (-1 : stdgo.GoInt32), _r1:stdgo.GoInt32 = __1, _r:stdgo.GoInt32 = __0;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _width1:stdgo.GoInt = __1, _width:stdgo.GoInt = __0;
        {
            var __tmp__ = _i._step(_pos);
            _r = __tmp__._0;
            _width = __tmp__._1;
        };
        if (_r != ((-1 : stdgo.GoInt32))) {
            {
                var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                _r1 = __tmp__._0;
                _width1 = __tmp__._1;
            };
        };
        var _flag:T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp.T_lazyFlag);
        if (_pos == ((0 : stdgo.GoInt))) {
            _flag = _newLazyFlag((-1 : stdgo.GoInt32), _r);
        } else {
            _flag = _i._context(_pos);
        };
        while (true) {
            if ((_runq._dense.length) == ((0 : stdgo.GoInt))) {
                if ((((_startCond & (4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                    break;
                };
                if (_m._matched) {
                    break;
                };
                if (((((_m._re._prefix.length) > (0 : stdgo.GoInt) : Bool) && _r1 != (_m._re._prefixRune) : Bool) && _i._canCheckPrefix() : Bool)) {
                    var _advance:stdgo.GoInt = _i._index(_m._re, _pos);
                    if ((_advance < (0 : stdgo.GoInt) : Bool)) {
                        break;
                    };
                    _pos = (_pos + (_advance) : stdgo.GoInt);
                    {
                        var __tmp__ = _i._step(_pos);
                        _r = __tmp__._0;
                        _width = __tmp__._1;
                    };
                    {
                        var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                        _r1 = __tmp__._0;
                        _width1 = __tmp__._1;
                    };
                };
            };
            if (!_m._matched) {
                if (((_m._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                    _m._matchcap[(0 : stdgo.GoInt)] = _pos;
                };
                _m._add(_runq, (_m._p.start : stdgo.GoUInt32), _pos, _m._matchcap, stdgo.Go.pointer(_flag), null);
            };
            _flag = _newLazyFlag(_r, _r1);
            _m._step(_runq, _nextq, _pos, (_pos + _width : stdgo.GoInt), _r, stdgo.Go.pointer(_flag));
            if (_width == ((0 : stdgo.GoInt))) {
                break;
            };
            if (((_m._matchcap.length == (0 : stdgo.GoInt)) && _m._matched : Bool)) {
                break;
            };
            _pos = (_pos + (_width) : stdgo.GoInt);
            {
                final __tmp__0 = _r1;
                final __tmp__1 = _width1;
                _r = __tmp__0;
                _width = __tmp__1;
            };
            if (_r != ((-1 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
            };
            {
                final __tmp__0 = _nextq;
                final __tmp__1 = _runq;
                _runq = __tmp__0;
                _nextq = __tmp__1;
            };
        };
        _m._clear(_nextq);
        return _m._matched;
    }
    @:keep
    static public function _alloc( _m:stdgo.Ref<T_machine>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>):stdgo.Ref<T_thread> {
        @:recv var _m:stdgo.Ref<T_machine> = _m;
        var _t:stdgo.Ref<T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>);
        {
            var _n:stdgo.GoInt = (_m._pool.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _t = _m._pool[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _m._pool = (_m._pool.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>>);
            } else {
                _t = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp.T_thread)) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_thread>);
                _t._cap = (new stdgo.Slice<stdgo.GoInt>((_m._matchcap.length : stdgo.GoInt).toBasic(), _m._matchcap.capacity).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        _t._inst = _i;
        return _t;
    }
    @:keep
    static public function _init( _m:stdgo.Ref<T_machine>, _ncap:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<T_machine> = _m;
        for (__0 => _t in _m._pool) {
            _t._cap = (_t._cap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        _m._matchcap = (_m._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
    }
}
class T_inputs_asInterface {
    @:keep
    public dynamic function _init(_r:stdgo._internal.io.Io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):{ var _0 : T_input; var _1 : stdgo.GoInt; } return __self__.value._init(_r, _b, _s);
    @:keep
    public dynamic function _clear():Void __self__.value._clear();
    @:keep
    public dynamic function _newReader(_r:stdgo._internal.io.Io.RuneReader):T_input return __self__.value._newReader(_r);
    @:keep
    public dynamic function _newString(_s:stdgo.GoString):T_input return __self__.value._newString(_s);
    @:keep
    public dynamic function _newBytes(_b:stdgo.Slice<stdgo.GoByte>):T_input return __self__.value._newBytes(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_inputs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputs_asInterface) class T_inputs_static_extension {
    @:keep
    static public function _init( _i:stdgo.Ref<T_inputs>, _r:stdgo._internal.io.Io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):{ var _0 : T_input; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<T_inputs> = _i;
        if (_r != null) {
            return { _0 : _i._newReader(_r), _1 : (0 : stdgo.GoInt) };
        };
        if (_b != null) {
            return { _0 : _i._newBytes(_b), _1 : (_b.length) };
        };
        return { _0 : _i._newString(_s?.__copy__()), _1 : (_s.length) };
    }
    @:keep
    static public function _clear( _i:stdgo.Ref<T_inputs>):Void {
        @:recv var _i:stdgo.Ref<T_inputs> = _i;
        if (_i._bytes._str != null) {
            _i._bytes._str = (null : stdgo.Slice<stdgo.GoUInt8>);
        } else if (_i._reader._r != null) {
            _i._reader._r = (null : stdgo._internal.io.Io.RuneReader);
        } else {
            _i._string._str = stdgo.Go.str()?.__copy__();
        };
    }
    @:keep
    static public function _newReader( _i:stdgo.Ref<T_inputs>, _r:stdgo._internal.io.Io.RuneReader):T_input {
        @:recv var _i:stdgo.Ref<T_inputs> = _i;
        _i._reader._r = _r;
        _i._reader._atEOT = false;
        _i._reader._pos = (0 : stdgo.GoInt);
        return stdgo.Go.asInterface((stdgo.Go.setRef(_i._reader) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_inputReader>));
    }
    @:keep
    static public function _newString( _i:stdgo.Ref<T_inputs>, _s:stdgo.GoString):T_input {
        @:recv var _i:stdgo.Ref<T_inputs> = _i;
        _i._string._str = _s?.__copy__();
        return stdgo.Go.asInterface((stdgo.Go.setRef(_i._string) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_inputString>));
    }
    @:keep
    static public function _newBytes( _i:stdgo.Ref<T_inputs>, _b:stdgo.Slice<stdgo.GoByte>):T_input {
        @:recv var _i:stdgo.Ref<T_inputs> = _i;
        _i._bytes._str = _b;
        return stdgo.Go.asInterface((stdgo.Go.setRef(_i._bytes) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_inputBytes>));
    }
}
class FindTest_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FindTest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.FindTest_asInterface) class FindTest_static_extension {
    @:keep
    static public function string( _t:FindTest):stdgo.GoString {
        @:recv var _t:FindTest = _t?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("pat: %#q text: %#q" : stdgo.GoString), stdgo.Go.toInterface(_t._pat), stdgo.Go.toInterface(_t._text))?.__copy__();
    }
}
class T_onePassInst_asInterface {
    @:embedded
    public dynamic function _op():stdgo._internal.regexp.syntax.Syntax.InstOp return __self__.value._op();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function matchRunePos(_nameOff:stdgo.GoInt32):stdgo.GoInt return __self__.value.matchRunePos(_nameOff);
    @:embedded
    public dynamic function matchRune(_nameOff:stdgo.GoInt32):Bool return __self__.value.matchRune(_nameOff);
    @:embedded
    public dynamic function matchEmptyWidth(_old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool return __self__.value.matchEmptyWidth(_old, _new);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_onePassInst>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_onePassInst_asInterface) class T_onePassInst_static_extension {
    @:embedded
    public static function _op( __self__:T_onePassInst):stdgo._internal.regexp.syntax.Syntax.InstOp return __self__._op();
    @:embedded
    public static function string( __self__:T_onePassInst):stdgo.GoString return __self__.string();
    @:embedded
    public static function matchRunePos( __self__:T_onePassInst, _nameOff:stdgo.GoInt32):stdgo.GoInt return __self__.matchRunePos(_nameOff);
    @:embedded
    public static function matchRune( __self__:T_onePassInst, _nameOff:stdgo.GoInt32):Bool return __self__.matchRune(_nameOff);
    @:embedded
    public static function matchEmptyWidth( __self__:T_onePassInst, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool return __self__.matchEmptyWidth(_old, _new);
}
class T_queueOnePass_asInterface {
    @:keep
    public dynamic function _insertNew(_u:stdgo.GoUInt32):Void __self__.value._insertNew(_u);
    @:keep
    public dynamic function _insert(_u:stdgo.GoUInt32):Void __self__.value._insert(_u);
    @:keep
    public dynamic function _contains(_u:stdgo.GoUInt32):Bool return __self__.value._contains(_u);
    @:keep
    public dynamic function _clear():Void __self__.value._clear();
    @:keep
    public dynamic function _next():stdgo.GoUInt32 return __self__.value._next();
    @:keep
    public dynamic function _empty():Bool return __self__.value._empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_queueOnePass>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface) class T_queueOnePass_static_extension {
    @:keep
    static public function _insertNew( _q:stdgo.Ref<T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<T_queueOnePass> = _q;
        if ((_u >= (_q._sparse.length : stdgo.GoUInt32) : Bool)) {
            return;
        };
        _q._sparse[(_u : stdgo.GoInt)] = _q._size;
        _q._dense[(_q._size : stdgo.GoInt)] = _u;
        _q._size++;
    }
    @:keep
    static public function _insert( _q:stdgo.Ref<T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<T_queueOnePass> = _q;
        if (!_q._contains(_u)) {
            _q._insertNew(_u);
        };
    }
    @:keep
    static public function _contains( _q:stdgo.Ref<T_queueOnePass>, _u:stdgo.GoUInt32):Bool {
        @:recv var _q:stdgo.Ref<T_queueOnePass> = _q;
        if ((_u >= (_q._sparse.length : stdgo.GoUInt32) : Bool)) {
            return false;
        };
        return ((_q._sparse[(_u : stdgo.GoInt)] < _q._size : Bool) && (_q._dense[(_q._sparse[(_u : stdgo.GoInt)] : stdgo.GoInt)] == _u) : Bool);
    }
    @:keep
    static public function _clear( _q:stdgo.Ref<T_queueOnePass>):Void {
        @:recv var _q:stdgo.Ref<T_queueOnePass> = _q;
        _q._size = (0u32 : stdgo.GoUInt32);
        _q._nextIndex = (0u32 : stdgo.GoUInt32);
    }
    @:keep
    static public function _next( _q:stdgo.Ref<T_queueOnePass>):stdgo.GoUInt32 {
        @:recv var _q:stdgo.Ref<T_queueOnePass> = _q;
        var _n:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        _n = _q._dense[(_q._nextIndex : stdgo.GoInt)];
        _q._nextIndex++;
        return _n;
    }
    @:keep
    static public function _empty( _q:stdgo.Ref<T_queueOnePass>):Bool {
        @:recv var _q:stdgo.Ref<T_queueOnePass> = _q;
        return (_q._nextIndex >= _q._size : Bool);
    }
}
class Regexp_asInterface {
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalText(_text);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    public dynamic function split(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> return __self__.value.split(_s, _n);
    @:keep
    public dynamic function findAllStringSubmatchIndex(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllStringSubmatchIndex(_s, _n);
    @:keep
    public dynamic function findAllStringSubmatch(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> return __self__.value.findAllStringSubmatch(_s, _n);
    @:keep
    public dynamic function findAllSubmatchIndex(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllSubmatchIndex(_b, _n);
    @:keep
    public dynamic function findAllSubmatch(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>> return __self__.value.findAllSubmatch(_b, _n);
    @:keep
    public dynamic function findAllStringIndex(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllStringIndex(_s, _n);
    @:keep
    public dynamic function findAllString(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> return __self__.value.findAllString(_s, _n);
    @:keep
    public dynamic function findAllIndex(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllIndex(_b, _n);
    @:keep
    public dynamic function findAll(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> return __self__.value.findAll(_b, _n);
    @:keep
    public dynamic function findReaderSubmatchIndex(_r:stdgo._internal.io.Io.RuneReader):stdgo.Slice<stdgo.GoInt> return __self__.value.findReaderSubmatchIndex(_r);
    @:keep
    public dynamic function findStringSubmatchIndex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> return __self__.value.findStringSubmatchIndex(_s);
    @:keep
    public dynamic function findStringSubmatch(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> return __self__.value.findStringSubmatch(_s);
    @:keep
    public dynamic function findSubmatchIndex(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt> return __self__.value.findSubmatchIndex(_b);
    @:keep
    public dynamic function _expand(_dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> return __self__.value._expand(_dst, _template, _bsrc, _src, _match);
    @:keep
    public dynamic function expandString(_dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> return __self__.value.expandString(_dst, _template, _src, _match);
    @:keep
    public dynamic function expand(_dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> return __self__.value.expand(_dst, _template, _src, _match);
    @:keep
    public dynamic function findSubmatch(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> return __self__.value.findSubmatch(_b);
    @:keep
    public dynamic function findReaderIndex(_r:stdgo._internal.io.Io.RuneReader):stdgo.Slice<stdgo.GoInt> return __self__.value.findReaderIndex(_r);
    @:keep
    public dynamic function findStringIndex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> return __self__.value.findStringIndex(_s);
    @:keep
    public dynamic function findString(_s:stdgo.GoString):stdgo.GoString return __self__.value.findString(_s);
    @:keep
    public dynamic function findIndex(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt> return __self__.value.findIndex(_b);
    @:keep
    public dynamic function find(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.find(_b);
    @:keep
    public dynamic function _allMatches(_s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void __self__.value._allMatches(_s, _b, _n, _deliver);
    @:keep
    public dynamic function _pad(_a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._pad(_a);
    @:keep
    public dynamic function replaceAllFunc(_src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte> -> stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.replaceAllFunc(_src, _repl);
    @:keep
    public dynamic function replaceAllLiteral(_src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.replaceAllLiteral(_src, _repl);
    @:keep
    public dynamic function replaceAll(_src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.replaceAll(_src, _repl);
    @:keep
    public dynamic function _replaceAll(_bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(_dst:stdgo.Slice<stdgo.GoByte>, _m:stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value._replaceAll(_bsrc, _src, _nmatch, _repl);
    @:keep
    public dynamic function replaceAllStringFunc(_src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString return __self__.value.replaceAllStringFunc(_src, _repl);
    @:keep
    public dynamic function replaceAllLiteralString(_src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString return __self__.value.replaceAllLiteralString(_src, _repl);
    @:keep
    public dynamic function replaceAllString(_src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString return __self__.value.replaceAllString(_src, _repl);
    @:keep
    public dynamic function match(_b:stdgo.Slice<stdgo.GoByte>):Bool return __self__.value.match(_b);
    @:keep
    public dynamic function matchString(_s:stdgo.GoString):Bool return __self__.value.matchString(_s);
    @:keep
    public dynamic function matchReader(_r:stdgo._internal.io.Io.RuneReader):Bool return __self__.value.matchReader(_r);
    @:keep
    public dynamic function literalPrefix():{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value.literalPrefix();
    @:keep
    public dynamic function subexpIndex(_name:stdgo.GoString):stdgo.GoInt return __self__.value.subexpIndex(_name);
    @:keep
    public dynamic function subexpNames():stdgo.Slice<stdgo.GoString> return __self__.value.subexpNames();
    @:keep
    public dynamic function numSubexp():stdgo.GoInt return __self__.value.numSubexp();
    @:keep
    public dynamic function _put(_m:stdgo.Ref<T_machine>):Void __self__.value._put(_m);
    @:keep
    public dynamic function _get():stdgo.Ref<T_machine> return __self__.value._get();
    @:keep
    public dynamic function longest():Void __self__.value.longest();
    @:keep
    public dynamic function copy():stdgo.Ref<Regexp> return __self__.value.copy();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _doExecute(_r:stdgo._internal.io.Io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._doExecute(_r, _b, _s, _pos, _ncap, _dstCap);
    @:keep
    public dynamic function _doMatch(_r:stdgo._internal.io.Io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool return __self__.value._doMatch(_r, _b, _s);
    @:keep
    public dynamic function _doOnePass(_ir:stdgo._internal.io.Io.RuneReader, _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._doOnePass(_ir, _ib, _is, _pos, _ncap, _dstCap);
    @:keep
    public dynamic function _backtrack(_ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._backtrack(_ib, _is, _pos, _ncap, _dstCap);
    @:keep
    public dynamic function _tryBacktrack(_b:stdgo.Ref<T_bitState>, _i:T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool return __self__.value._tryBacktrack(_b, _i, _pc, _pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Regexp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    static public function unmarshalText( _re:stdgo.Ref<Regexp>, _text:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var __tmp__ = compile((_text : stdgo.GoString)?.__copy__()), _newRE:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_newRE : stdgo._internal.regexp.Regexp.Regexp)?.__copy__();
            _re._expr = __tmp__._expr;
            _re._prog = __tmp__._prog;
            _re._onepass = __tmp__._onepass;
            _re._numSubexp = __tmp__._numSubexp;
            _re._maxBitStateLen = __tmp__._maxBitStateLen;
            _re._subexpNames = __tmp__._subexpNames;
            _re._prefix = __tmp__._prefix;
            _re._prefixBytes = __tmp__._prefixBytes;
            _re._prefixRune = __tmp__._prefixRune;
            _re._prefixEnd = __tmp__._prefixEnd;
            _re._mpool = __tmp__._mpool;
            _re._matchcap = __tmp__._matchcap;
            _re._prefixComplete = __tmp__._prefixComplete;
            _re._cond = __tmp__._cond;
            _re._minInputLen = __tmp__._minInputLen;
            _re._longest = __tmp__._longest;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalText( _re:stdgo.Ref<Regexp>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return { _0 : ((_re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function split( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if ((((_re._expr.length) > (0 : stdgo.GoInt) : Bool) && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
            return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _matches = _re.findAllStringIndex(_s?.__copy__(), _n);
        var _strings = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_matches.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _beg:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _match in _matches) {
            if (((_n > (0 : stdgo.GoInt) : Bool) && ((_strings.length) >= (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            _end = _match[(0 : stdgo.GoInt)];
            if (_match[(1 : stdgo.GoInt)] != ((0 : stdgo.GoInt))) {
                _strings = (_strings.__append__((_s.__slice__(_beg, _end) : stdgo.GoString)?.__copy__()));
            };
            _beg = _match[(1 : stdgo.GoInt)];
        };
        if (_end != ((_s.length))) {
            _strings = (_strings.__append__((_s.__slice__(_beg) : stdgo.GoString)?.__copy__()));
        };
        return _strings;
    }
    @:keep
    static public function findAllStringSubmatchIndex( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    static public function findAllStringSubmatch( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
            };
            var _slice = (new stdgo.Slice<stdgo.GoString>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_s.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    static public function findAllSubmatchIndex( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    static public function findAllSubmatch( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
            };
            var _slice = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_b.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    static public function findAllStringIndex( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    static public function findAllString( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _result = (_result.__append__((_s.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()));
        });
        return _result;
    }
    @:keep
    static public function findAllIndex( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    static public function findAll( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            _result = (_result.__append__((_b.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)));
        });
        return _result;
    }
    @:keep
    static public function findReaderSubmatchIndex( _re:stdgo.Ref<Regexp>, _r:stdgo._internal.io.Io.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._pad(_re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    static public function findStringSubmatchIndex( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    static public function findStringSubmatch( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _ret = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + _re._numSubexp : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_s.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
            };
        };
        return _ret;
    }
    @:keep
    static public function findSubmatchIndex( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    static public function _expand( _re:stdgo.Ref<Regexp>, _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        while (((_template.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strings.Strings.cut(_template?.__copy__(), ("$" : stdgo.GoString)), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                break;
            };
            _dst = (_dst.__append__(...(_before : Array<stdgo.GoUInt8>)));
            _template = _after?.__copy__();
            if (((_template != stdgo.Go.str()) && (_template[(0 : stdgo.GoInt)] == (36 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                _template = (_template.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                continue;
            };
            var __tmp__ = _extract(_template?.__copy__()), _name:stdgo.GoString = __tmp__._0, _num:stdgo.GoInt = __tmp__._1, _rest:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                continue;
            };
            _template = _rest?.__copy__();
            if ((_num >= (0 : stdgo.GoInt) : Bool)) {
                if ((((((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) && (_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    if (_bsrc != null) {
                        _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    } else {
                        _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    };
                };
            } else {
                for (_i => _namei in _re._subexpNames) {
                    if (((_name == (_namei) && ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) : Bool) && (_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        if (_bsrc != null) {
                            _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        } else {
                            _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        };
                        break;
                    };
                };
            };
        };
        _dst = (_dst.__append__(...(_template : Array<stdgo.GoUInt8>)));
        return _dst;
    }
    @:keep
    static public function expandString( _re:stdgo.Ref<Regexp>, _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._expand(_dst, _template?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
    }
    @:keep
    static public function expand( _re:stdgo.Ref<Regexp>, _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._expand(_dst, (_template : stdgo.GoString)?.__copy__(), _src, stdgo.Go.str()?.__copy__(), _match);
    }
    @:keep
    static public function findSubmatch( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((1 : stdgo.GoInt) + _re._numSubexp : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_b.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _ret;
    }
    @:keep
    static public function findReaderIndex( _re:stdgo.Ref<Regexp>, _r:stdgo._internal.io.Io.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _loc:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        return (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    static public function findStringIndex( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _loc:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        return (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    static public function findString( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return stdgo.Go.str()?.__copy__();
        };
        return (_s.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function findIndex( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _loc:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        return (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    static public function find( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_b.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _allMatches( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _end:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_b == null) {
            _end = (_s.length);
        } else {
            _end = (_b.length);
        };
        {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (-1 : stdgo.GoInt), _prevMatchEnd:stdgo.GoInt = __2, _i:stdgo.GoInt = __1, _pos:stdgo.GoInt = __0;
            while (((_i < _n : Bool) && (_pos <= _end : Bool) : Bool)) {
                var _matches = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), _b, _s?.__copy__(), _pos, _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>));
                if ((_matches.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
                var _accept:Bool = true;
                if (_matches[(1 : stdgo.GoInt)] == (_pos)) {
                    if (_matches[(0 : stdgo.GoInt)] == (_prevMatchEnd)) {
                        _accept = false;
                    };
                    var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                    if (_b == null) {
                        var _is:stdgo._internal.regexp.Regexp.T_inputString = ({ _str : _s?.__copy__() } : stdgo._internal.regexp.Regexp.T_inputString);
                        {
                            var __tmp__ = _is._step(_pos);
                            _width = __tmp__._1;
                        };
                    } else {
                        var _ib:stdgo._internal.regexp.Regexp.T_inputBytes = ({ _str : _b } : stdgo._internal.regexp.Regexp.T_inputBytes);
                        {
                            var __tmp__ = _ib._step(_pos);
                            _width = __tmp__._1;
                        };
                    };
                    if ((_width > (0 : stdgo.GoInt) : Bool)) {
                        _pos = (_pos + (_width) : stdgo.GoInt);
                    } else {
                        _pos = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                } else {
                    _pos = _matches[(1 : stdgo.GoInt)];
                };
                _prevMatchEnd = _matches[(1 : stdgo.GoInt)];
                if (_accept) {
                    _deliver(_re._pad(_matches));
                    _i++;
                };
            };
        };
    }
    @:keep
    static public function _pad( _re:stdgo.Ref<Regexp>, _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n:stdgo.GoInt = ((((1 : stdgo.GoInt) + _re._numSubexp : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        while (((_a.length) < _n : Bool)) {
            _a = (_a.__append__((-1 : stdgo.GoInt)));
        };
        return _a;
    }
    @:keep
    static public function replaceAllFunc( _re:stdgo.Ref<Regexp>, _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte> -> stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    static public function replaceAllLiteral( _re:stdgo.Ref<Regexp>, _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    static public function replaceAll( _re:stdgo.Ref<Regexp>, _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _n:stdgo.GoInt = (2 : stdgo.GoInt);
        if ((stdgo._internal.bytes.Bytes.indexByte(_repl, (36 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            _n = ((2 : stdgo.GoInt) * ((_re._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _srepl:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _b = _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
            if ((_srepl.length) != ((_repl.length))) {
                _srepl = (_repl : stdgo.GoString)?.__copy__();
            };
            return _re._expand(_dst, _srepl?.__copy__(), _src, stdgo.Go.str()?.__copy__(), _match);
        });
        return _b;
    }
    @:keep
    static public function _replaceAll( _re:stdgo.Ref<Regexp>, _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(_dst:stdgo.Slice<stdgo.GoByte>, _m:stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _lastMatchEnd:stdgo.GoInt = (0 : stdgo.GoInt);
        var _searchPos:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _endPos:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_bsrc != null) {
            _endPos = (_bsrc.length);
        } else {
            _endPos = (_src.length);
        };
        if ((_nmatch > _re._prog.numCap : Bool)) {
            _nmatch = _re._prog.numCap;
        };
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt)]);
        while ((_searchPos <= _endPos : Bool)) {
            var _a = _re._doExecute((null : stdgo._internal.io.Io.RuneReader), _bsrc, _src?.__copy__(), _searchPos, _nmatch, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if ((_a.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_bsrc != null) {
                _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else {
                _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            };
            if (((_a[(1 : stdgo.GoInt)] > _lastMatchEnd : Bool) || (_a[(0 : stdgo.GoInt)] == (0 : stdgo.GoInt)) : Bool)) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = _a[(1 : stdgo.GoInt)];
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_bsrc != null) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_bsrc.__slice__(_searchPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _width = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_src.__slice__(_searchPos) : stdgo.GoString)?.__copy__());
                    _width = __tmp__._1;
                };
            };
            if (((_searchPos + _width : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos = (_searchPos + (_width) : stdgo.GoInt);
            } else if (((_searchPos + (1 : stdgo.GoInt) : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos++;
            } else {
                _searchPos = _a[(1 : stdgo.GoInt)];
            };
        };
        if (_bsrc != null) {
            _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        } else {
            _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return _buf;
    }
    @:keep
    static public function replaceAllStringFunc( _re:stdgo.Ref<Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : Array<stdgo.GoUInt8>)));
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function replaceAllLiteralString( _re:stdgo.Ref<Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return (_re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        }) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function replaceAllString( _re:stdgo.Ref<Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _n:stdgo.GoInt = (2 : stdgo.GoInt);
        if (stdgo._internal.strings.Strings.contains(_repl?.__copy__(), ("$" : stdgo.GoString))) {
            _n = ((2 : stdgo.GoInt) * ((_re._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte> {
            return _re._expand(_dst, _repl?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function match( _re:stdgo.Ref<Regexp>, _b:stdgo.Slice<stdgo.GoByte>):Bool {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._doMatch((null : stdgo._internal.io.Io.RuneReader), _b, stdgo.Go.str()?.__copy__());
    }
    @:keep
    static public function matchString( _re:stdgo.Ref<Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._doMatch((null : stdgo._internal.io.Io.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    static public function matchReader( _re:stdgo.Ref<Regexp>, _r:stdgo._internal.io.Io.RuneReader):Bool {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._doMatch(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__());
    }
    @:keep
    static public function literalPrefix( _re:stdgo.Ref<Regexp>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _prefix:stdgo.GoString = ("" : stdgo.GoString), _complete:Bool = false;
        return { _0 : _re._prefix?.__copy__(), _1 : _re._prefixComplete };
    }
    @:keep
    static public function subexpIndex( _re:stdgo.Ref<Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if (_name != (stdgo.Go.str())) {
            for (_i => _s in _re._subexpNames) {
                if (_name == (_s)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    static public function subexpNames( _re:stdgo.Ref<Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._subexpNames;
    }
    @:keep
    static public function numSubexp( _re:stdgo.Ref<Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._numSubexp;
    }
    @:keep
    static public function _put( _re:stdgo.Ref<Regexp>, _m:stdgo.Ref<T_machine>):Void {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        _m._re = null;
        _m._p = null;
        _m._inputs._clear();
        _matchPool[(_re._mpool : stdgo.GoInt)].put(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
    }
    @:keep
    static public function _get( _re:stdgo.Ref<Regexp>):stdgo.Ref<T_machine> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_matchPool[(_re._mpool : stdgo.GoInt)].get() : stdgo.Ref<T_machine>)) : stdgo.Ref<T_machine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp.T_machine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp.T_machine)) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_machine>);
        };
        _m._re = _re;
        _m._p = _re._prog;
        if ((_m._matchcap.capacity < _re._matchcap : Bool)) {
            _m._matchcap = (new stdgo.Slice<stdgo.GoInt>((_re._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            for (__0 => _t in _m._pool) {
                _t._cap = (new stdgo.Slice<stdgo.GoInt>((_re._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        var _n:stdgo.GoInt = _matchSize[(_re._mpool : stdgo.GoInt)];
        if (_n == ((0 : stdgo.GoInt))) {
            _n = (_re._prog.inst.length);
        };
        if (((_m._q0._sparse.length) < _n : Bool)) {
            _m._q0 = (new stdgo._internal.regexp.Regexp.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>)) : stdgo._internal.regexp.Regexp.T_queue);
            _m._q1 = (new stdgo._internal.regexp.Regexp.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_entry>)) : stdgo._internal.regexp.Regexp.T_queue);
        };
        return _m;
    }
    @:keep
    static public function longest( _re:stdgo.Ref<Regexp>):Void {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        _re._longest = true;
    }
    @:keep
    static public function copy( _re:stdgo.Ref<Regexp>):stdgo.Ref<Regexp> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _re2:stdgo._internal.regexp.Regexp.Regexp = (_re : stdgo._internal.regexp.Regexp.Regexp)?.__copy__();
        return (stdgo.Go.setRef(_re2) : stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp>);
    }
    @:keep
    static public function string( _re:stdgo.Ref<Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._expr?.__copy__();
    }
    @:keep
    static public function _doExecute( _re:stdgo.Ref<Regexp>, _r:stdgo._internal.io.Io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if (_dstCap == null) {
            _dstCap = (_arrayNoInts.__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < _re._minInputLen : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        if (_re._onepass != null && ((_re._onepass : Dynamic).__nil__ == null || !(_re._onepass : Dynamic).__nil__)) {
            return _re._doOnePass(_r, _b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < _re._maxBitStateLen : Bool) : Bool)) {
            return _re._backtrack(_b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        var _m = _re._get();
        var __tmp__ = _m._inputs._init(_r, _b, _s?.__copy__()), _i:stdgo._internal.regexp.Regexp.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        _m._init(_ncap);
        if (!_m._match(_i, _pos)) {
            _re._put(_m);
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        _dstCap = (_dstCap.__append__(...(_m._matchcap : Array<stdgo.GoInt>)));
        _re._put(_m);
        return _dstCap;
    }
    @:keep
    static public function _doMatch( _re:stdgo.Ref<Regexp>, _r:stdgo._internal.io.Io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        return _re._doExecute(_r, _b, _s?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>)) != null;
    }
    @:keep
    static public function _doOnePass( _re:stdgo.Ref<Regexp>, _ir:stdgo._internal.io.Io.RuneReader, _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _re:stdgo.Ref<Regexp> = _re;
            var _startCond:stdgo._internal.regexp.syntax.Syntax.EmptyOp = _re._cond;
            if (_startCond == ((255 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return (null : stdgo.Slice<stdgo.GoInt>);
            };
            var _m = _newOnePassMachine();
            if ((_m._matchcap.capacity < _ncap : Bool)) {
                _m._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            } else {
                _m._matchcap = (_m._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
            };
            var _matched:Bool = false;
            for (_i => _ in _m._matchcap) {
                _m._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
            };
            var __tmp__ = _m._inputs._init(_ir, _ib, _is?.__copy__()), _i:stdgo._internal.regexp.Regexp.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            var __0:stdgo.GoInt32 = (-1 : stdgo.GoInt32), __1:stdgo.GoInt32 = (-1 : stdgo.GoInt32), _r1:stdgo.GoInt32 = __1, _r:stdgo.GoInt32 = __0;
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _width1:stdgo.GoInt = __1, _width:stdgo.GoInt = __0;
            {
                var __tmp__ = _i._step(_pos);
                _r = __tmp__._0;
                _width = __tmp__._1;
            };
            if (_r != ((-1 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
            };
            var _flag:T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp.T_lazyFlag);
            if (_pos == ((0 : stdgo.GoInt))) {
                _flag = _newLazyFlag((-1 : stdgo.GoInt32), _r);
            } else {
                _flag = _i._context(_pos);
            };
            var _pc:stdgo.GoInt = _re._onepass.start;
            var _inst = (stdgo.Go.setRef(_re._onepass.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassInst>);
            if ((((_pos == ((0 : stdgo.GoInt)) && _flag._match((_inst.inst.arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : Bool) && ((_re._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i._canCheckPrefix() : Bool)) {
                if (!_i._hasPrefix(_re)) {
                    @:goto "Return";
                };
                _pos = (_pos + ((_re._prefix.length)) : stdgo.GoInt);
                {
                    var __tmp__ = _i._step(_pos);
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                {
                    var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                    _r1 = __tmp__._0;
                    _width1 = __tmp__._1;
                };
                _flag = _i._context(_pos);
                _pc = (_re._prefixEnd : stdgo.GoInt);
            };
            while (true) {
                _inst = (stdgo.Go.setRef(_re._onepass.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp.T_onePassInst>);
                _pc = (_inst.inst.out : stdgo.GoInt);
                {
                    final __value__ = _inst.inst.op;
                    if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        _matched = true;
                        if (((_m._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                            _m._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                            _m._matchcap[(1 : stdgo.GoInt)] = _pos;
                        };
                        @:goto "Return";
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (!_inst.matchRune(_r)) {
                            @:goto "Return";
                        };
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (_r != (_inst.inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                            @:goto "Return";
                        };
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {} else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (_r == ((10 : stdgo.GoInt32))) {
                            @:goto "Return";
                        };
                    } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        _pc = (_onePassNext(_inst, _r) : stdgo.GoInt);
                        continue;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        @:goto "Return";
                    } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        continue;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (!_flag._match((_inst.inst.arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                            @:goto "Return";
                        };
                        continue;
                    } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (((_inst.inst.arg : stdgo.GoInt) < (_m._matchcap.length) : Bool)) {
                            _m._matchcap[(_inst.inst.arg : stdgo.GoInt)] = _pos;
                        };
                        continue;
                    } else {
                        throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    };
                };
                if (_width == ((0 : stdgo.GoInt))) {
                    break;
                };
                _flag = _newLazyFlag(_r, _r1);
                _pos = (_pos + (_width) : stdgo.GoInt);
                {
                    final __tmp__0 = _r1;
                    final __tmp__1 = _width1;
                    _r = __tmp__0;
                    _width = __tmp__1;
                };
                if (_r != ((-1 : stdgo.GoInt32))) {
                    {
                        var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                        _r1 = __tmp__._0;
                        _width1 = __tmp__._1;
                    };
                };
            };
            @:label("Return") if (!_matched) {
                _freeOnePassMachine(_m);
                return (null : stdgo.Slice<stdgo.GoInt>);
            };
            _dstCap = (_dstCap.__append__(...(_m._matchcap : Array<stdgo.GoInt>)));
            _freeOnePassMachine(_m);
            return _dstCap;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _backtrack( _re:stdgo.Ref<Regexp>, _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _re:stdgo.Ref<Regexp> = _re;
            var _startCond:stdgo._internal.regexp.syntax.Syntax.EmptyOp = _re._cond;
            if (_startCond == ((255 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return (null : stdgo.Slice<stdgo.GoInt>);
            };
            if ((((_startCond & (4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                return (null : stdgo.Slice<stdgo.GoInt>);
            };
            var _b = _newBitState();
            var __tmp__ = _b._inputs._init((null : stdgo._internal.io.Io.RuneReader), _ib, _is?.__copy__()), _i:stdgo._internal.regexp.Regexp.T_input = __tmp__._0, _end:stdgo.GoInt = __tmp__._1;
            _b._reset(_re._prog, _end, _ncap);
            if ((_startCond & (4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                if (((_b._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                    _b._cap[(0 : stdgo.GoInt)] = _pos;
                };
                if (!_re._tryBacktrack(_b, _i, (_re._prog.start : stdgo.GoUInt32), _pos)) {
                    _freeBitState(_b);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                };
            } else {
                var _width:stdgo.GoInt = (-1 : stdgo.GoInt);
                stdgo.Go.cfor(((_pos <= _end : Bool) && (_width != (0 : stdgo.GoInt)) : Bool), _pos = (_pos + (_width) : stdgo.GoInt), {
                    if (((_re._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        var _advance:stdgo.GoInt = _i._index(_re, _pos);
                        if ((_advance < (0 : stdgo.GoInt) : Bool)) {
                            _freeBitState(_b);
                            return (null : stdgo.Slice<stdgo.GoInt>);
                        };
                        _pos = (_pos + (_advance) : stdgo.GoInt);
                    };
                    if (((_b._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _b._cap[(0 : stdgo.GoInt)] = _pos;
                    };
                    if (_re._tryBacktrack(_b, _i, (_re._prog.start : stdgo.GoUInt32), _pos)) {
                        @:goto "Match";
                    };
                    {
                        var __tmp__ = _i._step(_pos);
                        _width = __tmp__._1;
                    };
                });
                _freeBitState(_b);
                return (null : stdgo.Slice<stdgo.GoInt>);
            };
            @:label("Match") _dstCap = (_dstCap.__append__(...(_b._matchcap : Array<stdgo.GoInt>)));
            _freeBitState(_b);
            return _dstCap;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _tryBacktrack( _re:stdgo.Ref<Regexp>, _b:stdgo.Ref<T_bitState>, _i:T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _re:stdgo.Ref<Regexp> = _re;
            var _longest:Bool = _re._longest;
            _b._push(_re, _pc, _pos, false);
            while (((_b._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                var _l:stdgo.GoInt = ((_b._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                var _pc:stdgo.GoUInt32 = _b._jobs[(_l : stdgo.GoInt)]._pc;
                var _pos:stdgo.GoInt = _b._jobs[(_l : stdgo.GoInt)]._pos;
                var _arg:Bool = _b._jobs[(_l : stdgo.GoInt)]._arg;
                _b._jobs = (_b._jobs.__slice__(0, _l) : stdgo.Slice<stdgo._internal.regexp.Regexp.T_job>);
                @:goto "Skip";
                @:label("CheckAndLoop") if (!_b._shouldVisit(_pc, _pos)) {
                    continue;
                };
                @:label("Skip") var _inst = (stdgo.Go.setRef(_re._prog.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
                {
                    final __value__ = _inst.op;
                    if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (_arg) {
                            _arg = false;
                            _pc = _inst.arg;
                            @:goto "CheckAndLoop";
                        } else {
                            _b._push(_re, _pc, _pos, true);
                            _pc = _inst.out;
                            @:goto "CheckAndLoop";
                        };
                    } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        {
                            final __value__ = _re._prog.inst[(_inst.out : stdgo.GoInt)].op;
                            if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                                _b._push(_re, _inst.arg, _pos, false);
                                _pc = _inst.arg;
                                _pos = _b._end;
                                @:goto "CheckAndLoop";
                            };
                        };
                        _b._push(_re, _inst.out, _b._end, false);
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        var __tmp__ = _i._step(_pos), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
                        if (!_inst.matchRune(_r)) {
                            continue;
                        };
                        _pos = (_pos + (_width) : stdgo.GoInt);
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        var __tmp__ = _i._step(_pos), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
                        if (_r != (_inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                            continue;
                        };
                        _pos = (_pos + (_width) : stdgo.GoInt);
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        var __tmp__ = _i._step(_pos), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
                        if (((_r == (10 : stdgo.GoInt32)) || (_r == (-1 : stdgo.GoInt32)) : Bool)) {
                            continue;
                        };
                        _pos = (_pos + (_width) : stdgo.GoInt);
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        var __tmp__ = _i._step(_pos), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
                        if (_r == ((-1 : stdgo.GoInt32))) {
                            continue;
                        };
                        _pos = (_pos + (_width) : stdgo.GoInt);
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if (_arg) {
                            _b._cap[(_inst.arg : stdgo.GoInt)] = _pos;
                            continue;
                        } else {
                            if ((_inst.arg < (_b._cap.length : stdgo.GoUInt32) : Bool)) {
                                _b._push(_re, _pc, _b._cap[(_inst.arg : stdgo.GoInt)], true);
                                _b._cap[(_inst.arg : stdgo.GoInt)] = _pos;
                            };
                            _pc = _inst.out;
                            @:goto "CheckAndLoop";
                        };
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        var _flag:stdgo._internal.regexp.Regexp.T_lazyFlag = _i._context(_pos);
                        if (!_flag._match((_inst.arg : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                            continue;
                        };
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        _pc = _inst.out;
                        @:goto "CheckAndLoop";
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                        if ((_b._cap.length) == ((0 : stdgo.GoInt))) {
                            return true;
                        };
                        if (((_b._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                            _b._cap[(1 : stdgo.GoInt)] = _pos;
                        };
                        {
                            var _old:stdgo.GoInt = _b._matchcap[(1 : stdgo.GoInt)];
                            if (((_old == (-1 : stdgo.GoInt)) || (((_longest && (_pos > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos > _old : Bool) : Bool)) : Bool)) {
                                stdgo.Go.copySlice(_b._matchcap, _b._cap);
                            };
                        };
                        if (!_longest) {
                            return true;
                        };
                        if (_pos == (_b._end)) {
                            return true;
                        };
                        continue;
                    } else {
                        throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    };
                };
            };
            return ((_longest && ((_b._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (_b._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
        });
        throw "controlFlow did not return";
    }
}
class T_inputString_asInterface {
    @:keep
    public dynamic function _context(_pos:stdgo.GoInt):T_lazyFlag return __self__.value._context(_pos);
    @:keep
    public dynamic function _index(_re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return __self__.value._index(_re, _pos);
    @:keep
    public dynamic function _hasPrefix(_re:stdgo.Ref<Regexp>):Bool return __self__.value._hasPrefix(_re);
    @:keep
    public dynamic function _canCheckPrefix():Bool return __self__.value._canCheckPrefix();
    @:keep
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } return __self__.value._step(_pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_inputString>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputString_asInterface) class T_inputString_static_extension {
    @:keep
    static public function _context( _i:stdgo.Ref<T_inputString>, _pos:stdgo.GoInt):T_lazyFlag {
        @:recv var _i:stdgo.Ref<T_inputString> = _i;
        var __0:stdgo.GoInt32 = (-1 : stdgo.GoInt32), __1:stdgo.GoInt32 = (-1 : stdgo.GoInt32), _r2:stdgo.GoInt32 = __1, _r1:stdgo.GoInt32 = __0;
        if ((((_pos - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) < (_i._str.length : stdgo.GoUInt) : Bool)) {
            _r1 = (_i._str[(_pos - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r1 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString((_i._str.__slice__(0, _pos) : stdgo.GoString)?.__copy__());
                    _r1 = __tmp__._0;
                };
            };
        };
        if (((_pos : stdgo.GoUInt) < (_i._str.length : stdgo.GoUInt) : Bool)) {
            _r2 = (_i._str[(_pos : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r2 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_i._str.__slice__(_pos) : stdgo.GoString)?.__copy__());
                    _r2 = __tmp__._0;
                };
            };
        };
        return _newLazyFlag(_r1, _r2);
    }
    @:keep
    static public function _index( _i:stdgo.Ref<T_inputString>, _re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<T_inputString> = _i;
        return stdgo._internal.strings.Strings.index((_i._str.__slice__(_pos) : stdgo.GoString)?.__copy__(), _re._prefix?.__copy__());
    }
    @:keep
    static public function _hasPrefix( _i:stdgo.Ref<T_inputString>, _re:stdgo.Ref<Regexp>):Bool {
        @:recv var _i:stdgo.Ref<T_inputString> = _i;
        return stdgo._internal.strings.Strings.hasPrefix(_i._str?.__copy__(), _re._prefix?.__copy__());
    }
    @:keep
    static public function _canCheckPrefix( _i:stdgo.Ref<T_inputString>):Bool {
        @:recv var _i:stdgo.Ref<T_inputString> = _i;
        return true;
    }
    @:keep
    static public function _step( _i:stdgo.Ref<T_inputString>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<T_inputString> = _i;
        if ((_pos < (_i._str.length) : Bool)) {
            var _c:stdgo.GoUInt8 = _i._str[(_pos : stdgo.GoInt)];
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                return { _0 : (_c : stdgo.GoRune), _1 : (1 : stdgo.GoInt) };
            };
            return stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_i._str.__slice__(_pos) : stdgo.GoString)?.__copy__());
        };
        return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
    }
}
class T_inputBytes_asInterface {
    @:keep
    public dynamic function _context(_pos:stdgo.GoInt):T_lazyFlag return __self__.value._context(_pos);
    @:keep
    public dynamic function _index(_re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return __self__.value._index(_re, _pos);
    @:keep
    public dynamic function _hasPrefix(_re:stdgo.Ref<Regexp>):Bool return __self__.value._hasPrefix(_re);
    @:keep
    public dynamic function _canCheckPrefix():Bool return __self__.value._canCheckPrefix();
    @:keep
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } return __self__.value._step(_pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_inputBytes>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputBytes_asInterface) class T_inputBytes_static_extension {
    @:keep
    static public function _context( _i:stdgo.Ref<T_inputBytes>, _pos:stdgo.GoInt):T_lazyFlag {
        @:recv var _i:stdgo.Ref<T_inputBytes> = _i;
        var __0:stdgo.GoInt32 = (-1 : stdgo.GoInt32), __1:stdgo.GoInt32 = (-1 : stdgo.GoInt32), _r2:stdgo.GoInt32 = __1, _r1:stdgo.GoInt32 = __0;
        if ((((_pos - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) < (_i._str.length : stdgo.GoUInt) : Bool)) {
            _r1 = (_i._str[(_pos - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r1 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRune((_i._str.__slice__(0, _pos) : stdgo.Slice<stdgo.GoUInt8>));
                    _r1 = __tmp__._0;
                };
            };
        };
        if (((_pos : stdgo.GoUInt) < (_i._str.length : stdgo.GoUInt) : Bool)) {
            _r2 = (_i._str[(_pos : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r2 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_i._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
                    _r2 = __tmp__._0;
                };
            };
        };
        return _newLazyFlag(_r1, _r2);
    }
    @:keep
    static public function _index( _i:stdgo.Ref<T_inputBytes>, _re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<T_inputBytes> = _i;
        return stdgo._internal.bytes.Bytes.index((_i._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), _re._prefixBytes);
    }
    @:keep
    static public function _hasPrefix( _i:stdgo.Ref<T_inputBytes>, _re:stdgo.Ref<Regexp>):Bool {
        @:recv var _i:stdgo.Ref<T_inputBytes> = _i;
        return stdgo._internal.bytes.Bytes.hasPrefix(_i._str, _re._prefixBytes);
    }
    @:keep
    static public function _canCheckPrefix( _i:stdgo.Ref<T_inputBytes>):Bool {
        @:recv var _i:stdgo.Ref<T_inputBytes> = _i;
        return true;
    }
    @:keep
    static public function _step( _i:stdgo.Ref<T_inputBytes>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<T_inputBytes> = _i;
        if ((_pos < (_i._str.length) : Bool)) {
            var _c:stdgo.GoUInt8 = _i._str[(_pos : stdgo.GoInt)];
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                return { _0 : (_c : stdgo.GoRune), _1 : (1 : stdgo.GoInt) };
            };
            return stdgo._internal.unicode.utf8.Utf8.decodeRune((_i._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
        };
        return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
    }
}
class T_inputReader_asInterface {
    @:keep
    public dynamic function _context(_pos:stdgo.GoInt):T_lazyFlag return __self__.value._context(_pos);
    @:keep
    public dynamic function _index(_re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return __self__.value._index(_re, _pos);
    @:keep
    public dynamic function _hasPrefix(_re:stdgo.Ref<Regexp>):Bool return __self__.value._hasPrefix(_re);
    @:keep
    public dynamic function _canCheckPrefix():Bool return __self__.value._canCheckPrefix();
    @:keep
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } return __self__.value._step(_pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_inputReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputReader_asInterface) class T_inputReader_static_extension {
    @:keep
    static public function _context( _i:stdgo.Ref<T_inputReader>, _pos:stdgo.GoInt):T_lazyFlag {
        @:recv var _i:stdgo.Ref<T_inputReader> = _i;
        return (0i64 : stdgo._internal.regexp.Regexp.T_lazyFlag);
    }
    @:keep
    static public function _index( _i:stdgo.Ref<T_inputReader>, _re:stdgo.Ref<Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<T_inputReader> = _i;
        return (-1 : stdgo.GoInt);
    }
    @:keep
    static public function _hasPrefix( _i:stdgo.Ref<T_inputReader>, _re:stdgo.Ref<Regexp>):Bool {
        @:recv var _i:stdgo.Ref<T_inputReader> = _i;
        return false;
    }
    @:keep
    static public function _canCheckPrefix( _i:stdgo.Ref<T_inputReader>):Bool {
        @:recv var _i:stdgo.Ref<T_inputReader> = _i;
        return false;
    }
    @:keep
    static public function _step( _i:stdgo.Ref<T_inputReader>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<T_inputReader> = _i;
        if ((!_i._atEOT && (_pos != _i._pos) : Bool)) {
            return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var __tmp__ = _i._r.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _i._atEOT = true;
            return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        _i._pos = (_i._pos + (_w) : stdgo.GoInt);
        return { _0 : _r, _1 : _w };
    }
}
class T_lazyFlag_asInterface {
    @:keep
    public dynamic function _match(_op:stdgo._internal.regexp.syntax.Syntax.EmptyOp):Bool return __self__.value._match(_op);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_lazyFlag>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_lazyFlag_asInterface) class T_lazyFlag_static_extension {
    @:keep
    static public function _match( _f:T_lazyFlag, _op:stdgo._internal.regexp.syntax.Syntax.EmptyOp):Bool {
        @:recv var _f:T_lazyFlag = _f;
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            return true;
        };
        var _r1:stdgo.GoInt32 = ((_f >> (32i64 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp.T_lazyFlag) : stdgo.GoRune);
        if ((_op & (1 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            if (((_r1 != (10 : stdgo.GoInt32)) && (_r1 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
            _op = (_op & ((((1 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        if ((_op & (4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            if ((_r1 >= (0 : stdgo.GoInt32) : Bool)) {
                return false;
            };
            _op = (_op & ((((4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            return true;
        };
        var _r2:stdgo.GoInt32 = (_f : stdgo.GoRune);
        if ((_op & (2 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            if (((_r2 != (10 : stdgo.GoInt32)) && (_r2 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
            _op = (_op & ((((2 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        if ((_op & (8 : stdgo._internal.regexp.syntax.Syntax.EmptyOp) : stdgo._internal.regexp.syntax.Syntax.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            if ((_r2 >= (0 : stdgo.GoInt32) : Bool)) {
                return false;
            };
            _op = (_op & ((((8 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
            return true;
        };
        if (stdgo._internal.regexp.syntax.Syntax.isWordChar(_r1) != (stdgo._internal.regexp.syntax.Syntax.isWordChar(_r2))) {
            _op = (_op & ((((16 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        } else {
            _op = (_op & ((((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        return _op == ((0 : stdgo._internal.regexp.syntax.Syntax.EmptyOp));
    }
}
class T_runeSlice_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_runeSlice>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.Regexp.T_runeSlice_asInterface) class T_runeSlice_static_extension {
    @:keep
    static public function swap( _p:T_runeSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _p:T_runeSlice = _p;
        {
            final __tmp__0 = _p[(_j : stdgo.GoInt)];
            final __tmp__1 = _p[(_i : stdgo.GoInt)];
            final __tmp__2 = _p;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _p;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _p:T_runeSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _p:T_runeSlice = _p;
        return (_p[(_i : stdgo.GoInt)] < _p[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function len( _p:T_runeSlice):stdgo.GoInt {
        @:recv var _p:T_runeSlice = _p;
        return (_p.length);
    }
}
