package stdgo._internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var _sinkS : stdgo.GoString = ("" : stdgo.GoString);
var _emptyString : stdgo.GoString = ("" : stdgo.GoString);
final _benchmarkString : stdgo.GoString = ("some_text=some☺value" : stdgo.GoString);
final _space : stdgo.GoString = ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString);
var _stringSink : stdgo.GoString = ("" : stdgo.GoString);
var _someBytes : stdgo.Slice<stdgo.GoUInt8> = (("some bytes sdljlk jsklj3lkjlk djlkjw" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _compareTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(13, 13, ...[
({ _a : stdgo.Go.str()?.__copy__(), _b : stdgo.Go.str()?.__copy__(), _i : (0 : stdgo.GoInt) } : T__struct_2),
({ _a : ("a" : stdgo.GoString), _b : stdgo.Go.str()?.__copy__(), _i : (1 : stdgo.GoInt) } : T__struct_2),
({ _a : stdgo.Go.str()?.__copy__(), _b : ("a" : stdgo.GoString), _i : (-1 : stdgo.GoInt) } : T__struct_2),
({ _a : ("abc" : stdgo.GoString), _b : ("abc" : stdgo.GoString), _i : (0 : stdgo.GoInt) } : T__struct_2),
({ _a : ("ab" : stdgo.GoString), _b : ("abc" : stdgo.GoString), _i : (-1 : stdgo.GoInt) } : T__struct_2),
({ _a : ("abc" : stdgo.GoString), _b : ("ab" : stdgo.GoString), _i : (1 : stdgo.GoInt) } : T__struct_2),
({ _a : ("x" : stdgo.GoString), _b : ("ab" : stdgo.GoString), _i : (1 : stdgo.GoInt) } : T__struct_2),
({ _a : ("ab" : stdgo.GoString), _b : ("x" : stdgo.GoString), _i : (-1 : stdgo.GoInt) } : T__struct_2),
({ _a : ("x" : stdgo.GoString), _b : ("a" : stdgo.GoString), _i : (1 : stdgo.GoInt) } : T__struct_2),
({ _a : ("b" : stdgo.GoString), _b : ("x" : stdgo.GoString), _i : (-1 : stdgo.GoInt) } : T__struct_2),
({ _a : ("abcdefgh" : stdgo.GoString), _b : ("abcdefgh" : stdgo.GoString), _i : (0 : stdgo.GoInt) } : T__struct_2),
({ _a : ("abcdefghi" : stdgo.GoString), _b : ("abcdefghi" : stdgo.GoString), _i : (0 : stdgo.GoInt) } : T__struct_2),
({ _a : ("abcdefghi" : stdgo.GoString), _b : ("abcdefghj" : stdgo.GoString), _i : (-1 : stdgo.GoInt) } : T__struct_2)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _a : ("" : stdgo.GoString), _b : ("" : stdgo.GoString), _i : (0 : stdgo.GoInt) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
var _htmlEscaper : stdgo.Ref<stdgo._internal.strings.Strings.Replacer> = newReplacer(("&" : stdgo.GoString), ("&amp;" : stdgo.GoString), ("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString), ("\"" : stdgo.GoString), ("&quot;" : stdgo.GoString), ("\'" : stdgo.GoString), ("&apos;" : stdgo.GoString));
var _htmlUnescaper : stdgo.Ref<stdgo._internal.strings.Strings.Replacer> = newReplacer(("&amp;" : stdgo.GoString), ("&" : stdgo.GoString), ("&lt;" : stdgo.GoString), ("<" : stdgo.GoString), ("&gt;" : stdgo.GoString), (">" : stdgo.GoString), ("&quot;" : stdgo.GoString), ("\"" : stdgo.GoString), ("&apos;" : stdgo.GoString), ("\'" : stdgo.GoString));
var _capitalLetters : stdgo.Ref<stdgo._internal.strings.Strings.Replacer> = newReplacer(("a" : stdgo.GoString), ("A" : stdgo.GoString), ("b" : stdgo.GoString), ("B" : stdgo.GoString));
var _algorithmTestCases : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(6, 6, ...[({ _r : _capitalLetters, _want : ("*strings.byteReplacer" : stdgo.GoString) } : T__struct_5), ({ _r : _htmlEscaper, _want : ("*strings.byteStringReplacer" : stdgo.GoString) } : T__struct_5), ({ _r : newReplacer(("12" : stdgo.GoString), ("123" : stdgo.GoString)), _want : ("*strings.singleStringReplacer" : stdgo.GoString) } : T__struct_5), ({ _r : newReplacer(("1" : stdgo.GoString), ("12" : stdgo.GoString)), _want : ("*strings.byteStringReplacer" : stdgo.GoString) } : T__struct_5), ({ _r : newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)), _want : ("*strings.genericReplacer" : stdgo.GoString) } : T__struct_5), ({ _r : newReplacer(("a" : stdgo.GoString), ("1" : stdgo.GoString), ("b" : stdgo.GoString), ("12" : stdgo.GoString), ("cde" : stdgo.GoString), ("123" : stdgo.GoString)), _want : ("*strings.genericReplacer" : stdgo.GoString) } : T__struct_5)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _r : (null : stdgo.Ref<stdgo._internal.strings.Strings.Replacer>), _want : ("" : stdgo.GoString) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
var _mapdata : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(2, 2, ...[({ _name : ("ASCII" : stdgo.GoString), _data : ("a b c d e f g h i j k l m n o p q r s t u v w x y z" : stdgo.GoString) } : T__struct_7), ({ _name : ("Greek" : stdgo.GoString), _data : ("α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω" : stdgo.GoString) } : T__struct_7)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : ("" : stdgo.GoString) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
var _abcd : stdgo.GoString = ("abcd" : stdgo.GoString);
var _faces : stdgo.GoString = ("☺☻☹" : stdgo.GoString);
var _commas : stdgo.GoString = ("1,2,3,4" : stdgo.GoString);
var _dots : stdgo.GoString = ("1....2....3....4" : stdgo.GoString);
var _indexTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>(89, 89, ...[
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("fo" : stdgo.GoString), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString), ("foo" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString), ("f" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString), ("foo" : stdgo.GoString), (4 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("barfoobarfoo" : stdgo.GoString), ("foo" : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString), ("o" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abcABCabc" : stdgo.GoString), ("A" : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("jrzm6jjhorimglljrea4w3rlgosts0w2gia17hno2td4qd1jz" : stdgo.GoString), ("jz" : stdgo.GoString), (47 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("ekkuk5oft4eq0ocpacknhwouic1uua46unx12l37nioq9wbpnocqks6" : stdgo.GoString), ("ks6" : stdgo.GoString), (52 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("999f2xmimunbuyew5vrkla9cpwhmxan8o98ec" : stdgo.GoString), ("98ec" : stdgo.GoString), (33 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("9lpt9r98i04k8bz6c6dsrthb96bhi" : stdgo.GoString), ("96bhi" : stdgo.GoString), (24 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("55u558eqfaod2r2gu42xxsu631xf0zobs5840vl" : stdgo.GoString), ("5840vl" : stdgo.GoString), (33 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x" : stdgo.GoString), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x" : stdgo.GoString), ("x" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("b" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("c" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("x" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("ab" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("bc" : stdgo.GoString), ("ab" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("ab" : stdgo.GoString), ("ab" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xab" : stdgo.GoString), ("ab" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xab" : stdgo.GoString).__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xbc" : stdgo.GoString), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xabc" : stdgo.GoString), ("abc" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xabc" : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xabxc" : stdgo.GoString), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abcd" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xbcd" : stdgo.GoString), ("abcd" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abcd" : stdgo.GoString), ("abcd" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xabcd" : stdgo.GoString), ("abcd" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xyabcd" : stdgo.GoString).__slice__(0, (5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("abcd" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xbcqq" : stdgo.GoString), ("abcqq" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abcqq" : stdgo.GoString), ("abcqq" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xabcqq" : stdgo.GoString), ("abcqq" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xyabcqq" : stdgo.GoString).__slice__(0, (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("abcqq" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xabxcqq" : stdgo.GoString), ("abcqq" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xabcqxq" : stdgo.GoString), ("abcqq" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("01234567" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("32145678" : stdgo.GoString), ("01234567" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("01234567" : stdgo.GoString), ("01234567" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x01234567" : stdgo.GoString), ("01234567" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x0123456x01234567" : stdgo.GoString), ("01234567" : stdgo.GoString), (9 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xx01234567" : stdgo.GoString).__slice__(0, (9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("01234567" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("3214567844" : stdgo.GoString), ("0123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("0123456789" : stdgo.GoString), ("0123456789" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x0123456789" : stdgo.GoString), ("0123456789" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x012345678x0123456789" : stdgo.GoString), ("0123456789" : stdgo.GoString), (11 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xyz0123456789" : stdgo.GoString).__slice__(0, (12 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("0123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x01234567x89" : stdgo.GoString), ("0123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789012345" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("3214567889012345" : stdgo.GoString), ("0123456789012345" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("0123456789012345" : stdgo.GoString), ("0123456789012345" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x0123456789012345" : stdgo.GoString), ("0123456789012345" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x012345678901234x0123456789012345" : stdgo.GoString), ("0123456789012345" : stdgo.GoString), (17 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("01234567890123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("32145678890123456789" : stdgo.GoString), ("01234567890123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("01234567890123456789" : stdgo.GoString), ("01234567890123456789" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x01234567890123456789" : stdgo.GoString), ("01234567890123456789" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x0123456789012345678x01234567890123456789" : stdgo.GoString), ("01234567890123456789" : stdgo.GoString), (21 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xyz01234567890123456789" : stdgo.GoString).__slice__(0, (22 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("01234567890123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("321456788901234567890123456789012345678911" : stdgo.GoString), ("0123456789012345678901234567890" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("0123456789012345678901234567890" : stdgo.GoString), ("0123456789012345678901234567890" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x0123456789012345678901234567890" : stdgo.GoString), ("0123456789012345678901234567890" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x012345678901234567890123456789x0123456789012345678901234567890" : stdgo.GoString), ("0123456789012345678901234567890" : stdgo.GoString), (32 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xyz0123456789012345678901234567890" : stdgo.GoString).__slice__(0, (33 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("32145678890123456789012345678901234567890211" : stdgo.GoString), ("01234567890123456789012345678901" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("01234567890123456789012345678901" : stdgo.GoString), ("01234567890123456789012345678901" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x01234567890123456789012345678901" : stdgo.GoString), ("01234567890123456789012345678901" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("x0123456789012345678901234567890x01234567890123456789012345678901" : stdgo.GoString), ("01234567890123456789012345678901" : stdgo.GoString), (33 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xyz01234567890123456789012345678901" : stdgo.GoString).__slice__(0, (34 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xxxxxx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString), ("012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString), (6 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789012345678901234567890123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString), ("0123456789012345678901234567890123456789" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest((("xx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString).__slice__(0, (41 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890123456789" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString), ("0123456789012345678901234567890123456xxx" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("xx0123456789012345678901234567890123456789012345678901234567890120123456789012345678901234567890123456xxx" : stdgo.GoString), ("0123456789012345678901234567890123456xxx" : stdgo.GoString), (65 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("oxoxoxoxoxoxoxoxoxoxoxoy" : stdgo.GoString), ("oy" : stdgo.GoString), (22 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("oxoxoxoxoxoxoxoxoxoxoxox" : stdgo.GoString), ("oy" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest)].concat([for (i in 89 ... (89 > 89 ? 89 : 89 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.IndexTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>);
var _lastIndexTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>(13, 13, ...[
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("fo" : stdgo.GoString), ("foo" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString), ("foo" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString), ("f" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString), ("f" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString), ("foo" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("barfoobarfoo" : stdgo.GoString), ("foo" : stdgo.GoString), (9 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (3 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString), ("o" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abcABCabc" : stdgo.GoString), ("A" : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abcABCabc" : stdgo.GoString), ("a" : stdgo.GoString), (6 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.IndexTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>);
var _indexAnyTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>(17, 17, ...[
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str(128)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("aaa" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("xcz" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("ab☺c" : stdgo.GoString), ("x☺yz" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("cx" : stdgo.GoString), (("a☺b☻" : stdgo.GoString).length)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("uvw☻xyz" : stdgo.GoString), (("a☺b" : stdgo.GoString).length)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("aRegExp*" : stdgo.GoString), (".(|)*+?^$[]" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(((_dots + _dots?.__copy__() : stdgo.GoString) + _dots?.__copy__() : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("012abcba210" : stdgo.GoString), stdgo.Go.str(255, "b")?.__copy__(), (4 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str("012", 128, "bcb", 128, "210")?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (3 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("0123456πabc" : stdgo.GoString), stdgo.Go.str(207, "b", 128)?.__copy__(), (10 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.IndexTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>);
var _lastIndexAnyTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>(17, 17, ...[
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str(128)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("aaa" : stdgo.GoString), ("a" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString), ("ab" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("ab☺c" : stdgo.GoString), ("x☺yz" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("cx" : stdgo.GoString), (("a☺b☻" : stdgo.GoString).length)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("uvw☻xyz" : stdgo.GoString), (("a☺b" : stdgo.GoString).length)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("a.RegExp*" : stdgo.GoString), (".(|)*+?^$[]" : stdgo.GoString), (8 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(((_dots + _dots?.__copy__() : stdgo.GoString) + _dots?.__copy__() : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("012abcba210" : stdgo.GoString), stdgo.Go.str(255, "b")?.__copy__(), (6 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str("012", 128, "bcb", 128, "210")?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (7 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest),
(new stdgo._internal.strings_test.Strings_test.IndexTest(("0123456πabc" : stdgo.GoString), stdgo.Go.str(207, "b", 128)?.__copy__(), (10 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.IndexTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>);
var _benchmarkLongString : stdgo.GoString = (repeat((" " : stdgo.GoString), (100 : stdgo.GoInt)) + ("some_text=some☺value" : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _splittests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.SplitTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.SplitTest>(20, 20, ...[
(new stdgo._internal.strings_test.Strings_test.SplitTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("bcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (4 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (17 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("☺�☹" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("☺" : stdgo.GoString), ("�" : stdgo.GoString), ("☹" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), ("bcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("z" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_commas?.__copy__(), ("," : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_dots?.__copy__(), ("..." : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), (".2" : stdgo.GoString), (".3" : stdgo.GoString), (".4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("☹" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("☺☻" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("~" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_faces?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("1 2 3 4" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3 4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("1 2" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(stdgo.Go.str()?.__copy__(), ("T" : stdgo.GoString), (536870911 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(stdgo.Go.str(255, "-", 255)?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str(255)?.__copy__(), ("-" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(stdgo.Go.str(255, "-", 255)?.__copy__(), ("-" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str(255)?.__copy__(), stdgo.Go.str(255)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest)].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.SplitTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.SplitTest>);
var _splitaftertests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.SplitTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.SplitTest>(13, 13, ...[
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("bcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("z" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abcd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_commas?.__copy__(), ("," : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1," : stdgo.GoString), ("2," : stdgo.GoString), ("3," : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_dots?.__copy__(), ("..." : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1..." : stdgo.GoString), (".2..." : stdgo.GoString), (".3..." : stdgo.GoString), (".4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("☹" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("☺☻☹" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("~" : stdgo.GoString), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_faces?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("☺" : stdgo.GoString), ("☻" : stdgo.GoString), ("☹" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("1 2 3 4" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1 " : stdgo.GoString), ("2 " : stdgo.GoString), ("3 4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("1 2 3" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1 " : stdgo.GoString), ("2 " : stdgo.GoString), ("3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("1 2" : stdgo.GoString), (" " : stdgo.GoString), (3 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1 " : stdgo.GoString), ("2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("23" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest),
(new stdgo._internal.strings_test.Strings_test.SplitTest(("123" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (17 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.SplitTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.SplitTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.SplitTest>);
var _fieldstests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.FieldsTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.FieldsTest>(15, 15, ...[
(new stdgo._internal.strings_test.Strings_test.FieldsTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest((" " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest((" \t " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("\u2000" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("  abc  " : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("1 2 3 4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("1  2  3  4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("1\t\t2\t\t3\t4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("1\u20002\u20013\u20024" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), ("4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("\u2000\u2001\u2002" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("\n™\t™\n" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("™" : stdgo.GoString), ("™" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("\n\u20001™2\u2000 \u2001 ™" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1™2" : stdgo.GoString), ("™" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(("\n1� �2\u20003�4" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1�" : stdgo.GoString), ("�2" : stdgo.GoString), ("3�4" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(stdgo.Go.str("1", 255, "\u2000", 255, "2", 255, " ", 255)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str("1", 255)?.__copy__(), stdgo.Go.str(255, "2", 255)?.__copy__(), stdgo.Go.str(255)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest),
(new stdgo._internal.strings_test.Strings_test.FieldsTest(_faces?.__copy__(), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_faces?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.FieldsTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.FieldsTest>);
var fieldsFuncTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.FieldsTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.FieldsTest>(4, 4, ...[(new stdgo._internal.strings_test.Strings_test.FieldsTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest), (new stdgo._internal.strings_test.Strings_test.FieldsTest(("XX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest), (new stdgo._internal.strings_test.Strings_test.FieldsTest(("XXhiXXX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hi" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest), (new stdgo._internal.strings_test.Strings_test.FieldsTest(("aXXbXXXcX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.strings_test.Strings_test.FieldsTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.FieldsTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.FieldsTest>);
var _upperTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest>(10, 10, ...[(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("ONLYUPPER" : stdgo.GoString), ("ONLYUPPER" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("abc" : stdgo.GoString), ("ABC" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("AbC123" : stdgo.GoString), ("ABC123" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("azAZ09_" : stdgo.GoString), ("AZAZ09_" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString), ("LONGSTRINGWITHMIXOFSMALLANDCAPS" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("RENAN BASTOS 93 AOSDAJDJAIDJAIDAJIaidsjjaidijadsjiadjiOOKKO" : stdgo.GoString), ("RENAN BASTOS 93 AOSDAJDJAIDJAIDAJIAIDSJJAIDIJADSJIADJIOOKKO" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("longɐstringɐwithɐnonasciiⱯchars" : stdgo.GoString), ("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("ɐɐɐɐɐ" : stdgo.GoString), ("ⱯⱯⱯⱯⱯ" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("a\u0080\u{0010ffff}" : stdgo.GoString), ("A\u0080\u{0010ffff}" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.StringTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest>);
var _lowerTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest>(9, 9, ...[(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("AbC123" : stdgo.GoString), ("abc123" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("azAZ09_" : stdgo.GoString), ("azaz09_" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString), ("longstringwithmixofsmallandcaps" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("renan bastos 93 AOSDAJDJAIDJAIDAJIaidsjjaidijadsjiadjiOOKKO" : stdgo.GoString), ("renan bastos 93 aosdajdjaidjaidajiaidsjjaidijadsjiadjiookko" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString), ("longɐstringɐwithɐnonasciiɐchars" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("ⱭⱭⱭⱭⱭ" : stdgo.GoString), ("ɑɑɑɑɑ" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest), (new stdgo._internal.strings_test.Strings_test.StringTest(("A\u0080\u{0010ffff}" : stdgo.GoString), ("a\u0080\u{0010ffff}" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.StringTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest>);
var _trimSpaceTests : stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest> = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest>(16, 16, ...[
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest((" " : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest((" \t\r\n \t\t\r\r\n\n " : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest((" \t\r\n x\t\t\r\r\n\n " : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : stdgo.GoString), ("x\t\t\r\r\ny" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(("1 \t\r\n2" : stdgo.GoString), ("1 \t\r\n2" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str(" x", 128)?.__copy__(), stdgo.Go.str("x", 128)?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str(" x", 192)?.__copy__(), stdgo.Go.str("x", 192)?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ", 192, 192)?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192)?.__copy__(), stdgo.Go.str("x ", 192)?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192, " ")?.__copy__(), stdgo.Go.str("x ", 192)?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ", 192, 192)?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(stdgo.Go.str("x ☺", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ☺", 192, 192)?.__copy__()) : stdgo._internal.strings_test.Strings_test.StringTest),
(new stdgo._internal.strings_test.Strings_test.StringTest(("x ☺ " : stdgo.GoString), ("x ☺" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.StringTest)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.StringTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.StringTest>);
var _toValidUTF8Tests : stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(14, 14, ...[
({ _in : stdgo.Go.str()?.__copy__(), _repl : ("�" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_11),
({ _in : ("abc" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : T__struct_11),
({ _in : ("\ufddd" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("\ufddd" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str("a", 255, "b")?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("a�b" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str("a", 255, "b�")?.__copy__(), _repl : ("X" : stdgo.GoString), _out : ("aXb�" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : stdgo.Go.str()?.__copy__(), _out : ("a☺b☺c☺" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : ("日本語" : stdgo.GoString), _out : ("a☺日本語b☺日本語c☺日本語" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str(192, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str(224, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str(237, 160, 128)?.__copy__(), _repl : ("abc" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str(237, 191, 191)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str(240, 128, 128, 175)?.__copy__(), _repl : ("☺" : stdgo.GoString), _out : ("☺" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str(248, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_11),
({ _in : stdgo.Go.str(252, 128, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : T__struct_11)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _repl : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : T__struct_11)])) : stdgo.Slice<T__struct_11>);
var _trimTests : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(29, 29, ...[
({ _f : ("Trim" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("bb" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("ab" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("ab" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("ab" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("bba" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("abba" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("abb" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("abba" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("<tag>" : stdgo.GoString), _arg : ("<>" : stdgo.GoString), _out : ("tag" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("* listitem" : stdgo.GoString), _arg : (" *" : stdgo.GoString), _out : ("listitem" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("\"quote\"" : stdgo.GoString), _arg : ("\"" : stdgo.GoString), _out : ("quote" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("ⱯⱯɐɐⱯⱯ" : stdgo.GoString), _arg : ("Ɐ" : stdgo.GoString), _out : ("ɐɐ" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : stdgo.Go.str(128, "test", 255)?.__copy__(), _arg : stdgo.Go.str(255)?.__copy__(), _out : ("test" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : (" Ġ " : stdgo.GoString), _arg : (" " : stdgo.GoString), _out : ("Ġ" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : (" Ġİ0" : stdgo.GoString), _arg : ("0 " : stdgo.GoString), _out : ("Ġİ" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString) } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : stdgo.Go.str("☺", 192)?.__copy__(), _arg : ("☺" : stdgo.GoString), _out : stdgo.Go.str("☺", 192)?.__copy__() } : T__struct_12),
({ _f : ("TrimPrefix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("abb" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimPrefix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("aabb" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimSuffix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("aabb" : stdgo.GoString) } : T__struct_12),
({ _f : ("TrimSuffix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("aab" : stdgo.GoString) } : T__struct_12)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({ _f : ("" : stdgo.GoString), _in : ("" : stdgo.GoString), _arg : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : T__struct_12)])) : stdgo.Slice<T__struct_12>);
var _isSpace : stdgo._internal.strings_test.Strings_test.T_predicate = (new stdgo._internal.strings_test.Strings_test.T_predicate(stdgo._internal.unicode.Unicode.isSpace, ("IsSpace" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_predicate);
var _isDigit : stdgo._internal.strings_test.Strings_test.T_predicate = (new stdgo._internal.strings_test.Strings_test.T_predicate(stdgo._internal.unicode.Unicode.isDigit, ("IsDigit" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_predicate);
var _isUpper : stdgo._internal.strings_test.Strings_test.T_predicate = (new stdgo._internal.strings_test.Strings_test.T_predicate(stdgo._internal.unicode.Unicode.isUpper, ("IsUpper" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_predicate);
var _isValidRune : stdgo._internal.strings_test.Strings_test.T_predicate = (new stdgo._internal.strings_test.Strings_test.T_predicate(function(_r:stdgo.GoRune):Bool {
        return _r != ((65533 : stdgo.GoInt32));
    }, ("IsValidRune" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_predicate);
var _trimFuncTests : stdgo.Slice<T__struct_14> = (new stdgo.Slice<T__struct_14>(9, 9, ...[({ _f : _isSpace?.__copy__(), _in : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), _trimOut : ("hello" : stdgo.GoString), _leftOut : ("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), _rightOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello" : stdgo.GoString) } : T__struct_14), ({ _f : _isDigit?.__copy__(), _in : ("๐๒12hello34๐๑" : stdgo.GoString), _trimOut : ("hello" : stdgo.GoString), _leftOut : ("hello34๐๑" : stdgo.GoString), _rightOut : ("๐๒12hello" : stdgo.GoString) } : T__struct_14), ({ _f : _isUpper?.__copy__(), _in : ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString), _trimOut : ("hello" : stdgo.GoString), _leftOut : ("helloEFⱯⱯGHⱯⱯ" : stdgo.GoString), _rightOut : ("ⱯⱯⱯⱯABCDhello" : stdgo.GoString) } : T__struct_14), ({ _f : _not(_isSpace?.__copy__())?.__copy__(), _in : ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString), _trimOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), _leftOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString), _rightOut : ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString) } : T__struct_14), ({ _f : _not(_isDigit?.__copy__())?.__copy__(), _in : ("hello๐๒1234๐๑helo" : stdgo.GoString), _trimOut : ("๐๒1234๐๑" : stdgo.GoString), _leftOut : ("๐๒1234๐๑helo" : stdgo.GoString), _rightOut : ("hello๐๒1234๐๑" : stdgo.GoString) } : T__struct_14), ({ _f : _isValidRune?.__copy__(), _in : stdgo.Go.str("ab", 192, "a", 192, "cd")?.__copy__(), _trimOut : stdgo.Go.str(192, "a", 192)?.__copy__(), _leftOut : stdgo.Go.str(192, "a", 192, "cd")?.__copy__(), _rightOut : stdgo.Go.str("ab", 192, "a", 192)?.__copy__() } : T__struct_14), ({ _f : _not(_isValidRune?.__copy__())?.__copy__(), _in : stdgo.Go.str(192, "a", 192)?.__copy__(), _trimOut : ("a" : stdgo.GoString), _leftOut : stdgo.Go.str("a", 192)?.__copy__(), _rightOut : stdgo.Go.str(192, "a")?.__copy__() } : T__struct_14), ({ _f : _isSpace?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _trimOut : stdgo.Go.str()?.__copy__(), _leftOut : stdgo.Go.str()?.__copy__(), _rightOut : stdgo.Go.str()?.__copy__() } : T__struct_14), ({ _f : _isSpace?.__copy__(), _in : (" " : stdgo.GoString), _trimOut : stdgo.Go.str()?.__copy__(), _leftOut : stdgo.Go.str()?.__copy__(), _rightOut : stdgo.Go.str()?.__copy__() } : T__struct_14)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _f : ({} : stdgo._internal.strings_test.Strings_test.T_predicate), _in : ("" : stdgo.GoString), _trimOut : ("" : stdgo.GoString), _leftOut : ("" : stdgo.GoString), _rightOut : ("" : stdgo.GoString) } : T__struct_14)])) : stdgo.Slice<T__struct_14>);
var _indexFuncTests : stdgo.Slice<T__struct_16> = (new stdgo.Slice<T__struct_16>(17, 17, ...[
({ _in : stdgo.Go.str()?.__copy__(), _f : _isValidRune?.__copy__(), _first : (-1 : stdgo.GoInt), _last : (-1 : stdgo.GoInt) } : T__struct_16),
({ _in : ("abc" : stdgo.GoString), _f : _isDigit?.__copy__(), _first : (-1 : stdgo.GoInt), _last : (-1 : stdgo.GoInt) } : T__struct_16),
({ _in : ("0123" : stdgo.GoString), _f : _isDigit?.__copy__(), _first : (0 : stdgo.GoInt), _last : (3 : stdgo.GoInt) } : T__struct_16),
({ _in : ("a1b" : stdgo.GoString), _f : _isDigit?.__copy__(), _first : (1 : stdgo.GoInt), _last : (1 : stdgo.GoInt) } : T__struct_16),
({ _in : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), _f : _isSpace?.__copy__(), _first : (0 : stdgo.GoInt), _last : (12 : stdgo.GoInt) } : T__struct_16),
({ _in : ("๐๒12hello34๐๑" : stdgo.GoString), _f : _isDigit?.__copy__(), _first : (0 : stdgo.GoInt), _last : (18 : stdgo.GoInt) } : T__struct_16),
({ _in : ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString), _f : _isUpper?.__copy__(), _first : (0 : stdgo.GoInt), _last : (34 : stdgo.GoInt) } : T__struct_16),
({ _in : ("12๐๒hello34๐๑" : stdgo.GoString), _f : _not(_isDigit?.__copy__())?.__copy__(), _first : (8 : stdgo.GoInt), _last : (12 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(128, "1")?.__copy__(), _f : _isDigit?.__copy__(), _first : (1 : stdgo.GoInt), _last : (1 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(128, "abc")?.__copy__(), _f : _isDigit?.__copy__(), _first : (-1 : stdgo.GoInt), _last : (-1 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "a", 192)?.__copy__(), _f : _isValidRune?.__copy__(), _first : (1 : stdgo.GoInt), _last : (1 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "a", 192)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.GoInt), _last : (2 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "☺", 192)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.GoInt), _last : (4 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "☺", 192, 192)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.GoInt), _last : (5 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str("ab", 192, "a", 192, "cd")?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (2 : stdgo.GoInt), _last : (4 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str("a", 224, 128, "cd")?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (1 : stdgo.GoInt), _last : (2 : stdgo.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(128, 128, 128, 128)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.GoInt), _last : (3 : stdgo.GoInt) } : T__struct_16)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _f : ({} : stdgo._internal.strings_test.Strings_test.T_predicate), _first : (0 : stdgo.GoInt), _last : (0 : stdgo.GoInt) } : T__struct_16)])) : stdgo.Slice<T__struct_16>);
var _longString : stdgo.GoString = ((("a" : stdgo.GoString) + ((new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString);
var repeatTests : stdgo.Slice<T__struct_17> = (new stdgo.Slice<T__struct_17>(9, 9, ...[({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _count : (0 : stdgo.GoInt) } : T__struct_17), ({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _count : (1 : stdgo.GoInt) } : T__struct_17), ({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _count : (2 : stdgo.GoInt) } : T__struct_17), ({ _in : ("-" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__(), _count : (0 : stdgo.GoInt) } : T__struct_17), ({ _in : ("-" : stdgo.GoString), _out : ("-" : stdgo.GoString), _count : (1 : stdgo.GoInt) } : T__struct_17), ({ _in : ("-" : stdgo.GoString), _out : ("----------" : stdgo.GoString), _count : (10 : stdgo.GoInt) } : T__struct_17), ({ _in : ("abc " : stdgo.GoString), _out : ("abc abc abc " : stdgo.GoString), _count : (3 : stdgo.GoInt) } : T__struct_17), ({ _in : (((0 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoString), _out : ((new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _count : (65536 : stdgo.GoInt) } : T__struct_17), ({ _in : _longString?.__copy__(), _out : (_longString + _longString?.__copy__() : stdgo.GoString)?.__copy__(), _count : (2 : stdgo.GoInt) } : T__struct_17)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt) } : T__struct_17)])) : stdgo.Slice<T__struct_17>);
var runesTests : stdgo.Slice<T__struct_19> = (new stdgo.Slice<T__struct_19>(7, 7, ...[({ _in : stdgo.Go.str()?.__copy__(), _out : (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _lossy : false } : T__struct_19), ({ _in : (" " : stdgo.GoString), _out : (new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(32 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("ABC" : stdgo.GoString), _out : (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(65 : stdgo.GoInt32), (66 : stdgo.GoInt32), (67 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("abc" : stdgo.GoString), _out : (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(97 : stdgo.GoInt32), (98 : stdgo.GoInt32), (99 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("日本語" : stdgo.GoString), _out : (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(26085 : stdgo.GoInt32), (26412 : stdgo.GoInt32), (35486 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _lossy : false } : T__struct_19), ({ _in : stdgo.Go.str("ab", 128, "c")?.__copy__(), _out : (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(97 : stdgo.GoInt32), (98 : stdgo.GoInt32), (65533 : stdgo.GoInt32), (99 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _lossy : true } : T__struct_19), ({ _in : stdgo.Go.str("ab", 192, "c")?.__copy__(), _out : (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(97 : stdgo.GoInt32), (98 : stdgo.GoInt32), (65533 : stdgo.GoInt32), (99 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), _lossy : true } : T__struct_19)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : (null : stdgo.Slice<stdgo.GoInt32>), _lossy : false } : T__struct_19)])) : stdgo.Slice<T__struct_19>);
var unreadRuneErrorTests : stdgo.Slice<T__struct_20> = (new stdgo.Slice<T__struct_20>(5, 5, ...[({ _name : ("Read" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.read((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    } } : T__struct_20), ({ _name : ("ReadByte" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.readByte();
    } } : T__struct_20), ({ _name : ("UnreadRune" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.unreadRune();
    } } : T__struct_20), ({ _name : ("Seek" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt));
    } } : T__struct_20), ({ _name : ("WriteTo" : stdgo.GoString), _f : function(_r:stdgo.Ref<Reader>):Void {
        _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Buffer() : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
    } } : T__struct_20)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : T__struct_20)])) : stdgo.Slice<T__struct_20>);
var replaceTests : stdgo.Slice<T__struct_21> = (new stdgo.Slice<T__struct_21>(19, 19, ...[
({ _in : ("hello" : stdgo.GoString), _old : ("l" : stdgo.GoString), _new : ("L" : stdgo.GoString), _n : (0 : stdgo.GoInt), _out : ("hello" : stdgo.GoString) } : T__struct_21),
({ _in : ("hello" : stdgo.GoString), _old : ("l" : stdgo.GoString), _new : ("L" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("heLLo" : stdgo.GoString) } : T__struct_21),
({ _in : ("hello" : stdgo.GoString), _old : ("x" : stdgo.GoString), _new : ("X" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("hello" : stdgo.GoString) } : T__struct_21),
({ _in : stdgo.Go.str()?.__copy__(), _old : ("x" : stdgo.GoString), _new : ("X" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__() } : T__struct_21),
({ _in : ("radar" : stdgo.GoString), _old : ("r" : stdgo.GoString), _new : ("<r>" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("<r>ada<r>" : stdgo.GoString) } : T__struct_21),
({ _in : stdgo.Go.str()?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("<>" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : ("a" : stdgo.GoString), _new : ("<>" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("b<>n<>n<>" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : ("a" : stdgo.GoString), _new : ("<>" : stdgo.GoString), _n : (1 : stdgo.GoInt), _out : ("b<>nana" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : ("a" : stdgo.GoString), _new : ("<>" : stdgo.GoString), _n : (1000 : stdgo.GoInt), _out : ("b<>n<>n<>" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : ("an" : stdgo.GoString), _new : ("<>" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("b<><>a" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : ("ana" : stdgo.GoString), _new : ("<>" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("b<>na" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString), _n : (10 : stdgo.GoInt), _out : ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString), _n : (6 : stdgo.GoInt), _out : ("<>b<>a<>n<>a<>n<>a" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString), _n : (5 : stdgo.GoInt), _out : ("<>b<>a<>n<>a<>na" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString), _n : (1 : stdgo.GoInt), _out : ("<>banana" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : ("a" : stdgo.GoString), _new : ("a" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("banana" : stdgo.GoString) } : T__struct_21),
({ _in : ("banana" : stdgo.GoString), _old : ("a" : stdgo.GoString), _new : ("a" : stdgo.GoString), _n : (1 : stdgo.GoInt), _out : ("banana" : stdgo.GoString) } : T__struct_21),
({ _in : ("☺☻☹" : stdgo.GoString), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString), _n : (-1 : stdgo.GoInt), _out : ("<>☺<>☻<>☹<>" : stdgo.GoString) } : T__struct_21)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _old : ("" : stdgo.GoString), _new : ("" : stdgo.GoString), _n : (0 : stdgo.GoInt), _out : ("" : stdgo.GoString) } : T__struct_21)])) : stdgo.Slice<T__struct_21>);
var titleTests : stdgo.Slice<StringTest> = (new stdgo.Slice<StringTest>(9, 9, ...[(new StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : StringTest), (new StringTest(("a" : stdgo.GoString), ("A" : stdgo.GoString)) : StringTest), (new StringTest((" aaa aaa aaa " : stdgo.GoString), (" Aaa Aaa Aaa " : stdgo.GoString)) : StringTest), (new StringTest((" Aaa Aaa Aaa " : stdgo.GoString), (" Aaa Aaa Aaa " : stdgo.GoString)) : StringTest), (new StringTest(("123a456" : stdgo.GoString), ("123a456" : stdgo.GoString)) : StringTest), (new StringTest(("double-blind" : stdgo.GoString), ("Double-Blind" : stdgo.GoString)) : StringTest), (new StringTest(("ÿøû" : stdgo.GoString), ("Ÿøû" : stdgo.GoString)) : StringTest), (new StringTest(("with_underscore" : stdgo.GoString), ("With_underscore" : stdgo.GoString)) : StringTest), (new StringTest(("unicode \u2028 line separator" : stdgo.GoString), ("Unicode \u2028 Line Separator" : stdgo.GoString)) : StringTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : StringTest)])) : stdgo.Slice<StringTest>);
var containsTests : stdgo.Slice<T__struct_22> = (new stdgo.Slice<T__struct_22>(56, 56, ...[
({ _str : ("abc" : stdgo.GoString), _substr : ("bc" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("abc" : stdgo.GoString), _substr : ("bcd" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("abc" : stdgo.GoString), _substr : stdgo.Go.str()?.__copy__(), _expected : true } : T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("a" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxx" : stdgo.GoString), _substr : ("01" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("01xxxx" : stdgo.GoString), _substr : ("01" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx01xx" : stdgo.GoString), _substr : ("01" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx01" : stdgo.GoString), _substr : ("01" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("01xxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx01" : stdgo.GoString).__slice__(0, (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxx" : stdgo.GoString), _substr : ("012" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("012xxxx" : stdgo.GoString), _substr : ("012" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx012xx" : stdgo.GoString), _substr : ("012" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx012" : stdgo.GoString), _substr : ("012" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("012xxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx012" : stdgo.GoString).__slice__(0, (7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxx" : stdgo.GoString), _substr : ("0123" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("0123xxxx" : stdgo.GoString), _substr : ("0123" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx0123xx" : stdgo.GoString), _substr : ("0123" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx0123" : stdgo.GoString), _substr : ("0123" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("0123xxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123" : stdgo.GoString).__slice__(0, (8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxx" : stdgo.GoString), _substr : ("01234" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("01234xxxx" : stdgo.GoString), _substr : ("01234" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx01234xx" : stdgo.GoString), _substr : ("01234" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx01234" : stdgo.GoString), _substr : ("01234" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("01234xxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx01234" : stdgo.GoString).__slice__(0, (9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxx" : stdgo.GoString), _substr : ("01234567" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("01234567xxxx" : stdgo.GoString), _substr : ("01234567" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx01234567xx" : stdgo.GoString), _substr : ("01234567" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx01234567" : stdgo.GoString), _substr : ("01234567" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("01234567xxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx01234567" : stdgo.GoString).__slice__(0, (12 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxx" : stdgo.GoString), _substr : ("012345678" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("012345678xxxx" : stdgo.GoString), _substr : ("012345678" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx012345678xx" : stdgo.GoString), _substr : ("012345678" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx012345678" : stdgo.GoString), _substr : ("012345678" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("012345678xxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx012345678" : stdgo.GoString).__slice__(0, (13 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxxxxxxxxx" : stdgo.GoString), _substr : ("0123456789ABCDEF" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("0123456789ABCDEFxxxx" : stdgo.GoString), _substr : ("0123456789ABCDEF" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx0123456789ABCDEFxx" : stdgo.GoString), _substr : ("0123456789ABCDEF" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx0123456789ABCDEF" : stdgo.GoString), _substr : ("0123456789ABCDEF" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("0123456789ABCDEFxxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123456789ABCDEF" : stdgo.GoString).__slice__(0, (20 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxxxxxxxxxx" : stdgo.GoString), _substr : ("0123456789ABCDEFG" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("0123456789ABCDEFGxxxx" : stdgo.GoString), _substr : ("0123456789ABCDEFG" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xx0123456789ABCDEFGxx" : stdgo.GoString), _substr : ("0123456789ABCDEFG" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx0123456789ABCDEFG" : stdgo.GoString), _substr : ("0123456789ABCDEFG" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : (("0123456789ABCDEFGxxxxx" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123456789ABCDEFG" : stdgo.GoString).__slice__(0, (21 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xx01x" : stdgo.GoString), _substr : ("012" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xx0123x" : stdgo.GoString), _substr : ("01234" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xx01234567x" : stdgo.GoString), _substr : ("012345678" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("xx0123456789ABCDEFx" : stdgo.GoString), _substr : ("0123456789ABCDEFG" : stdgo.GoString), _expected : false } : T__struct_22)].concat([for (i in 56 ... (56 > 56 ? 56 : 56 : stdgo.GoInt).toBasic()) ({ _str : ("" : stdgo.GoString), _substr : ("" : stdgo.GoString), _expected : false } : T__struct_22)])) : stdgo.Slice<T__struct_22>);
var containsAnyTests : stdgo.Slice<T__struct_22> = (new stdgo.Slice<T__struct_22>(11, 11, ...[
({ _str : stdgo.Go.str()?.__copy__(), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("a" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("abc" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("a" : stdgo.GoString), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("a" : stdgo.GoString), _substr : ("a" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("aaa" : stdgo.GoString), _substr : ("a" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("abc" : stdgo.GoString), _substr : ("xyz" : stdgo.GoString), _expected : false } : T__struct_22),
({ _str : ("abc" : stdgo.GoString), _substr : ("xcz" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("a☺b☻c☹d" : stdgo.GoString), _substr : ("uvw☻xyz" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ("aRegExp*" : stdgo.GoString), _substr : (".(|)*+?^$[]" : stdgo.GoString), _expected : true } : T__struct_22),
({ _str : ((_dots + _dots?.__copy__() : stdgo.GoString) + _dots?.__copy__() : stdgo.GoString)?.__copy__(), _substr : (" " : stdgo.GoString), _expected : false } : T__struct_22)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _str : ("" : stdgo.GoString), _substr : ("" : stdgo.GoString), _expected : false } : T__struct_22)])) : stdgo.Slice<T__struct_22>);
var containsRuneTests : stdgo.Slice<T__struct_23> = (new stdgo.Slice<T__struct_23>(8, 8, ...[({ _str : stdgo.Go.str()?.__copy__(), _r : (97 : stdgo.GoInt32), _expected : false } : T__struct_23), ({ _str : ("a" : stdgo.GoString), _r : (97 : stdgo.GoInt32), _expected : true } : T__struct_23), ({ _str : ("aaa" : stdgo.GoString), _r : (97 : stdgo.GoInt32), _expected : true } : T__struct_23), ({ _str : ("abc" : stdgo.GoString), _r : (121 : stdgo.GoInt32), _expected : false } : T__struct_23), ({ _str : ("abc" : stdgo.GoString), _r : (99 : stdgo.GoInt32), _expected : true } : T__struct_23), ({ _str : ("a☺b☻c☹d" : stdgo.GoString), _r : (120 : stdgo.GoInt32), _expected : false } : T__struct_23), ({ _str : ("a☺b☻c☹d" : stdgo.GoString), _r : (9787 : stdgo.GoInt32), _expected : true } : T__struct_23), ({ _str : ("aRegExp*" : stdgo.GoString), _r : (42 : stdgo.GoInt32), _expected : true } : T__struct_23)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _str : ("" : stdgo.GoString), _r : (0 : stdgo.GoInt32), _expected : false } : T__struct_23)])) : stdgo.Slice<T__struct_23>);
var equalFoldTests : stdgo.Slice<T__struct_24> = (new stdgo.Slice<T__struct_24>(13, 13, ...[
({ _s : ("abc" : stdgo.GoString), _t : ("abc" : stdgo.GoString), _out : true } : T__struct_24),
({ _s : ("ABcd" : stdgo.GoString), _t : ("ABcd" : stdgo.GoString), _out : true } : T__struct_24),
({ _s : ("123abc" : stdgo.GoString), _t : ("123ABC" : stdgo.GoString), _out : true } : T__struct_24),
({ _s : ("αβδ" : stdgo.GoString), _t : ("ΑΒΔ" : stdgo.GoString), _out : true } : T__struct_24),
({ _s : ("abc" : stdgo.GoString), _t : ("xyz" : stdgo.GoString), _out : false } : T__struct_24),
({ _s : ("abc" : stdgo.GoString), _t : ("XYZ" : stdgo.GoString), _out : false } : T__struct_24),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijX" : stdgo.GoString), _out : false } : T__struct_24),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : T__struct_24),
({ _s : ("abcdefghijK" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : T__struct_24),
({ _s : ("abcdefghijkz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : T__struct_24),
({ _s : ("abcdefghijKz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : T__struct_24),
({ _s : ("1" : stdgo.GoString), _t : ("2" : stdgo.GoString), _out : false } : T__struct_24),
({ _s : ("utf-8" : stdgo.GoString), _t : ("US-ASCII" : stdgo.GoString), _out : false } : T__struct_24)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _t : ("" : stdgo.GoString), _out : false } : T__struct_24)])) : stdgo.Slice<T__struct_24>);
var countTests : stdgo.Slice<T__struct_25> = (new stdgo.Slice<T__struct_25>(10, 10, ...[({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _num : (1 : stdgo.GoInt) } : T__struct_25), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("notempty" : stdgo.GoString), _num : (0 : stdgo.GoInt) } : T__struct_25), ({ _s : ("notempty" : stdgo.GoString), _sep : stdgo.Go.str()?.__copy__(), _num : (9 : stdgo.GoInt) } : T__struct_25), ({ _s : ("smaller" : stdgo.GoString), _sep : ("not smaller" : stdgo.GoString), _num : (0 : stdgo.GoInt) } : T__struct_25), ({ _s : ("12345678987654321" : stdgo.GoString), _sep : ("6" : stdgo.GoString), _num : (2 : stdgo.GoInt) } : T__struct_25), ({ _s : ("611161116" : stdgo.GoString), _sep : ("6" : stdgo.GoString), _num : (3 : stdgo.GoInt) } : T__struct_25), ({ _s : ("notequal" : stdgo.GoString), _sep : ("NotEqual" : stdgo.GoString), _num : (0 : stdgo.GoInt) } : T__struct_25), ({ _s : ("equal" : stdgo.GoString), _sep : ("equal" : stdgo.GoString), _num : (1 : stdgo.GoInt) } : T__struct_25), ({ _s : ("abc1231231123q" : stdgo.GoString), _sep : ("123" : stdgo.GoString), _num : (3 : stdgo.GoInt) } : T__struct_25), ({ _s : ("11111" : stdgo.GoString), _sep : ("11" : stdgo.GoString), _num : (2 : stdgo.GoInt) } : T__struct_25)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _sep : ("" : stdgo.GoString), _num : (0 : stdgo.GoInt) } : T__struct_25)])) : stdgo.Slice<T__struct_25>);
var _cutTests : stdgo.Slice<T__struct_26> = (new stdgo.Slice<T__struct_26>(8, 8, ...[({ _s : ("abc" : stdgo.GoString), _sep : ("b" : stdgo.GoString), _before : ("a" : stdgo.GoString), _after : ("c" : stdgo.GoString), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString), _sep : ("a" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _after : ("bc" : stdgo.GoString), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString), _sep : ("c" : stdgo.GoString), _before : ("ab" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : ("abc" : stdgo.GoString), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _before : ("abc" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_26), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_26), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_26)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _sep : ("" : stdgo.GoString), _before : ("" : stdgo.GoString), _after : ("" : stdgo.GoString), _found : false } : T__struct_26)])) : stdgo.Slice<T__struct_26>);
var _cutPrefixTests : stdgo.Slice<T__struct_27> = (new stdgo.Slice<T__struct_27>(6, 6, ...[({ _s : ("abc" : stdgo.GoString), _sep : ("a" : stdgo.GoString), _after : ("bc" : stdgo.GoString), _found : true } : T__struct_27), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_27), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str()?.__copy__(), _after : ("abc" : stdgo.GoString), _found : true } : T__struct_27), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _after : ("abc" : stdgo.GoString), _found : false } : T__struct_27), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_27), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_27)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _sep : ("" : stdgo.GoString), _after : ("" : stdgo.GoString), _found : false } : T__struct_27)])) : stdgo.Slice<T__struct_27>);
var _cutSuffixTests : stdgo.Slice<T__struct_28> = (new stdgo.Slice<T__struct_28>(6, 6, ...[({ _s : ("abc" : stdgo.GoString), _sep : ("bc" : stdgo.GoString), _before : ("a" : stdgo.GoString), _found : true } : T__struct_28), ({ _s : ("abc" : stdgo.GoString), _sep : ("abc" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_28), ({ _s : ("abc" : stdgo.GoString), _sep : stdgo.Go.str()?.__copy__(), _before : ("abc" : stdgo.GoString), _found : true } : T__struct_28), ({ _s : ("abc" : stdgo.GoString), _sep : ("d" : stdgo.GoString), _before : ("abc" : stdgo.GoString), _found : false } : T__struct_28), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString), _before : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_28), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_28)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _sep : ("" : stdgo.GoString), _before : ("" : stdgo.GoString), _found : false } : T__struct_28)])) : stdgo.Slice<T__struct_28>);
var _benchInputHard : stdgo.GoString = _makeBenchInputHard();
var _benchInputTorture : stdgo.GoString = ((repeat(("ABC" : stdgo.GoString), (1024 : stdgo.GoInt)) + ("123" : stdgo.GoString)?.__copy__() : stdgo.GoString) + repeat(("ABC" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
var _benchNeedleTorture : stdgo.GoString = repeat(("ABC" : stdgo.GoString), (1025 : stdgo.GoInt));
var _makeFieldsInput : () -> stdgo.GoString = function():stdgo.GoString {
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
        return (_x : stdgo.GoString)?.__copy__();
    };
var _makeFieldsInputASCII : () -> stdgo.GoString = function():stdgo.GoString {
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _x) {
            if (stdgo._internal.math.rand.Rand.intn((10 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
                _x[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            } else {
                _x[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            };
        };
        return (_x : stdgo.GoString)?.__copy__();
    };
var _stringdata : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(2, 2, ...[({ _name : ("ASCII" : stdgo.GoString), _data : _makeFieldsInputASCII()?.__copy__() } : T__struct_7), ({ _name : ("Mixed" : stdgo.GoString), _data : _makeFieldsInput()?.__copy__() } : T__struct_7)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : ("" : stdgo.GoString) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
@:structInit @:private @:using(stdgo._internal.strings_test.Strings_test.T_errWriter_static_extension) class T_errWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter();
    }
}
@:structInit class IndexTest {
    public var _s : stdgo.GoString = "";
    public var _sep : stdgo.GoString = "";
    public var _out : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexTest(_s, _sep, _out);
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
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out);
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
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _name : stdgo.GoString;
    public var _fn : stdgo.Ref<stdgo._internal.strings.Strings.Builder> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _fn : () -> Void;
    public var _wantPanic : Bool;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _a : stdgo.GoString;
    public var _b : stdgo.GoString;
    public var _i : stdgo.GoInt;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _off : stdgo.GoInt64;
    public var _seek : stdgo.GoInt;
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoString;
    public var _wantpos : stdgo.GoInt64;
    public var _readerr : stdgo.Error;
    public var _seekerr : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _off : stdgo.GoInt64;
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoString;
    public var _wanterr : stdgo.AnyInterface;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _r : stdgo.Ref<stdgo._internal.strings.Strings.Replacer>;
    public var _want : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _name : stdgo.GoString;
    public var _data : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _pat : stdgo.GoString;
    public var _text : stdgo.GoString;
    public var _index : stdgo.GoInt;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _pattern : stdgo.GoString;
    public var _bad : stdgo.GoArray<stdgo.GoInt>;
    public var _suf : stdgo.Slice<stdgo.GoInt>;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _in : stdgo.GoString;
    public var _rune : stdgo.GoInt32;
    public var _want : stdgo.GoInt;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _in : stdgo.GoString;
    public var _repl : stdgo.GoString;
    public var _out : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _f : stdgo.GoString;
    public var _in : stdgo.GoString;
    public var _arg : stdgo.GoString;
    public var _out : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _name : stdgo.GoString;
    public var _input : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _f : stdgo._internal.strings_test.Strings_test.T_predicate;
    public var _in : stdgo.GoString;
    public var _trimOut : stdgo.GoString;
    public var _leftOut : stdgo.GoString;
    public var _rightOut : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _name : stdgo.GoString;
    public var _trim : (stdgo.GoString, stdgo.GoInt32 -> Bool) -> stdgo.GoString;
    public var _out : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _in : stdgo.GoString;
    public var _f : stdgo._internal.strings_test.Strings_test.T_predicate;
    public var _first : stdgo.GoInt;
    public var _last : stdgo.GoInt;
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
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
    public var _count : stdgo.GoInt;
};
class T__struct_18_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_18>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_18_asInterface) class T__struct_18_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_18_static_extension) typedef T__struct_18 = {
    public var _s : stdgo.GoString;
    public var _count : stdgo.GoInt;
    public var _errStr : stdgo.GoString;
};
class T__struct_19_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_19>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_19_asInterface) class T__struct_19_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_19_static_extension) typedef T__struct_19 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.Slice<stdgo.GoInt32>;
    public var _lossy : Bool;
};
class T__struct_20_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_20>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_20_asInterface) class T__struct_20_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_20_static_extension) typedef T__struct_20 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo.Ref<stdgo._internal.strings.Strings.Reader> -> Void;
};
class T__struct_21_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_21>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_21_asInterface) class T__struct_21_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_21_static_extension) typedef T__struct_21 = {
    public var _in : stdgo.GoString;
    public var _old : stdgo.GoString;
    public var _new : stdgo.GoString;
    public var _n : stdgo.GoInt;
    public var _out : stdgo.GoString;
};
class T__struct_22_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_22>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_22_asInterface) class T__struct_22_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_22_static_extension) typedef T__struct_22 = {
    public var _str : stdgo.GoString;
    public var _substr : stdgo.GoString;
    public var _expected : Bool;
};
class T__struct_23_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_23>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_23_asInterface) class T__struct_23_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_23_static_extension) typedef T__struct_23 = {
    public var _str : stdgo.GoString;
    public var _r : stdgo.GoInt32;
    public var _expected : Bool;
};
class T__struct_24_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_24>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_24_asInterface) class T__struct_24_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_24_static_extension) typedef T__struct_24 = {
    public var _s : stdgo.GoString;
    public var _t : stdgo.GoString;
    public var _out : Bool;
};
class T__struct_25_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_25>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_25_asInterface) class T__struct_25_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_25_static_extension) typedef T__struct_25 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _num : stdgo.GoInt;
};
class T__struct_26_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_26>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_26_asInterface) class T__struct_26_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_26_static_extension) typedef T__struct_26 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _before : stdgo.GoString;
    public var _after : stdgo.GoString;
    public var _found : Bool;
};
class T__struct_27_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_27>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_27_asInterface) class T__struct_27_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_27_static_extension) typedef T__struct_27 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _after : stdgo.GoString;
    public var _found : Bool;
};
class T__struct_28_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_28>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T__struct_28_asInterface) class T__struct_28_static_extension {

}
@:local @:using(stdgo._internal.strings_test.Strings_test.T__struct_28_static_extension) typedef T__struct_28 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _before : stdgo.GoString;
    public var _found : Bool;
};
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _b:stdgo.Ref<Builder>, _want:stdgo.GoString):Void {
        _t.helper();
        var _got = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("String: got %#q; want %#q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            return;
        };
        {
            var _n = (_b.len() : stdgo.GoInt);
            if (_n != ((_got.length))) {
                _t.errorf(("Len: got %d; but len(String()) is %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)));
            };
        };
        {
            var _n = (_b.cap() : stdgo.GoInt);
            if ((_n < (_got.length) : Bool)) {
                _t.errorf(("Cap: got %d; but len(String()) is %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)));
            };
        };
    }
function testBuilder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), stdgo.Go.str()?.__copy__());
        var __tmp__ = _b.writeString(("hello" : stdgo.GoString)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_n != (5 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("hello" : stdgo.GoString));
        {
            _err = _b.writeByte((32 : stdgo.GoUInt8));
            if (_err != null) {
                _t.errorf(("WriteByte: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("hello " : stdgo.GoString));
        {
            var __tmp__ = _b.writeString(("world" : stdgo.GoString));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_err != null) || (_n != (5 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("hello world" : stdgo.GoString));
    }
function testBuilderString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _b.writeString(("alpha" : stdgo.GoString));
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("alpha" : stdgo.GoString));
        var _s1 = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.writeString(("beta" : stdgo.GoString));
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("alphabeta" : stdgo.GoString));
        var _s2 = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.writeString(("gamma" : stdgo.GoString));
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("alphabetagamma" : stdgo.GoString));
        var _s3 = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _want = ("alpha" : stdgo.GoString);
            if (_s1 != (_want)) {
                _t.errorf(("first String result is now %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _want = ("alphabeta" : stdgo.GoString);
            if (_s2 != (_want)) {
                _t.errorf(("second String result is now %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _want = ("alphabetagamma" : stdgo.GoString);
            if (_s3 != (_want)) {
                _t.errorf(("third String result is now %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_want));
            };
        };
    }
function testBuilderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), stdgo.Go.str()?.__copy__());
        _b.writeString(("aaa" : stdgo.GoString));
        var _s = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("aaa" : stdgo.GoString));
        _b.reset();
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), stdgo.Go.str()?.__copy__());
        _b.writeString(("bbb" : stdgo.GoString));
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("bbb" : stdgo.GoString));
        {
            var _want = ("aaa" : stdgo.GoString);
            if (_s != (_want)) {
                _t.errorf(("previous String result changed after Reset: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
            };
        };
    }
function testBuilderGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testBuilderGrow" + " skip function");
        return;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (__0 => _growLen in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt), (10000 : stdgo.GoInt), (100000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _p = stdgo._internal.bytes.Bytes.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _growLen);
                var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                    var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
                    _b.grow(_growLen);
                    if ((_b.cap() < _growLen : Bool)) {
                        _t.fatalf(("growLen=%d: Cap() is lower than growLen" : stdgo.GoString), stdgo.Go.toInterface(_growLen));
                    };
                    _b.write(_p);
                    if ((_b.string() : stdgo.GoString) != ((_p : stdgo.GoString))) {
                        _t.fatalf(("growLen=%d: bad data written after Grow" : stdgo.GoString), stdgo.Go.toInterface(_growLen));
                    };
                }) : stdgo.GoFloat64);
                var _wantAllocs = (1 : stdgo.GoInt);
                if (_growLen == ((0 : stdgo.GoInt))) {
                    _wantAllocs = (0 : stdgo.GoInt);
                };
                {
                    var __0 = (_allocs : stdgo.GoInt), __1 = (_wantAllocs : stdgo.GoInt);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        _t.errorf(("growLen=%d: got %d allocs during Write; want %v" : stdgo.GoString), stdgo.Go.toInterface(_growLen), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            };
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            var _n = (-1 : stdgo.GoInt);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_r == null) {
                            _t.errorf(("a.Grow(%d) should panic()" : stdgo.GoString), stdgo.Go.toInterface(_n));
                        };
                    };
                };
                a();
            });
            _a.grow(_n);
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
function testBuilderWrite2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        for (__0 => _tt in (new stdgo.Slice<T__struct_0>(4, 4, ...[({ _name : ("Write" : stdgo.GoString), _fn : function(_b:stdgo.Ref<Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.write((("hello 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        }, _n : (("hello 世界" : stdgo.GoString).length), _want : ("hello 世界" : stdgo.GoString) } : T__struct_0), ({ _name : ("WriteRune" : stdgo.GoString), _fn : function(_b:stdgo.Ref<Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.writeRune((97 : stdgo.GoInt32));
        }, _n : (1 : stdgo.GoInt), _want : ("a" : stdgo.GoString) } : T__struct_0), ({ _name : ("WriteRuneWide" : stdgo.GoString), _fn : function(_b:stdgo.Ref<Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.writeRune((19990 : stdgo.GoInt32));
        }, _n : (3 : stdgo.GoInt), _want : ("世" : stdgo.GoString) } : T__struct_0), ({ _name : ("WriteString" : stdgo.GoString), _fn : function(_b:stdgo.Ref<Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.writeString(("hello 世界" : stdgo.GoString));
        }, _n : (("hello 世界" : stdgo.GoString).length), _want : ("hello 世界" : stdgo.GoString) } : T__struct_0)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _fn : null, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString) } : T__struct_0)])) : stdgo.Slice<T__struct_0>)) {
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
                var __tmp__ = _tt._fn((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("first call: got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("first call: got n=%d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tt._n));
                };
                _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), _tt._want?.__copy__());
                {
                    var __tmp__ = _tt._fn((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("second call: got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("second call: got n=%d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tt._n));
                };
                _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), (_tt._want + _tt._want?.__copy__() : stdgo.GoString)?.__copy__());
            });
        };
    }
function testBuilderWriteByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        {
            var _err = (_b.writeByte((97 : stdgo.GoUInt8)) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_b.writeByte((0 : stdgo.GoUInt8)) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), stdgo.Go.str("a", 0)?.__copy__());
    }
function testBuilderAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testBuilderAllocs" + " skip function");
        return;
        var _n = (stdgo._internal.testing.Testing.allocsPerRun((10000 : stdgo.GoInt), function():Void {
            var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _b.grow((5 : stdgo.GoInt));
            _b.writeString(("abcde" : stdgo.GoString));
            var __blank__ = (_b.string() : stdgo.GoString);
        }) : stdgo.GoFloat64);
        if (_n != (1 : stdgo.GoFloat64)) {
            _t.errorf(("Builder allocs = %v; want 1" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testBuilderCopyPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testBuilderCopyPanic" + " skip function");
        return;
        var _tests = (new stdgo.Slice<T__struct_1>(9, 9, ...[({ _name : ("String" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.GoUInt8));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            var __blank__ = (_b.string() : stdgo.GoString);
        } } : T__struct_1), ({ _name : ("Len" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.GoUInt8));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.len();
        } } : T__struct_1), ({ _name : ("Cap" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.GoUInt8));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.cap();
        } } : T__struct_1), ({ _name : ("Reset" : stdgo.GoString), _wantPanic : false, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.GoUInt8));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.reset();
            _b.writeByte((121 : stdgo.GoUInt8));
        } } : T__struct_1), ({ _name : ("Write" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.write((("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.write((("y" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        } } : T__struct_1), ({ _name : ("WriteByte" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.GoUInt8));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.writeByte((121 : stdgo.GoUInt8));
        } } : T__struct_1), ({ _name : ("WriteString" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.writeString(("x" : stdgo.GoString));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.writeString(("y" : stdgo.GoString));
        } } : T__struct_1), ({ _name : ("WriteRune" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.writeRune((120 : stdgo.GoInt32));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.writeRune((121 : stdgo.GoInt32));
        } } : T__struct_1), ({ _name : ("Grow" : stdgo.GoString), _wantPanic : true, _fn : function():Void {
            var _a:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _a.grow((1 : stdgo.GoInt));
            var _b = (_a?.__copy__() : stdgo._internal.strings.Strings.Builder);
            _b.grow((2 : stdgo.GoInt));
        } } : T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _fn : null, _wantPanic : false } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
        for (__0 => _tt in _tests) {
            var _didPanic = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                _didPanic.__send__(({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                }) != null);
                            };
                            a();
                        });
                        _tt._fn();
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
            {
                var _got = (_didPanic.__get__() : Bool);
                if (_got != (_tt._wantPanic)) {
                    _t.errorf(("%s: panicked = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._wantPanic));
                };
            };
        };
    }
function testBuilderWriteInvalidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _r in (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
            var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
            _b.writeRune(_r);
            _check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), ("�" : stdgo.GoString));
        };
    }
function _benchmarkBuilder(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _f:(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _numWrite:stdgo.GoInt, _grow:Bool) -> Void):Void {
        _b.run(("1Write_NoGrow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (1 : stdgo.GoInt), false);
        });
        _b.run(("3Write_NoGrow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (3 : stdgo.GoInt), false);
        });
        _b.run(("3Write_Grow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (3 : stdgo.GoInt), true);
        });
    }
function benchmarkBuildString_Builder(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkBuilder(_b, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _buf:Builder = ({} : stdgo._internal.strings.Strings.Builder);
                    if (_grow) {
                        _buf.grow(((_someBytes.length) * _numWrite : stdgo.GoInt));
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numWrite : Bool), _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = (_buf.string() : stdgo.GoString)?.__copy__();
                });
            };
        });
    }
function benchmarkBuildString_ByteBuffer(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkBuilder(_b, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                    if (_grow) {
                        _buf.grow(((_someBytes.length) * _numWrite : stdgo.GoInt));
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numWrite : Bool), _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = (_buf.string() : stdgo.GoString)?.__copy__();
                });
            };
        });
    }
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testClone" + " skip function");
        return;
        var _cloneTests:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[stdgo.Go.str()?.__copy__(), stdgo._internal.strings.Strings.clone(stdgo.Go.str()?.__copy__())?.__copy__(), (stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("short" : stdgo.GoString), stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _input in _cloneTests) {
            var _clone = (stdgo._internal.strings.Strings.clone(_input?.__copy__())?.__copy__() : stdgo.GoString);
            if (_clone != (_input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_clone), stdgo.Go.toInterface(_input));
            };
            if (((_input.length != (0 : stdgo.GoInt)) && (stdgo._internal.unsafe.Unsafe.stringData(_clone?.__copy__()) == stdgo._internal.unsafe.Unsafe.stringData(_input?.__copy__())) : Bool)) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : stdgo.GoString), stdgo.Go.toInterface(_input));
            };
            if (((_input.length == (0 : stdgo.GoInt)) && (stdgo._internal.unsafe.Unsafe.stringData(_clone?.__copy__()) != stdgo._internal.unsafe.Unsafe.stringData(_emptyString?.__copy__())) : Bool)) {
                _t.errorf(("Clone(%#v) return value should be equal to empty string." : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe.stringData(_input?.__copy__())));
            };
        };
    }
function benchmarkClone(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str:stdgo.GoString = stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _stringSink = stdgo._internal.strings.Strings.clone(_str?.__copy__())?.__copy__();
            });
        };
    }
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _compareTests) {
            var _cmp = (compare(_tt._a?.__copy__(), _tt._b?.__copy__()) : stdgo.GoInt);
            if (_cmp != (_tt._i)) {
                _t.errorf(("Compare(%q, %q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_cmp));
            };
        };
    }
function testCompareIdenticalString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s:stdgo.GoString = ("Hello Gophers!" : stdgo.GoString);
        if (compare(_s?.__copy__(), _s?.__copy__()) != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("s != s" : stdgo.GoString)));
        };
        if (compare(_s?.__copy__(), (_s.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("s > s[:1] failed" : stdgo.GoString)));
        };
    }
function testCompareStrings(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testCompareStrings" + " skip function");
        return;
        var _unsafeString = function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
            return (stdgo._internal.unsafe.Unsafe.string(stdgo._internal.unsafe.Unsafe.sliceData(_b), (_b.length)) : stdgo.GoString)?.__copy__();
        };
        var _lengths = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (128 : stdgo.GoInt) : Bool), _i++, {
                _lengths = (_lengths.__append__(_i));
            });
        };
        _lengths = (_lengths.__append__((256 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt), (1333 : stdgo.GoInt), (4095 : stdgo.GoInt), (4096 : stdgo.GoInt), (4097 : stdgo.GoInt)));
        if ((!stdgo._internal.testing.Testing.short() || (stdgo._internal.internal.testenv.Testenv.builder() != stdgo.Go.str()) : Bool)) {
            _lengths = (_lengths.__append__((65535 : stdgo.GoInt), (65536 : stdgo.GoInt), (65537 : stdgo.GoInt), (99999 : stdgo.GoInt)));
        };
        var _n = (_lengths[((_lengths.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_n + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _lastLen = (0 : stdgo.GoInt);
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
            var __0 = (_unsafeString(_a)?.__copy__() : stdgo.GoString), __1 = (_unsafeString(_b)?.__copy__() : stdgo.GoString);
var _sb = __1, _sa = __0;
            var _cmp = (compare((_sa.__slice__(0, _len) : stdgo.GoString)?.__copy__(), (_sb.__slice__(0, _len) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
            if (_cmp != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareIdentical(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
            };
            if ((_len > (0 : stdgo.GoInt) : Bool)) {
                _cmp = compare((_sa.__slice__(0, (_len - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (_sb.__slice__(0, _len) : stdgo.GoString)?.__copy__());
                if (_cmp != ((-1 : stdgo.GoInt))) {
                    _t.errorf(("CompareAshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
                _cmp = compare((_sa.__slice__(0, _len) : stdgo.GoString)?.__copy__(), (_sb.__slice__(0, (_len - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                if (_cmp != ((1 : stdgo.GoInt))) {
                    _t.errorf(("CompareBshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
            };
            {
                var _k = (_lastLen : stdgo.GoInt);
                stdgo.Go.cfor((_k < _len : Bool), _k++, {
                    _b[(_k : stdgo.GoInt)] = (_a[(_k : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _cmp = compare(_unsafeString((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__(), _unsafeString((_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__());
                    if (_cmp != ((1 : stdgo.GoInt))) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.GoInt)] = (_a[(_k : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _cmp = compare(_unsafeString((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__(), _unsafeString((_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__());
                    if (_cmp != ((-1 : stdgo.GoInt))) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.GoInt)] = _a[(_k : stdgo.GoInt)];
                });
            };
            _lastLen = _len;
        };
    }
function exampleClone():Void {
        var _s = ("abc" : stdgo.GoString);
        var _clone = (stdgo._internal.strings.Strings.clone(_s?.__copy__())?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s == (_clone)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe.stringData(_s?.__copy__()) == (stdgo._internal.unsafe.Unsafe.stringData(_clone?.__copy__()))));
    }
function exampleBuilder():Void {
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (1 : stdgo.GoInt) : Bool), _i--, {
                stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("%d..." : stdgo.GoString), stdgo.Go.toInterface(_i));
            });
        };
        _b.writeString(("ignition" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
    }
function exampleCompare():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.compare(("a" : stdgo.GoString), ("b" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.compare(("a" : stdgo.GoString), ("a" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.compare(("b" : stdgo.GoString), ("a" : stdgo.GoString))));
    }
function exampleContains():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(("seafood" : stdgo.GoString), ("foo" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(("seafood" : stdgo.GoString), ("bar" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(("seafood" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.contains(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
function exampleContainsAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("team" : stdgo.GoString), ("i" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("fail" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("ure" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("failure" : stdgo.GoString), ("ui" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsAny(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
function exampleContainsRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsRune(("aardvark" : stdgo.GoString), (97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.containsRune(("timeout" : stdgo.GoString), (97 : stdgo.GoInt32))));
    }
function exampleCount():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.count(("cheese" : stdgo.GoString), ("e" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.count(("five" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
function exampleCut():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.strings.Strings.cut(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo._internal.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("Badger" : stdgo.GoString));
    }
function exampleCutPrefix():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.strings.Strings.cutPrefix(_s?.__copy__(), _sep?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
function exampleCutSuffix():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.strings.Strings.cutSuffix(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
function exampleEqualFold():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.equalFold(("Go" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.equalFold(("AB" : stdgo.GoString), ("ab" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.equalFold(("ß" : stdgo.GoString), ("ss" : stdgo.GoString))));
    }
function exampleFields():Void {
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.fields(("  foo bar  baz   " : stdgo.GoString))));
    }
function exampleFieldsFunc():Void {
        var _f = (function(_c:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_c) && !stdgo._internal.unicode.Unicode.isNumber(_c) : Bool);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.fieldsFunc(("  foo1;bar2,baz3..." : stdgo.GoString), _f)));
    }
function exampleHasPrefix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), ("C" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
function exampleHasSuffix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("O" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), ("Ami" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
    }
function exampleIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.index(("chicken" : stdgo.GoString), ("ken" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.index(("chicken" : stdgo.GoString), ("dmr" : stdgo.GoString))));
    }
function exampleIndexFunc():Void {
        var _f = (function(_c:stdgo.GoRune):Bool {
            return stdgo._internal.unicode.Unicode.is_(stdgo._internal.unicode.Unicode.han, _c);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexFunc(("Hello, 世界" : stdgo.GoString), _f)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexFunc(("Hello, world" : stdgo.GoString), _f)));
    }
function exampleIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexAny(("chicken" : stdgo.GoString), ("aeiouy" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexAny(("crwth" : stdgo.GoString), ("aeiouy" : stdgo.GoString))));
    }
function exampleIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexByte(("golang" : stdgo.GoString), (103 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexByte(("gophers" : stdgo.GoString), (104 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexByte(("golang" : stdgo.GoString), (120 : stdgo.GoUInt8))));
    }
function exampleIndexRune():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexRune(("chicken" : stdgo.GoString), (107 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.indexRune(("chicken" : stdgo.GoString), (100 : stdgo.GoInt32))));
    }
function exampleLastIndex():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.index(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndex(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndex(("go gopher" : stdgo.GoString), ("rodent" : stdgo.GoString))));
    }
function exampleLastIndexAny():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("go" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("rodent" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString), ("fail" : stdgo.GoString))));
    }
function exampleLastIndexByte():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (108 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (111 : stdgo.GoUInt8))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString), (120 : stdgo.GoUInt8))));
    }
function exampleLastIndexFunc():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexFunc(("go 123" : stdgo.GoString), stdgo._internal.unicode.Unicode.isNumber)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexFunc(("123 go" : stdgo.GoString), stdgo._internal.unicode.Unicode.isNumber)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.lastIndexFunc(("go" : stdgo.GoString), stdgo._internal.unicode.Unicode.isNumber)));
    }
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("baz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.join(_s, (", " : stdgo.GoString))));
    }
function exampleRepeat():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((("ba" : stdgo.GoString) + stdgo._internal.strings.Strings.repeat(("na" : stdgo.GoString), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString)));
    }
function exampleReplace():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.replace(("oink oink oink" : stdgo.GoString), ("k" : stdgo.GoString), ("ky" : stdgo.GoString), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.replace(("oink oink oink" : stdgo.GoString), ("oink" : stdgo.GoString), ("moo" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.replaceAll(("oink oink oink" : stdgo.GoString), ("oink" : stdgo.GoString), ("moo" : stdgo.GoString))));
    }
function exampleSplit():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split(("a man a plan a canal panama" : stdgo.GoString), ("a " : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split((" xyz " : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.split(stdgo.Go.str()?.__copy__(), ("Bernardo O\'Higgins" : stdgo.GoString))));
    }
function exampleSplitN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (2 : stdgo.GoInt))));
        var _z = stdgo._internal.strings.Strings.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (0 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.splitAfter(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString))));
    }
function exampleSplitAfterN():Void {
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.splitAfterN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (2 : stdgo.GoInt))));
    }
function exampleTitle():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.title(("her royal highness" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.title(("loud noises" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.title(("хлеб" : stdgo.GoString))));
    }
function exampleToTitle():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitle(("her royal highness" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitle(("loud noises" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitle(("хлеб" : stdgo.GoString))));
    }
function exampleToTitleSpecial():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toTitleSpecial(stdgo._internal.unicode.Unicode.turkishCase, ("dünyanın ilk borsa yapısı Aizonai kabul edilir" : stdgo.GoString))));
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
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.map_(_rot13, ("\'Twas brillig and the slithy gopher..." : stdgo.GoString))));
    }
function exampleNewReplacer():Void {
        var _r = stdgo._internal.strings.Strings.newReplacer(("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_r.replace(("This is <b>HTML</b>!" : stdgo.GoString))));
    }
function exampleToUpper():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toUpper(("Gopher" : stdgo.GoString))));
    }
function exampleToUpperSpecial():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toUpperSpecial(stdgo._internal.unicode.Unicode.turkishCase, ("örnek iş" : stdgo.GoString))));
    }
function exampleToLower():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toLower(("Gopher" : stdgo.GoString))));
    }
function exampleToLowerSpecial():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.toLowerSpecial(stdgo._internal.unicode.Unicode.turkishCase, ("Önnek İş" : stdgo.GoString))));
    }
function exampleTrim():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trim(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
function exampleTrimSpace():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimSpace((" \t\n Hello, Gophers \n\t\r\n" : stdgo.GoString))));
    }
function exampleTrimPrefix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo._internal.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Hello, " : stdgo.GoString))?.__copy__();
        _s = stdgo._internal.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Howdy, " : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
function exampleTrimSuffix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo._internal.strings.Strings.trimSuffix(_s?.__copy__(), (", Gophers!!!" : stdgo.GoString))?.__copy__();
        _s = stdgo._internal.strings.Strings.trimSuffix(_s?.__copy__(), (", Marmots!!!" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
function exampleTrimFunc():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_r) && !stdgo._internal.unicode.Unicode.isNumber(_r) : Bool);
        })));
    }
function exampleTrimLeft():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimLeft(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
function exampleTrimLeftFunc():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimLeftFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_r) && !stdgo._internal.unicode.Unicode.isNumber(_r) : Bool);
        })));
    }
function exampleTrimRight():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimRight(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), ("!¡" : stdgo.GoString))));
    }
function exampleTrimRightFunc():Void {
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings.trimRightFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.GoRune):Bool {
            return (!stdgo._internal.unicode.Unicode.isLetter(_r) && !stdgo._internal.unicode.Unicode.isNumber(_r) : Bool);
        })));
    }
function exampleToValidUTF8():Void {
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(("abc" : stdgo.GoString), ("�" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(stdgo.Go.str("a", 255, "b", 192, 175, "c", 255)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(stdgo.Go.str(237, 160, 128)?.__copy__(), ("abc" : stdgo.GoString))));
    }
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.strings.Strings.newReader(("0123456789" : stdgo.GoString));
        var _tests = (new stdgo.Slice<T__struct_3>(9, 9, ...[({ _seek : (0 : stdgo.GoInt), _off : (0i64 : stdgo.GoInt64), _n : (20 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3), ({ _seek : (0 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _want : ("1" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (3i64 : stdgo.GoInt64), _n : (2 : stdgo.GoInt), _want : ("34" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3), ({ _seek : (0 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _seekerr : ("strings.Reader.Seek: negative position" : stdgo.GoString), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error) } : T__struct_3), ({ _seek : (0 : stdgo.GoInt), _off : (8589934592i64 : stdgo.GoInt64), _wantpos : (8589934592i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io.eof, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : T__struct_3), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (8589934593i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io.eof, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : T__struct_3), ({ _seek : (0 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("01234" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3), ({ _seek : (1 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("56789" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3), ({ _seek : (2 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _wantpos : (9i64 : stdgo.GoInt64), _want : ("9" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _seek : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
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
        var _r = stdgo._internal.strings.Strings.newReader(("0123456789" : stdgo.GoString));
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
        var _r = stdgo._internal.strings.Strings.newReader(("0123456789" : stdgo.GoString));
        var _tests = (new stdgo.Slice<T__struct_4>(6, 6, ...[({ _off : (0i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : T__struct_4), ({ _off : (1i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : stdgo.Go.toInterface(stdgo._internal.io.Io.eof) } : T__struct_4), ({ _off : (1i64 : stdgo.GoInt64), _n : (9 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : T__struct_4), ({ _off : (11i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(stdgo._internal.io.Io.eof) } : T__struct_4), ({ _off : (0i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : (null : stdgo.AnyInterface) } : T__struct_4), ({ _off : (-1i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(("strings.Reader.ReadAt: negative offset" : stdgo.GoString)) } : T__struct_4)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : T__struct_4)])) : stdgo.Slice<T__struct_4>);
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
        var _r = stdgo._internal.strings.Strings.newReader(("0123456789" : stdgo.GoString));
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
        var _r = stdgo._internal.strings.Strings.newReader(stdgo.Go.str()?.__copy__());
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
function testWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (("0123456789" : stdgo.GoString).length) : Bool), _i++, {
                var _s = ((("0123456789" : stdgo.GoString).__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _r = stdgo._internal.strings.Strings.newReader(_s?.__copy__());
                var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect = (_s.length : stdgo.GoInt64);
                    if (_n != (_expect)) {
                        _t.errorf(("got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(("for length %d: got error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface((_s.length)), stdgo.Go.toInterface(_err));
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
function testReaderLenSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testReaderLenSize" + " skip function");
        return;
        var _r = stdgo._internal.strings.Strings.newReader(("abc" : stdgo.GoString));
        stdgo._internal.io.Io.copyN(stdgo._internal.io.Io.discard, stdgo.Go.asInterface(_r), (1i64 : stdgo.GoInt64));
        if (_r.len() != ((2 : stdgo.GoInt))) {
            _t.errorf(("Len = %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_r.len()));
        };
        if (_r.size() != ((3i64 : stdgo.GoInt64))) {
            _t.errorf(("Size = %d; want 3" : stdgo.GoString), stdgo.Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.strings.Strings.newReader(("世界" : stdgo.GoString));
        {
            var __tmp__ = _r.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(("ReadRune: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {};
        _r.reset(("abcdef" : stdgo.GoString));
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
            var _l = ((stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).len() : stdgo.GoInt);
            if (_l != ((0 : stdgo.GoInt))) {
                _t.errorf(("Len: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).readAt((null : stdgo.Slice<stdgo.GoUInt8>), (11i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_b != (0 : stdgo.GoUInt8)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).readRune(), _ch:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != ((0 : stdgo.GoInt32)) || _size != ((0 : stdgo.GoInt)) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_ch), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).seek((11i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _offset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_offset != (11i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                _t.errorf(("Seek: got %d, %v; want 11, nil" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _s = ((stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).size() : stdgo.GoInt64);
            if (_s != ((0i64 : stdgo.GoInt64))) {
                _t.errorf(("Size: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        if ((stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).unreadByte() == null) {
            _t.errorf(("UnreadByte: got nil, want error" : stdgo.GoString));
        };
        if ((stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).unreadRune() == null) {
            _t.errorf(("UnreadRune: got nil, want error" : stdgo.GoString));
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader() : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>).writeTo(stdgo._internal.io.Io.discard), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString {
        _s = replace(_s?.__copy__(), ("&" : stdgo.GoString), ("&amp;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), ("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), ("\"" : stdgo.GoString), ("&quot;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), ("\'" : stdgo.GoString), ("&apos;" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__();
        return _s?.__copy__();
    }
@:structInit class T_testReplacer___localname___testCase_871 {
    public var _r : stdgo.Ref<stdgo._internal.strings.Strings.Replacer> = (null : stdgo.Ref<stdgo._internal.strings.Strings.Replacer>);
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_r:stdgo.Ref<stdgo._internal.strings.Strings.Replacer>, ?_in:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_r != null) this._r = _r;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testReplacer___localname___testCase_871(_r, _in, _out);
    }
}
function testReplacer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testReplacer" + " skip function");
        return;
        {};
        var _testCases:stdgo.Slice<T_testReplacer___localname___testCase_871> = (null : stdgo.Slice<stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871>);
        var _str = (function(_b:stdgo.GoByte):stdgo.GoString {
            return ((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_b]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        } : stdgo.GoUInt8 -> stdgo.GoString);
        var _s:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _s = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                _s = (_s.__append__(_str((_i : stdgo.GoByte))?.__copy__(), _str(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte))?.__copy__()));
            });
        };
        var _inc = newReplacer(...(_s : Array<stdgo.GoString>));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_capitalLetters, ("brad" : stdgo.GoString), ("BrAd" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_capitalLetters, repeat(("a" : stdgo.GoString), (32891 : stdgo.GoInt))?.__copy__(), repeat(("A" : stdgo.GoString), (32891 : stdgo.GoInt))?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_capitalLetters, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_inc, ("brad" : stdgo.GoString), ("csbe" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_inc, stdgo.Go.str(0, 255)?.__copy__(), stdgo.Go.str(1, 0)?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_inc, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(newReplacer(("a" : stdgo.GoString), ("1" : stdgo.GoString), ("a" : stdgo.GoString), ("2" : stdgo.GoString)), ("brad" : stdgo.GoString), ("br1d" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        _s = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _n = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) - (97 : stdgo.GoInt) : stdgo.GoInt);
                if ((_n < (1 : stdgo.GoInt) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                _s = (_s.__append__(_str((_i : stdgo.GoByte))?.__copy__(), repeat(_str((_i : stdgo.GoByte))?.__copy__(), _n)?.__copy__()));
            });
        };
        var _repeat = newReplacer(...(_s : Array<stdgo.GoString>));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_htmlEscaper, ("No changes" : stdgo.GoString), ("No changes" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_htmlEscaper, ("I <3 escaping & stuff" : stdgo.GoString), ("I &lt;3 escaping &amp; stuff" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_htmlEscaper, ("&&&" : stdgo.GoString), ("&amp;&amp;&amp;" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_htmlEscaper, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_repeat, ("brad" : stdgo.GoString), ("bbrrrrrrrrrrrrrrrrrradddd" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_repeat, ("abba" : stdgo.GoString), ("abbbba" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_repeat, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(newReplacer(("a" : stdgo.GoString), ("11" : stdgo.GoString), ("a" : stdgo.GoString), ("22" : stdgo.GoString)), ("brad" : stdgo.GoString), ("br11d" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_htmlUnescaper, ("&amp;amp;" : stdgo.GoString), ("&amp;" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_htmlUnescaper, ("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;" : stdgo.GoString), ("<b>HTML\'s neat</b>" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_htmlUnescaper, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(newReplacer(("a" : stdgo.GoString), ("1" : stdgo.GoString), ("a" : stdgo.GoString), ("2" : stdgo.GoString), ("xxx" : stdgo.GoString), ("xxx" : stdgo.GoString)), ("brad" : stdgo.GoString), ("br1d" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(newReplacer(("a" : stdgo.GoString), ("1" : stdgo.GoString), ("aa" : stdgo.GoString), ("2" : stdgo.GoString), ("aaa" : stdgo.GoString), ("3" : stdgo.GoString)), ("aaaa" : stdgo.GoString), ("1111" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(newReplacer(("aaa" : stdgo.GoString), ("3" : stdgo.GoString), ("aa" : stdgo.GoString), ("2" : stdgo.GoString), ("a" : stdgo.GoString), ("1" : stdgo.GoString)), ("aaaa" : stdgo.GoString), ("31" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _gen1 = newReplacer(("aaa" : stdgo.GoString),
("3[aaa]" : stdgo.GoString),
("aa" : stdgo.GoString),
("2[aa]" : stdgo.GoString),
("a" : stdgo.GoString),
("1[a]" : stdgo.GoString),
("i" : stdgo.GoString),
("i" : stdgo.GoString),
("longerst" : stdgo.GoString),
("most long" : stdgo.GoString),
("longer" : stdgo.GoString),
("medium" : stdgo.GoString),
("long" : stdgo.GoString),
("short" : stdgo.GoString),
("xx" : stdgo.GoString),
("xx" : stdgo.GoString),
("x" : stdgo.GoString),
("X" : stdgo.GoString),
("X" : stdgo.GoString),
("Y" : stdgo.GoString),
("Y" : stdgo.GoString),
("Z" : stdgo.GoString));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen1, ("fooaaabar" : stdgo.GoString), ("foo3[aaa]b1[a]r" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen1, ("long, longerst, longer" : stdgo.GoString), ("short, most long, medium" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen1, ("xxxxx" : stdgo.GoString), ("xxxxX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen1, ("XiX" : stdgo.GoString), ("YiY" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen1, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _gen2 = newReplacer(("roses" : stdgo.GoString), ("red" : stdgo.GoString), ("violets" : stdgo.GoString), ("blue" : stdgo.GoString), ("sugar" : stdgo.GoString), ("sweet" : stdgo.GoString));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen2, ("roses are red, violets are blue..." : stdgo.GoString), ("red are red, blue are blue..." : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen2, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _gen3 = newReplacer(("abracadabra" : stdgo.GoString), ("poof" : stdgo.GoString), ("abracadabrakazam" : stdgo.GoString), ("splat" : stdgo.GoString), ("abraham" : stdgo.GoString), ("lincoln" : stdgo.GoString), ("abrasion" : stdgo.GoString), ("scrape" : stdgo.GoString), ("abraham" : stdgo.GoString), ("isaac" : stdgo.GoString));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen3, ("abracadabrakazam abraham" : stdgo.GoString), ("poofkazam lincoln" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen3, ("abrasion abracad" : stdgo.GoString), ("scrape abracad" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen3, ("abba abram abrasive" : stdgo.GoString), ("abba abram abrasive" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_gen3, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _foo1 = newReplacer(("foo1" : stdgo.GoString), ("A" : stdgo.GoString), ("foo2" : stdgo.GoString), ("B" : stdgo.GoString), ("foo3" : stdgo.GoString), ("C" : stdgo.GoString));
        var _foo2 = newReplacer(("foo1" : stdgo.GoString), ("A" : stdgo.GoString), ("foo2" : stdgo.GoString), ("B" : stdgo.GoString), ("foo31" : stdgo.GoString), ("C" : stdgo.GoString), ("foo32" : stdgo.GoString), ("D" : stdgo.GoString));
        var _foo3 = newReplacer(("foo11" : stdgo.GoString), ("A" : stdgo.GoString), ("foo12" : stdgo.GoString), ("B" : stdgo.GoString), ("foo31" : stdgo.GoString), ("C" : stdgo.GoString), ("foo32" : stdgo.GoString), ("D" : stdgo.GoString));
        var _foo4 = newReplacer(("foo12" : stdgo.GoString), ("B" : stdgo.GoString), ("foo32" : stdgo.GoString), ("D" : stdgo.GoString));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo1, ("fofoofoo12foo32oo" : stdgo.GoString), ("fofooA2C2oo" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo1, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo2, ("fofoofoo12foo32oo" : stdgo.GoString), ("fofooA2Doo" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo2, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo3, ("fofoofoo12foo32oo" : stdgo.GoString), ("fofooBDoo" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo3, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo4, ("fofoofoo12foo32oo" : stdgo.GoString), ("fofooBDoo" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_foo4, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _allBytes = (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _allBytes) {
            _allBytes[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
        };
        var _allString = ((_allBytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _genAll = newReplacer(_allString?.__copy__(), ("[all]" : stdgo.GoString), stdgo.Go.str(255)?.__copy__(), ("[ff]" : stdgo.GoString), stdgo.Go.str(0)?.__copy__(), ("[00]" : stdgo.GoString));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_genAll, _allString?.__copy__(), ("[all]" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_genAll, ((stdgo.Go.str("a", 255) + _allString?.__copy__() : stdgo.GoString) + stdgo.Go.str(0)?.__copy__() : stdgo.GoString)?.__copy__(), ("a[ff][all][00]" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_genAll, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _blankToX1 = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString));
        var _blankToX2 = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        var _blankHighPriority = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString), ("o" : stdgo.GoString), ("O" : stdgo.GoString));
        var _blankLowPriority = newReplacer(("o" : stdgo.GoString), ("O" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString));
        var _blankNoOp1 = newReplacer(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        var _blankNoOp2 = newReplacer(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("A" : stdgo.GoString));
        var _blankFoo = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString), ("foobar" : stdgo.GoString), ("R" : stdgo.GoString), ("foobaz" : stdgo.GoString), ("Z" : stdgo.GoString));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankToX1, ("foo" : stdgo.GoString), ("XfXoXoX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankToX1, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankToX2, ("foo" : stdgo.GoString), ("XfXoXoX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankToX2, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankHighPriority, ("oo" : stdgo.GoString), ("XOXOX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankHighPriority, ("ii" : stdgo.GoString), ("XiXiX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankHighPriority, ("oiio" : stdgo.GoString), ("XOXiXiXOX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankHighPriority, ("iooi" : stdgo.GoString), ("XiXOXOXiX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankHighPriority, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankLowPriority, ("oo" : stdgo.GoString), ("OOX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankLowPriority, ("ii" : stdgo.GoString), ("XiXiX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankLowPriority, ("oiio" : stdgo.GoString), ("OXiXiOX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankLowPriority, ("iooi" : stdgo.GoString), ("XiOOXiX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankLowPriority, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankNoOp1, ("foo" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankNoOp1, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankNoOp2, ("foo" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankNoOp2, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankFoo, ("foobarfoobaz" : stdgo.GoString), ("XRXZX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankFoo, ("foobar-foobaz" : stdgo.GoString), ("XRX-XZX" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871),
(new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_blankFoo, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _abcMatcher = newReplacer(("abc" : stdgo.GoString), ("[match]" : stdgo.GoString));
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_abcMatcher, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_abcMatcher, ("ab" : stdgo.GoString), ("ab" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_abcMatcher, ("abc" : stdgo.GoString), ("[match]" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_abcMatcher, ("abcd" : stdgo.GoString), ("[match]d" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_abcMatcher, ("cabcabcdabca" : stdgo.GoString), ("c[match][match]d[match]a" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _noHello = newReplacer(("Hello" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_noHello, ("Hello" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_noHello, ("Hellox" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_noHello, ("xHello" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_noHello, ("xHellox" : stdgo.GoString), ("xx" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        var _nop = newReplacer();
        _testCases = (_testCases.__append__((new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_nop, ("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871), (new stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871(_nop, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_testReplacer___localname___testCase_871)));
        for (_i => _tc in _testCases) {
            {
                var _s = (_tc._r.replace(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_tc._out)) {
                    _t.errorf(("%d. Replace(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tc._out));
                };
            };
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            var __tmp__ = _tc._r.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _tc._in?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%d. WriteString: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_tc._out)) {
                _t.errorf(("%d. WriteString(%q) wrote %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
                continue;
            };
            if (_n != ((_tc._out.length))) {
                _t.errorf(("%d. WriteString(%q) wrote correct string but reported %d bytes; want %d (%q)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_tc._out.length)), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function testPickAlgorithm(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testPickAlgorithm" + " skip function");
        return;
        for (_i => _tc in _algorithmTestCases) {
            var _got = (stdgo._internal.fmt.Fmt.sprintf(("%T" : stdgo.GoString), _tc._r.replacer())?.__copy__() : stdgo.GoString);
            if (_got != (_tc._want)) {
                _t.errorf(("%d. algorithm = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
            };
        };
    }
function testWriteStringError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _tc in _algorithmTestCases) {
            var __tmp__ = _tc._r.writeString(stdgo.Go.asInterface((new stdgo._internal.strings_test.Strings_test.T_errWriter() : stdgo._internal.strings_test.Strings_test.T_errWriter)), ("abc" : stdgo.GoString)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != ((0 : stdgo.GoInt)) || _err == null : Bool) || (_err.error() != ("unwritable" : stdgo.GoString)) : Bool)) {
                _t.errorf(("%d. WriteStringError = %d, %v, want 0, unwritable" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function testGenericTrieBuilding(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testGenericTrieBuilding" + " skip function");
        return;
        var _testCases = (new stdgo.Slice<StringTest>(4, 4, ...[(new StringTest(("abc;abdef;abdefgh;xx;xy;z" : stdgo.GoString), ("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t" : stdgo.GoString)) : StringTest), (new StringTest(("abracadabra;abracadabrakazam;abraham;abrasion" : stdgo.GoString), ("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t" : stdgo.GoString)) : StringTest), (new StringTest(("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y" : stdgo.GoString), ("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t" : stdgo.GoString)) : StringTest), (new StringTest(("foo;;foo;foo1" : stdgo.GoString), ("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t" : stdgo.GoString)) : StringTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : StringTest)])) : stdgo.Slice<StringTest>);
        for (__0 => _tc in _testCases) {
            var _keys = split(_tc._in?.__copy__(), (";" : stdgo.GoString));
            var _args = (new stdgo.Slice<stdgo.GoString>(((_keys.length) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_i => _key in _keys) {
                _args[(_i * (2 : stdgo.GoInt) : stdgo.GoInt)] = _key?.__copy__();
            };
            var _got = (newReplacer(...(_args : Array<stdgo.GoString>)).printTrie()?.__copy__() : stdgo.GoString);
            var _wantbuf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_tc._out.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_tc._out.length) : Bool), _i++, {
                    if (_tc._out[(_i : stdgo.GoInt)] != ((9 : stdgo.GoUInt8))) {
                        _wantbuf = (_wantbuf.__append__(_tc._out[(_i : stdgo.GoInt)]));
                    };
                });
            };
            var _want = ((_wantbuf : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("PrintTrie(%q)\ngot\n%swant\n%s" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function benchmarkGenericNoMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ((repeat(("A" : stdgo.GoString), (100 : stdgo.GoInt)) + repeat(("B" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _generic = newReplacer(("a" : stdgo.GoString), ("A" : stdgo.GoString), ("b" : stdgo.GoString), ("B" : stdgo.GoString), ("12" : stdgo.GoString), ("123" : stdgo.GoString));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _generic.replace(_str?.__copy__());
            });
        };
    }
function benchmarkGenericMatch1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ((repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt)) + repeat(("b" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _generic = newReplacer(("a" : stdgo.GoString), ("A" : stdgo.GoString), ("b" : stdgo.GoString), ("B" : stdgo.GoString), ("12" : stdgo.GoString), ("123" : stdgo.GoString));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _generic.replace(_str?.__copy__());
            });
        };
    }
function benchmarkGenericMatch2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = (repeat(("It&apos;s &lt;b&gt;HTML&lt;/b&gt;!" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _htmlUnescaper.replace(_str?.__copy__());
            });
        };
    }
function _benchmarkSingleString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void {
        var _r = newReplacer(_pattern?.__copy__(), ("[match]" : stdgo.GoString));
        _b.setBytes((_text.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _r.replace(_text?.__copy__());
            });
        };
    }
function benchmarkSingleMaxSkipping(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, repeat(("b" : stdgo.GoString), (25 : stdgo.GoInt))?.__copy__(), repeat(("a" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__());
    }
function benchmarkSingleLongSuffixFail(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, (("b" : stdgo.GoString) + repeat(("a" : stdgo.GoString), (500 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), repeat(("a" : stdgo.GoString), (1002 : stdgo.GoInt))?.__copy__());
    }
function benchmarkSingleMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, ("abcdef" : stdgo.GoString), repeat(("abcdefghijklmno" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__());
    }
function benchmarkByteByteNoMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ((repeat(("A" : stdgo.GoString), (100 : stdgo.GoInt)) + repeat(("B" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _capitalLetters.replace(_str?.__copy__());
            });
        };
    }
function benchmarkByteByteMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ((repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt)) + repeat(("b" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _capitalLetters.replace(_str?.__copy__());
            });
        };
    }
function benchmarkByteStringMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ((((("<" : stdgo.GoString) + repeat(("a" : stdgo.GoString), (99 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + repeat(("b" : stdgo.GoString), (99 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _htmlEscaper.replace(_str?.__copy__());
            });
        };
    }
function benchmarkHTMLEscapeNew(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ("I <3 to escape HTML & other text too." : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _htmlEscaper.replace(_str?.__copy__());
            });
        };
    }
function benchmarkHTMLEscapeOld(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ("I <3 to escape HTML & other text too." : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _oldHTMLEscape(_str?.__copy__());
            });
        };
    }
function benchmarkByteStringReplacerWriteString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = (repeat(("I <3 to escape HTML & other text too." : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _htmlEscaper.writeString(stdgo.Go.asInterface(_buf), _str?.__copy__());
                _buf.reset();
            });
        };
    }
function benchmarkByteReplacerWriteString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = (repeat(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _capitalLetters.writeString(stdgo.Go.asInterface(_buf), _str?.__copy__());
                _buf.reset();
            });
        };
    }
function benchmarkByteByteReplaces(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ((repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt)) + repeat(("b" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                replace(replace(_str?.__copy__(), ("a" : stdgo.GoString), ("A" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__(), ("b" : stdgo.GoString), ("B" : stdgo.GoString), (-1 : stdgo.GoInt));
            });
        };
    }
function benchmarkByteByteMap(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _str = ((repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt)) + repeat(("b" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _fn = (function(_r:stdgo.GoRune):stdgo.GoRune {
            {
                final __value__ = _r;
                if (__value__ == ((97 : stdgo.GoInt32))) {
                    return (65 : stdgo.GoInt32);
                } else if (__value__ == ((98 : stdgo.GoInt32))) {
                    return (66 : stdgo.GoInt32);
                };
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                map_(_fn, _str?.__copy__());
            });
        };
    }
function benchmarkMap(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _mapidentity = (function(_r:stdgo.GoRune):stdgo.GoRune {
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _b.run(("identity" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            for (__8 => _md in _mapdata) {
                _b.run(_md._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            map_(_mapidentity, _md._data?.__copy__());
                        });
                    };
                });
            };
        });
        var _mapchange = (function(_r:stdgo.GoRune):stdgo.GoRune {
            if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((_r + (65 : stdgo.GoInt32) : stdgo.GoInt32) - (97 : stdgo.GoInt32) : stdgo.GoInt32);
            };
            if ((((945 : stdgo.GoInt32) <= _r : Bool) && (_r <= (969 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((_r + (913 : stdgo.GoInt32) : stdgo.GoInt32) - (945 : stdgo.GoInt32) : stdgo.GoInt32);
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _b.run(("change" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            for (__16 => _md in _mapdata) {
                _b.run(_md._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            map_(_mapchange, _md._data?.__copy__());
                        });
                    };
                });
            };
        });
    }
function testFinderNext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<T__struct_8>(15, 15, ...[
({ _pat : stdgo.Go.str()?.__copy__(), _text : stdgo.Go.str()?.__copy__(), _index : (0 : stdgo.GoInt) } : T__struct_8),
({ _pat : stdgo.Go.str()?.__copy__(), _text : ("abc" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("abc" : stdgo.GoString), _text : stdgo.Go.str()?.__copy__(), _index : (-1 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("abc" : stdgo.GoString), _text : ("abc" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("d" : stdgo.GoString), _text : ("abcdefg" : stdgo.GoString), _index : (3 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("nan" : stdgo.GoString), _text : ("banana" : stdgo.GoString), _index : (2 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("pan" : stdgo.GoString), _text : ("anpanman" : stdgo.GoString), _index : (2 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("nnaaman" : stdgo.GoString), _text : ("anpanmanam" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("abcd" : stdgo.GoString), _text : ("abc" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("abcd" : stdgo.GoString), _text : ("bcd" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("bcd" : stdgo.GoString), _text : ("abcd" : stdgo.GoString), _index : (1 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("abc" : stdgo.GoString), _text : ("acca" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("aa" : stdgo.GoString), _text : ("aaa" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("baa" : stdgo.GoString), _text : ("aaaaa" : stdgo.GoString), _index : (-1 : stdgo.GoInt) } : T__struct_8),
({ _pat : ("at that" : stdgo.GoString), _text : ("which finally halts.  at that point" : stdgo.GoString), _index : (22 : stdgo.GoInt) } : T__struct_8)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _pat : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _index : (0 : stdgo.GoInt) } : T__struct_8)])) : stdgo.Slice<T__struct_8>);
        for (__0 => _tc in _testCases) {
            var _got = (stringFind(_tc._pat?.__copy__(), _tc._text?.__copy__()) : stdgo.GoInt);
            var _want = (_tc._index : stdgo.GoInt);
            if (_got != (_want)) {
                _t.errorf(("stringFind(%q, %q) got %d, want %d\n" : stdgo.GoString), stdgo.Go.toInterface(_tc._pat), stdgo.Go.toInterface(_tc._text), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testFinderCreation(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<T__struct_9>(4, 4, ...[({ _pattern : ("abc" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[97] = (2 : stdgo.GoInt);
            s[98] = (1 : stdgo.GoInt);
            s[99] = (3 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(5 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _pattern : ("mississi" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[105] = (3 : stdgo.GoInt);
            s[109] = (7 : stdgo.GoInt);
            s[115] = (1 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(15 : stdgo.GoInt), (14 : stdgo.GoInt), (13 : stdgo.GoInt), (7 : stdgo.GoInt), (11 : stdgo.GoInt), (10 : stdgo.GoInt), (7 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _pattern : ("abcxxxabc" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[97] = (2 : stdgo.GoInt);
            s[98] = (1 : stdgo.GoInt);
            s[99] = (6 : stdgo.GoInt);
            s[120] = (3 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(9, 9, ...[(14 : stdgo.GoInt), (13 : stdgo.GoInt), (12 : stdgo.GoInt), (11 : stdgo.GoInt), (10 : stdgo.GoInt), (9 : stdgo.GoInt), (11 : stdgo.GoInt), (10 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _pattern : ("abyxcdeyx" : stdgo.GoString), _bad : {
            var s:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) 0]);
            s[97] = (8 : stdgo.GoInt);
            s[98] = (7 : stdgo.GoInt);
            s[99] = (4 : stdgo.GoInt);
            s[100] = (3 : stdgo.GoInt);
            s[101] = (2 : stdgo.GoInt);
            s[121] = (1 : stdgo.GoInt);
            s[120] = (5 : stdgo.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.GoInt>(9, 9, ...[(17 : stdgo.GoInt), (16 : stdgo.GoInt), (15 : stdgo.GoInt), (14 : stdgo.GoInt), (13 : stdgo.GoInt), (12 : stdgo.GoInt), (7 : stdgo.GoInt), (10 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _bad : new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoInt)]), _suf : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_9)])) : stdgo.Slice<T__struct_9>);
        for (__0 => _tc in _testCases) {
            var __tmp__ = dumpTables(_tc._pattern?.__copy__()), _bad:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _good:stdgo.Slice<stdgo.GoInt> = __tmp__._1;
            for (_i => _got in _bad) {
                var _want = (_tc._bad[(_i : stdgo.GoInt)] : stdgo.GoInt);
                if (_want == ((0 : stdgo.GoInt))) {
                    _want = (_tc._pattern.length);
                };
                if (_got != (_want)) {
                    _t.errorf(("boyerMoore(%q) bad[\'%c\']: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_tc._suf))) {
                _t.errorf(("boyerMoore(%q) got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_tc._suf));
            };
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
function _runIndexTests(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:(_s:stdgo.GoString, _sep:stdgo.GoString) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<IndexTest>):Void {
        for (__0 => _test in _testCases) {
            var _actual = (_f(_test._s?.__copy__(), _test._sep?.__copy__()) : stdgo.GoInt);
            if (_actual != (_test._out)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._sep), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._out));
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
        _runIndexTests(_t, indexAny, ("IndexAny" : stdgo.GoString), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runIndexTests(_t, lastIndexAny, ("LastIndexAny" : stdgo.GoString), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _indexTests) {
            if ((_tt._sep.length) != ((1 : stdgo.GoInt))) {
                continue;
            };
            var _pos = (indexByte(_tt._s?.__copy__(), _tt._sep[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            if (_pos != (_tt._out)) {
                _t.errorf(("IndexByte(%q, %q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testLastIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>(6, 6, ...[(new stdgo._internal.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest), (new stdgo._internal.strings_test.Strings_test.IndexTest(("abcdef" : stdgo.GoString), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest), (new stdgo._internal.strings_test.Strings_test.IndexTest(("abcdefabcdef" : stdgo.GoString), ("a" : stdgo.GoString), (("abcdef" : stdgo.GoString).length)) : stdgo._internal.strings_test.Strings_test.IndexTest), (new stdgo._internal.strings_test.Strings_test.IndexTest(("abcdefabcdef" : stdgo.GoString), ("f" : stdgo.GoString), (("abcdefabcde" : stdgo.GoString).length)) : stdgo._internal.strings_test.Strings_test.IndexTest), (new stdgo._internal.strings_test.Strings_test.IndexTest(("zabcdefabcdef" : stdgo.GoString), ("z" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.strings_test.Strings_test.IndexTest), (new stdgo._internal.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("b" : stdgo.GoString), (("a☺" : stdgo.GoString).length)) : stdgo._internal.strings_test.Strings_test.IndexTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings_test.Strings_test.IndexTest)])) : stdgo.Slice<stdgo._internal.strings_test.Strings_test.IndexTest>);
        for (__0 => _test in _testCases) {
            var _actual = (lastIndexByte(_test._s?.__copy__(), _test._sep[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            if (_actual != (_test._out)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._sep[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._out));
            };
        };
    }
function _simpleIndex(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt {
        var _n = (_sep.length : stdgo.GoInt);
        {
            var _i = (_n : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_s.length) : Bool), _i++, {
                if ((_s.__slice__((_i - _n : stdgo.GoInt), _i) : stdgo.GoString) == (_sep)) {
                    return (_i - _n : stdgo.GoInt);
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
function testIndexRandom(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {
            var _times = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_times < (10 : stdgo.GoInt) : Bool), _times++, {
                {
                    var _strLen = ((5 : stdgo.GoInt) + stdgo._internal.math.rand.Rand.intn((5 : stdgo.GoInt)) : stdgo.GoInt);
                    stdgo.Go.cfor((_strLen < (140 : stdgo.GoInt) : Bool), _strLen = (_strLen + ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                        var _s1 = (new stdgo.Slice<stdgo.GoUInt8>((_strLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        for (_i => _ in _s1) {
                            _s1[(_i : stdgo.GoInt)] = ("abcdefghijklmnopqrstuvwxyz0123456789" : stdgo.GoString)[(stdgo._internal.math.rand.Rand.intn((("abcdefghijklmnopqrstuvwxyz0123456789" : stdgo.GoString).length)) : stdgo.GoInt)];
                        };
                        var _s = ((_s1 : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                                var _begin = (stdgo._internal.math.rand.Rand.intn(((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                                var _end = (_begin + stdgo._internal.math.rand.Rand.intn((((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) - _begin : stdgo.GoInt)) : stdgo.GoInt);
                                var _sep = ((_s.__slice__(_begin, _end) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                if ((_i % (4 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                    var _pos = (stdgo._internal.math.rand.Rand.intn(((_sep.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                                    _sep = (((_sep.__slice__(0, _pos) : stdgo.GoString) + ("A" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_sep.__slice__(_pos) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                };
                                var _want = (_simpleIndex(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
                                var _res = (index(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
                                if (_res != (_want)) {
                                    _t.errorf(("Index(%s,%s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_res), stdgo.Go.toInterface(_want));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testIndexRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_10>(19, 19, ...[
({ _in : stdgo.Go.str()?.__copy__(), _rune : (97 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str()?.__copy__(), _rune : (9786 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_10),
({ _in : ("foo" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_10),
({ _in : ("foo" : stdgo.GoString), _rune : (111 : stdgo.GoInt32), _want : (1 : stdgo.GoInt) } : T__struct_10),
({ _in : ("foo☺bar" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : T__struct_10),
({ _in : ("foo☺☻☹bar" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : T__struct_10),
({ _in : ("a A x" : stdgo.GoString), _rune : (65 : stdgo.GoInt32), _want : (2 : stdgo.GoInt) } : T__struct_10),
({ _in : ("some_text=some_value" : stdgo.GoString), _rune : (61 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : T__struct_10),
({ _in : ("☺a" : stdgo.GoString), _rune : (97 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : T__struct_10),
({ _in : ("a☻☺b" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (4 : stdgo.GoInt) } : T__struct_10),
({ _in : ("�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str(255)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : T__struct_10),
({ _in : ("☻x�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("☻x", 226, 152)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("☻x", 226, 152, "�")?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("☻x", 226, 152, "x")?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (-1 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (55296 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (1114112 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : T__struct_10)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _rune : (0 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : T__struct_10)])) : stdgo.Slice<T__struct_10>);
        for (__0 => _tt in _tests) {
            {
                var _got = (indexRune(_tt._in?.__copy__(), _tt._rune) : stdgo.GoInt);
                if (_got != (_tt._want)) {
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._rune), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack = ("test世界" : stdgo.GoString);
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            {
                var _i = (indexRune(_haystack?.__copy__(), (115 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((2 : stdgo.GoInt))) {
                    _t.fatalf(("\'s\' at %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
            {
                var _i = (indexRune(_haystack?.__copy__(), (19990 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((4 : stdgo.GoInt))) {
                    _t.fatalf(("\'世\' at %d; want 4" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
        }) : stdgo.GoFloat64);
        if (((_allocs != (0 : stdgo.GoFloat64)) && (stdgo._internal.testing.Testing.coverMode() == stdgo.Go.str()) : Bool)) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function benchmarkIndexRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _got = (indexRune(("some_text=some☺value" : stdgo.GoString), (9786 : stdgo.GoInt32)) : stdgo.GoInt);
            if (_got != ((14 : stdgo.GoInt))) {
                _b.fatalf(("wrong index: expected 14, got=%d" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                indexRune(("some_text=some☺value" : stdgo.GoString), (9786 : stdgo.GoInt32));
            });
        };
    }
function benchmarkIndexRuneLongString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _got = (indexRune(_benchmarkLongString?.__copy__(), (9786 : stdgo.GoInt32)) : stdgo.GoInt);
            if (_got != ((114 : stdgo.GoInt))) {
                _b.fatalf(("wrong index: expected 114, got=%d" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                indexRune(_benchmarkLongString?.__copy__(), (9786 : stdgo.GoInt32));
            });
        };
    }
function benchmarkIndexRuneFastPath(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _got = (indexRune(("some_text=some☺value" : stdgo.GoString), (118 : stdgo.GoInt32)) : stdgo.GoInt);
            if (_got != ((17 : stdgo.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                indexRune(("some_text=some☺value" : stdgo.GoString), (118 : stdgo.GoInt32));
            });
        };
    }
function benchmarkIndex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _got = (index(("some_text=some☺value" : stdgo.GoString), ("v" : stdgo.GoString)) : stdgo.GoInt);
            if (_got != ((17 : stdgo.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                index(("some_text=some☺value" : stdgo.GoString), ("v" : stdgo.GoString));
            });
        };
    }
function benchmarkLastIndex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _got = (index(("some_text=some☺value" : stdgo.GoString), ("v" : stdgo.GoString)) : stdgo.GoInt);
            if (_got != ((17 : stdgo.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                lastIndex(("some_text=some☺value" : stdgo.GoString), ("v" : stdgo.GoString));
            });
        };
    }
function benchmarkIndexByte(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _got = (indexByte(("some_text=some☺value" : stdgo.GoString), (118 : stdgo.GoUInt8)) : stdgo.GoInt);
            if (_got != ((17 : stdgo.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                indexByte(("some_text=some☺value" : stdgo.GoString), (118 : stdgo.GoUInt8));
            });
        };
    }
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _splittests) {
            var _a = splitN(_tt._s?.__copy__(), _tt._sep?.__copy__(), _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if (_tt._n == ((0 : stdgo.GoInt))) {
                continue;
            };
            var _s = (join(_a, _tt._sep?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if ((_tt._n < (0 : stdgo.GoInt) : Bool)) {
                var _b = split(_tt._s?.__copy__(), _tt._sep?.__copy__());
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("Split disagrees with SplitN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _splitaftertests) {
            var _a = splitAfterN(_tt._s?.__copy__(), _tt._sep?.__copy__(), _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            var _s = (join(_a, stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if ((_tt._n < (0 : stdgo.GoInt) : Bool)) {
                var _b = splitAfter(_tt._s?.__copy__(), _tt._sep?.__copy__());
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("SplitAfter disagrees with SplitAfterN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _fieldstests) {
            var _a = fields(_tt._s?.__copy__());
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
    }
function testFieldsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _fieldstests) {
            var _a = fieldsFunc(_tt._s?.__copy__(), stdgo._internal.unicode.Unicode.isSpace);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred = (function(_c:stdgo.GoRune):Bool {
            return _c == ((88 : stdgo.GoInt32));
        } : stdgo.GoInt32 -> Bool);
        for (__9 => _tt in fieldsFuncTests) {
            var _a = fieldsFunc(_tt._s?.__copy__(), _pred);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
            };
        };
    }
function _runStringTests(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:stdgo.GoString -> stdgo.GoString, _funcName:stdgo.GoString, _testCases:stdgo.Slice<StringTest>):Void {
        for (__0 => _tc in _testCases) {
            var _actual = (_f(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_ch:stdgo.GoRune):stdgo.GoString {
        var _r = (new stdgo.Slice<stdgo.GoInt32>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _r) {
            _r[(_i : stdgo.GoInt)] = _ch;
        };
        return (_r : stdgo.GoString)?.__copy__();
    }
function _rot13(_r:stdgo.GoRune):stdgo.GoRune {
        var _step = (((13 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoInt32);
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + _step : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (97 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + _step : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (65 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return _r;
    }
function testMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testMap" + " skip function");
        return;
        var _a = (_tenRunes((97 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        var _maxRune = (function(_0:stdgo.GoRune):stdgo.GoRune {
            return (1114111 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _m = (map_(_maxRune, _a?.__copy__())?.__copy__() : stdgo.GoString);
        var _expect = (_tenRunes((1114111 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _minRune = (function(_0:stdgo.GoRune):stdgo.GoRune {
            return (97 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = map_(_minRune, _tenRunes((1114111 : stdgo.GoInt32))?.__copy__())?.__copy__();
        _expect = _a?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map_(_rot13, ("a to zed" : stdgo.GoString))?.__copy__();
        _expect = ("n gb mrq" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map_(_rot13, map_(_rot13, ("a to zed" : stdgo.GoString))?.__copy__())?.__copy__();
        _expect = ("a to zed" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _dropNotLatin = (function(_r:stdgo.GoRune):stdgo.GoRune {
            if (stdgo._internal.unicode.Unicode.is_(stdgo._internal.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (-1 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = map_(_dropNotLatin, ("Hello, 세계" : stdgo.GoString))?.__copy__();
        _expect = ("Hello" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _identity = (function(_r:stdgo.GoRune):stdgo.GoRune {
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _orig = ("Input string that we expect not to be copied." : stdgo.GoString);
        _m = map_(_identity, _orig?.__copy__())?.__copy__();
        if (stdgo._internal.unsafe.Unsafe.stringData(_orig?.__copy__()) != (stdgo._internal.unsafe.Unsafe.stringData(_m?.__copy__()))) {
            _t.error(stdgo.Go.toInterface(("unexpected copy during identity map" : stdgo.GoString)));
        };
        var _replaceNotLatin = (function(_r:stdgo.GoRune):stdgo.GoRune {
            if (stdgo._internal.unicode.Unicode.is_(stdgo._internal.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (65533 : stdgo.GoInt32);
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = map_(_replaceNotLatin, stdgo.Go.str("Hello", 173, "World")?.__copy__())?.__copy__();
        _expect = ("Hello�World" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("replace invalid sequence: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _encode = (function(_r:stdgo.GoRune):stdgo.GoRune {
            {
                final __value__ = _r;
                if (__value__ == ((128 : stdgo.GoInt32))) {
                    return (1114111 : stdgo.GoInt32);
                } else if (__value__ == ((1114111 : stdgo.GoInt32))) {
                    return (128 : stdgo.GoInt32);
                };
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        var _s = ("\u0080\u{0010ffff}" : stdgo.GoString);
        var _r = ("\u{0010ffff}\u0080" : stdgo.GoString);
        _m = map_(_encode, _s?.__copy__())?.__copy__();
        if (_m != (_r)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_m));
        };
        _m = map_(_encode, _r?.__copy__())?.__copy__();
        if (_m != (_s)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_m));
        };
        var _trimSpaces = (function(_r:stdgo.GoRune):stdgo.GoRune {
            if (stdgo._internal.unicode.Unicode.isSpace(_r)) {
                return (-1 : stdgo.GoInt32);
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _m = map_(_trimSpaces, ("   abc    123   " : stdgo.GoString))?.__copy__();
        _expect = ("abc123" : stdgo.GoString);
        if (_m != (_expect)) {
            _t.errorf(("trimSpaces: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runStringTests(_t, toUpper, ("ToUpper" : stdgo.GoString), _upperTests);
    }
function testToLower(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runStringTests(_t, toLower, ("ToLower" : stdgo.GoString), _lowerTests);
    }
function testToValidUTF8(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _toValidUTF8Tests) {
            var _got = (toValidUTF8(_tc._in?.__copy__(), _tc._repl?.__copy__())?.__copy__() : stdgo.GoString);
            if (_got != (_tc._out)) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._repl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function benchmarkToUpper(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _tc in _upperTests) {
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _actual = (toUpper(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
                        if (_actual != (_tc._out)) {
                            _b.errorf(("ToUpper(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _tc in _lowerTests) {
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _actual = (toLower(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
                        if (_actual != (_tc._out)) {
                            _b.errorf(("ToLower(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkMapNoChanges(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _identity = (function(_r:stdgo.GoRune):stdgo.GoRune {
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                map_(_identity, ("Some string that won\'t be modified." : stdgo.GoString));
            });
        };
    }
function testSpecialCase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _lower = ("abcçdefgğhıijklmnoöprsştuüvyz" : stdgo.GoString);
        var _upper = ("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : stdgo.GoString);
        var _u = (toUpperSpecial(stdgo._internal.unicode.Unicode.turkishCase, _upper?.__copy__())?.__copy__() : stdgo.GoString);
        if (_u != (_upper)) {
            _t.errorf(("Upper(upper) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_upper));
        };
        _u = toUpperSpecial(stdgo._internal.unicode.Unicode.turkishCase, _lower?.__copy__())?.__copy__();
        if (_u != (_upper)) {
            _t.errorf(("Upper(lower) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_upper));
        };
        var _l = (toLowerSpecial(stdgo._internal.unicode.Unicode.turkishCase, _lower?.__copy__())?.__copy__() : stdgo.GoString);
        if (_l != (_lower)) {
            _t.errorf(("Lower(lower) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_lower));
        };
        _l = toLowerSpecial(stdgo._internal.unicode.Unicode.turkishCase, _upper?.__copy__())?.__copy__();
        if (_l != (_lower)) {
            _t.errorf(("Lower(upper) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_lower));
        };
    }
function testTrimSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _runStringTests(_t, trimSpace, ("TrimSpace" : stdgo.GoString), _trimSpaceTests);
    }
function testTrim(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _trimTests) {
            var _name = (_tc._f?.__copy__() : stdgo.GoString);
            var _f:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString = null;
            {
                final __value__ = _name;
                if (__value__ == (("Trim" : stdgo.GoString))) {
                    _f = trim;
                } else if (__value__ == (("TrimLeft" : stdgo.GoString))) {
                    _f = trimLeft;
                } else if (__value__ == (("TrimRight" : stdgo.GoString))) {
                    _f = trimRight;
                } else if (__value__ == (("TrimPrefix" : stdgo.GoString))) {
                    _f = trimPrefix;
                } else if (__value__ == (("TrimSuffix" : stdgo.GoString))) {
                    _f = trimSuffix;
                } else {
                    _t.errorf(("Undefined trim function %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                };
            };
            var _actual = (_f(_tc._in?.__copy__(), _tc._arg?.__copy__())?.__copy__() : stdgo.GoString);
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function benchmarkTrim(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__16 => _tc in _trimTests) {
                    var _name = (_tc._f?.__copy__() : stdgo.GoString);
                    var _f:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString = null;
                    {
                        final __value__ = _name;
                        if (__value__ == (("Trim" : stdgo.GoString))) {
                            _f = trim;
                        } else if (__value__ == (("TrimLeft" : stdgo.GoString))) {
                            _f = trimLeft;
                        } else if (__value__ == (("TrimRight" : stdgo.GoString))) {
                            _f = trimRight;
                        } else if (__value__ == (("TrimPrefix" : stdgo.GoString))) {
                            _f = trimPrefix;
                        } else if (__value__ == (("TrimSuffix" : stdgo.GoString))) {
                            _f = trimSuffix;
                        } else {
                            _b.errorf(("Undefined trim function %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                        };
                    };
                    var _actual = (_f(_tc._in?.__copy__(), _tc._arg?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_actual != (_tc._out)) {
                        _b.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                    };
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_13>(3, 3, ...[({ _name : ("Valid" : stdgo.GoString), _input : ("typical" : stdgo.GoString) } : T__struct_13), ({ _name : ("InvalidASCII" : stdgo.GoString), _input : stdgo.Go.str("foo", 255, "bar")?.__copy__() } : T__struct_13), ({ _name : ("InvalidNonASCII" : stdgo.GoString), _input : stdgo.Go.str("日本語", 255, "日本語")?.__copy__() } : T__struct_13)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : ("" : stdgo.GoString) } : T__struct_13)])) : stdgo.Slice<T__struct_13>);
        var _replacement = ("�" : stdgo.GoString);
        _b.resetTimer();
        for (__8 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        toValidUTF8(_test._input?.__copy__(), _replacement?.__copy__());
                    });
                };
            });
        };
    }
function _not(_p:T_predicate):T_predicate {
        return (new stdgo._internal.strings_test.Strings_test.T_predicate(function(_r:stdgo.GoRune):Bool {
            return !_p._f(_r);
        }, (("not " : stdgo.GoString) + _p._name?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.strings_test.Strings_test.T_predicate);
    }
function testTrimFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _trimFuncTests) {
            var _trimmers = (new stdgo.Slice<T__struct_15>(3, 3, ...[({ _name : ("TrimFunc" : stdgo.GoString), _trim : trimFunc, _out : _tc._trimOut?.__copy__() } : T__struct_15), ({ _name : ("TrimLeftFunc" : stdgo.GoString), _trim : trimLeftFunc, _out : _tc._leftOut?.__copy__() } : T__struct_15), ({ _name : ("TrimRightFunc" : stdgo.GoString), _trim : trimRightFunc, _out : _tc._rightOut?.__copy__() } : T__struct_15)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _trim : null, _out : ("" : stdgo.GoString) } : T__struct_15)])) : stdgo.Slice<T__struct_15>);
            for (__1 => _trimmer in _trimmers) {
                var _actual = (_trimmer._trim(_tc._in?.__copy__(), _tc._f._f)?.__copy__() : stdgo.GoString);
                if (_actual != (_trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in _indexFuncTests) {
            var _first = (indexFunc(_tc._in?.__copy__(), _tc._f._f) : stdgo.GoInt);
            if (_first != (_tc._first)) {
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_first), stdgo.Go.toInterface(_tc._first));
            };
            var _last = (lastIndexFunc(_tc._in?.__copy__(), _tc._f._f) : stdgo.GoInt);
            if (_last != (_tc._last)) {
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_last), stdgo.Go.toInterface(_tc._last));
            };
        };
    }
function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Bool {
        if (_s1 == (_s2)) {
            return true;
        };
        var _e1 = split(_s1?.__copy__(), stdgo.Go.str()?.__copy__());
        var _e2 = split(_s2?.__copy__(), stdgo.Go.str()?.__copy__());
        for (_i => _c1 in _e1) {
            if ((_i >= (_e2.length) : Bool)) {
                break;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_c1?.__copy__()), _r1:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_e2[(_i : stdgo.GoInt)]?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            if (_r1 != (_r2)) {
                _t.errorf(("%s diff at %d: U+%04X U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2));
            };
        };
        return false;
    }
function testCaseConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _numRunes = ((1114112 : stdgo.GoInt) : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _numRunes = (1000 : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoInt32>((_numRunes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = (_i : stdgo.GoRune);
        };
        var _s = ((_a : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _upper = (toUpper(_s?.__copy__())?.__copy__() : stdgo.GoString);
        var _lower = (toLower(_s?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _n = (stdgo._internal.unicode.utf8.Utf8.runeCountInString(_upper?.__copy__()) : stdgo.GoInt);
            if (_n != (_numRunes)) {
                _t.error(stdgo.Go.toInterface(("rune count wrong in upper:" : stdgo.GoString)), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n = (stdgo._internal.unicode.utf8.Utf8.runeCountInString(_lower?.__copy__()) : stdgo.GoInt);
            if (_n != (_numRunes)) {
                _t.error(stdgo.Go.toInterface(("rune count wrong in lower:" : stdgo.GoString)), stdgo.Go.toInterface(_n));
            };
        };
        if (!_equal(("ToUpper(upper)" : stdgo.GoString), toUpper(_upper?.__copy__())?.__copy__(), _upper?.__copy__(), _t)) {
            _t.error(stdgo.Go.toInterface(("ToUpper(upper) consistency fail" : stdgo.GoString)));
        };
        if (!_equal(("ToLower(lower)" : stdgo.GoString), toLower(_lower?.__copy__())?.__copy__(), _lower?.__copy__(), _t)) {
            _t.error(stdgo.Go.toInterface(("ToLower(lower) consistency fail" : stdgo.GoString)));
        };
    }
function testRepeat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in repeatTests) {
            var _a = (repeat(_tt._in?.__copy__(), _tt._count)?.__copy__() : stdgo.GoString);
            if (!_equal(("Repeat(s)" : stdgo.GoString), _a?.__copy__(), _tt._out?.__copy__(), _t)) {
                _t.errorf(("Repeat(%v, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._count), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
        };
    }
function _repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.Error {
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
            repeat(_s?.__copy__(), _count);
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
            var s:stdgo.GoArray<T__struct_18> = new stdgo.GoArray<T__struct_18>(7, 7, ...[for (i in 0 ... 7) ({ _s : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : ("" : stdgo.GoString) } : T__struct_18)]);
            s[0] = ({ _s : ("--" : stdgo.GoString), _count : (-2147483647 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_18);
            s[1] = ({ _s : stdgo.Go.str()?.__copy__(), _count : ((2147483647u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_18);
            s[2] = ({ _s : ("-" : stdgo.GoString), _count : (10 : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_18);
            s[3] = ({ _s : ("gopher" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_18);
            s[4] = ({ _s : ("-" : stdgo.GoString), _count : (-1 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_18);
            s[5] = ({ _s : ("--" : stdgo.GoString), _count : (-102 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : T__struct_18);
            s[6] = ({ _s : ((new stdgo.Slice<stdgo.GoUInt8>((255 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _count : ((16843010u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : ("overflow" : stdgo.GoString) } : T__struct_18);
            s;
        };
        for (_i => _tt in _tests) {
            var _err = (_repeat(_tt._s?.__copy__(), _tt._count) : stdgo.Error);
            if (_tt._errStr == (stdgo.Go.str())) {
                if (_err != null) {
                    _t.errorf(("#%d panicked %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if (((_err == null) || !contains(_err.error()?.__copy__(), _tt._errStr?.__copy__()) : Bool)) {
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
            var _a = (_tt._in : stdgo.Slice<stdgo.GoRune>);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(("[]rune(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s = ((_a : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._in)) {
                    _t.errorf(("string([]rune(%q)) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._in));
                };
            };
        };
    }
function testReadByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testStrings = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), _abcd?.__copy__(), _faces?.__copy__(), _commas?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _s in _testStrings) {
            var _reader = newReader(_s?.__copy__());
            {
                var _e = (_reader.unreadByte() : stdgo.Error);
                if (_e == null) {
                    _t.errorf(("Unreading %q at beginning: expected error" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            var _res:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            while (true) {
                var __tmp__ = _reader.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                _res.writeByte(_b);
                _e = _reader.unreadByte();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readByte(), _b1:stdgo.GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                if (_b1 != (_b)) {
                    _t.errorf(("Reading %q after unreading: want byte %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_b1));
                    break;
                };
            };
            if ((_res.string() : stdgo.GoString) != (_s)) {
                _t.errorf(("Reader(%q).ReadByte() produced %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_res.string() : stdgo.GoString)));
            };
        };
    }
function testReadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testStrings = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[stdgo.Go.str()?.__copy__(), _abcd?.__copy__(), _faces?.__copy__(), _commas?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _s in _testStrings) {
            var _reader = newReader(_s?.__copy__());
            {
                var _e = (_reader.unreadRune() : stdgo.Error);
                if (_e == null) {
                    _t.errorf(("Unreading %q at beginning: expected error" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            var _res = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            while (true) {
                var __tmp__ = _reader.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _z:stdgo.GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                _res = (_res + ((_r : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _e = _reader.unreadRune();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readRune(), _r1:stdgo.GoInt32 = __tmp__._0, _z1:stdgo.GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                if (_r1 != (_r)) {
                    _t.errorf(("Reading %q after unreading: want rune %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r1));
                    break;
                };
                if (_z1 != (_z)) {
                    _t.errorf(("Reading %q after unreading: want size %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z1));
                    break;
                };
            };
            if (_res != (_s)) {
                _t.errorf(("Reader(%q).ReadRune() produced %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_res));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader(("0123456789" : stdgo.GoString));
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
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in replaceTests) {
            {
                var _s = (replace(_tt._in?.__copy__(), _tt._old?.__copy__(), _tt._new?.__copy__(), _tt._n)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
            if (_tt._n == ((-1 : stdgo.GoInt))) {
                var _s = (replaceAll(_tt._in?.__copy__(), _tt._old?.__copy__(), _tt._new?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testTitle(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in titleTests) {
            {
                var _s = (title(_tt._in?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Title(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ct in containsTests) {
            if (contains(_ct._str?.__copy__(), _ct._substr?.__copy__()) != (_ct._expected)) {
                _t.errorf(("Contains(%s, %s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsAny(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ct in containsAnyTests) {
            if (containsAny(_ct._str?.__copy__(), _ct._substr?.__copy__()) != (_ct._expected)) {
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsRune(_ct._str?.__copy__(), _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsFunc(_ct._str?.__copy__(), function(_r:stdgo.GoRune):Bool {
                return _ct._r == (_r);
            }) != (_ct._expected)) {
                _t.errorf(("ContainsFunc(%q, func(%q)) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testEqualFold(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in equalFoldTests) {
            {
                var _out = (equalFold(_tt._s?.__copy__(), _tt._t?.__copy__()) : Bool);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = (equalFold(_tt._t?.__copy__(), _tt._s?.__copy__()) : Bool);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function benchmarkEqualFold(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("Tests" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    for (__16 => _tt in equalFoldTests) {
                        {
                            var _out = (equalFold(_tt._s?.__copy__(), _tt._t?.__copy__()) : Bool);
                            if (_out != (_tt._out)) {
                                _b.fatal(stdgo.Go.toInterface(("wrong result" : stdgo.GoString)));
                            };
                        };
                    };
                });
            };
        });
        {};
        {};
        _b.run(("ASCII" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    equalFold(("abcdefghijKz" : stdgo.GoString), ("abcDefGhijKz" : stdgo.GoString));
                });
            };
        });
        _b.run(("UnicodePrefix" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    equalFold(("αβδabcdefghijKz" : stdgo.GoString), ("ΑΒΔabcDefGhijKz" : stdgo.GoString));
                });
            };
        });
        _b.run(("UnicodeSuffix" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    equalFold(("abcdefghijKzαβδ" : stdgo.GoString), ("abcDefGhijKzΑΒΔ" : stdgo.GoString));
                });
            };
        });
    }
function testCount(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in countTests) {
            {
                var _num = (count(_tt._s?.__copy__(), _tt._sep?.__copy__()) : stdgo.GoInt);
                if (_num != (_tt._num)) {
                    _t.errorf(("Count(%q, %q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_num), stdgo.Go.toInterface(_tt._num));
                };
            };
        };
    }
function testCut(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _cutTests) {
            {
                var __tmp__ = cut(_tt._s?.__copy__(), _tt._sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
                if (((_before != (_tt._before) || _after != (_tt._after) : Bool) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _cutPrefixTests) {
            {
                var __tmp__ = cutPrefix(_tt._s?.__copy__(), _tt._sep?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_after != _tt._after) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutSuffix(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _cutSuffixTests) {
            {
                var __tmp__ = cutSuffix(_tt._s?.__copy__(), _tt._sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (((_before != _tt._before) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("CutSuffix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function _makeBenchInputHard():stdgo.GoString return "";
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _sep:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                index(_benchInputHard?.__copy__(), _sep?.__copy__());
            });
        };
    }
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _sep:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                lastIndex(_benchInputHard?.__copy__(), _sep?.__copy__());
            });
        };
    }
function _benchmarkCountHard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _sep:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                count(_benchInputHard?.__copy__(), _sep?.__copy__());
            });
        };
    }
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<>" : stdgo.GoString));
    }
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("</pre>" : stdgo.GoString));
    }
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<b>hello world</b>" : stdgo.GoString));
    }
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<pre><b>hello</b><strong>world</strong></pre>" : stdgo.GoString));
    }
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("<>" : stdgo.GoString));
    }
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("</pre>" : stdgo.GoString));
    }
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("<b>hello world</b>" : stdgo.GoString));
    }
function benchmarkCountHard1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("<>" : stdgo.GoString));
    }
function benchmarkCountHard2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("</pre>" : stdgo.GoString));
    }
function benchmarkCountHard3(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("<b>hello world</b>" : stdgo.GoString));
    }
function benchmarkIndexTorture(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                index(_benchInputTorture?.__copy__(), _benchNeedleTorture?.__copy__());
            });
        };
    }
function benchmarkCountTorture(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                count(_benchInputTorture?.__copy__(), _benchNeedleTorture?.__copy__());
            });
        };
    }
function benchmarkCountTortureOverlapping(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var a = (repeat(("ABC" : stdgo.GoString), (1048576 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var b = (repeat(("ABC" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                count(a?.__copy__(), b?.__copy__());
            });
        };
    }
function benchmarkCountByte(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _indexSizes = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (32 : stdgo.GoInt), (4096 : stdgo.GoInt), (4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _benchStr = (repeat(("some_text=some☺value" : stdgo.GoString), ((((_indexSizes[((_indexSizes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + (("some_text=some☺value" : stdgo.GoString).length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (("some_text=some☺value" : stdgo.GoString).length) : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _benchFunc = function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _benchStr:stdgo.GoString):Void {
            _b.setBytes((_benchStr.length : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    count(_benchStr?.__copy__(), ("=" : stdgo.GoString));
                });
            };
        };
        for (__0 => _size in _indexSizes) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _benchFunc(_b, (_benchStr.__slice__(0, _size) : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkFields(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _sd in _stringdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _j = (16 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (1048576 : stdgo.GoInt) : Bool), _j = (_j << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = ((_sd._data.__slice__(0, _j) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    fields(_data?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _sd in _stringdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _j = (16 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (1048576 : stdgo.GoInt) : Bool), _j = (_j << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = ((_sd._data.__slice__(0, _j) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    fieldsFunc(_data?.__copy__(), stdgo._internal.unicode.Unicode.isSpace);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                split(_benchInputHard?.__copy__(), stdgo.Go.str()?.__copy__());
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                split(_benchInputHard?.__copy__(), ("/" : stdgo.GoString));
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                split(_benchInputHard?.__copy__(), ("hello" : stdgo.GoString));
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                splitN(_benchInputHard?.__copy__(), ("/" : stdgo.GoString), (10 : stdgo.GoInt));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                splitN(_benchInputHard?.__copy__(), ("hello" : stdgo.GoString), (10 : stdgo.GoInt));
            });
        };
    }
function benchmarkRepeat(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = ("0123456789" : stdgo.GoString);
        for (__0 => _n in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(5 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__1 => _c in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                _b.run(stdgo._internal.fmt.Fmt.sprintf(("%dx%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_c))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            repeat((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), _c);
                        });
                    };
                });
            };
        };
    }
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = (repeat(("@" : stdgo.GoString), (8192 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        {
            var _j = (8 : stdgo.GoInt);
            stdgo.Go.cfor((_j <= (30 : stdgo.GoInt) : Bool), _j++, {
                for (__0 => _k in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (16 : stdgo.GoInt), (4097 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                    var _s = ((_s.__slice__(0, _k) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    var _n = ((((1 : stdgo.GoInt) << _j : stdgo.GoInt)) / _k : stdgo.GoInt);
                    if (_n == ((0 : stdgo.GoInt))) {
                        continue;
                    };
                    _b.run(stdgo._internal.fmt.Fmt.sprintf(("%d/%d" : stdgo.GoString), stdgo.Go.toInterface(((1 : stdgo.GoInt) << _j : stdgo.GoInt)), stdgo.Go.toInterface(_k))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                repeat(_s?.__copy__(), _n);
                            });
                        };
                        _b.setBytes(((_n * (_s.length) : stdgo.GoInt) : stdgo.GoInt64));
                    });
                };
            });
        };
    }
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (repeat(("#" : stdgo.GoString), (2048 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
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
                                    indexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (repeat(("#" : stdgo.GoString), (2048 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
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
                                    indexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (repeat(("#" : stdgo.GoString), (2048 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
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
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (repeat(("#" : stdgo.GoString), (2048 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
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
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
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
                            var _x = (repeat((_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__(), _k)?.__copy__() : stdgo.GoString);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    trim((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimByte(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = ("  the quick brown fox   " : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                trim(_x?.__copy__(), (" " : stdgo.GoString));
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _key = ("aa" : stdgo.GoString);
        for (__0 => _skip in (new stdgo.GoArray<stdgo.GoInt>(6, 6, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("IndexPeriodic%d" : stdgo.GoString), stdgo.Go.toInterface(_skip))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _s = (repeat((("a" : stdgo.GoString) + repeat((" " : stdgo.GoString), (_skip - (1 : stdgo.GoInt) : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), ((65536 : stdgo.GoInt) / _skip : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        index(_s?.__copy__(), _key?.__copy__());
                    });
                };
            });
        };
    }
function benchmarkJoin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _vals = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("red" : stdgo.GoString), ("yellow" : stdgo.GoString), ("pink" : stdgo.GoString), ("green" : stdgo.GoString), ("purple" : stdgo.GoString), ("orange" : stdgo.GoString), ("blue" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _l = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_l <= (_vals.length) : Bool), _l++, {
                _b.run(stdgo._internal.strconv.Strconv.itoa(_l)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    _b.reportAllocs();
                    var _vals = (_vals.__slice__(0, _l) : stdgo.Slice<stdgo.GoString>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            join(_vals, (" and " : stdgo.GoString));
                        });
                    };
                });
            });
        };
    }
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_13>(4, 4, ...[({ _name : ("NoTrim" : stdgo.GoString), _input : ("typical" : stdgo.GoString) } : T__struct_13), ({ _name : ("ASCII" : stdgo.GoString), _input : ("  foo bar  " : stdgo.GoString) } : T__struct_13), ({ _name : ("SomeNonASCII" : stdgo.GoString), _input : ("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : stdgo.GoString) } : T__struct_13), ({ _name : ("JustNonASCII" : stdgo.GoString), _input : ("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : stdgo.GoString) } : T__struct_13)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : ("" : stdgo.GoString) } : T__struct_13)])) : stdgo.Slice<T__struct_13>);
        for (__0 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        trimSpace(_test._input?.__copy__());
                    });
                };
            });
        };
    }
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _stringSink = replaceAll(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString))?.__copy__();
            });
        };
    }
class T_errWriter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings_test.Strings_test.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _:T_errWriter, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_errWriter = _?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt.errorf(("unwritable" : stdgo.GoString)) };
    }
}
