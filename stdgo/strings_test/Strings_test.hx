package stdgo.strings_test;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _someBytes : Slice<GoUInt8> = ((((((("some bytes sdljlk jsklj3lkjlk djlkjw" : GoString))) : GoString)) : Slice<GoByte>));
var _compareTests : Slice<T__struct_2> = ((new Slice<T__struct_2>(
(({ _a : ((((("" : GoString))) : GoString)), _b : ((((("" : GoString))) : GoString)), _i : ((0 : GoInt)) } : T__struct_2)),
(({ _a : ((((("a" : GoString))) : GoString)), _b : ((((("" : GoString))) : GoString)), _i : ((1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("" : GoString))) : GoString)), _b : ((((("a" : GoString))) : GoString)), _i : ((-1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("abc" : GoString))) : GoString)), _b : ((((("abc" : GoString))) : GoString)), _i : ((0 : GoInt)) } : T__struct_2)),
(({ _a : ((((("ab" : GoString))) : GoString)), _b : ((((("abc" : GoString))) : GoString)), _i : ((-1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("abc" : GoString))) : GoString)), _b : ((((("ab" : GoString))) : GoString)), _i : ((1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("x" : GoString))) : GoString)), _b : ((((("ab" : GoString))) : GoString)), _i : ((1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("ab" : GoString))) : GoString)), _b : ((((("x" : GoString))) : GoString)), _i : ((-1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("x" : GoString))) : GoString)), _b : ((((("a" : GoString))) : GoString)), _i : ((1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("b" : GoString))) : GoString)), _b : ((((("x" : GoString))) : GoString)), _i : ((-1 : GoInt)) } : T__struct_2)),
(({ _a : ((((("abcdefgh" : GoString))) : GoString)), _b : ((((("abcdefgh" : GoString))) : GoString)), _i : ((0 : GoInt)) } : T__struct_2)),
(({ _a : ((((("abcdefghi" : GoString))) : GoString)), _b : ((((("abcdefghi" : GoString))) : GoString)), _i : ((0 : GoInt)) } : T__struct_2)),
(({ _a : ((((("abcdefghi" : GoString))) : GoString)), _b : ((((("abcdefghj" : GoString))) : GoString)), _i : ((-1 : GoInt)) } : T__struct_2))) : Slice<T__struct_2>));
var _htmlEscaper : Ref<Replacer> = newReplacer(((((("&" : GoString))) : GoString)), ((((("&amp;" : GoString))) : GoString)), ((((("<" : GoString))) : GoString)), ((((("&lt;" : GoString))) : GoString)), (((((">" : GoString))) : GoString)), ((((("&gt;" : GoString))) : GoString)), (("\"" : GoString)), ((((("&quot;" : GoString))) : GoString)), ((((("\'" : GoString))) : GoString)), ((((("&apos;" : GoString))) : GoString)));
var _htmlUnescaper : Ref<Replacer> = newReplacer(((((("&amp;" : GoString))) : GoString)), ((((("&" : GoString))) : GoString)), ((((("&lt;" : GoString))) : GoString)), ((((("<" : GoString))) : GoString)), ((((("&gt;" : GoString))) : GoString)), (((((">" : GoString))) : GoString)), ((((("&quot;" : GoString))) : GoString)), (("\"" : GoString)), ((((("&apos;" : GoString))) : GoString)), ((((("\'" : GoString))) : GoString)));
var _capitalLetters : Ref<Replacer> = newReplacer(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)));
var _algorithmTestCases : Slice<T__struct_5> = ((new Slice<T__struct_5>((({ _r : _capitalLetters, _want : ((((("*strings.byteReplacer" : GoString))) : GoString)) } : T__struct_5)), (({ _r : _htmlEscaper, _want : ((((("*strings.byteStringReplacer" : GoString))) : GoString)) } : T__struct_5)), (({ _r : newReplacer(((((("12" : GoString))) : GoString)), ((((("123" : GoString))) : GoString))), _want : ((((("*strings.singleStringReplacer" : GoString))) : GoString)) } : T__struct_5)), (({ _r : newReplacer(((((("1" : GoString))) : GoString)), ((((("12" : GoString))) : GoString))), _want : ((((("*strings.byteStringReplacer" : GoString))) : GoString)) } : T__struct_5)), (({ _r : newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))), _want : ((((("*strings.genericReplacer" : GoString))) : GoString)) } : T__struct_5)), (({ _r : newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("12" : GoString))) : GoString)), ((((("cde" : GoString))) : GoString)), ((((("123" : GoString))) : GoString))), _want : ((((("*strings.genericReplacer" : GoString))) : GoString)) } : T__struct_5))) : Slice<T__struct_5>));
var _mapdata : Slice<T__struct_7> = ((new Slice<T__struct_7>((({ _name : ((((("ASCII" : GoString))) : GoString)), _data : ((((("a b c d e f g h i j k l m n o p q r s t u v w x y z" : GoString))) : GoString)) } : T__struct_7)), (({ _name : ((((("Greek" : GoString))) : GoString)), _data : ((((("α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω" : GoString))) : GoString)) } : T__struct_7))) : Slice<T__struct_7>));
var _abcd : GoString = ((((("abcd" : GoString))) : GoString));
var _faces : GoString = ((((("☺☻☹" : GoString))) : GoString));
var _commas : GoString = ((((("1,2,3,4" : GoString))) : GoString));
var _dots : GoString = ((((("1....2....3....4" : GoString))) : GoString));
var _indexTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<stdgo.strings_test.Strings_test.IndexTest>(
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("fo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((4 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("barfoobarfoo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("foo" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("foo" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abcABCabc" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("bc" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("ab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xab" : GoString))) : GoString)).__slice__(0, ((2 : GoInt))) : GoString)), ((((("ab" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xbc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xabc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xabc" : GoString))) : GoString)).__slice__(0, ((3 : GoInt))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xabxc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xbcd" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abcd" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xabcd" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xyabcd" : GoString))) : GoString)).__slice__(0, ((5 : GoInt))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xbcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xabcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xyabcqq" : GoString))) : GoString)).__slice__(0, ((6 : GoInt))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xabxcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xabcqxq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("32145678" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("01234567" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x01234567" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x0123456x01234567" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((9 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xx01234567" : GoString))) : GoString)).__slice__(0, ((9 : GoInt))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("3214567844" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("0123456789" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x0123456789" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x012345678x0123456789" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((11 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xyz0123456789" : GoString))) : GoString)).__slice__(0, ((12 : GoInt))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x01234567x89" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("3214567889012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("0123456789012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x0123456789012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x012345678901234x0123456789012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((17 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("32145678890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("01234567890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x01234567890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x0123456789012345678x01234567890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((21 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xyz01234567890123456789" : GoString))) : GoString)).__slice__(0, ((22 : GoInt))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("321456788901234567890123456789012345678911" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("0123456789012345678901234567890" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x0123456789012345678901234567890" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x012345678901234567890123456789x0123456789012345678901234567890" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((32 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xyz0123456789012345678901234567890" : GoString))) : GoString)).__slice__(0, ((33 : GoInt))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("32145678890123456789012345678901234567890211" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("01234567890123456789012345678901" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x01234567890123456789012345678901" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("x0123456789012345678901234567890x01234567890123456789012345678901" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((33 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xyz01234567890123456789012345678901" : GoString))) : GoString)).__slice__(0, ((34 : GoInt))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xxxxxx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((((("012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((6 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456789" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((((("xx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)).__slice__(0, ((41 : GoInt))) : GoString)), ((((("0123456789012345678901234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456xxx" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("xx0123456789012345678901234567890123456789012345678901234567890120123456789012345678901234567890123456xxx" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456xxx" : GoString))) : GoString)), ((65 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("oxoxoxoxoxoxoxoxoxoxoxoy" : GoString))) : GoString)), ((((("oy" : GoString))) : GoString)), ((22 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("oxoxoxoxoxoxoxoxoxoxoxox" : GoString))) : GoString)), ((((("oy" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest))) : Slice<stdgo.strings_test.Strings_test.IndexTest>));
var _lastIndexTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<stdgo.strings_test.Strings_test.IndexTest>(
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("fo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("foo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("barfoobarfoo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((9 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("foo" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("foo" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abcABCabc" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abcABCabc" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((6 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest))) : Slice<stdgo.strings_test.Strings_test.IndexTest>));
var _indexAnyTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<stdgo.strings_test.Strings_test.IndexTest>(
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest((((((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("aaa" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("xcz" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("ab☺c" : GoString))) : GoString)), ((((("x☺yz" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("cx" : GoString))) : GoString)), (((((("a☺b☻" : GoString))) : GoString)) != null ? ((((("a☺b☻" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("uvw☻xyz" : GoString))) : GoString)), (((((("a☺b" : GoString))) : GoString)) != null ? ((((("a☺b" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("aRegExp*" : GoString))) : GoString)), (((((".(|)*+?^$$[]" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, (((((" " : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("012abcba210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((4 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((3 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((10 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest))) : Slice<stdgo.strings_test.Strings_test.IndexTest>));
var _lastIndexAnyTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<stdgo.strings_test.Strings_test.IndexTest>(
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest((((((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("aaa" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("abc" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("ab☺c" : GoString))) : GoString)), ((((("x☺yz" : GoString))) : GoString)), ((2 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("cx" : GoString))) : GoString)), (((((("a☺b☻" : GoString))) : GoString)) != null ? ((((("a☺b☻" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("uvw☻xyz" : GoString))) : GoString)), (((((("a☺b" : GoString))) : GoString)) != null ? ((((("a☺b" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("a.RegExp*" : GoString))) : GoString)), (((((".(|)*+?^$$[]" : GoString))) : GoString)), ((8 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, (((((" " : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("012abcba210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((6 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((7 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)),
((new stdgo.strings_test.Strings_test.IndexTest(((((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((10 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest))) : Slice<stdgo.strings_test.Strings_test.IndexTest>));
var _benchmarkLongString : GoString = repeat((((((" " : GoString))) : GoString)), ((100 : GoInt))) + ((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString));
var _splittests : Slice<stdgo.strings_test.Strings_test.SplitTest> = ((new Slice<stdgo.strings_test.Strings_test.SplitTest>(
((new stdgo.strings_test.Strings_test.SplitTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((2 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((4 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("" : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("" : GoString))) : GoString)), ((17 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("☺�☹" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("�" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((0 : GoInt)), ((null : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("z" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("abcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_commas, ((((("," : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_dots, ((((("..." : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), (((((".2" : GoString))) : GoString)), (((((".3" : GoString))) : GoString)), (((((".4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("☹" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺☻" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("~" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("1 2 3 4" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3 4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("1 2" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("" : GoString))) : GoString)), ((((("T" : GoString))) : GoString)), ((536870911 : GoInt)), ((new Slice<GoString>(((((("" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest))) : Slice<stdgo.strings_test.Strings_test.SplitTest>));
var _splitaftertests : Slice<stdgo.strings_test.Strings_test.SplitTest> = ((new Slice<stdgo.strings_test.Strings_test.SplitTest>(
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("z" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("abcd" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_commas, ((((("," : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1," : GoString))) : GoString)), ((((("2," : GoString))) : GoString)), ((((("3," : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_dots, ((((("..." : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1..." : GoString))) : GoString)), (((((".2..." : GoString))) : GoString)), (((((".3..." : GoString))) : GoString)), (((((".4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("☹" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺☻☹" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("~" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(_faces, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("1 2 3 4" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2 " : GoString))) : GoString)), ((((("3 4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("1 2 3" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2 " : GoString))) : GoString)), ((((("3" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("1 2" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((2 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("23" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest)),
((new stdgo.strings_test.Strings_test.SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((17 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.SplitTest))) : Slice<stdgo.strings_test.Strings_test.SplitTest>));
var _fieldstests : Slice<stdgo.strings_test.Strings_test.FieldsTest> = ((new Slice<stdgo.strings_test.Strings_test.FieldsTest>(
((new stdgo.strings_test.Strings_test.FieldsTest(((((("" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest((((((" " : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest((((((" \t " : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("\u2000" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("  abc  " : GoString))) : GoString)), ((new Slice<GoString>(((((("abc" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("1 2 3 4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("1  2  3  4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("1\t\t2\t\t3\t4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("1\u20002\u20013\u20024" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("\u2000\u2001\u2002" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("\n™\t™\n" : GoString))) : GoString)), ((new Slice<GoString>(((((("™" : GoString))) : GoString)), ((((("™" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("\n\u20001™2\u2000 \u2001 ™" : GoString))) : GoString)), ((new Slice<GoString>(((((("1™2" : GoString))) : GoString)), ((((("™" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("\n1\uFFFD \uFFFD2\u20003\uFFFD4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1\uFFFD" : GoString))) : GoString)), ((((("\uFFFD2" : GoString))) : GoString)), ((((("3\uFFFD4" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(((((("1" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + (("\u2000" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + (("2" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + ((" " : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("FF") : GoString)) + (("2" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)),
((new stdgo.strings_test.Strings_test.FieldsTest(_faces, ((new Slice<GoString>(_faces) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest))) : Slice<stdgo.strings_test.Strings_test.FieldsTest>));
var fieldsFuncTests : Slice<stdgo.strings_test.Strings_test.FieldsTest> = ((new Slice<stdgo.strings_test.Strings_test.FieldsTest>(((new stdgo.strings_test.Strings_test.FieldsTest(((((("" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)), ((new stdgo.strings_test.Strings_test.FieldsTest(((((("XX" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)), ((new stdgo.strings_test.Strings_test.FieldsTest(((((("XXhiXXX" : GoString))) : GoString)), ((new Slice<GoString>(((((("hi" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest)), ((new stdgo.strings_test.Strings_test.FieldsTest(((((("aXXbXXXcX" : GoString))) : GoString)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString))) : Slice<GoString>))) : stdgo.strings_test.Strings_test.FieldsTest))) : Slice<stdgo.strings_test.Strings_test.FieldsTest>));
var _upperTests : Slice<stdgo.strings_test.Strings_test.StringTest> = ((new Slice<stdgo.strings_test.Strings_test.StringTest>(((new stdgo.strings_test.Strings_test.StringTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("ONLYUPPER" : GoString))) : GoString)), ((((("ONLYUPPER" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("abc" : GoString))) : GoString)), ((((("ABC" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("AbC123" : GoString))) : GoString)), ((((("ABC123" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("azAZ09_" : GoString))) : GoString)), ((((("AZAZ09_" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("longStrinGwitHmixofsmaLLandcAps" : GoString))) : GoString)), ((((("LONGSTRINGWITHMIXOFSMALLANDCAPS" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("long\u0250string\u0250with\u0250nonascii\u2C6Fchars" : GoString))) : GoString)), ((((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("\u0250\u0250\u0250\u0250\u0250" : GoString))) : GoString)), ((((("\u2C6F\u2C6F\u2C6F\u2C6F\u2C6F" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("a\u0080\u{0010FFFF}" : GoString))) : GoString)), ((((("A\u0080\u{0010FFFF}" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest))) : Slice<stdgo.strings_test.Strings_test.StringTest>));
var _lowerTests : Slice<stdgo.strings_test.Strings_test.StringTest> = ((new Slice<stdgo.strings_test.Strings_test.StringTest>(((new stdgo.strings_test.Strings_test.StringTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("AbC123" : GoString))) : GoString)), ((((("abc123" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("azAZ09_" : GoString))) : GoString)), ((((("azaz09_" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("longStrinGwitHmixofsmaLLandcAps" : GoString))) : GoString)), ((((("longstringwithmixofsmallandcaps" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))) : GoString)), ((((("long\u0250string\u0250with\u0250nonascii\u0250chars" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("\u2C6D\u2C6D\u2C6D\u2C6D\u2C6D" : GoString))) : GoString)), ((((("\u0251\u0251\u0251\u0251\u0251" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)), ((new stdgo.strings_test.Strings_test.StringTest(((((("A\u0080\u{0010FFFF}" : GoString))) : GoString)), ((((("a\u0080\u{0010FFFF}" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest))) : Slice<stdgo.strings_test.Strings_test.StringTest>));
var _trimSpaceTests : Slice<stdgo.strings_test.Strings_test.StringTest> = ((new Slice<stdgo.strings_test.Strings_test.StringTest>(
((new stdgo.strings_test.Strings_test.StringTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest((((((" " : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest((((((" \t\r\n \t\t\r\r\n\n " : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest((((((" \t\r\n x\t\t\r\r\n\n " : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest((((((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : GoString))) : GoString)), ((((("x\t\t\r\r\ny" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("1 \t\r\n2" : GoString))) : GoString)), ((((("1 \t\r\n2" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest((((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest((((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest)),
((new stdgo.strings_test.Strings_test.StringTest(((((("x ☺ " : GoString))) : GoString)), ((((("x ☺" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.StringTest))) : Slice<stdgo.strings_test.Strings_test.StringTest>));
var _toValidUTF8Tests : Slice<T__struct_11> = ((new Slice<T__struct_11>(
(({ _in : ((((("" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : ((((("abc" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("abc" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : ((((("\uFDDD" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFDDD" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("a\uFFFDb" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b\uFFFD" : GoString))) : GoString)), _repl : ((((("X" : GoString))) : GoString)), _out : ((((("aXb\uFFFD" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : ((((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _repl : ((((("" : GoString))) : GoString)), _out : ((((("a☺b☺c☺" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : ((((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _repl : ((((("日本語" : GoString))) : GoString)), _out : ((((("a☺日本語b☺日本語c☺日本語" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : (((((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : (((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _repl : ((((("abc" : GoString))) : GoString)), _out : ((((("abc" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : (((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("af") : GoString))) : GoString)), _repl : ((((("☺" : GoString))) : GoString)), _out : ((((("☺" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : (((((haxe.io.Bytes.ofHex("F8") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_11)),
(({ _in : (((((haxe.io.Bytes.ofHex("FC") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), _repl : ((((("\uFFFD" : GoString))) : GoString)), _out : ((((("\uFFFD" : GoString))) : GoString)) } : T__struct_11))) : Slice<T__struct_11>));
var _trimTests : Slice<T__struct_12> = ((new Slice<T__struct_12>(
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("a" : GoString))) : GoString)), _out : ((((("bb" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("ab" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimLeft" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("ab" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimRight" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("ab" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimLeft" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("a" : GoString))) : GoString)), _out : ((((("bba" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimLeft" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("b" : GoString))) : GoString)), _out : ((((("abba" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimRight" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("a" : GoString))) : GoString)), _out : ((((("abb" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimRight" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("b" : GoString))) : GoString)), _out : ((((("abba" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("<tag>" : GoString))) : GoString)), _arg : ((((("<>" : GoString))) : GoString)), _out : ((((("tag" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("* listitem" : GoString))) : GoString)), _arg : (((((" *" : GoString))) : GoString)), _out : ((((("listitem" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : (("\"quote\"" : GoString)), _arg : (("\"" : GoString)), _out : ((((("quote" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("\u2C6F\u2C6F\u0250\u0250\u2C6F\u2C6F" : GoString))) : GoString)), _arg : ((((("\u2C6F" : GoString))) : GoString)), _out : ((((("\u0250\u0250" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : (((((haxe.io.Bytes.ofHex("80") : GoString)) + (("test" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _arg : (((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _out : ((((("test" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : (((((" Ġ " : GoString))) : GoString)), _arg : (((((" " : GoString))) : GoString)), _out : ((((("Ġ" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : (((((" Ġİ0" : GoString))) : GoString)), _arg : ((((("0 " : GoString))) : GoString)), _out : ((((("Ġİ" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("" : GoString))) : GoString)), _out : ((((("abba" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("" : GoString))) : GoString)), _arg : ((((("123" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("Trim" : GoString))) : GoString)), _in : ((((("" : GoString))) : GoString)), _arg : ((((("" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimLeft" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("" : GoString))) : GoString)), _out : ((((("abba" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimLeft" : GoString))) : GoString)), _in : ((((("" : GoString))) : GoString)), _arg : ((((("123" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimLeft" : GoString))) : GoString)), _in : ((((("" : GoString))) : GoString)), _arg : ((((("" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimRight" : GoString))) : GoString)), _in : ((((("abba" : GoString))) : GoString)), _arg : ((((("" : GoString))) : GoString)), _out : ((((("abba" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimRight" : GoString))) : GoString)), _in : ((((("" : GoString))) : GoString)), _arg : ((((("123" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimRight" : GoString))) : GoString)), _in : ((((("" : GoString))) : GoString)), _arg : ((((("" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimRight" : GoString))) : GoString)), _in : ((((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _arg : ((((("☺" : GoString))) : GoString)), _out : ((((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimPrefix" : GoString))) : GoString)), _in : ((((("aabb" : GoString))) : GoString)), _arg : ((((("a" : GoString))) : GoString)), _out : ((((("abb" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimPrefix" : GoString))) : GoString)), _in : ((((("aabb" : GoString))) : GoString)), _arg : ((((("b" : GoString))) : GoString)), _out : ((((("aabb" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimSuffix" : GoString))) : GoString)), _in : ((((("aabb" : GoString))) : GoString)), _arg : ((((("a" : GoString))) : GoString)), _out : ((((("aabb" : GoString))) : GoString)) } : T__struct_12)),
(({ _f : ((((("TrimSuffix" : GoString))) : GoString)), _in : ((((("aabb" : GoString))) : GoString)), _arg : ((((("b" : GoString))) : GoString)), _out : ((((("aab" : GoString))) : GoString)) } : T__struct_12))) : Slice<T__struct_12>));
var _isSpace : stdgo.strings_test.Strings_test.T_predicate = ((new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isSpace, ((((("IsSpace" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_predicate));
var _isDigit : stdgo.strings_test.Strings_test.T_predicate = ((new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isDigit, ((((("IsDigit" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_predicate));
var _isUpper : stdgo.strings_test.Strings_test.T_predicate = ((new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isUpper, ((((("IsUpper" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_predicate));
var _isValidRune : stdgo.strings_test.Strings_test.T_predicate = ((new stdgo.strings_test.Strings_test.T_predicate(function(_r:GoRune):Bool {
        return _r != ((65533 : GoInt32));
    }, ((((("IsValidRune" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_predicate));
var _trimFuncTests : Slice<T__struct_14> = ((new Slice<T__struct_14>((({ _f : (_isSpace == null ? null : _isSpace.__copy__()), _in : ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _trimOut : ((((("hello" : GoString))) : GoString)), _leftOut : ((((("hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _rightOut : ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello" : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_isDigit == null ? null : _isDigit.__copy__()), _in : ((((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))) : GoString)), _trimOut : ((((("hello" : GoString))) : GoString)), _leftOut : ((((("hello34\u0e50\u0e51" : GoString))) : GoString)), _rightOut : ((((("\u0e50\u0e5212hello" : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_isUpper == null ? null : _isUpper.__copy__()), _in : ((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), _trimOut : ((((("hello" : GoString))) : GoString)), _leftOut : ((((("helloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), _rightOut : ((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhello" : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()), _in : ((((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))) : GoString)), _trimOut : ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _leftOut : ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))) : GoString)), _rightOut : ((((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), _in : ((((("hello\u0e50\u0e521234\u0e50\u0e51helo" : GoString))) : GoString)), _trimOut : ((((("\u0e50\u0e521234\u0e50\u0e51" : GoString))) : GoString)), _leftOut : ((((("\u0e50\u0e521234\u0e50\u0e51helo" : GoString))) : GoString)), _rightOut : ((((("hello\u0e50\u0e521234\u0e50\u0e51" : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_isValidRune == null ? null : _isValidRune.__copy__()), _in : ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), _trimOut : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _leftOut : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), _rightOut : ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), _in : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _trimOut : ((((("a" : GoString))) : GoString)), _leftOut : ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _rightOut : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_isSpace == null ? null : _isSpace.__copy__()), _in : ((((("" : GoString))) : GoString)), _trimOut : ((((("" : GoString))) : GoString)), _leftOut : ((((("" : GoString))) : GoString)), _rightOut : ((((("" : GoString))) : GoString)) } : T__struct_14)), (({ _f : (_isSpace == null ? null : _isSpace.__copy__()), _in : (((((" " : GoString))) : GoString)), _trimOut : ((((("" : GoString))) : GoString)), _leftOut : ((((("" : GoString))) : GoString)), _rightOut : ((((("" : GoString))) : GoString)) } : T__struct_14))) : Slice<T__struct_14>));
var _indexFuncTests : Slice<T__struct_16> = ((new Slice<T__struct_16>(
(({ _in : ((((("" : GoString))) : GoString)), _f : (_isValidRune == null ? null : _isValidRune.__copy__()), _first : ((-1 : GoInt)), _last : ((-1 : GoInt)) } : T__struct_16)),
(({ _in : ((((("abc" : GoString))) : GoString)), _f : (_isDigit == null ? null : _isDigit.__copy__()), _first : ((-1 : GoInt)), _last : ((-1 : GoInt)) } : T__struct_16)),
(({ _in : ((((("0123" : GoString))) : GoString)), _f : (_isDigit == null ? null : _isDigit.__copy__()), _first : ((0 : GoInt)), _last : ((3 : GoInt)) } : T__struct_16)),
(({ _in : ((((("a1b" : GoString))) : GoString)), _f : (_isDigit == null ? null : _isDigit.__copy__()), _first : ((1 : GoInt)), _last : ((1 : GoInt)) } : T__struct_16)),
(({ _in : ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _f : (_isSpace == null ? null : _isSpace.__copy__()), _first : ((0 : GoInt)), _last : ((12 : GoInt)) } : T__struct_16)),
(({ _in : ((((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))) : GoString)), _f : (_isDigit == null ? null : _isDigit.__copy__()), _first : ((0 : GoInt)), _last : ((18 : GoInt)) } : T__struct_16)),
(({ _in : ((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), _f : (_isUpper == null ? null : _isUpper.__copy__()), _first : ((0 : GoInt)), _last : ((34 : GoInt)) } : T__struct_16)),
(({ _in : ((((("12\u0e50\u0e52hello34\u0e50\u0e51" : GoString))) : GoString)), _f : (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), _first : ((8 : GoInt)), _last : ((12 : GoInt)) } : T__struct_16)),
(({ _in : (((((haxe.io.Bytes.ofHex("80") : GoString)) + (("1" : GoString))) : GoString)), _f : (_isDigit == null ? null : _isDigit.__copy__()), _first : ((1 : GoInt)), _last : ((1 : GoInt)) } : T__struct_16)),
(({ _in : (((((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), _f : (_isDigit == null ? null : _isDigit.__copy__()), _first : ((-1 : GoInt)), _last : ((-1 : GoInt)) } : T__struct_16)),
(({ _in : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _f : (_isValidRune == null ? null : _isValidRune.__copy__()), _first : ((1 : GoInt)), _last : ((1 : GoInt)) } : T__struct_16)),
(({ _in : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _f : (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), _first : ((0 : GoInt)), _last : ((2 : GoInt)) } : T__struct_16)),
(({ _in : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _f : (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), _first : ((0 : GoInt)), _last : ((4 : GoInt)) } : T__struct_16)),
(({ _in : (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), _f : (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), _first : ((0 : GoInt)), _last : ((5 : GoInt)) } : T__struct_16)),
(({ _in : ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), _f : (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), _first : ((2 : GoInt)), _last : ((4 : GoInt)) } : T__struct_16)),
(({ _in : ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("e0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("cd" : GoString))) : GoString)), _f : (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), _first : ((1 : GoInt)), _last : ((2 : GoInt)) } : T__struct_16)),
(({ _in : (((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _f : (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), _first : ((0 : GoInt)), _last : ((3 : GoInt)) } : T__struct_16))) : Slice<T__struct_16>));
var repeatTests : Slice<T__struct_17> = ((new Slice<T__struct_17>((({ _in : ((((("" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)), _count : ((0 : GoInt)) } : T__struct_17)), (({ _in : ((((("" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)), _count : ((1 : GoInt)) } : T__struct_17)), (({ _in : ((((("" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)), _count : ((2 : GoInt)) } : T__struct_17)), (({ _in : ((((("-" : GoString))) : GoString)), _out : ((((("" : GoString))) : GoString)), _count : ((0 : GoInt)) } : T__struct_17)), (({ _in : ((((("-" : GoString))) : GoString)), _out : ((((("-" : GoString))) : GoString)), _count : ((1 : GoInt)) } : T__struct_17)), (({ _in : ((((("-" : GoString))) : GoString)), _out : ((((("----------" : GoString))) : GoString)), _count : ((10 : GoInt)) } : T__struct_17)), (({ _in : ((((("abc " : GoString))) : GoString)), _out : ((((("abc abc abc " : GoString))) : GoString)), _count : ((3 : GoInt)) } : T__struct_17))) : Slice<T__struct_17>));
var runesTests : Slice<T__struct_19> = ((new Slice<T__struct_19>((({ _in : ((((("" : GoString))) : GoString)), _out : ((new Slice<GoInt32>() : Slice<GoInt32>)), _lossy : false } : T__struct_19)), (({ _in : (((((" " : GoString))) : GoString)), _out : ((new Slice<GoInt32>(((32 : GoInt32))) : Slice<GoInt32>)), _lossy : false } : T__struct_19)), (({ _in : ((((("ABC" : GoString))) : GoString)), _out : ((new Slice<GoInt32>(((65 : GoInt32)), ((66 : GoInt32)), ((67 : GoInt32))) : Slice<GoInt32>)), _lossy : false } : T__struct_19)), (({ _in : ((((("abc" : GoString))) : GoString)), _out : ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), _lossy : false } : T__struct_19)), (({ _in : ((((("\u65e5\u672c\u8a9e" : GoString))) : GoString)), _out : ((new Slice<GoInt32>(((26085 : GoInt32)), ((26412 : GoInt32)), ((35486 : GoInt32))) : Slice<GoInt32>)), _lossy : false } : T__struct_19)), (({ _in : ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("c" : GoString))) : GoString)), _out : ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), _lossy : true } : T__struct_19)), (({ _in : ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("c" : GoString))) : GoString)), _out : ((new Slice<GoInt32>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoInt32>)), _lossy : true } : T__struct_19))) : Slice<T__struct_19>));
var unreadRuneErrorTests : Slice<T__struct_20> = ((new Slice<T__struct_20>((({ _name : ((((("Read" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.read(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)));
    } } : T__struct_20)), (({ _name : ((((("ReadByte" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.readByte();
    } } : T__struct_20)), (({ _name : ((((("UnreadRune" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.unreadRune();
    } } : T__struct_20)), (({ _name : ((((("Seek" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.seek(((0 : GoInt64)), ((1 : GoInt)));
    } } : T__struct_20)), (({ _name : ((((("WriteTo" : GoString))) : GoString)), _f : function(_r:Reader):Void {
        _r.writeTo({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)));
            __self__.bytes = #if !macro function():Slice<GoUInt8> return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).cap_() #else null #end;
            __self__.grow = #if !macro function(__0:GoInt):Void ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).grow(__0) #else null #end;
            __self__.len = #if !macro function():GoInt return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).len() #else null #end;
            __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).next(__0) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).reset() #else null #end;
            __self__.string = #if !macro function():GoString return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).string() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt):Void ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).truncate(__0) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._empty() #else null #end;
            __self__._grow = #if !macro function(__0:GoInt):GoInt return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._grow(__0) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._tryGrowByReslice(__0) #else null #end;
            __self__;
        });
    } } : T__struct_20))) : Slice<T__struct_20>));
var replaceTests : Slice<T__struct_21> = ((new Slice<T__struct_21>(
(({ _in : ((((("hello" : GoString))) : GoString)), _old : ((((("l" : GoString))) : GoString)), _new : ((((("L" : GoString))) : GoString)), _n : ((0 : GoInt)), _out : ((((("hello" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("hello" : GoString))) : GoString)), _old : ((((("l" : GoString))) : GoString)), _new : ((((("L" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("heLLo" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("hello" : GoString))) : GoString)), _old : ((((("x" : GoString))) : GoString)), _new : ((((("X" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("hello" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("" : GoString))) : GoString)), _old : ((((("x" : GoString))) : GoString)), _new : ((((("X" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("radar" : GoString))) : GoString)), _old : ((((("r" : GoString))) : GoString)), _new : ((((("<r>" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("<r>ada<r>" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("" : GoString))) : GoString)), _old : ((((("" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("<>" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("a" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("b<>n<>n<>" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("a" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((1 : GoInt)), _out : ((((("b<>nana" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("a" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((1000 : GoInt)), _out : ((((("b<>n<>n<>" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("an" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("b<><>a" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("ana" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("b<>na" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("<>b<>a<>n<>a<>n<>a<>" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((10 : GoInt)), _out : ((((("<>b<>a<>n<>a<>n<>a<>" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((6 : GoInt)), _out : ((((("<>b<>a<>n<>a<>n<>a" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((5 : GoInt)), _out : ((((("<>b<>a<>n<>a<>na" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((1 : GoInt)), _out : ((((("<>banana" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("a" : GoString))) : GoString)), _new : ((((("a" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("banana" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("banana" : GoString))) : GoString)), _old : ((((("a" : GoString))) : GoString)), _new : ((((("a" : GoString))) : GoString)), _n : ((1 : GoInt)), _out : ((((("banana" : GoString))) : GoString)) } : T__struct_21)),
(({ _in : ((((("☺☻☹" : GoString))) : GoString)), _old : ((((("" : GoString))) : GoString)), _new : ((((("<>" : GoString))) : GoString)), _n : ((-1 : GoInt)), _out : ((((("<>☺<>☻<>☹<>" : GoString))) : GoString)) } : T__struct_21))) : Slice<T__struct_21>));
var titleTests : Slice<StringTest> = ((new Slice<StringTest>(((new StringTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString))) : StringTest)), ((new StringTest((((((" aaa aaa aaa " : GoString))) : GoString)), (((((" Aaa Aaa Aaa " : GoString))) : GoString))) : StringTest)), ((new StringTest((((((" Aaa Aaa Aaa " : GoString))) : GoString)), (((((" Aaa Aaa Aaa " : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("123a456" : GoString))) : GoString)), ((((("123a456" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("double-blind" : GoString))) : GoString)), ((((("Double-Blind" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("ÿøû" : GoString))) : GoString)), ((((("Ÿøû" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("with_underscore" : GoString))) : GoString)), ((((("With_underscore" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" line separator" : GoString))) : GoString)), ((((("Unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" Line Separator" : GoString))) : GoString))) : StringTest))) : Slice<StringTest>));
var containsTests : Slice<T__struct_22> = ((new Slice<T__struct_22>(
(({ _str : ((((("abc" : GoString))) : GoString)), _substr : ((((("bc" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("abc" : GoString))) : GoString)), _substr : ((((("bcd" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("abc" : GoString))) : GoString)), _substr : ((((("" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("" : GoString))) : GoString)), _substr : ((((("a" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxx" : GoString))) : GoString)), _substr : ((((("01" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("01xxxx" : GoString))) : GoString)), _substr : ((((("01" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx01xx" : GoString))) : GoString)), _substr : ((((("01" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx01" : GoString))) : GoString)), _substr : ((((("01" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("01xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("01" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx01" : GoString))) : GoString)).__slice__(0, ((6 : GoInt))) : GoString)), _substr : ((((("01" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxxx" : GoString))) : GoString)), _substr : ((((("012" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("012xxxx" : GoString))) : GoString)), _substr : ((((("012" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx012xx" : GoString))) : GoString)), _substr : ((((("012" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx012" : GoString))) : GoString)), _substr : ((((("012" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("012xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("012" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx012" : GoString))) : GoString)).__slice__(0, ((7 : GoInt))) : GoString)), _substr : ((((("012" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxxxx" : GoString))) : GoString)), _substr : ((((("0123" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("0123xxxx" : GoString))) : GoString)), _substr : ((((("0123" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx0123xx" : GoString))) : GoString)), _substr : ((((("0123" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx0123" : GoString))) : GoString)), _substr : ((((("0123" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("0123xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("0123" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx0123" : GoString))) : GoString)).__slice__(0, ((8 : GoInt))) : GoString)), _substr : ((((("0123" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxxxxx" : GoString))) : GoString)), _substr : ((((("01234" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("01234xxxx" : GoString))) : GoString)), _substr : ((((("01234" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx01234xx" : GoString))) : GoString)), _substr : ((((("01234" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx01234" : GoString))) : GoString)), _substr : ((((("01234" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("01234xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("01234" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx01234" : GoString))) : GoString)).__slice__(0, ((9 : GoInt))) : GoString)), _substr : ((((("01234" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxxxxxxxx" : GoString))) : GoString)), _substr : ((((("01234567" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("01234567xxxx" : GoString))) : GoString)), _substr : ((((("01234567" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx01234567xx" : GoString))) : GoString)), _substr : ((((("01234567" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx01234567" : GoString))) : GoString)), _substr : ((((("01234567" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("01234567xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("01234567" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx01234567" : GoString))) : GoString)).__slice__(0, ((12 : GoInt))) : GoString)), _substr : ((((("01234567" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxxxxxxxxx" : GoString))) : GoString)), _substr : ((((("012345678" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("012345678xxxx" : GoString))) : GoString)), _substr : ((((("012345678" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx012345678xx" : GoString))) : GoString)), _substr : ((((("012345678" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx012345678" : GoString))) : GoString)), _substr : ((((("012345678" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("012345678xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("012345678" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx012345678" : GoString))) : GoString)).__slice__(0, ((13 : GoInt))) : GoString)), _substr : ((((("012345678" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxxxxxxxxxxxxxxxx" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEF" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("0123456789ABCDEFxxxx" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEF" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx0123456789ABCDEFxx" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEF" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx0123456789ABCDEF" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEF" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("0123456789ABCDEFxxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("0123456789ABCDEF" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx0123456789ABCDEF" : GoString))) : GoString)).__slice__(0, ((20 : GoInt))) : GoString)), _substr : ((((("0123456789ABCDEF" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xxxxxxxxxxxxxxxxxxxxx" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEFG" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("0123456789ABCDEFGxxxx" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEFG" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xx0123456789ABCDEFGxx" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEFG" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("xxxx0123456789ABCDEFG" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEFG" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((((("0123456789ABCDEFGxxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), _substr : ((((("0123456789ABCDEFG" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((((("xxxxx0123456789ABCDEFG" : GoString))) : GoString)).__slice__(0, ((21 : GoInt))) : GoString)), _substr : ((((("0123456789ABCDEFG" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xx01x" : GoString))) : GoString)), _substr : ((((("012" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xx0123x" : GoString))) : GoString)), _substr : ((((("01234" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xx01234567x" : GoString))) : GoString)), _substr : ((((("012345678" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("xx0123456789ABCDEFx" : GoString))) : GoString)), _substr : ((((("0123456789ABCDEFG" : GoString))) : GoString)), _expected : false } : T__struct_22))) : Slice<T__struct_22>));
var containsAnyTests : Slice<T__struct_22> = ((new Slice<T__struct_22>(
(({ _str : ((((("" : GoString))) : GoString)), _substr : ((((("" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("" : GoString))) : GoString)), _substr : ((((("a" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("" : GoString))) : GoString)), _substr : ((((("abc" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("a" : GoString))) : GoString)), _substr : ((((("" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("a" : GoString))) : GoString)), _substr : ((((("a" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("aaa" : GoString))) : GoString)), _substr : ((((("a" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("abc" : GoString))) : GoString)), _substr : ((((("xyz" : GoString))) : GoString)), _expected : false } : T__struct_22)),
(({ _str : ((((("abc" : GoString))) : GoString)), _substr : ((((("xcz" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("a☺b☻c☹d" : GoString))) : GoString)), _substr : ((((("uvw☻xyz" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : ((((("aRegExp*" : GoString))) : GoString)), _substr : (((((".(|)*+?^$$[]" : GoString))) : GoString)), _expected : true } : T__struct_22)),
(({ _str : (_dots + _dots) + _dots, _substr : (((((" " : GoString))) : GoString)), _expected : false } : T__struct_22))) : Slice<T__struct_22>));
var containsRuneTests : Slice<T__struct_23> = ((new Slice<T__struct_23>((({ _str : ((((("" : GoString))) : GoString)), _r : (("a".code : GoInt32)), _expected : false } : T__struct_23)), (({ _str : ((((("a" : GoString))) : GoString)), _r : (("a".code : GoInt32)), _expected : true } : T__struct_23)), (({ _str : ((((("aaa" : GoString))) : GoString)), _r : (("a".code : GoInt32)), _expected : true } : T__struct_23)), (({ _str : ((((("abc" : GoString))) : GoString)), _r : (("y".code : GoInt32)), _expected : false } : T__struct_23)), (({ _str : ((((("abc" : GoString))) : GoString)), _r : (("c".code : GoInt32)), _expected : true } : T__struct_23)), (({ _str : ((((("a☺b☻c☹d" : GoString))) : GoString)), _r : (("x".code : GoInt32)), _expected : false } : T__struct_23)), (({ _str : ((((("a☺b☻c☹d" : GoString))) : GoString)), _r : (("☻".code : GoInt32)), _expected : true } : T__struct_23)), (({ _str : ((((("aRegExp*" : GoString))) : GoString)), _r : (("*".code : GoInt32)), _expected : true } : T__struct_23))) : Slice<T__struct_23>));
var equalFoldTests : Slice<T__struct_24> = ((new Slice<T__struct_24>(
(({ _s : ((((("abc" : GoString))) : GoString)), _t : ((((("abc" : GoString))) : GoString)), _out : true } : T__struct_24)),
(({ _s : ((((("ABcd" : GoString))) : GoString)), _t : ((((("ABcd" : GoString))) : GoString)), _out : true } : T__struct_24)),
(({ _s : ((((("123abc" : GoString))) : GoString)), _t : ((((("123ABC" : GoString))) : GoString)), _out : true } : T__struct_24)),
(({ _s : ((((("αβδ" : GoString))) : GoString)), _t : ((((("ΑΒΔ" : GoString))) : GoString)), _out : true } : T__struct_24)),
(({ _s : ((((("abc" : GoString))) : GoString)), _t : ((((("xyz" : GoString))) : GoString)), _out : false } : T__struct_24)),
(({ _s : ((((("abc" : GoString))) : GoString)), _t : ((((("XYZ" : GoString))) : GoString)), _out : false } : T__struct_24)),
(({ _s : ((((("abcdefghijk" : GoString))) : GoString)), _t : ((((("abcdefghijX" : GoString))) : GoString)), _out : false } : T__struct_24)),
(({ _s : ((((("abcdefghijk" : GoString))) : GoString)), _t : ((((("abcdefghij\u212A" : GoString))) : GoString)), _out : true } : T__struct_24)),
(({ _s : ((((("abcdefghijK" : GoString))) : GoString)), _t : ((((("abcdefghij\u212A" : GoString))) : GoString)), _out : true } : T__struct_24)),
(({ _s : ((((("abcdefghijkz" : GoString))) : GoString)), _t : ((((("abcdefghij\u212Ay" : GoString))) : GoString)), _out : false } : T__struct_24)),
(({ _s : ((((("abcdefghijKz" : GoString))) : GoString)), _t : ((((("abcdefghij\u212Ay" : GoString))) : GoString)), _out : false } : T__struct_24)),
(({ _s : ((((("1" : GoString))) : GoString)), _t : ((((("2" : GoString))) : GoString)), _out : false } : T__struct_24)),
(({ _s : ((((("utf-8" : GoString))) : GoString)), _t : ((((("US-ASCII" : GoString))) : GoString)), _out : false } : T__struct_24))) : Slice<T__struct_24>));
var countTests : Slice<T__struct_25> = ((new Slice<T__struct_25>((({ _s : ((((("" : GoString))) : GoString)), _sep : ((((("" : GoString))) : GoString)), _num : ((1 : GoInt)) } : T__struct_25)), (({ _s : ((((("" : GoString))) : GoString)), _sep : ((((("notempty" : GoString))) : GoString)), _num : ((0 : GoInt)) } : T__struct_25)), (({ _s : ((((("notempty" : GoString))) : GoString)), _sep : ((((("" : GoString))) : GoString)), _num : ((9 : GoInt)) } : T__struct_25)), (({ _s : ((((("smaller" : GoString))) : GoString)), _sep : ((((("not smaller" : GoString))) : GoString)), _num : ((0 : GoInt)) } : T__struct_25)), (({ _s : ((((("12345678987654321" : GoString))) : GoString)), _sep : ((((("6" : GoString))) : GoString)), _num : ((2 : GoInt)) } : T__struct_25)), (({ _s : ((((("611161116" : GoString))) : GoString)), _sep : ((((("6" : GoString))) : GoString)), _num : ((3 : GoInt)) } : T__struct_25)), (({ _s : ((((("notequal" : GoString))) : GoString)), _sep : ((((("NotEqual" : GoString))) : GoString)), _num : ((0 : GoInt)) } : T__struct_25)), (({ _s : ((((("equal" : GoString))) : GoString)), _sep : ((((("equal" : GoString))) : GoString)), _num : ((1 : GoInt)) } : T__struct_25)), (({ _s : ((((("abc1231231123q" : GoString))) : GoString)), _sep : ((((("123" : GoString))) : GoString)), _num : ((3 : GoInt)) } : T__struct_25)), (({ _s : ((((("11111" : GoString))) : GoString)), _sep : ((((("11" : GoString))) : GoString)), _num : ((2 : GoInt)) } : T__struct_25))) : Slice<T__struct_25>));
var _cutTests : Slice<T__struct_26> = ((new Slice<T__struct_26>((({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("b" : GoString))) : GoString)), _before : ((((("a" : GoString))) : GoString)), _after : ((((("c" : GoString))) : GoString)), _found : true } : T__struct_26)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("a" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("bc" : GoString))) : GoString)), _found : true } : T__struct_26)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("c" : GoString))) : GoString)), _before : ((((("ab" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : true } : T__struct_26)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("abc" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : true } : T__struct_26)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("abc" : GoString))) : GoString)), _found : true } : T__struct_26)), (({ _s : ((((("abc" : GoString))) : GoString)), _sep : ((((("d" : GoString))) : GoString)), _before : ((((("abc" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : false } : T__struct_26)), (({ _s : ((((("" : GoString))) : GoString)), _sep : ((((("d" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : false } : T__struct_26)), (({ _s : ((((("" : GoString))) : GoString)), _sep : ((((("" : GoString))) : GoString)), _before : ((((("" : GoString))) : GoString)), _after : ((((("" : GoString))) : GoString)), _found : true } : T__struct_26))) : Slice<T__struct_26>));
var _benchInputHard : GoString = _makeBenchInputHard();
var _benchInputTorture : GoString = (repeat(((((("ABC" : GoString))) : GoString)), ((1024 : GoInt))) + ((((("123" : GoString))) : GoString))) + repeat(((((("ABC" : GoString))) : GoString)), ((1024 : GoInt)));
var _benchNeedleTorture : GoString = repeat(((((("ABC" : GoString))) : GoString)), ((1025 : GoInt)));
var _makeFieldsInput : () -> GoString = function():GoString {
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
        return ((_x : GoString));
    };
var _makeFieldsInputASCII : () -> GoString = function():GoString {
        var _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((1048576 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _x) {
            if (stdgo.math.rand.Rand.intn(((10 : GoInt))) == ((0 : GoInt))) {
                if (_x != null) _x[_i] = ((" ".code : GoUInt8));
            } else {
                if (_x != null) _x[_i] = (("x".code : GoUInt8));
            };
        };
        return ((_x : GoString));
    };
var _stringdata : Slice<T__struct_7> = ((new Slice<T__struct_7>((({ _name : ((((("ASCII" : GoString))) : GoString)), _data : _makeFieldsInputASCII() } : T__struct_7)), (({ _name : ((((("Mixed" : GoString))) : GoString)), _data : _makeFieldsInput() } : T__struct_7))) : Slice<T__struct_7>));
var _sinkS : GoString = (("" : GoString));
var _emptyString : GoString = (("" : GoString));
var _stringSink : GoString = (("" : GoString));
@:structInit @:using(stdgo.strings_test.Strings_test.T_errWriter_static_extension) class T_errWriter {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter();
    }
}
@:structInit class IndexTest {
    public var _s : GoString;
    public var _sep : GoString;
    public var _out : GoInt;
    public function new(?_s:GoString, ?_sep:GoString, ?_out:GoInt) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new IndexTest(_s, _sep, _out);
    }
}
@:structInit class SplitTest {
    public var _s : GoString;
    public var _sep : GoString;
    public var _n : GoInt;
    public var _a : Slice<GoString>;
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
    public var _s : GoString;
    public var _a : Slice<GoString>;
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
    public var _in : GoString;
    public var _out : GoString;
    public function new(?_in:GoString, ?_out:GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StringTest(_in, _out);
    }
}
@:structInit class T_predicate {
    public var _f : GoInt32 -> Bool;
    public var _name : GoString;
    public function new(?_f:GoInt32 -> Bool, ?_name:GoString) {
        if (_f != null) this._f = _f;
        if (_name != null) this._name = _name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_predicate(_f, _name);
    }
}
@:local typedef T__struct_0 = {
    public var _name : GoString;
    public var _fn : Ref<Builder> -> { var _0 : GoInt; var _1 : stdgo.Error; };
    public var _n : GoInt;
    public var _want : GoString;
};
@:local typedef T__struct_1 = {
    public var _name : GoString;
    public var _fn : () -> Void;
    public var _wantPanic : Bool;
};
@:local typedef T__struct_2 = {
    public var _a : GoString;
    public var _b : GoString;
    public var _i : GoInt;
};
@:local typedef T__struct_3 = {
    public var _off : GoInt64;
    public var _seek : GoInt;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wantpos : GoInt64;
    public var _readerr : stdgo.Error;
    public var _seekerr : GoString;
};
@:local typedef T__struct_4 = {
    public var _off : GoInt64;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wanterr : AnyInterface;
};
@:local typedef T__struct_5 = {
    public var _r : Ref<Replacer>;
    public var _want : GoString;
};
@:local typedef T__struct_6 = {
    public var _in : GoString;
    public var _out : GoString;
};
@:local typedef T__struct_7 = {
    public var _name : GoString;
    public var _data : GoString;
};
@:local typedef T__struct_8 = {
    public var _pat : GoString;
    public var _text : GoString;
    public var _index : GoInt;
};
@:local typedef T__struct_9 = {
    public var _pattern : GoString;
    public var _bad : GoArray<GoInt>;
    public var _suf : Slice<GoInt>;
};
@:local typedef T__struct_10 = {
    public var _in : GoString;
    public var _rune : GoInt32;
    public var _want : GoInt;
};
@:local typedef T__struct_11 = {
    public var _in : GoString;
    public var _repl : GoString;
    public var _out : GoString;
};
@:local typedef T__struct_12 = {
    public var _f : GoString;
    public var _in : GoString;
    public var _arg : GoString;
    public var _out : GoString;
};
@:local typedef T__struct_13 = {
    public var _name : GoString;
    public var _input : GoString;
};
@:local typedef T__struct_14 = {
    public var _f : stdgo.strings_test.Strings_test.T_predicate;
    public var _in : GoString;
    public var _trimOut : GoString;
    public var _leftOut : GoString;
    public var _rightOut : GoString;
};
@:local typedef T__struct_15 = {
    public var _name : GoString;
    public var _trim : (GoString, GoInt32 -> Bool) -> GoString;
    public var _out : GoString;
};
@:local typedef T__struct_16 = {
    public var _in : GoString;
    public var _f : stdgo.strings_test.Strings_test.T_predicate;
    public var _first : GoInt;
    public var _last : GoInt;
};
@:local typedef T__struct_17 = {
    public var _in : GoString;
    public var _out : GoString;
    public var _count : GoInt;
};
@:local typedef T__struct_18 = {
    public var _s : GoString;
    public var _count : GoInt;
    public var _errStr : GoString;
};
@:local typedef T__struct_19 = {
    public var _in : GoString;
    public var _out : Slice<GoInt32>;
    public var _lossy : Bool;
};
@:local typedef T__struct_20 = {
    public var _name : GoString;
    public var _f : Ref<Reader> -> Void;
};
@:local typedef T__struct_21 = {
    public var _in : GoString;
    public var _old : GoString;
    public var _new : GoString;
    public var _n : GoInt;
    public var _out : GoString;
};
@:local typedef T__struct_22 = {
    public var _str : GoString;
    public var _substr : GoString;
    public var _expected : Bool;
};
@:local typedef T__struct_23 = {
    public var _str : GoString;
    public var _r : GoInt32;
    public var _expected : Bool;
};
@:local typedef T__struct_24 = {
    public var _s : GoString;
    public var _t : GoString;
    public var _out : Bool;
};
@:local typedef T__struct_25 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _num : GoInt;
};
@:local typedef T__struct_26 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _before : GoString;
    public var _after : GoString;
    public var _found : Bool;
};
function _check(_t:stdgo.testing.Testing.T, _b:Builder, _want:GoString):Void {
        _t.helper();
        var _got:GoString = ((_b.string() : GoString));
        if (_got != _want) {
            _t.errorf(((((("String: got %#q; want %#q" : GoString))) : GoString)), Go.toInterface(_got), Go.toInterface(_want));
            return;
        };
        {
            var _n:GoInt = _b.len();
            if (_n != (_got != null ? _got.length : ((0 : GoInt)))) {
                _t.errorf(((((("Len: got %d; but len(String()) is %d" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface((_got != null ? _got.length : ((0 : GoInt)))));
            };
        };
        {
            var _n:GoInt = _b.cap_();
            if (_n < (_got != null ? _got.length : ((0 : GoInt)))) {
                _t.errorf(((((("Cap: got %d; but len(String()) is %d" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface((_got != null ? _got.length : ((0 : GoInt)))));
            };
        };
    }
function testBuilder(_t:stdgo.testing.Testing.T):Void {
        var _b:Builder = (({  } : Builder));
        _check(_t, _b, ((((("" : GoString))) : GoString)));
        var __tmp__ = _b.writeString(((((("hello" : GoString))) : GoString))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_n != ((5 : GoInt)))) {
            _t.errorf(((((("WriteString: got %d,%s; want 5,nil" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        _check(_t, _b, ((((("hello" : GoString))) : GoString)));
        {
            _err = _b.writeByte(((" ".code : GoUInt8)));
            if (_err != null) {
                _t.errorf(((((("WriteByte: %s" : GoString))) : GoString)), Go.toInterface(_err));
            };
        };
        _check(_t, _b, ((((("hello " : GoString))) : GoString)));
        {
            var __tmp__ = _b.writeString(((((("world" : GoString))) : GoString)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_err != null) || (_n != ((5 : GoInt)))) {
            _t.errorf(((((("WriteString: got %d,%s; want 5,nil" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        _check(_t, _b, ((((("hello world" : GoString))) : GoString)));
    }
function testBuilderString(_t:stdgo.testing.Testing.T):Void {
        var _b:Builder = (({  } : Builder));
        _b.writeString(((((("alpha" : GoString))) : GoString)));
        _check(_t, _b, ((((("alpha" : GoString))) : GoString)));
        var _s1:GoString = ((_b.string() : GoString));
        _b.writeString(((((("beta" : GoString))) : GoString)));
        _check(_t, _b, ((((("alphabeta" : GoString))) : GoString)));
        var _s2:GoString = ((_b.string() : GoString));
        _b.writeString(((((("gamma" : GoString))) : GoString)));
        _check(_t, _b, ((((("alphabetagamma" : GoString))) : GoString)));
        var _s3:GoString = ((_b.string() : GoString));
        {
            var _want:GoString = ((((("alpha" : GoString))) : GoString));
            if (_s1 != _want) {
                _t.errorf(((((("first String result is now %q; want %q" : GoString))) : GoString)), Go.toInterface(_s1), Go.toInterface(_want));
            };
        };
        {
            var _want:GoString = ((((("alphabeta" : GoString))) : GoString));
            if (_s2 != _want) {
                _t.errorf(((((("second String result is now %q; want %q" : GoString))) : GoString)), Go.toInterface(_s2), Go.toInterface(_want));
            };
        };
        {
            var _want:GoString = ((((("alphabetagamma" : GoString))) : GoString));
            if (_s3 != _want) {
                _t.errorf(((((("third String result is now %q; want %q" : GoString))) : GoString)), Go.toInterface(_s3), Go.toInterface(_want));
            };
        };
    }
function testBuilderReset(_t:stdgo.testing.Testing.T):Void {
        var _b:Builder = (({  } : Builder));
        _check(_t, _b, ((((("" : GoString))) : GoString)));
        _b.writeString(((((("aaa" : GoString))) : GoString)));
        var _s:GoString = ((_b.string() : GoString));
        _check(_t, _b, ((((("aaa" : GoString))) : GoString)));
        _b.reset();
        _check(_t, _b, ((((("" : GoString))) : GoString)));
        _b.writeString(((((("bbb" : GoString))) : GoString)));
        _check(_t, _b, ((((("bbb" : GoString))) : GoString)));
        {
            var _want:GoString = ((((("aaa" : GoString))) : GoString));
            if (_s != _want) {
                _t.errorf(((((("previous String result changed after Reset: got %q; want %q" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_want));
            };
        };
    }
function testBuilderGrow(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _growLen in ((new Slice<GoInt>(((0 : GoInt)), ((100 : GoInt)), ((1000 : GoInt)), ((10000 : GoInt)), ((100000 : GoInt))) : Slice<GoInt>))) {
            var _p = stdgo.bytes.Bytes.repeat(((new Slice<GoUInt8>((("a".code : GoUInt8))) : Slice<GoUInt8>)), _growLen);
            var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), function():Void {
                var _b:Builder = (({  } : Builder));
                _b.grow(_growLen);
                if (_b.cap_() < _growLen) {
                    _t.fatalf(((((("growLen=%d: Cap() is lower than growLen" : GoString))) : GoString)), Go.toInterface(_growLen));
                };
                _b.write(_p);
                if (((_b.string() : GoString)) != ((_p : GoString))) {
                    _t.fatalf(((((("growLen=%d: bad data written after Grow" : GoString))) : GoString)), Go.toInterface(_growLen));
                };
            });
            var _wantAllocs:GoInt = ((1 : GoInt));
            if (_growLen == ((0 : GoInt))) {
                _wantAllocs = ((0 : GoInt));
            };
            {
                var _g:GoInt = ((_allocs : GoInt)), _w:GoInt = _wantAllocs;
                if (_g != _w) {
                    _t.errorf(((((("growLen=%d: got %d allocs during Write; want %v" : GoString))) : GoString)), Go.toInterface(_growLen), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
        };
    }
function testBuilderWrite2(_t:stdgo.testing.Testing.T):Void {
        {};
        for (_0 => _tt in ((new Slice<T__struct_0>((({ _name : ((((("Write" : GoString))) : GoString)), _fn : function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.write(((((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) : Slice<GoByte>)));
        }, _n : (((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) != null ? ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)).length : ((0 : GoInt))), _want : ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) } : T__struct_0)), (({ _name : ((((("WriteRune" : GoString))) : GoString)), _fn : function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeRune((("a".code : GoInt32)));
        }, _n : ((1 : GoInt)), _want : ((((("a" : GoString))) : GoString)) } : T__struct_0)), (({ _name : ((((("WriteRuneWide" : GoString))) : GoString)), _fn : function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeRune((("世".code : GoInt32)));
        }, _n : ((3 : GoInt)), _want : ((((("世" : GoString))) : GoString)) } : T__struct_0)), (({ _name : ((((("WriteString" : GoString))) : GoString)), _fn : function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeString(((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)));
        }, _n : (((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) != null ? ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)).length : ((0 : GoInt))), _want : ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) } : T__struct_0))) : Slice<T__struct_0>))) {
            _t.run(_tt._name, function(_t:stdgo.testing.Testing.T):Void {
                var _b:Builder = (({  } : Builder));
                var __tmp__ = _tt._fn(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((((("first call: got %s" : GoString))) : GoString)), Go.toInterface(_err));
                };
                if (_n != _tt._n) {
                    _t.errorf(((((("first call: got n=%d; want %d" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_tt._n));
                };
                _check(_t, _b, _tt._want);
                {
                    var __tmp__ = _tt._fn(_b);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(((((("second call: got %s" : GoString))) : GoString)), Go.toInterface(_err));
                };
                if (_n != _tt._n) {
                    _t.errorf(((((("second call: got n=%d; want %d" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_tt._n));
                };
                _check(_t, _b, _tt._want + _tt._want);
            });
        };
    }
function testBuilderWriteByte(_t:stdgo.testing.Testing.T):Void {
        var _b:Builder = (({  } : Builder));
        {
            var _err:stdgo.Error = _b.writeByte((("a".code : GoUInt8)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.writeByte(((0 : GoUInt8)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        _check(_t, _b, ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)));
    }
function testBuilderAllocs(_t:stdgo.testing.Testing.T):Void {
        var _n:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((10000 : GoInt)), function():Void {
            var _b:Builder = (({  } : Builder));
            _b.grow(((5 : GoInt)));
            _b.writeString(((((("abcde" : GoString))) : GoString)));
            ((_b.string() : GoString));
        });
        if (_n != ((1 : GoFloat64))) {
            _t.errorf(((((("Builder allocs = %v; want 1" : GoString))) : GoString)), Go.toInterface(_n));
        };
    }
function testBuilderCopyPanic(_t:stdgo.testing.Testing.T):Void {
        var _tests = ((new Slice<T__struct_1>((({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1)), (({ _name : (("" : GoString)), _fn : null, _wantPanic : false } : T__struct_1))) : Slice<T__struct_1>));
        for (_0 => _tt in _tests) {
            var _didPanic = new Chan<Bool>(0, () -> false);
            Go.routine(() -> {
                var a = function():Void {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __recover_exception__:AnyInterface = null;
                                _didPanic.__send__(({
                                    final r = __recover_exception__;
                                    __recover_exception__ = null;
                                    r;
                                }) != null);
                            };
                            a();
                        });
                        _tt._fn();
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
            {
                var _got:Bool = _didPanic.__get__();
                if (_got != _tt._wantPanic) {
                    _t.errorf(((((("%s: panicked = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._name), Go.toInterface(_got), Go.toInterface(_tt._wantPanic));
                };
            };
        };
    }
function testBuilderWriteInvalidRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _r in ((new Slice<GoInt32>(((-1 : GoInt32)), ((1114112 : GoInt32))) : Slice<GoInt32>))) {
            var _b:Builder = (({  } : Builder));
            _b.writeRune(_r);
            _check(_t, _b, ((((("\uFFFD" : GoString))) : GoString)));
        };
    }
function _benchmarkBuilder(_b:stdgo.testing.Testing.B, _f:(_b:stdgo.testing.Testing.B, _numWrite:GoInt, _grow:Bool) -> Void):Void {
        _b.run(((((("1Write_NoGrow" : GoString))) : GoString)), function(_b:stdgo.testing.Testing.B):Void {
            _b.reportAllocs();
            _f(_b, ((1 : GoInt)), false);
        });
        _b.run(((((("3Write_NoGrow" : GoString))) : GoString)), function(_b:stdgo.testing.Testing.B):Void {
            _b.reportAllocs();
            _f(_b, ((3 : GoInt)), false);
        });
        _b.run(((((("3Write_Grow" : GoString))) : GoString)), function(_b:stdgo.testing.Testing.B):Void {
            _b.reportAllocs();
            _f(_b, ((3 : GoInt)), true);
        });
    }
function benchmarkBuildString_Builder(_b:stdgo.testing.Testing.B):Void {
        _benchmarkBuilder(_b, function(_b:stdgo.testing.Testing.B, _numWrite:GoInt, _grow:Bool):Void {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _buf:Builder = (({  } : Builder));
                    if (_grow) {
                        _buf.grow((_someBytes != null ? _someBytes.length : ((0 : GoInt))) * _numWrite);
                    };
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _numWrite, _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = ((_buf.string() : GoString));
                });
            };
        });
    }
function benchmarkBuildString_ByteBuffer(_b:stdgo.testing.Testing.B):Void {
        _benchmarkBuilder(_b, function(_b:stdgo.testing.Testing.B, _numWrite:GoInt, _grow:Bool):Void {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _buf:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
                    if (_grow) {
                        _buf.grow((_someBytes != null ? _someBytes.length : ((0 : GoInt))) * _numWrite);
                    };
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _numWrite, _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = ((_buf.string() : GoString));
                });
            };
        });
    }
function testClone(_t:stdgo.testing.Testing.T):Void {
        var _cloneTests:Slice<GoString> = ((new Slice<GoString>(((((("" : GoString))) : GoString)), stdgo.strings.Strings.clone(((((("" : GoString))) : GoString))), ((stdgo.strings.Strings.repeat(((((("a" : GoString))) : GoString)), ((42 : GoInt))).__slice__(0, ((0 : GoInt))) : GoString)), ((((("short" : GoString))) : GoString)), stdgo.strings.Strings.repeat(((((("a" : GoString))) : GoString)), ((42 : GoInt)))) : Slice<GoString>));
        for (_0 => _input in _cloneTests) {
            var _clone:GoString = stdgo.strings.Strings.clone(_input);
            if (_clone != _input) {
                _t.errorf(((((("Clone(%q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_input), Go.toInterface(_clone), Go.toInterface(_input));
            };
            var _inputHeader = ((((Go.toInterface(Go.pointer(_input)) : stdgo.unsafe.Unsafe.UnsafePointer)).__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [], stdgo.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) : stdgo.reflect.Reflect.StringHeader));
            var _cloneHeader = ((((Go.toInterface(Go.pointer(_clone)) : stdgo.unsafe.Unsafe.UnsafePointer)).__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [], stdgo.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) : stdgo.reflect.Reflect.StringHeader));
            if (((_input != null ? _input.length : ((0 : GoInt))) != ((0 : GoInt))) && (_cloneHeader.data == _inputHeader.data)) {
                _t.errorf(((((("Clone(%q) return value should not reference inputs backing memory." : GoString))) : GoString)), Go.toInterface(_input));
            };
            var _emptyHeader = ((((Go.toInterface(Go.pointer(_emptyString)) : stdgo.unsafe.Unsafe.UnsafePointer)).__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [], stdgo.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) : stdgo.reflect.Reflect.StringHeader));
            if (((_input != null ? _input.length : ((0 : GoInt))) == ((0 : GoInt))) && (_cloneHeader.data != _emptyHeader.data)) {
                _t.errorf(((((("Clone(%#v) return value should be equal to empty string." : GoString))) : GoString)), Go.toInterface(_inputHeader));
            };
        };
    }
function benchmarkClone(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = stdgo.strings.Strings.repeat(((((("a" : GoString))) : GoString)), ((42 : GoInt)));
        _b.reportAllocs();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _stringSink = stdgo.strings.Strings.clone(_str);
            });
        };
    }
function testCompare(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _compareTests) {
            var _cmp:GoInt = compare(_tt._a, _tt._b);
            if (_cmp != _tt._i) {
                _t.errorf((("Compare(%q, %q) = %v" : GoString)), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_cmp));
            };
        };
    }
function testCompareIdenticalString(_t:stdgo.testing.Testing.T):Void {
        var _s:GoString = ((((("Hello Gophers!" : GoString))) : GoString));
        if (compare(_s, _s) != ((0 : GoInt))) {
            _t.error(Go.toInterface(((((("s != s" : GoString))) : GoString))));
        };
        if (compare(_s, ((_s.__slice__(0, ((1 : GoInt))) : GoString))) != ((1 : GoInt))) {
            _t.error(Go.toInterface(((((("s > s[:1] failed" : GoString))) : GoString))));
        };
    }
function testCompareStrings(_t:stdgo.testing.Testing.T):Void {
        var _unsafeString = function(_b:Slice<GoByte>):GoString {
            return ((((Go.toInterface(_b) : stdgo.unsafe.Unsafe.UnsafePointer)).__convert__(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(string_kind))) : Pointer<GoString>)).value;
        };
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
        var _lastLen:GoInt = ((0 : GoInt));
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
            var _sa:GoString = _unsafeString(_a), _sb:GoString = _unsafeString(_b);
            var _cmp:GoInt = compare(((_sa.__slice__(0, _len) : GoString)), ((_sb.__slice__(0, _len) : GoString)));
            if (_cmp != ((0 : GoInt))) {
                _t.errorf((("CompareIdentical(%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_cmp));
            };
            if (_len > ((0 : GoInt))) {
                _cmp = compare(((_sa.__slice__(0, _len - ((1 : GoInt))) : GoString)), ((_sb.__slice__(0, _len) : GoString)));
                if (_cmp != ((-1 : GoInt))) {
                    _t.errorf((("CompareAshorter(%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_cmp));
                };
                _cmp = compare(((_sa.__slice__(0, _len) : GoString)), ((_sb.__slice__(0, _len - ((1 : GoInt))) : GoString)));
                if (_cmp != ((1 : GoInt))) {
                    _t.errorf((("CompareBshorter(%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_cmp));
                };
            };
            {
                var _k:GoInt = _lastLen;
                Go.cfor(_k < _len, _k++, {
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8))) - ((1 : GoUInt8));
                    _cmp = compare(_unsafeString(((_a.__slice__(0, _len) : Slice<GoUInt8>))), _unsafeString(((_b.__slice__(0, _len) : Slice<GoUInt8>))));
                    if (_cmp != ((1 : GoInt))) {
                        _t.errorf((("CompareAbigger(%d,%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8))) + ((1 : GoUInt8));
                    _cmp = compare(_unsafeString(((_a.__slice__(0, _len) : Slice<GoUInt8>))), _unsafeString(((_b.__slice__(0, _len) : Slice<GoUInt8>))));
                    if (_cmp != ((-1 : GoInt))) {
                        _t.errorf((("CompareBbigger(%d,%d) = %d" : GoString)), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    if (_b != null) _b[_k] = (_a != null ? _a[_k] : ((0 : GoUInt8)));
                });
            };
            _lastLen = _len;
        };
    }
function exampleBuilder():Void {
        var _b:Builder = (({  } : Builder));
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i >= ((1 : GoInt)), _i--, {
                stdgo.fmt.Fmt.fprintf({
                    final __self__ = new Builder_wrapper(_b);
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(__0:GoInt):Void _b.grow(__0) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__._copyCheck = #if !macro function():Void _b._copyCheck() #else null #end;
                    __self__._grow = #if !macro function(__0:GoInt):Void _b._grow(__0) #else null #end;
                    __self__;
                }, ((((("%d..." : GoString))) : GoString)), Go.toInterface(_i));
            });
        };
        _b.writeString(((((("ignition" : GoString))) : GoString)));
        stdgo.fmt.Fmt.println(((_b.string() : GoString)));
    }
function exampleCompare():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare(((((("b" : GoString))) : GoString)), ((((("a" : GoString))) : GoString))));
    }
function exampleContains():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(((((("seafood" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(((((("seafood" : GoString))) : GoString)), ((((("bar" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(((((("seafood" : GoString))) : GoString)), ((((("" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(((((("team" : GoString))) : GoString)), ((((("i" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(((((("fail" : GoString))) : GoString)), ((((("ui" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(((((("ure" : GoString))) : GoString)), ((((("ui" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(((((("failure" : GoString))) : GoString)), ((((("ui" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(((((("foo" : GoString))) : GoString)), ((((("" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune(((((("aardvark" : GoString))) : GoString)), ((97 : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune(((((("timeout" : GoString))) : GoString)), ((97 : GoInt32))));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.count(((((("cheese" : GoString))) : GoString)), ((((("e" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.count(((((("five" : GoString))) : GoString)), ((((("" : GoString))) : GoString))));
    }
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cut(_s, _sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(((((("Cut(%q, %q) = %q, %q, %v\n" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show(((((("Gopher" : GoString))) : GoString)), ((((("Go" : GoString))) : GoString)));
        _show(((((("Gopher" : GoString))) : GoString)), ((((("ph" : GoString))) : GoString)));
        _show(((((("Gopher" : GoString))) : GoString)), ((((("er" : GoString))) : GoString)));
        _show(((((("Gopher" : GoString))) : GoString)), ((((("Badger" : GoString))) : GoString)));
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold(((((("Go" : GoString))) : GoString)), ((((("go" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold(((((("AB" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold(((((("ß" : GoString))) : GoString)), ((((("ss" : GoString))) : GoString))));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(((((("Fields are: %q" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.fields(((((("  foo bar  baz   " : GoString))) : GoString)))));
    }
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(((((("Fields are: %q" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.fieldsFunc(((((("  foo1;bar2,baz3..." : GoString))) : GoString)), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix(((((("Gopher" : GoString))) : GoString)), ((((("Go" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix(((((("Gopher" : GoString))) : GoString)), ((((("C" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix(((((("Gopher" : GoString))) : GoString)), ((((("" : GoString))) : GoString))));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(((((("Amigo" : GoString))) : GoString)), ((((("go" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(((((("Amigo" : GoString))) : GoString)), ((((("O" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(((((("Amigo" : GoString))) : GoString)), ((((("Ami" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(((((("Amigo" : GoString))) : GoString)), ((((("" : GoString))) : GoString))));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.index(((((("chicken" : GoString))) : GoString)), ((((("ken" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.index(((((("chicken" : GoString))) : GoString)), ((((("dmr" : GoString))) : GoString))));
    }
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc(((((("Hello, 世界" : GoString))) : GoString)), _f));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc(((((("Hello, world" : GoString))) : GoString)), _f));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny(((((("chicken" : GoString))) : GoString)), ((((("aeiouy" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny(((((("crwth" : GoString))) : GoString)), ((((("aeiouy" : GoString))) : GoString))));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte(((((("golang" : GoString))) : GoString)), (("g".code : GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte(((((("gophers" : GoString))) : GoString)), (("h".code : GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte(((((("golang" : GoString))) : GoString)), (("x".code : GoUInt8))));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune(((((("chicken" : GoString))) : GoString)), (("k".code : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune(((((("chicken" : GoString))) : GoString)), (("d".code : GoInt32))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.index(((((("go gopher" : GoString))) : GoString)), ((((("go" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex(((((("go gopher" : GoString))) : GoString)), ((((("go" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex(((((("go gopher" : GoString))) : GoString)), ((((("rodent" : GoString))) : GoString))));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny(((((("go gopher" : GoString))) : GoString)), ((((("go" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny(((((("go gopher" : GoString))) : GoString)), ((((("rodent" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny(((((("go gopher" : GoString))) : GoString)), ((((("fail" : GoString))) : GoString))));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte(((((("Hello, world" : GoString))) : GoString)), (("l".code : GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte(((((("Hello, world" : GoString))) : GoString)), (("o".code : GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte(((((("Hello, world" : GoString))) : GoString)), (("x".code : GoUInt8))));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc(((((("go 123" : GoString))) : GoString)), stdgo.unicode.Unicode.isNumber));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc(((((("123 go" : GoString))) : GoString)), stdgo.unicode.Unicode.isNumber));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc(((((("go" : GoString))) : GoString)), stdgo.unicode.Unicode.isNumber));
    }
function exampleJoin():Void {
        var _s = ((new Slice<GoString>(((((("foo" : GoString))) : GoString)), ((((("bar" : GoString))) : GoString)), ((((("baz" : GoString))) : GoString))) : Slice<GoString>));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.join(_s, (((((", " : GoString))) : GoString))));
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.println(((((("ba" : GoString))) : GoString)) + stdgo.strings.Strings.repeat(((((("na" : GoString))) : GoString)), ((2 : GoInt))));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace(((((("oink oink oink" : GoString))) : GoString)), ((((("k" : GoString))) : GoString)), ((((("ky" : GoString))) : GoString)), ((2 : GoInt))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace(((((("oink oink oink" : GoString))) : GoString)), ((((("oink" : GoString))) : GoString)), ((((("moo" : GoString))) : GoString)), ((-1 : GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.replaceAll(((((("oink oink oink" : GoString))) : GoString)), ((((("oink" : GoString))) : GoString)), ((((("moo" : GoString))) : GoString))));
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.split(((((("a,b,c" : GoString))) : GoString)), ((((("," : GoString))) : GoString)))));
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.split(((((("a man a plan a canal panama" : GoString))) : GoString)), ((((("a " : GoString))) : GoString)))));
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.split((((((" xyz " : GoString))) : GoString)), ((((("" : GoString))) : GoString)))));
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.split(((((("" : GoString))) : GoString)), ((((("Bernardo O\'Higgins" : GoString))) : GoString)))));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.splitN(((((("a,b,c" : GoString))) : GoString)), ((((("," : GoString))) : GoString)), ((2 : GoInt)))));
        var _z = stdgo.strings.Strings.splitN(((((("a,b,c" : GoString))) : GoString)), ((((("," : GoString))) : GoString)), ((0 : GoInt)));
        stdgo.fmt.Fmt.printf(((((("%q (nil = %v)\n" : GoString))) : GoString)), Go.toInterface(_z), Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.splitAfter(((((("a,b,c" : GoString))) : GoString)), ((((("," : GoString))) : GoString)))));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(((((("%q\n" : GoString))) : GoString)), Go.toInterface(stdgo.strings.Strings.splitAfterN(((((("a,b,c" : GoString))) : GoString)), ((((("," : GoString))) : GoString)), ((2 : GoInt)))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.title(((((("her royal highness" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.title(((((("loud noises" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.title(((((("хлеб" : GoString))) : GoString))));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle(((((("her royal highness" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle(((((("loud noises" : GoString))) : GoString))));
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle(((((("хлеб" : GoString))) : GoString))));
    }
function exampleToTitleSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase, ((((("dünyanın ilk borsa yapısı Aizonai kabul edilir" : GoString))) : GoString))));
    }
function exampleMap():Void {
        var _rot13:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if ((_r >= (("A".code : GoInt32))) && (_r <= (("Z".code : GoInt32)))) {
                return (("A".code : GoInt32)) + (((_r - (("A".code : GoInt32))) + ((13 : GoInt32))) % ((26 : GoInt32)));
            } else if ((_r >= (("a".code : GoInt32))) && (_r <= (("z".code : GoInt32)))) {
                return (("a".code : GoInt32)) + (((_r - (("a".code : GoInt32))) + ((13 : GoInt32))) % ((26 : GoInt32)));
            };
            return _r;
        };
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.map(_rot13, ((((("\'Twas brillig and the slithy gopher..." : GoString))) : GoString))));
    }
function exampleNewReplacer():Void {
        var _r = stdgo.strings.Strings.newReplacer(((((("<" : GoString))) : GoString)), ((((("&lt;" : GoString))) : GoString)), (((((">" : GoString))) : GoString)), ((((("&gt;" : GoString))) : GoString)));
        stdgo.fmt.Fmt.println(_r.replace(((((("This is <b>HTML</b>!" : GoString))) : GoString))));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpper(((((("Gopher" : GoString))) : GoString))));
    }
function exampleToUpperSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, ((((("örnek iş" : GoString))) : GoString))));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLower(((((("Gopher" : GoString))) : GoString))));
    }
function exampleToLowerSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, ((((("Önnek İş" : GoString))) : GoString))));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.print(stdgo.strings.Strings.trim(((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString)), ((((("!¡" : GoString))) : GoString))));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.println(stdgo.strings.Strings.trimSpace((((((" \t\n Hello, Gophers \n\t\r\n" : GoString))) : GoString))));
    }
function exampleTrimPrefix():Void {
        var _s:GoString = ((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString));
        _s = stdgo.strings.Strings.trimPrefix(_s, ((((("¡¡¡Hello, " : GoString))) : GoString)));
        _s = stdgo.strings.Strings.trimPrefix(_s, ((((("¡¡¡Howdy, " : GoString))) : GoString)));
        stdgo.fmt.Fmt.print(_s);
    }
function exampleTrimSuffix():Void {
        var _s:GoString = ((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString));
        _s = stdgo.strings.Strings.trimSuffix(_s, (((((", Gophers!!!" : GoString))) : GoString)));
        _s = stdgo.strings.Strings.trimSuffix(_s, (((((", Marmots!!!" : GoString))) : GoString)));
        stdgo.fmt.Fmt.print(_s);
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimFunc(((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString)), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        }));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeft(((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString)), ((((("!¡" : GoString))) : GoString))));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeftFunc(((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString)), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        }));
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRight(((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString)), ((((("!¡" : GoString))) : GoString))));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRightFunc(((((("¡¡¡Hello, Gophers!!!" : GoString))) : GoString)), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        }));
    }
function testReader(_t:stdgo.testing.Testing.T):Void {
        var _r = stdgo.strings.Strings.newReader(((((("0123456789" : GoString))) : GoString)));
        var _tests = ((new Slice<T__struct_3>((({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3)), (({ _off : ((0 : GoInt64)), _seek : ((0 : GoInt)), _n : ((0 : GoInt)), _want : (("" : GoString)), _wantpos : ((0 : GoInt64)), _readerr : ((null : stdgo.Error)), _seekerr : (("" : GoString)) } : T__struct_3))) : Slice<T__struct_3>));
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
        var _r = stdgo.strings.Strings.newReader(((((("0123456789" : GoString))) : GoString)));
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
        var _r = stdgo.strings.Strings.newReader(((((("0123456789" : GoString))) : GoString)));
        var _tests = ((new Slice<T__struct_4>((({ _off : ((0 : GoInt64)), _n : ((10 : GoInt)), _want : ((((("0123456789" : GoString))) : GoString)), _wanterr : ((null : AnyInterface)) } : T__struct_4)), (({ _off : ((1 : GoInt64)), _n : ((10 : GoInt)), _want : ((((("123456789" : GoString))) : GoString)), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_4)), (({ _off : ((1 : GoInt64)), _n : ((9 : GoInt)), _want : ((((("123456789" : GoString))) : GoString)), _wanterr : ((null : AnyInterface)) } : T__struct_4)), (({ _off : ((11 : GoInt64)), _n : ((10 : GoInt)), _want : ((((("" : GoString))) : GoString)), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_4)), (({ _off : ((0 : GoInt64)), _n : ((0 : GoInt)), _want : ((((("" : GoString))) : GoString)), _wanterr : ((null : AnyInterface)) } : T__struct_4)), (({ _off : ((-1 : GoInt64)), _n : ((0 : GoInt)), _want : ((((("" : GoString))) : GoString)), _wanterr : Go.toInterface(((((("strings.Reader.ReadAt: negative offset" : GoString))) : GoString))) } : T__struct_4))) : Slice<T__struct_4>));
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
        var _r = stdgo.strings.Strings.newReader(((((("0123456789" : GoString))) : GoString)));
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
        var _r = stdgo.strings.Strings.newReader(((((("" : GoString))) : GoString)));
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
function testWriteTo(_t:stdgo.testing.Testing.T):Void {
        {};
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (((((("0123456789" : GoString))) : GoString)) != null ? ((((("0123456789" : GoString))) : GoString)).length : ((0 : GoInt))), _i++, {
                var _s:GoString = ((((((("0123456789" : GoString))) : GoString)).__slice__(_i) : GoString));
                var _r = stdgo.strings.Strings.newReader(_s);
                var _b:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
                var __tmp__ = _r.writeTo({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(__0:GoInt):Void _b.grow(__0) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _b.next(__0) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                    __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r_) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.truncate = #if !macro function(__0:GoInt):Void _b.truncate(__0) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r__) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(__0:GoInt):GoInt return _b._grow(__0) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
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
                    _t.errorf(((((("for length %d: got error = %v; want nil" : GoString))) : GoString)), Go.toInterface((_s != null ? _s.length : ((0 : GoInt)))), Go.toInterface(_err));
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
/**
    // tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:stdgo.testing.Testing.T):Void {
        var _r = stdgo.strings.Strings.newReader(((((("abc" : GoString))) : GoString)));
        stdgo.io.Io.copyN(stdgo.io.Io.discard, {
            final __self__ = new Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_b, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
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
        var _r = stdgo.strings.Strings.newReader(((((("世界" : GoString))) : GoString)));
        {
            var __tmp__ = _r.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(((((("ReadRune: unexpected error: %v" : GoString))) : GoString)), Go.toInterface(_err));
            };
        };
        {};
        _r.reset(((((("abcdef" : GoString))) : GoString)));
        {
            var _err:stdgo.Error = _r.unreadRune();
            if (_err == null) {
                _t.errorf(((((("UnreadRune: expected error, got nil" : GoString))) : GoString)));
            };
        };
        var __tmp__ = stdgo.io.Io.readAll({
            final __self__ = new Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_b, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
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
/**
    // The http package's old HTML escaping function.
**/
function _oldHTMLEscape(_s:GoString):GoString {
        _s = replace(_s, ((((("&" : GoString))) : GoString)), ((((("&amp;" : GoString))) : GoString)), ((-1 : GoInt)));
        _s = replace(_s, ((((("<" : GoString))) : GoString)), ((((("&lt;" : GoString))) : GoString)), ((-1 : GoInt)));
        _s = replace(_s, (((((">" : GoString))) : GoString)), ((((("&gt;" : GoString))) : GoString)), ((-1 : GoInt)));
        _s = replace(_s, (("\"" : GoString)), ((((("&quot;" : GoString))) : GoString)), ((-1 : GoInt)));
        _s = replace(_s, ((((("\'" : GoString))) : GoString)), ((((("&apos;" : GoString))) : GoString)), ((-1 : GoInt)));
        return _s;
    }
@:structInit class T_testCase_testReplacer_0 {
    public var _r : Ref<Replacer>;
    public var _in : GoString;
    public var _out : GoString;
    public function new(?_r:Ref<Replacer>, ?_in:GoString, ?_out:GoString) {
        if (_r != null) this._r = _r;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testCase_testReplacer_0(_r, _in, _out);
    }
}
/**
    // TestReplacer tests the replacer implementations.
**/
function testReplacer(_t:stdgo.testing.Testing.T):Void {
        {};
        var _testCases:Slice<T_testCase_testReplacer_0> = ((null : Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>));
        var _str:GoUInt8 -> GoString = function(_b:GoByte):GoString {
            return ((((new Slice<GoUInt8>(_b) : Slice<GoUInt8>)) : GoString));
        };
        var _s:Slice<GoString> = ((null : Slice<GoString>));
        _s = ((null : Slice<GoString>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                _s = (_s != null ? _s.__append__(_str(((_i : GoByte))), _str((((_i + ((1 : GoInt))) : GoByte)))) : new Slice<GoString>(_str(((_i : GoByte))), _str((((_i + ((1 : GoInt))) : GoByte)))));
            });
        };
        var _inc = newReplacer(..._s.__toArray__());
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, ((((("brad" : GoString))) : GoString)), ((((("BrAd" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, repeat(((((("a" : GoString))) : GoString)), ((32891 : GoInt))), repeat(((((("A" : GoString))) : GoString)), ((32891 : GoInt)))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, ((((("brad" : GoString))) : GoString)), ((((("csbe" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, (((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, ((((("brad" : GoString))) : GoString)), ((((("BrAd" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, repeat(((((("a" : GoString))) : GoString)), ((32891 : GoInt))), repeat(((((("A" : GoString))) : GoString)), ((32891 : GoInt)))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, ((((("brad" : GoString))) : GoString)), ((((("csbe" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, (((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        _s = ((null : Slice<GoString>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                var _n:GoInt = (_i + ((1 : GoInt))) - (("a".code : GoInt));
                if (_n < ((1 : GoInt))) {
                    _n = ((1 : GoInt));
                };
                _s = (_s != null ? _s.__append__(_str(((_i : GoByte))), repeat(_str(((_i : GoByte))), _n)) : new Slice<GoString>(_str(((_i : GoByte))), repeat(_str(((_i : GoByte))), _n)));
            });
        };
        var _repeat = newReplacer(..._s.__toArray__());
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("No changes" : GoString))) : GoString)), ((((("No changes" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("I <3 escaping & stuff" : GoString))) : GoString)), ((((("I &lt;3 escaping &amp; stuff" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("&&&" : GoString))) : GoString)), ((((("&amp;&amp;&amp;" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, ((((("brad" : GoString))) : GoString)), ((((("bbrrrrrrrrrrrrrrrrrradddd" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, ((((("abba" : GoString))) : GoString)), ((((("abbbba" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("11" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("22" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br11d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("No changes" : GoString))) : GoString)), ((((("No changes" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("I <3 escaping & stuff" : GoString))) : GoString)), ((((("I &lt;3 escaping &amp; stuff" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("&&&" : GoString))) : GoString)), ((((("&amp;&amp;&amp;" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, ((((("brad" : GoString))) : GoString)), ((((("bbrrrrrrrrrrrrrrrrrradddd" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, ((((("abba" : GoString))) : GoString)), ((((("abbbba" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("11" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("22" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br11d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, ((((("&amp;amp;" : GoString))) : GoString)), ((((("&amp;" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, ((((("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;" : GoString))) : GoString)), ((((("<b>HTML\'s neat</b>" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("1111" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("31" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, ((((("&amp;amp;" : GoString))) : GoString)), ((((("&amp;" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, ((((("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;" : GoString))) : GoString)), ((((("<b>HTML\'s neat</b>" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("1111" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("31" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _gen1 = newReplacer(((((("aaa" : GoString))) : GoString)),
((((("3[aaa]" : GoString))) : GoString)),
((((("aa" : GoString))) : GoString)),
((((("2[aa]" : GoString))) : GoString)),
((((("a" : GoString))) : GoString)),
((((("1[a]" : GoString))) : GoString)),
((((("i" : GoString))) : GoString)),
((((("i" : GoString))) : GoString)),
((((("longerst" : GoString))) : GoString)),
((((("most long" : GoString))) : GoString)),
((((("longer" : GoString))) : GoString)),
((((("medium" : GoString))) : GoString)),
((((("long" : GoString))) : GoString)),
((((("short" : GoString))) : GoString)),
((((("xx" : GoString))) : GoString)),
((((("xx" : GoString))) : GoString)),
((((("x" : GoString))) : GoString)),
((((("X" : GoString))) : GoString)),
((((("X" : GoString))) : GoString)),
((((("Y" : GoString))) : GoString)),
((((("Y" : GoString))) : GoString)),
((((("Z" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("fooaaabar" : GoString))) : GoString)), ((((("foo3[aaa]b1[a]r" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("long, longerst, longer" : GoString))) : GoString)), ((((("short, most long, medium" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("xxxxx" : GoString))) : GoString)), ((((("xxxxX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("XiX" : GoString))) : GoString)), ((((("YiY" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("fooaaabar" : GoString))) : GoString)), ((((("foo3[aaa]b1[a]r" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("long, longerst, longer" : GoString))) : GoString)), ((((("short, most long, medium" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("xxxxx" : GoString))) : GoString)), ((((("xxxxX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("XiX" : GoString))) : GoString)), ((((("YiY" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _gen2 = newReplacer(((((("roses" : GoString))) : GoString)), ((((("red" : GoString))) : GoString)), ((((("violets" : GoString))) : GoString)), ((((("blue" : GoString))) : GoString)), ((((("sugar" : GoString))) : GoString)), ((((("sweet" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2, ((((("roses are red, violets are blue..." : GoString))) : GoString)), ((((("red are red, blue are blue..." : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2, ((((("roses are red, violets are blue..." : GoString))) : GoString)), ((((("red are red, blue are blue..." : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _gen3 = newReplacer(((((("abracadabra" : GoString))) : GoString)), ((((("poof" : GoString))) : GoString)), ((((("abracadabrakazam" : GoString))) : GoString)), ((((("splat" : GoString))) : GoString)), ((((("abraham" : GoString))) : GoString)), ((((("lincoln" : GoString))) : GoString)), ((((("abrasion" : GoString))) : GoString)), ((((("scrape" : GoString))) : GoString)), ((((("abraham" : GoString))) : GoString)), ((((("isaac" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("abracadabrakazam abraham" : GoString))) : GoString)), ((((("poofkazam lincoln" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("abrasion abracad" : GoString))) : GoString)), ((((("scrape abracad" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("abba abram abrasive" : GoString))) : GoString)), ((((("abba abram abrasive" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("abracadabrakazam abraham" : GoString))) : GoString)), ((((("poofkazam lincoln" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("abrasion abracad" : GoString))) : GoString)), ((((("scrape abracad" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("abba abram abrasive" : GoString))) : GoString)), ((((("abba abram abrasive" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _foo1 = newReplacer(((((("foo1" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("foo2" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo3" : GoString))) : GoString)), ((((("C" : GoString))) : GoString)));
        var _foo2 = newReplacer(((((("foo1" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("foo2" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo31" : GoString))) : GoString)), ((((("C" : GoString))) : GoString)), ((((("foo32" : GoString))) : GoString)), ((((("D" : GoString))) : GoString)));
        var _foo3 = newReplacer(((((("foo11" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("foo12" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo31" : GoString))) : GoString)), ((((("C" : GoString))) : GoString)), ((((("foo32" : GoString))) : GoString)), ((((("D" : GoString))) : GoString)));
        var _foo4 = newReplacer(((((("foo12" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo32" : GoString))) : GoString)), ((((("D" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2C2oo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2Doo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2C2oo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2Doo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _allBytes = new Slice<GoUInt8>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _allBytes) {
            if (_allBytes != null) _allBytes[_i] = ((_i : GoByte));
        };
        var _allString:GoString = ((_allBytes : GoString));
        var _genAll = newReplacer(_allString, ((((("[all]" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), ((((("[ff]" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), ((((("[00]" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, _allString, ((((("[all]" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, (((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)) + _allString) + (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), ((((("a[ff][all][00]" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, _allString, ((((("[all]" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, (((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)) + _allString) + (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), ((((("a[ff][all][00]" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _blankToX1 = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)));
        var _blankToX2 = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)));
        var _blankHighPriority = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((((("O" : GoString))) : GoString)));
        var _blankLowPriority = newReplacer(((((("o" : GoString))) : GoString)), ((((("O" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)));
        var _blankNoOp1 = newReplacer(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)));
        var _blankNoOp2 = newReplacer(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)));
        var _blankFoo = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((((("foobar" : GoString))) : GoString)), ((((("R" : GoString))) : GoString)), ((((("foobaz" : GoString))) : GoString)), ((((("Z" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("oo" : GoString))) : GoString)), ((((("XOXOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("oiio" : GoString))) : GoString)), ((((("XOXiXiXOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiXOXOXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("oo" : GoString))) : GoString)), ((((("OOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("oiio" : GoString))) : GoString)), ((((("OXiXiOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiOOXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, ((((("foobarfoobaz" : GoString))) : GoString)), ((((("XRXZX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, ((((("foobar-foobaz" : GoString))) : GoString)), ((((("XRX-XZX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("oo" : GoString))) : GoString)), ((((("XOXOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("oiio" : GoString))) : GoString)), ((((("XOXiXiXOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiXOXOXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("oo" : GoString))) : GoString)), ((((("OOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("oiio" : GoString))) : GoString)), ((((("OXiXiOX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiOOXiX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, ((((("foobarfoobaz" : GoString))) : GoString)), ((((("XRXZX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, ((((("foobar-foobaz" : GoString))) : GoString)), ((((("XRX-XZX" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)),
((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _abcMatcher = newReplacer(((((("abc" : GoString))) : GoString)), ((((("[match]" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("ab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("abc" : GoString))) : GoString)), ((((("[match]" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("abcd" : GoString))) : GoString)), ((((("[match]d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("cabcabcdabca" : GoString))) : GoString)), ((((("c[match][match]d[match]a" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("ab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("abc" : GoString))) : GoString)), ((((("[match]" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("abcd" : GoString))) : GoString)), ((((("[match]d" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, ((((("cabcabcdabca" : GoString))) : GoString)), ((((("c[match][match]d[match]a" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _noHello = newReplacer(((((("Hello" : GoString))) : GoString)), ((((("" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("Hello" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("Hellox" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("xHello" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("xHellox" : GoString))) : GoString)), ((((("xx" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("Hello" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("Hellox" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("xHello" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, ((((("xHellox" : GoString))) : GoString)), ((((("xx" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        var _nop = newReplacer();
        _testCases = (_testCases != null ? _testCases.__append__(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, ((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, ((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)), ((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0))));
        for (_i => _tc in _testCases) {
            {
                var _s:GoString = _tc._r.replace(_tc._in);
                if (_s != _tc._out) {
                    _t.errorf(((((("%d. Replace(%q) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_s), Go.toInterface(_tc._out));
                };
            };
            var _buf:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
            var __tmp__ = _tc._r.writeString({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                __self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
                __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                __self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(__0) #else null #end;
                __self__;
            }, _tc._in), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((((("%d. WriteString: %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_err));
                continue;
            };
            var _got:GoString = ((_buf.string() : GoString));
            if (_got != _tc._out) {
                _t.errorf(((((("%d. WriteString(%q) wrote %q, want %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_got), Go.toInterface(_tc._out));
                continue;
            };
            if (_n != (_tc._out != null ? _tc._out.length : ((0 : GoInt)))) {
                _t.errorf(((((("%d. WriteString(%q) wrote correct string but reported %d bytes; want %d (%q)" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_n), Go.toInterface((_tc._out != null ? _tc._out.length : ((0 : GoInt)))), Go.toInterface(_tc._out));
            };
        };
    }
/**
    // TestPickAlgorithm tests that NewReplacer picks the correct algorithm.
**/
function testPickAlgorithm(_t:stdgo.testing.Testing.T):Void {
        for (_i => _tc in _algorithmTestCases) {
            var _got:GoString = stdgo.fmt.Fmt.sprintf(((((("%T" : GoString))) : GoString)), Go.toInterface(_tc._r.replacer()));
            if (_got != _tc._want) {
                _t.errorf(((((("%d. algorithm = %s, want %s" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tc._want));
            };
        };
    }
/**
    // TestWriteStringError tests that WriteString returns an error
    // received from the underlying io.Writer.
**/
function testWriteStringError(_t:stdgo.testing.Testing.T):Void {
        for (_i => _tc in _algorithmTestCases) {
            var __tmp__ = _tc._r.writeString({
                final __self__ = new stdgo.strings_test.Strings_test.T_errWriter_wrapper(((new stdgo.strings_test.Strings_test.T_errWriter() : stdgo.strings_test.Strings_test.T_errWriter)));
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.strings_test.Strings_test.T_errWriter() : stdgo.strings_test.Strings_test.T_errWriter)).write(_p) #else null #end;
                __self__;
            }, ((((("abc" : GoString))) : GoString))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != ((0 : GoInt))) || (_err == null)) || (_err.error() != ((((("unwritable" : GoString))) : GoString)))) {
                _t.errorf(((((("%d. WriteStringError = %d, %v, want 0, unwritable" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
/**
    // TestGenericTrieBuilding verifies the structure of the generated trie. There
    // is one node per line, and the key ending with the current line is in the
    // trie if it ends with a "+".
**/
function testGenericTrieBuilding(_t:stdgo.testing.Testing.T):Void {
        var _testCases = ((new Slice<StringTest>(((new StringTest(((((("abc;abdef;abdefgh;xx;xy;z" : GoString))) : GoString)), (("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t" : GoString))) : StringTest)), ((new StringTest(((((("abracadabra;abracadabrakazam;abraham;abrasion" : GoString))) : GoString)), (("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t" : GoString))) : StringTest)), ((new StringTest(((((("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y" : GoString))) : GoString)), (("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t" : GoString))) : StringTest)), ((new StringTest(((((("foo;;foo;foo1" : GoString))) : GoString)), (("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t" : GoString))) : StringTest))) : Slice<StringTest>));
        for (_0 => _tc in _testCases) {
            var _keys = split(_tc._in, (((((";" : GoString))) : GoString)));
            var _args = new Slice<GoString>(...[for (i in 0 ... (((_keys != null ? _keys.length : ((0 : GoInt))) * ((2 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
            for (_i => _key in _keys) {
                if (_args != null) _args[_i * ((2 : GoInt))] = _key;
            };
            var _got:GoString = newReplacer(..._args.__toArray__()).printTrie();
            var _wantbuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_tc._out != null ? _tc._out.length : ((0 : GoInt))) : GoInt)).toBasic());
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_tc._out != null ? _tc._out.length : ((0 : GoInt))), _i++, {
                    if ((_tc._out != null ? _tc._out[_i] : ((0 : GoUInt8))) != (("\t".code : GoUInt8))) {
                        _wantbuf = (_wantbuf != null ? _wantbuf.__append__((_tc._out != null ? _tc._out[_i] : ((0 : GoUInt8)))) : new Slice<GoUInt8>((_tc._out != null ? _tc._out[_i] : ((0 : GoUInt8)))));
                    };
                });
            };
            var _want:GoString = ((_wantbuf : GoString));
            if (_got != _want) {
                _t.errorf(((((("PrintTrie(%q)\ngot\n%swant\n%s" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function benchmarkGenericNoMatch(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("A" : GoString))) : GoString)), ((100 : GoInt))) + repeat(((((("B" : GoString))) : GoString)), ((100 : GoInt)));
        var _generic = newReplacer(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("12" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _generic.replace(_str);
            });
        };
    }
function benchmarkGenericMatch1(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("a" : GoString))) : GoString)), ((100 : GoInt))) + repeat(((((("b" : GoString))) : GoString)), ((100 : GoInt)));
        var _generic = newReplacer(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("12" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _generic.replace(_str);
            });
        };
    }
function benchmarkGenericMatch2(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("It&apos;s &lt;b&gt;HTML&lt;/b&gt;!" : GoString))) : GoString)), ((100 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _htmlUnescaper.replace(_str);
            });
        };
    }
function _benchmarkSingleString(_b:stdgo.testing.Testing.B, _pattern:GoString, _text:GoString):Void {
        var _r = newReplacer(_pattern, ((((("[match]" : GoString))) : GoString)));
        _b.setBytes((((_text != null ? _text.length : ((0 : GoInt))) : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _r.replace(_text);
            });
        };
    }
function benchmarkSingleMaxSkipping(_b:stdgo.testing.Testing.B):Void {
        _benchmarkSingleString(_b, repeat(((((("b" : GoString))) : GoString)), ((25 : GoInt))), repeat(((((("a" : GoString))) : GoString)), ((10000 : GoInt))));
    }
function benchmarkSingleLongSuffixFail(_b:stdgo.testing.Testing.B):Void {
        _benchmarkSingleString(_b, ((((("b" : GoString))) : GoString)) + repeat(((((("a" : GoString))) : GoString)), ((500 : GoInt))), repeat(((((("a" : GoString))) : GoString)), ((1002 : GoInt))));
    }
function benchmarkSingleMatch(_b:stdgo.testing.Testing.B):Void {
        _benchmarkSingleString(_b, ((((("abcdef" : GoString))) : GoString)), repeat(((((("abcdefghijklmno" : GoString))) : GoString)), ((1000 : GoInt))));
    }
function benchmarkByteByteNoMatch(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("A" : GoString))) : GoString)), ((100 : GoInt))) + repeat(((((("B" : GoString))) : GoString)), ((100 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.replace(_str);
            });
        };
    }
function benchmarkByteByteMatch(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("a" : GoString))) : GoString)), ((100 : GoInt))) + repeat(((((("b" : GoString))) : GoString)), ((100 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.replace(_str);
            });
        };
    }
function benchmarkByteStringMatch(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = ((((((("<" : GoString))) : GoString)) + repeat(((((("a" : GoString))) : GoString)), ((99 : GoInt)))) + repeat(((((("b" : GoString))) : GoString)), ((99 : GoInt)))) + (((((">" : GoString))) : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.replace(_str);
            });
        };
    }
function benchmarkHTMLEscapeNew(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = ((((("I <3 to escape HTML & other text too." : GoString))) : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.replace(_str);
            });
        };
    }
function benchmarkHTMLEscapeOld(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = ((((("I <3 to escape HTML & other text too." : GoString))) : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _oldHTMLEscape(_str);
            });
        };
    }
function benchmarkByteStringReplacerWriteString(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("I <3 to escape HTML & other text too." : GoString))) : GoString)), ((100 : GoInt)));
        var _buf = (({  } : stdgo.bytes.Bytes.Buffer));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.writeString({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                    __self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
                    __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                    __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_c) #else null #end;
                    __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
                    __self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                    __self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(__0) #else null #end;
                    __self__;
                }, _str);
                _buf.reset();
            });
        };
    }
function benchmarkByteReplacerWriteString(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("abcdefghijklmnopqrstuvwxyz" : GoString))) : GoString)), ((100 : GoInt)));
        var _buf = (({  } : stdgo.bytes.Bytes.Buffer));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.writeString({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                    __self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
                    __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                    __self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_c) #else null #end;
                    __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
                    __self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                    __self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(__0) #else null #end;
                    __self__;
                }, _str);
                _buf.reset();
            });
        };
    }
/**
    // BenchmarkByteByteReplaces compares byteByteImpl against multiple Replaces.
**/
function benchmarkByteByteReplaces(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("a" : GoString))) : GoString)), ((100 : GoInt))) + repeat(((((("b" : GoString))) : GoString)), ((100 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                replace(replace(_str, ((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((-1 : GoInt))), ((((("b" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((-1 : GoInt)));
            });
        };
    }
/**
    // BenchmarkByteByteMap compares byteByteImpl against Map.
**/
function benchmarkByteByteMap(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("a" : GoString))) : GoString)), ((100 : GoInt))) + repeat(((((("b" : GoString))) : GoString)), ((100 : GoInt)));
        var _fn:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (_r == (("a".code : GoInt32))) {
                return (("A".code : GoInt32));
            } else if (_r == (("b".code : GoInt32))) {
                return (("B".code : GoInt32));
            };
            return _r;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                map(_fn, _str);
            });
        };
    }
function benchmarkMap(_b:stdgo.testing.Testing.B):Void {
        var _mapidentity:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return _r;
        };
        _b.run(((((("identity" : GoString))) : GoString)), function(_b:stdgo.testing.Testing.B):Void {
            for (_0 => _md in _mapdata) {
                _b.run(_md._name, function(_b:stdgo.testing.Testing.B):Void {
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _b.n, _i++, {
                            map(_mapidentity, _md._data);
                        });
                    };
                });
            };
        });
        var _mapchange:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (((("a".code : GoInt32)) <= _r) && (_r <= (("z".code : GoInt32)))) {
                return (_r + (("A".code : GoInt32))) - (("a".code : GoInt32));
            };
            if (((("α".code : GoInt32)) <= _r) && (_r <= (("ω".code : GoInt32)))) {
                return (_r + (("Α".code : GoInt32))) - (("α".code : GoInt32));
            };
            return _r;
        };
        _b.run(((((("change" : GoString))) : GoString)), function(_b:stdgo.testing.Testing.B):Void {
            for (_0 => _md in _mapdata) {
                _b.run(_md._name, function(_b:stdgo.testing.Testing.B):Void {
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _b.n, _i++, {
                            map(_mapchange, _md._data);
                        });
                    };
                });
            };
        });
    }
function testFinderNext(_t:stdgo.testing.Testing.T):Void {
        var _testCases = ((new Slice<T__struct_8>(
(({ _pat : ((((("" : GoString))) : GoString)), _text : ((((("" : GoString))) : GoString)), _index : ((0 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("" : GoString))) : GoString)), _text : ((((("abc" : GoString))) : GoString)), _index : ((0 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("abc" : GoString))) : GoString)), _text : ((((("" : GoString))) : GoString)), _index : ((-1 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("abc" : GoString))) : GoString)), _text : ((((("abc" : GoString))) : GoString)), _index : ((0 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("d" : GoString))) : GoString)), _text : ((((("abcdefg" : GoString))) : GoString)), _index : ((3 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("nan" : GoString))) : GoString)), _text : ((((("banana" : GoString))) : GoString)), _index : ((2 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("pan" : GoString))) : GoString)), _text : ((((("anpanman" : GoString))) : GoString)), _index : ((2 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("nnaaman" : GoString))) : GoString)), _text : ((((("anpanmanam" : GoString))) : GoString)), _index : ((-1 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("abcd" : GoString))) : GoString)), _text : ((((("abc" : GoString))) : GoString)), _index : ((-1 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("abcd" : GoString))) : GoString)), _text : ((((("bcd" : GoString))) : GoString)), _index : ((-1 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("bcd" : GoString))) : GoString)), _text : ((((("abcd" : GoString))) : GoString)), _index : ((1 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("abc" : GoString))) : GoString)), _text : ((((("acca" : GoString))) : GoString)), _index : ((-1 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("aa" : GoString))) : GoString)), _text : ((((("aaa" : GoString))) : GoString)), _index : ((0 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("baa" : GoString))) : GoString)), _text : ((((("aaaaa" : GoString))) : GoString)), _index : ((-1 : GoInt)) } : T__struct_8)),
(({ _pat : ((((("at that" : GoString))) : GoString)), _text : ((((("which finally halts.  at that point" : GoString))) : GoString)), _index : ((22 : GoInt)) } : T__struct_8))) : Slice<T__struct_8>));
        for (_0 => _tc in _testCases) {
            var _got:GoInt = stringFind(_tc._pat, _tc._text);
            var _want:GoInt = _tc._index;
            if (_got != _want) {
                _t.errorf(((((("stringFind(%q, %q) got %d, want %d\n" : GoString))) : GoString)), Go.toInterface(_tc._pat), Go.toInterface(_tc._text), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testFinderCreation(_t:stdgo.testing.Testing.T):Void {
        var _testCases = ((new Slice<T__struct_9>((({ _pattern : ((((("abc" : GoString))) : GoString)), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((2 : GoInt));
            s[1] = ((1 : GoInt));
            s[2] = ((3 : GoInt));
            s;
        }, _suf : ((new Slice<GoInt>(((5 : GoInt)), ((4 : GoInt)), ((1 : GoInt))) : Slice<GoInt>)) } : T__struct_9)), (({ _pattern : ((((("mississi" : GoString))) : GoString)), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((3 : GoInt));
            s[1] = ((7 : GoInt));
            s[2] = ((1 : GoInt));
            s;
        }, _suf : ((new Slice<GoInt>(((15 : GoInt)), ((14 : GoInt)), ((13 : GoInt)), ((7 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((7 : GoInt)), ((1 : GoInt))) : Slice<GoInt>)) } : T__struct_9)), (({ _pattern : ((((("abcxxxabc" : GoString))) : GoString)), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((2 : GoInt));
            s[1] = ((1 : GoInt));
            s[2] = ((6 : GoInt));
            s[3] = ((3 : GoInt));
            s;
        }, _suf : ((new Slice<GoInt>(((14 : GoInt)), ((13 : GoInt)), ((12 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((9 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((1 : GoInt))) : Slice<GoInt>)) } : T__struct_9)), (({ _pattern : ((((("abyxcdeyx" : GoString))) : GoString)), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((8 : GoInt));
            s[1] = ((7 : GoInt));
            s[2] = ((4 : GoInt));
            s[3] = ((3 : GoInt));
            s[4] = ((2 : GoInt));
            s[5] = ((1 : GoInt));
            s[6] = ((5 : GoInt));
            s;
        }, _suf : ((new Slice<GoInt>(((17 : GoInt)), ((16 : GoInt)), ((15 : GoInt)), ((14 : GoInt)), ((13 : GoInt)), ((12 : GoInt)), ((7 : GoInt)), ((10 : GoInt)), ((1 : GoInt))) : Slice<GoInt>)) } : T__struct_9))) : Slice<T__struct_9>));
        for (_0 => _tc in _testCases) {
            var __tmp__ = dumpTables(_tc._pattern), _bad:Slice<GoInt> = __tmp__._0, _good:Slice<GoInt> = __tmp__._1;
            for (_i => _got in _bad) {
                var _want:GoInt = (_tc._bad != null ? _tc._bad[_i] : ((0 : GoInt)));
                if (_want == ((0 : GoInt))) {
                    _want = (_tc._pattern != null ? _tc._pattern.length : ((0 : GoInt)));
                };
                if (_got != _want) {
                    _t.errorf(((((("boyerMoore(%q) bad[\'%c\']: got %d want %d" : GoString))) : GoString)), Go.toInterface(_tc._pattern), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_good), Go.toInterface(_tc._suf))) {
                _t.errorf(((((("boyerMoore(%q) got %v want %v" : GoString))) : GoString)), Go.toInterface(_tc._pattern), Go.toInterface(_good), Go.toInterface(_tc._suf));
            };
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
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runIndexTests(_t:stdgo.testing.Testing.T, _f:(_s:GoString, _sep:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<IndexTest>):Void {
        for (_0 => _test in _testCases) {
            var _actual:GoInt = _f(_test._s, _test._sep);
            if (_actual != _test._out) {
                _t.errorf(((((("%s(%q,%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_funcName), Go.toInterface(_test._s), Go.toInterface(_test._sep), Go.toInterface(_actual), Go.toInterface(_test._out));
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
        _runIndexTests(_t, indexAny, ((((("IndexAny" : GoString))) : GoString)), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.testing.Testing.T):Void {
        _runIndexTests(_t, lastIndexAny, ((((("LastIndexAny" : GoString))) : GoString)), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _indexTests) {
            if ((_tt._sep != null ? _tt._sep.length : ((0 : GoInt))) != ((1 : GoInt))) {
                continue;
            };
            var _pos:GoInt = indexByte(_tt._s, (_tt._sep != null ? _tt._sep[((0 : GoInt))] : ((0 : GoUInt8))));
            if (_pos != _tt._out) {
                _t.errorf((("IndexByte(%q, %q) = %v; want %v" : GoString)), Go.toInterface(_tt._s), Go.toInterface((_tt._sep != null ? _tt._sep[((0 : GoInt))] : ((0 : GoUInt8)))), Go.toInterface(_pos), Go.toInterface(_tt._out));
            };
        };
    }
function testLastIndexByte(_t:stdgo.testing.Testing.T):Void {
        var _testCases = ((new Slice<stdgo.strings_test.Strings_test.IndexTest>(((new stdgo.strings_test.Strings_test.IndexTest(((((("" : GoString))) : GoString)), ((((("q" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)), ((new stdgo.strings_test.Strings_test.IndexTest(((((("abcdef" : GoString))) : GoString)), ((((("q" : GoString))) : GoString)), ((-1 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)), ((new stdgo.strings_test.Strings_test.IndexTest(((((("abcdefabcdef" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), (((((("abcdef" : GoString))) : GoString)) != null ? ((((("abcdef" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.strings_test.Strings_test.IndexTest)), ((new stdgo.strings_test.Strings_test.IndexTest(((((("abcdefabcdef" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), (((((("abcdefabcde" : GoString))) : GoString)) != null ? ((((("abcdefabcde" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.strings_test.Strings_test.IndexTest)), ((new stdgo.strings_test.Strings_test.IndexTest(((((("zabcdefabcdef" : GoString))) : GoString)), ((((("z" : GoString))) : GoString)), ((0 : GoInt))) : stdgo.strings_test.Strings_test.IndexTest)), ((new stdgo.strings_test.Strings_test.IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), (((((("a☺" : GoString))) : GoString)) != null ? ((((("a☺" : GoString))) : GoString)).length : ((0 : GoInt)))) : stdgo.strings_test.Strings_test.IndexTest))) : Slice<stdgo.strings_test.Strings_test.IndexTest>));
        for (_0 => _test in _testCases) {
            var _actual:GoInt = lastIndexByte(_test._s, (_test._sep != null ? _test._sep[((0 : GoInt))] : ((0 : GoUInt8))));
            if (_actual != _test._out) {
                _t.errorf(((((("LastIndexByte(%q,%c) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_test._s), Go.toInterface((_test._sep != null ? _test._sep[((0 : GoInt))] : ((0 : GoUInt8)))), Go.toInterface(_actual), Go.toInterface(_test._out));
            };
        };
    }
function _simpleIndex(_s:GoString, _sep:GoString):GoInt {
        var _n:GoInt = (_sep != null ? _sep.length : ((0 : GoInt)));
        {
            var _i:GoInt = _n;
            Go.cfor(_i <= (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                if (((_s.__slice__(_i - _n, _i) : GoString)) == _sep) {
                    return _i - _n;
                };
            });
        };
        return ((-1 : GoInt));
    }
function testIndexRandom(_t:stdgo.testing.Testing.T):Void {
        {};
        {
            var _times:GoInt = ((0 : GoInt));
            Go.cfor(_times < ((10 : GoInt)), _times++, {
                {
                    var _strLen:GoInt = ((5 : GoInt)) + stdgo.math.rand.Rand.intn(((5 : GoInt)));
                    Go.cfor(_strLen < ((140 : GoInt)), _strLen = _strLen + (((10 : GoInt))), {
                        var _s1 = new Slice<GoUInt8>(...[for (i in 0 ... ((_strLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                        for (_i => _ in _s1) {
                            if (_s1 != null) _s1[_i] = (((((("abcdefghijklmnopqrstuvwxyz0123456789" : GoString))) : GoString)) != null ? ((((("abcdefghijklmnopqrstuvwxyz0123456789" : GoString))) : GoString))[stdgo.math.rand.Rand.intn((((((("abcdefghijklmnopqrstuvwxyz0123456789" : GoString))) : GoString)) != null ? ((((("abcdefghijklmnopqrstuvwxyz0123456789" : GoString))) : GoString)).length : ((0 : GoInt))))] : ((0 : GoUInt8)));
                        };
                        var _s:GoString = ((_s1 : GoString));
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor(_i < ((50 : GoInt)), _i++, {
                                var _begin:GoInt = stdgo.math.rand.Rand.intn((_s != null ? _s.length : ((0 : GoInt))) + ((1 : GoInt)));
                                var _end:GoInt = _begin + stdgo.math.rand.Rand.intn(((_s != null ? _s.length : ((0 : GoInt))) + ((1 : GoInt))) - _begin);
                                var _sep:GoString = ((_s.__slice__(_begin, _end) : GoString));
                                if ((_i % ((4 : GoInt))) == ((0 : GoInt))) {
                                    var _pos:GoInt = stdgo.math.rand.Rand.intn((_sep != null ? _sep.length : ((0 : GoInt))) + ((1 : GoInt)));
                                    _sep = (((_sep.__slice__(0, _pos) : GoString)) + ((((("A" : GoString))) : GoString))) + ((_sep.__slice__(_pos) : GoString));
                                };
                                var _want:GoInt = _simpleIndex(_s, _sep);
                                var _res:GoInt = index(_s, _sep);
                                if (_res != _want) {
                                    _t.errorf(((((("Index(%s,%s) = %d; want %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_res), Go.toInterface(_want));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testIndexRune(_t:stdgo.testing.Testing.T):Void {
        var _tests = ((new Slice<T__struct_10>(
(({ _in : ((((("" : GoString))) : GoString)), _rune : (("a".code : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_10)),
(({ _in : ((((("" : GoString))) : GoString)), _rune : (("☺".code : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_10)),
(({ _in : ((((("foo" : GoString))) : GoString)), _rune : (("☹".code : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_10)),
(({ _in : ((((("foo" : GoString))) : GoString)), _rune : (("o".code : GoInt32)), _want : ((1 : GoInt)) } : T__struct_10)),
(({ _in : ((((("foo☺bar" : GoString))) : GoString)), _rune : (("☺".code : GoInt32)), _want : ((3 : GoInt)) } : T__struct_10)),
(({ _in : ((((("foo☺☻☹bar" : GoString))) : GoString)), _rune : (("☹".code : GoInt32)), _want : ((9 : GoInt)) } : T__struct_10)),
(({ _in : ((((("a A x" : GoString))) : GoString)), _rune : (("A".code : GoInt32)), _want : ((2 : GoInt)) } : T__struct_10)),
(({ _in : ((((("some_text=some_value" : GoString))) : GoString)), _rune : (("=".code : GoInt32)), _want : ((9 : GoInt)) } : T__struct_10)),
(({ _in : ((((("☺a" : GoString))) : GoString)), _rune : (("a".code : GoInt32)), _want : ((3 : GoInt)) } : T__struct_10)),
(({ _in : ((((("a☻☺b" : GoString))) : GoString)), _rune : (("☺".code : GoInt32)), _want : ((4 : GoInt)) } : T__struct_10)),
(({ _in : ((((("�" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : ((0 : GoInt)) } : T__struct_10)),
(({ _in : (((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : ((0 : GoInt)) } : T__struct_10)),
(({ _in : ((((("☻x�" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_10)),
(({ _in : ((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_10)),
(({ _in : ((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_10)),
(({ _in : ((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("x" : GoString))) : GoString)), _rune : (("�".code : GoInt32)), _want : (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt))) } : T__struct_10)),
(({ _in : ((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _rune : ((-1 : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_10)),
(({ _in : ((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _rune : ((55296 : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_10)),
(({ _in : ((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), _rune : ((1114112 : GoInt32)), _want : ((-1 : GoInt)) } : T__struct_10))) : Slice<T__struct_10>));
        for (_0 => _tt in _tests) {
            {
                var _got:GoInt = indexRune(_tt._in, _tt._rune);
                if (_got != _tt._want) {
                    _t.errorf(((((("IndexRune(%q, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack:GoString = ((((("test世界" : GoString))) : GoString));
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
        if ((_allocs != ((0 : GoFloat64))) && (stdgo.testing.Testing.coverMode() == ((((("" : GoString))) : GoString)))) {
            _t.errorf(((((("expected no allocations, got %f" : GoString))) : GoString)), Go.toInterface(_allocs));
        };
    }
function benchmarkIndexRune(_b:stdgo.testing.Testing.B):Void {
        {
            var _got:GoInt = indexRune(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), (("☺".code : GoInt32)));
            if (_got != ((14 : GoInt))) {
                _b.fatalf(((((("wrong index: expected 14, got=%d" : GoString))) : GoString)), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                indexRune(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), (("☺".code : GoInt32)));
            });
        };
    }
function benchmarkIndexRuneLongString(_b:stdgo.testing.Testing.B):Void {
        {
            var _got:GoInt = indexRune(_benchmarkLongString, (("☺".code : GoInt32)));
            if (_got != ((114 : GoInt))) {
                _b.fatalf(((((("wrong index: expected 114, got=%d" : GoString))) : GoString)), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                indexRune(_benchmarkLongString, (("☺".code : GoInt32)));
            });
        };
    }
function benchmarkIndexRuneFastPath(_b:stdgo.testing.Testing.B):Void {
        {
            var _got:GoInt = indexRune(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), (("v".code : GoInt32)));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(((((("wrong index: expected 17, got=%d" : GoString))) : GoString)), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                indexRune(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), (("v".code : GoInt32)));
            });
        };
    }
function benchmarkIndex(_b:stdgo.testing.Testing.B):Void {
        {
            var _got:GoInt = index(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), ((((("v" : GoString))) : GoString)));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(((((("wrong index: expected 17, got=%d" : GoString))) : GoString)), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                index(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), ((((("v" : GoString))) : GoString)));
            });
        };
    }
function benchmarkLastIndex(_b:stdgo.testing.Testing.B):Void {
        {
            var _got:GoInt = index(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), ((((("v" : GoString))) : GoString)));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(((((("wrong index: expected 17, got=%d" : GoString))) : GoString)), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                lastIndex(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), ((((("v" : GoString))) : GoString)));
            });
        };
    }
function benchmarkIndexByte(_b:stdgo.testing.Testing.B):Void {
        {
            var _got:GoInt = indexByte(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), (("v".code : GoUInt8)));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(((((("wrong index: expected 17, got=%d" : GoString))) : GoString)), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                indexByte(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), (("v".code : GoUInt8)));
            });
        };
    }
function testSplit(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _splittests) {
            var _a = splitN(_tt._s, _tt._sep, _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(((((("Split(%q, %q, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            if (_tt._n == ((0 : GoInt))) {
                continue;
            };
            var _s:GoString = join(_a, _tt._sep);
            if (_s != _tt._s) {
                _t.errorf(((((("Join(Split(%q, %q, %d), %q) = %q" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < ((0 : GoInt))) {
                var _b = split(_tt._s, _tt._sep);
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(((((("Split disagrees with SplitN(%q, %q, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _splitaftertests) {
            var _a = splitAfterN(_tt._s, _tt._sep, _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf((("Split(%q, %q, %d) = %v; want %v" : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            var _s:GoString = join(_a, ((((("" : GoString))) : GoString)));
            if (_s != _tt._s) {
                _t.errorf((("Join(Split(%q, %q, %d), %q) = %q" : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < ((0 : GoInt))) {
                var _b = splitAfter(_tt._s, _tt._sep);
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(((((("SplitAfter disagrees with SplitAfterN(%q, %q, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _fieldstests) {
            var _a = fields(_tt._s);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(((((("Fields(%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
    }
function testFieldsFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _fieldstests) {
            var _a = fieldsFunc(_tt._s, stdgo.unicode.Unicode.isSpace);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(((((("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return _c == (("X".code : GoInt32));
        };
        for (_1 => _tt in fieldsFuncTests) {
            var _a = fieldsFunc(_tt._s, _pred);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(((((("FieldsFunc(%q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
            };
        };
    }
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runStringTests(_t:stdgo.testing.Testing.T, _f:GoString -> GoString, _funcName:GoString, _testCases:Slice<StringTest>):Void {
        for (_0 => _tc in _testCases) {
            var _actual:GoString = _f(_tc._in);
            if (_actual != _tc._out) {
                _t.errorf(((((("%s(%q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_ch:GoRune):GoString {
        var _r = new Slice<GoInt32>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        for (_i => _ in _r) {
            if (_r != null) _r[_i] = _ch;
        };
        return ((_r : GoString));
    }
/**
    // User-defined self-inverse mapping function
**/
function _rot13(_r:GoRune):GoRune {
        var _step:GoInt32 = ((((13 : GoInt32)) : GoRune));
        if ((_r >= (("a".code : GoInt32))) && (_r <= (("z".code : GoInt32)))) {
            return (((_r - (("a".code : GoInt32))) + _step) % ((26 : GoInt32))) + (("a".code : GoInt32));
        };
        if ((_r >= (("A".code : GoInt32))) && (_r <= (("Z".code : GoInt32)))) {
            return (((_r - (("A".code : GoInt32))) + _step) % ((26 : GoInt32))) + (("A".code : GoInt32));
        };
        return _r;
    }
function testMap(_t:stdgo.testing.Testing.T):Void {
        var _a:GoString = _tenRunes((("a".code : GoInt32)));
        var _maxRune:GoInt32 -> GoInt32 = function(_0:GoRune):GoRune {
            return ((1114111 : GoInt32));
        };
        var _m:GoString = map(_maxRune, _a);
        var _expect:GoString = _tenRunes(((1114111 : GoInt32)));
        if (_m != _expect) {
            _t.errorf(((((("growing: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _minRune:GoInt32 -> GoInt32 = function(_0:GoRune):GoRune {
            return (("a".code : GoInt32));
        };
        _m = map(_minRune, _tenRunes(((1114111 : GoInt32))));
        _expect = _a;
        if (_m != _expect) {
            _t.errorf(((((("shrinking: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, ((((("a to zed" : GoString))) : GoString)));
        _expect = ((((("n gb mrq" : GoString))) : GoString));
        if (_m != _expect) {
            _t.errorf(((((("rot13: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, ((((("a to zed" : GoString))) : GoString))));
        _expect = ((((("a to zed" : GoString))) : GoString));
        if (_m != _expect) {
            _t.errorf(((((("rot13: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _dropNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return ((-1 : GoInt32));
        };
        _m = map(_dropNotLatin, ((((("Hello, 세계" : GoString))) : GoString)));
        _expect = ((((("Hello" : GoString))) : GoString));
        if (_m != _expect) {
            _t.errorf(((((("drop: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _identity:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return _r;
        };
        var _orig:GoString = ((((("Input string that we expect not to be copied." : GoString))) : GoString));
        _m = map(_identity, _orig);
        if (((((Go.toInterface(Go.pointer(_orig)) : stdgo.unsafe.Unsafe.UnsafePointer)).__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [], stdgo.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) : stdgo.reflect.Reflect.StringHeader)).data != ((((Go.toInterface(Go.pointer(_m)) : stdgo.unsafe.Unsafe.UnsafePointer)).__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [], stdgo.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) : stdgo.reflect.Reflect.StringHeader)).data) {
            _t.error(Go.toInterface(((((("unexpected copy during identity map" : GoString))) : GoString))));
        };
        var _replaceNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return ((65533 : GoInt32));
        };
        _m = map(_replaceNotLatin, ((((("Hello" : GoString)) + ((haxe.io.Bytes.ofHex("AD") : GoString)) + (("orld" : GoString))) : GoString)));
        _expect = ((((("Hello\uFFFDWorld" : GoString))) : GoString));
        if (_m != _expect) {
            _t.errorf(((((("replace invalid sequence: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _encode:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (_r == ((128 : GoInt32))) {
                return ((1114111 : GoInt32));
            } else if (_r == ((1114111 : GoInt32))) {
                return ((128 : GoInt32));
            };
            return _r;
        };
        var _s:GoString = (((((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("8F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString));
        var _r:GoString = (((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("8F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString));
        _m = map(_encode, _s);
        if (_m != _r) {
            _t.errorf(((((("encoding not handled correctly: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_m));
        };
        _m = map(_encode, _r);
        if (_m != _s) {
            _t.errorf(((((("encoding not handled correctly: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_m));
        };
        var _trimSpaces:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.isSpace(_r)) {
                return ((-1 : GoInt32));
            };
            return _r;
        };
        _m = map(_trimSpaces, ((((("   abc    123   " : GoString))) : GoString)));
        _expect = ((((("abc123" : GoString))) : GoString));
        if (_m != _expect) {
            _t.errorf(((((("trimSpaces: expected %q got %q" : GoString))) : GoString)), Go.toInterface(_expect), Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, toUpper, ((((("ToUpper" : GoString))) : GoString)), _upperTests);
    }
function testToLower(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, toLower, ((((("ToLower" : GoString))) : GoString)), _lowerTests);
    }
function testToValidUTF8(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _toValidUTF8Tests) {
            var _got:GoString = toValidUTF8(_tc._in, _tc._repl);
            if (_got != _tc._out) {
                _t.errorf(((((("ToValidUTF8(%q, %q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got), Go.toInterface(_tc._out));
            };
        };
    }
function benchmarkToUpper(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _upperTests) {
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual:GoString = toUpper(_tc._in);
                        if (_actual != _tc._out) {
                            _b.errorf(((((("ToUpper(%q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _tc in _lowerTests) {
            _b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        var _actual:GoString = toLower(_tc._in);
                        if (_actual != _tc._out) {
                            _b.errorf(((((("ToLower(%q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkMapNoChanges(_b:stdgo.testing.Testing.B):Void {
        var _identity:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return _r;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                map(_identity, ((((("Some string that won\'t be modified." : GoString))) : GoString)));
            });
        };
    }
function testSpecialCase(_t:stdgo.testing.Testing.T):Void {
        var _lower:GoString = ((((("abcçdefgğhıijklmnoöprsştuüvyz" : GoString))) : GoString));
        var _upper:GoString = ((((("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : GoString))) : GoString));
        var _u:GoString = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
        if (_u != _upper) {
            _t.errorf(((((("Upper(upper) is %s not %s" : GoString))) : GoString)), Go.toInterface(_u), Go.toInterface(_upper));
        };
        _u = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
        if (_u != _upper) {
            _t.errorf(((((("Upper(lower) is %s not %s" : GoString))) : GoString)), Go.toInterface(_u), Go.toInterface(_upper));
        };
        var _l:GoString = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
        if (_l != _lower) {
            _t.errorf(((((("Lower(lower) is %s not %s" : GoString))) : GoString)), Go.toInterface(_l), Go.toInterface(_lower));
        };
        _l = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
        if (_l != _lower) {
            _t.errorf(((((("Lower(upper) is %s not %s" : GoString))) : GoString)), Go.toInterface(_l), Go.toInterface(_lower));
        };
    }
function testTrimSpace(_t:stdgo.testing.Testing.T):Void {
        _runStringTests(_t, trimSpace, ((((("TrimSpace" : GoString))) : GoString)), _trimSpaceTests);
    }
function testTrim(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _trimTests) {
            var _name:GoString = _tc._f;
            var _f:(GoString, GoString) -> GoString = null;
            if (_name == ((((("Trim" : GoString))) : GoString))) {
                _f = trim;
            } else if (_name == ((((("TrimLeft" : GoString))) : GoString))) {
                _f = trimLeft;
            } else if (_name == ((((("TrimRight" : GoString))) : GoString))) {
                _f = trimRight;
            } else if (_name == ((((("TrimPrefix" : GoString))) : GoString))) {
                _f = trimPrefix;
            } else if (_name == ((((("TrimSuffix" : GoString))) : GoString))) {
                _f = trimSuffix;
            } else {
                _t.errorf(((((("Undefined trim function %s" : GoString))) : GoString)), Go.toInterface(_name));
            };
            var _actual:GoString = _f(_tc._in, _tc._arg);
            if (_actual != _tc._out) {
                _t.errorf(((((("%s(%q, %q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
function benchmarkTrim(_b:stdgo.testing.Testing.B):Void {
        _b.reportAllocs();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                for (_0 => _tc in _trimTests) {
                    var _name:GoString = _tc._f;
                    var _f:(GoString, GoString) -> GoString = null;
                    if (_name == ((((("Trim" : GoString))) : GoString))) {
                        _f = trim;
                    } else if (_name == ((((("TrimLeft" : GoString))) : GoString))) {
                        _f = trimLeft;
                    } else if (_name == ((((("TrimRight" : GoString))) : GoString))) {
                        _f = trimRight;
                    } else if (_name == ((((("TrimPrefix" : GoString))) : GoString))) {
                        _f = trimPrefix;
                    } else if (_name == ((((("TrimSuffix" : GoString))) : GoString))) {
                        _f = trimSuffix;
                    } else {
                        _b.errorf(((((("Undefined trim function %s" : GoString))) : GoString)), Go.toInterface(_name));
                    };
                    var _actual:GoString = _f(_tc._in, _tc._arg);
                    if (_actual != _tc._out) {
                        _b.errorf(((((("%s(%q, %q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
                    };
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:stdgo.testing.Testing.B):Void {
        var _tests = ((new Slice<T__struct_13>((({ _name : ((((("Valid" : GoString))) : GoString)), _input : ((((("typical" : GoString))) : GoString)) } : T__struct_13)), (({ _name : ((((("InvalidASCII" : GoString))) : GoString)), _input : ((((("foo" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("bar" : GoString))) : GoString)) } : T__struct_13)), (({ _name : ((((("InvalidNonASCII" : GoString))) : GoString)), _input : ((((("日本語" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("日本語" : GoString))) : GoString)) } : T__struct_13))) : Slice<T__struct_13>));
        var _replacement:GoString = ((((("\uFFFD" : GoString))) : GoString));
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
function _not(_p:T_predicate):T_predicate {
        return ((new stdgo.strings_test.Strings_test.T_predicate(function(_r:GoRune):Bool {
            return !_p._f(_r);
        }, ((((("not " : GoString))) : GoString)) + _p._name) : stdgo.strings_test.Strings_test.T_predicate));
    }
function testTrimFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _trimFuncTests) {
            var _trimmers = ((new Slice<T__struct_15>((({ _name : ((((("TrimFunc" : GoString))) : GoString)), _trim : trimFunc, _out : _tc._trimOut } : T__struct_15)), (({ _name : ((((("TrimLeftFunc" : GoString))) : GoString)), _trim : trimLeftFunc, _out : _tc._leftOut } : T__struct_15)), (({ _name : ((((("TrimRightFunc" : GoString))) : GoString)), _trim : trimRightFunc, _out : _tc._rightOut } : T__struct_15))) : Slice<T__struct_15>));
            for (_1 => _trimmer in _trimmers) {
                var _actual:GoString = _trimmer._trim(_tc._in, _tc._f._f);
                if (_actual != _trimmer._out) {
                    _t.errorf(((((("%s(%q, %q) = %q; want %q" : GoString))) : GoString)), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual), Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _indexFuncTests) {
            var _first:GoInt = indexFunc(_tc._in, _tc._f._f);
            if (_first != _tc._first) {
                _t.errorf(((((("IndexFunc(%q, %s) = %d; want %d" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first), Go.toInterface(_tc._first));
            };
            var _last:GoInt = lastIndexFunc(_tc._in, _tc._f._f);
            if (_last != _tc._last) {
                _t.errorf(((((("LastIndexFunc(%q, %s) = %d; want %d" : GoString))) : GoString)), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_last), Go.toInterface(_tc._last));
            };
        };
    }
function _equal(_m:GoString, _s1:GoString, _s2:GoString, _t:stdgo.testing.Testing.T):Bool {
        if (_s1 == _s2) {
            return true;
        };
        var _e1 = split(_s1, ((((("" : GoString))) : GoString)));
        var _e2 = split(_s2, ((((("" : GoString))) : GoString)));
        for (_i => _c1 in _e1) {
            if (_i >= (_e2 != null ? _e2.length : ((0 : GoInt)))) {
                break;
            };
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_c1), _r1:GoInt32 = __tmp__._0, _0:GoInt = __tmp__._1;
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_e2 != null ? _e2[_i] : (("" : GoString)))), _r2:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1;
            if (_r1 != _r2) {
                _t.errorf(((((("%s diff at %d: U+%04X U+%04X" : GoString))) : GoString)), Go.toInterface(_m), Go.toInterface(_i), Go.toInterface(_r1), Go.toInterface(_r2));
            };
        };
        return false;
    }
function testCaseConsistency(_t:stdgo.testing.Testing.T):Void {
        var _numRunes:GoInt = ((((1114112 : GoInt)) : GoInt));
        if (stdgo.testing.Testing.short()) {
            _numRunes = ((1000 : GoInt));
        };
        var _a = new Slice<GoInt32>(...[for (i in 0 ... ((_numRunes : GoInt)).toBasic()) ((0 : GoInt32))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((_i : GoRune));
        };
        var _s:GoString = ((_a : GoString));
        var _upper:GoString = toUpper(_s);
        var _lower:GoString = toLower(_s);
        {
            var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_upper);
            if (_n != _numRunes) {
                _t.error(Go.toInterface(((((("rune count wrong in upper:" : GoString))) : GoString))), Go.toInterface(_n));
            };
        };
        {
            var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_lower);
            if (_n != _numRunes) {
                _t.error(Go.toInterface(((((("rune count wrong in lower:" : GoString))) : GoString))), Go.toInterface(_n));
            };
        };
        if (!_equal(((((("ToUpper(upper)" : GoString))) : GoString)), toUpper(_upper), _upper, _t)) {
            _t.error(Go.toInterface(((((("ToUpper(upper) consistency fail" : GoString))) : GoString))));
        };
        if (!_equal(((((("ToLower(lower)" : GoString))) : GoString)), toLower(_lower), _lower, _t)) {
            _t.error(Go.toInterface(((((("ToLower(lower) consistency fail" : GoString))) : GoString))));
        };
    }
function testRepeat(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in repeatTests) {
            var _a:GoString = repeat(_tt._in, _tt._count);
            if (!_equal(((((("Repeat(s)" : GoString))) : GoString)), _a, _tt._out, _t)) {
                _t.errorf(((((("Repeat(%v, %d) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._count), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
        };
    }
function _repeat(_s:GoString, _count:GoInt):Error {
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
            repeat(_s, _count);
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
            var s:GoArray<T__struct_18> = new GoArray<T__struct_18>(...[for (i in 0 ... 7) (({ _s : (("" : GoString)), _count : ((0 : GoInt)), _errStr : (("" : GoString)) } : T__struct_18))]);
            s[0] = (({ _s : ((((("--" : GoString))) : GoString)), _count : ((-2147483647 : GoInt)), _errStr : ((((("negative" : GoString))) : GoString)) } : T__struct_18));
            s[1] = (({ _s : ((((("" : GoString))) : GoString)), _count : ((((2147483647 : GoUInt)) : GoInt)), _errStr : ((((("" : GoString))) : GoString)) } : T__struct_18));
            s[2] = (({ _s : ((((("-" : GoString))) : GoString)), _count : ((10 : GoInt)), _errStr : ((((("" : GoString))) : GoString)) } : T__struct_18));
            s[3] = (({ _s : ((((("gopher" : GoString))) : GoString)), _count : ((0 : GoInt)), _errStr : ((((("" : GoString))) : GoString)) } : T__struct_18));
            s[4] = (({ _s : ((((("-" : GoString))) : GoString)), _count : ((-1 : GoInt)), _errStr : ((((("negative" : GoString))) : GoString)) } : T__struct_18));
            s[5] = (({ _s : ((((("--" : GoString))) : GoString)), _count : ((-102 : GoInt)), _errStr : ((((("negative" : GoString))) : GoString)) } : T__struct_18));
            s[6] = (({ _s : ((new Slice<GoUInt8>(...[for (i in 0 ... ((((255 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]) : GoString)), _count : ((((16843010 : GoUInt)) : GoInt)), _errStr : ((((("overflow" : GoString))) : GoString)) } : T__struct_18));
            s;
        };
        for (_i => _tt in _tests) {
            var _err:stdgo.Error = _repeat(_tt._s, _tt._count);
            if (_tt._errStr == ((((("" : GoString))) : GoString))) {
                if (_err != null) {
                    _t.errorf(((((("#%d panicked %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !contains(_err.error(), _tt._errStr)) {
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
            var _a = ((_tt._in : Slice<GoRune>));
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(((((("[]rune(%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:GoString = ((_a : GoString));
                if (_s != _tt._in) {
                    _t.errorf(((((("string([]rune(%q)) = %x; want %x" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._in));
                };
            };
        };
    }
function testReadByte(_t:stdgo.testing.Testing.T):Void {
        var _testStrings = ((new Slice<GoString>(((((("" : GoString))) : GoString)), _abcd, _faces, _commas) : Slice<GoString>));
        for (_0 => _s in _testStrings) {
            var _reader = newReader(_s);
            {
                var _e:stdgo.Error = _reader.unreadByte();
                if (_e == null) {
                    _t.errorf(((((("Unreading %q at beginning: expected error" : GoString))) : GoString)), Go.toInterface(_s));
                };
            };
            var _res:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
            while (true) {
                var __tmp__ = _reader.readByte(), _b:GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_e == stdgo.io.Io.eof) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(((((("Reading %q: %s" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                _res.writeByte(_b);
                _e = _reader.unreadByte();
                if (_e != null) {
                    _t.errorf(((((("Unreading %q: %s" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readByte(), _b1:GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_e != null) {
                    _t.errorf(((((("Reading %q after unreading: %s" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                if (_b1 != _b) {
                    _t.errorf(((((("Reading %q after unreading: want byte %q, got %q" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_b), Go.toInterface(_b1));
                    break;
                };
            };
            if (((_res.string() : GoString)) != _s) {
                _t.errorf(((((("Reader(%q).ReadByte() produced %q" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(((_res.string() : GoString))));
            };
        };
    }
function testReadRune(_t:stdgo.testing.Testing.T):Void {
        var _testStrings = ((new Slice<GoString>(((((("" : GoString))) : GoString)), _abcd, _faces, _commas) : Slice<GoString>));
        for (_0 => _s in _testStrings) {
            var _reader = newReader(_s);
            {
                var _e:stdgo.Error = _reader.unreadRune();
                if (_e == null) {
                    _t.errorf(((((("Unreading %q at beginning: expected error" : GoString))) : GoString)), Go.toInterface(_s));
                };
            };
            var _res:GoString = ((((("" : GoString))) : GoString));
            while (true) {
                var __tmp__ = _reader.readRune(), _r:GoInt32 = __tmp__._0, _z:GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (_e == stdgo.io.Io.eof) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(((((("Reading %q: %s" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                _res = _res + (((_r : GoString)));
                _e = _reader.unreadRune();
                if (_e != null) {
                    _t.errorf(((((("Unreading %q: %s" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readRune(), _r1:GoInt32 = __tmp__._0, _z1:GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (_e != null) {
                    _t.errorf(((((("Reading %q after unreading: %s" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                if (_r1 != _r) {
                    _t.errorf(((((("Reading %q after unreading: want rune %q, got %q" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_r1));
                    break;
                };
                if (_z1 != _z) {
                    _t.errorf(((((("Reading %q after unreading: want size %d, got %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_z), Go.toInterface(_z1));
                    break;
                };
            };
            if (_res != _s) {
                _t.errorf(((((("Reader(%q).ReadRune() produced %q" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_res));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader(((((("0123456789" : GoString))) : GoString)));
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
function testReplace(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in replaceTests) {
            {
                var _s:GoString = replace(_tt._in, _tt._old, _tt._new, _tt._n);
                if (_s != _tt._out) {
                    _t.errorf(((((("Replace(%q, %q, %q, %d) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
            if (_tt._n == ((-1 : GoInt))) {
                var _s:GoString = replaceAll(_tt._in, _tt._old, _tt._new);
                if (_s != _tt._out) {
                    _t.errorf(((((("ReplaceAll(%q, %q, %q) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testTitle(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in titleTests) {
            {
                var _s:GoString = title(_tt._in);
                if (_s != _tt._out) {
                    _t.errorf(((((("Title(%q) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testContains(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ct in containsTests) {
            if (contains(_ct._str, _ct._substr) != _ct._expected) {
                _t.errorf(((((("Contains(%s, %s) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_ct._str), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsAny(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ct in containsAnyTests) {
            if (containsAny(_ct._str, _ct._substr) != _ct._expected) {
                _t.errorf(((((("ContainsAny(%s, %s) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_ct._str), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ct in containsRuneTests) {
            if (containsRune(_ct._str, _ct._r) != _ct._expected) {
                _t.errorf(((((("ContainsRune(%q, %q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_ct._str), Go.toInterface(_ct._r), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testEqualFold(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold(_tt._s, _tt._t);
                if (_out != _tt._out) {
                    _t.errorf(((((("EqualFold(%#q, %#q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold(_tt._t, _tt._s);
                if (_out != _tt._out) {
                    _t.errorf(((((("EqualFold(%#q, %#q) = %v, want %v" : GoString))) : GoString)), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
        };
    }
function benchmarkEqualFold(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                for (_0 => _tt in equalFoldTests) {
                    {
                        var _out:Bool = equalFold(_tt._s, _tt._t);
                        if (_out != _tt._out) {
                            _b.fatal(Go.toInterface(((((("wrong result" : GoString))) : GoString))));
                        };
                    };
                };
            });
        };
    }
function testCount(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in countTests) {
            {
                var _num:GoInt = count(_tt._s, _tt._sep);
                if (_num != _tt._num) {
                    _t.errorf(((((("Count(%q, %q) = %d, want %d" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_num), Go.toInterface(_tt._num));
                };
            };
        };
    }
function testCut(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _cutTests) {
            {
                var __tmp__ = cut(_tt._s, _tt._sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
                if (((_before != _tt._before) || (_after != _tt._after)) || (_found != _tt._found)) {
                    _t.errorf(((((("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : GoString))) : GoString)), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function _makeBenchInputHard():GoString {
        var _tokens = ((new GoArray<GoString>(((((("<a>" : GoString))) : GoString)), ((((("<p>" : GoString))) : GoString)), ((((("<b>" : GoString))) : GoString)), ((((("<strong>" : GoString))) : GoString)), ((((("</a>" : GoString))) : GoString)), ((((("</p>" : GoString))) : GoString)), ((((("</b>" : GoString))) : GoString)), ((((("</strong>" : GoString))) : GoString)), ((((("hello" : GoString))) : GoString)), ((((("world" : GoString))) : GoString))) : GoArray<GoString>));
        var _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((1048576 : GoInt)) : GoInt)).toBasic());
        while (true) {
            var _i:GoInt = stdgo.math.rand.Rand.intn((_tokens != null ? _tokens.length : ((0 : GoInt))));
            if (((_x != null ? _x.length : ((0 : GoInt))) + ((_tokens != null ? _tokens[_i] : (("" : GoString))) != null ? (_tokens != null ? _tokens[_i] : (("" : GoString))).length : ((0 : GoInt)))) >= ((1048576 : GoInt))) {
                break;
            };
            _x = (_x != null ? _x.__append__(...(_tokens != null ? _tokens[_i] : (("" : GoString))).__toArray__()) : new Slice<GoUInt8>(...(_tokens != null ? _tokens[_i] : (("" : GoString))).__toArray__()));
        };
        return ((_x : GoString));
    }
function _benchmarkIndexHard(_b:stdgo.testing.Testing.B, _sep:GoString):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                index(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkLastIndexHard(_b:stdgo.testing.Testing.B, _sep:GoString):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                lastIndex(_benchInputHard, _sep);
            });
        };
    }
function _benchmarkCountHard(_b:stdgo.testing.Testing.B, _sep:GoString):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                count(_benchInputHard, _sep);
            });
        };
    }
function benchmarkIndexHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("<>" : GoString))) : GoString)));
    }
function benchmarkIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("</pre>" : GoString))) : GoString)));
    }
function benchmarkIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("<b>hello world</b>" : GoString))) : GoString)));
    }
function benchmarkIndexHard4(_b:stdgo.testing.Testing.B):Void {
        _benchmarkIndexHard(_b, ((((("<pre><b>hello</b><strong>world</strong></pre>" : GoString))) : GoString)));
    }
function benchmarkLastIndexHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((("<>" : GoString))) : GoString)));
    }
function benchmarkLastIndexHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((("</pre>" : GoString))) : GoString)));
    }
function benchmarkLastIndexHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkLastIndexHard(_b, ((((("<b>hello world</b>" : GoString))) : GoString)));
    }
function benchmarkCountHard1(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((("<>" : GoString))) : GoString)));
    }
function benchmarkCountHard2(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((("</pre>" : GoString))) : GoString)));
    }
function benchmarkCountHard3(_b:stdgo.testing.Testing.B):Void {
        _benchmarkCountHard(_b, ((((("<b>hello world</b>" : GoString))) : GoString)));
    }
function benchmarkIndexTorture(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                index(_benchInputTorture, _benchNeedleTorture);
            });
        };
    }
function benchmarkCountTorture(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                count(_benchInputTorture, _benchNeedleTorture);
            });
        };
    }
function benchmarkCountTortureOverlapping(_b:stdgo.testing.Testing.B):Void {
        var a:GoString = repeat(((((("ABC" : GoString))) : GoString)), ((1048576 : GoInt)));
        var b:GoString = repeat(((((("ABC" : GoString))) : GoString)), ((1024 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                count(a, b);
            });
        };
    }
function benchmarkCountByte(_b:stdgo.testing.Testing.B):Void {
        var _indexSizes = ((new Slice<GoInt>(((10 : GoInt)), ((32 : GoInt)), ((4096 : GoInt)), ((4194304 : GoInt)), ((67108864 : GoInt))) : Slice<GoInt>));
        var _benchStr:GoString = repeat(((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)), (((_indexSizes != null ? _indexSizes[(_indexSizes != null ? _indexSizes.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt))) + (((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)) != null ? ((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)).length : ((0 : GoInt)))) - ((1 : GoInt))) / (((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)) != null ? ((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString)).length : ((0 : GoInt))));
        var _benchFunc = function(_b:stdgo.testing.Testing.B, _benchStr:GoString):Void {
            _b.setBytes((((_benchStr != null ? _benchStr.length : ((0 : GoInt))) : GoInt64)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    count(_benchStr, ((((("=" : GoString))) : GoString)));
                });
            };
        };
        for (_0 => _size in _indexSizes) {
            _b.run(stdgo.fmt.Fmt.sprintf(((((("%d" : GoString))) : GoString)), Go.toInterface(_size)), function(_b:stdgo.testing.Testing.B):Void {
                _benchFunc(_b, ((_benchStr.__slice__(0, _size) : GoString)));
            });
        };
    }
function benchmarkFields(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _sd in _stringdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = ((16 : GoInt));
                    Go.cfor(_j <= ((1048576 : GoInt)), _j = _j << (((4 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d" : GoString))) : GoString)), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes(((_j : GoInt64)));
                            var _data:GoString = ((_sd._data.__slice__(0, _j) : GoString));
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
        for (_0 => _sd in _stringdata) {
            _b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _j:GoInt = ((16 : GoInt));
                    Go.cfor(_j <= ((1048576 : GoInt)), _j = _j << (((4 : GoUnTypedInt))), {
                        _b.run(stdgo.fmt.Fmt.sprintf(((((("%d" : GoString))) : GoString)), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
                            _b.reportAllocs();
                            _b.setBytes(((_j : GoInt64)));
                            var _data:GoString = ((_sd._data.__slice__(0, _j) : GoString));
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
function benchmarkSplitEmptySeparator(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, ((((("" : GoString))) : GoString)));
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, ((((("/" : GoString))) : GoString)));
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, ((((("hello" : GoString))) : GoString)));
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, ((((("/" : GoString))) : GoString)), ((10 : GoInt)));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, ((((("hello" : GoString))) : GoString)), ((10 : GoInt)));
            });
        };
    }
function benchmarkRepeat(_b:stdgo.testing.Testing.B):Void {
        var _s:GoString = ((((("0123456789" : GoString))) : GoString));
        for (_0 => _n in ((new Slice<GoInt>(((5 : GoInt)), ((10 : GoInt))) : Slice<GoInt>))) {
            for (_1 => _c in ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((6 : GoInt))) : Slice<GoInt>))) {
                _b.run(stdgo.fmt.Fmt.sprintf(((((("%dx%d" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_c)), function(_b:stdgo.testing.Testing.B):Void {
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _b.n, _i++, {
                            repeat(((_s.__slice__(0, _n) : GoString)), _c);
                        });
                    };
                });
            };
        };
    }
function benchmarkIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
        var _x:GoString = repeat(((((("#" : GoString))) : GoString)), ((2048 : GoInt)));
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
                                    indexAny(((_x.__slice__(0, _k) : GoString)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
        var _x:GoString = repeat(((((("#" : GoString))) : GoString)), ((2048 : GoInt)));
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
                                    indexAny(((_x.__slice__(0, _k) : GoString)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
        var _x:GoString = repeat(((((("#" : GoString))) : GoString)), ((2048 : GoInt)));
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
                                    lastIndexAny(((_x.__slice__(0, _k) : GoString)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
        var _x:GoString = repeat(((((("#" : GoString))) : GoString)), ((2048 : GoInt)));
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
                                    lastIndexAny(((_x.__slice__(0, _k) : GoString)), ((_cs.__slice__(0, _j) : GoString)));
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
                            var _x:GoString = repeat(((_cs.__slice__(0, _j) : GoString)), _k);
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < _b.n, _i++, {
                                    trim(((_x.__slice__(0, _k) : GoString)), ((_cs.__slice__(0, _j) : GoString)));
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimByte(_b:stdgo.testing.Testing.B):Void {
        var _x:GoString = ((((("  the quick brown fox   " : GoString))) : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                trim(_x, (((((" " : GoString))) : GoString)));
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.testing.Testing.B):Void {
        var _key:GoString = ((((("aa" : GoString))) : GoString));
        for (_0 => _skip in ((new GoArray<GoInt>(((2 : GoInt)), ((4 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((32 : GoInt)), ((64 : GoInt))) : GoArray<GoInt>))) {
            _b.run(stdgo.fmt.Fmt.sprintf(((((("IndexPeriodic%d" : GoString))) : GoString)), Go.toInterface(_skip)), function(_b:stdgo.testing.Testing.B):Void {
                var _s:GoString = repeat(((((("a" : GoString))) : GoString)) + repeat((((((" " : GoString))) : GoString)), _skip - ((1 : GoInt))), ((65536 : GoInt)) / _skip);
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        index(_s, _key);
                    });
                };
            });
        };
    }
function benchmarkJoin(_b:stdgo.testing.Testing.B):Void {
        var _vals = ((new Slice<GoString>(((((("red" : GoString))) : GoString)), ((((("yellow" : GoString))) : GoString)), ((((("pink" : GoString))) : GoString)), ((((("green" : GoString))) : GoString)), ((((("purple" : GoString))) : GoString)), ((((("orange" : GoString))) : GoString)), ((((("blue" : GoString))) : GoString))) : Slice<GoString>));
        {
            var _l:GoInt = ((0 : GoInt));
            Go.cfor(_l <= (_vals != null ? _vals.length : ((0 : GoInt))), _l++, {
                _b.run(stdgo.strconv.Strconv.itoa(_l), function(_b:stdgo.testing.Testing.B):Void {
                    _b.reportAllocs();
                    var _vals = ((_vals.__slice__(0, _l) : Slice<GoString>));
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _b.n, _i++, {
                            join(_vals, (((((" and " : GoString))) : GoString)));
                        });
                    };
                });
            });
        };
    }
function benchmarkTrimSpace(_b:stdgo.testing.Testing.B):Void {
        var _tests = ((new Slice<T__struct_13>((({ _name : ((((("NoTrim" : GoString))) : GoString)), _input : ((((("typical" : GoString))) : GoString)) } : T__struct_13)), (({ _name : ((((("ASCII" : GoString))) : GoString)), _input : ((((("  foo bar  " : GoString))) : GoString)) } : T__struct_13)), (({ _name : ((((("SomeNonASCII" : GoString))) : GoString)), _input : ((((("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : GoString))) : GoString)) } : T__struct_13)), (({ _name : ((((("JustNonASCII" : GoString))) : GoString)), _input : ((((("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : GoString))) : GoString)) } : T__struct_13))) : Slice<T__struct_13>));
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
function benchmarkReplaceAll(_b:stdgo.testing.Testing.B):Void {
        _b.reportAllocs();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _stringSink = replaceAll(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)));
            });
        };
    }
@:keep class T_errWriter_static_extension {
    @:keep
    static public function write( _:T_errWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((0 : GoInt)), _1 : stdgo.fmt.Fmt.errorf(((((("unwritable" : GoString))) : GoString))) };
    }
}
class T_errWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_errWriter;
}
