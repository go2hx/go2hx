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
var _compareTests : Slice<stdgo.strings_test.Strings_test.T__struct_2> = ((new Slice<T__struct_2>(
((new T__struct_2(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("ab" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("abc" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("x" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("ab" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("x" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("b" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("abcdefgh" : GoString))) : GoString)), ((((("abcdefgh" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("abcdefghi" : GoString))) : GoString)), ((((("abcdefghi" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_2)),
((new T__struct_2(((((("abcdefghi" : GoString))) : GoString)), ((((("abcdefghj" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_2))) : Slice<T__struct_2>));
var _htmlEscaper : Ref<Replacer> = newReplacer(((((("&" : GoString))) : GoString)), ((((("&amp;" : GoString))) : GoString)), ((((("<" : GoString))) : GoString)), ((((("&lt;" : GoString))) : GoString)), (((((">" : GoString))) : GoString)), ((((("&gt;" : GoString))) : GoString)), (("\"" : GoString)), ((((("&quot;" : GoString))) : GoString)), ((((("\'" : GoString))) : GoString)), ((((("&apos;" : GoString))) : GoString)));
var _htmlUnescaper : Ref<Replacer> = newReplacer(((((("&amp;" : GoString))) : GoString)), ((((("&" : GoString))) : GoString)), ((((("&lt;" : GoString))) : GoString)), ((((("<" : GoString))) : GoString)), ((((("&gt;" : GoString))) : GoString)), (((((">" : GoString))) : GoString)), ((((("&quot;" : GoString))) : GoString)), (("\"" : GoString)), ((((("&apos;" : GoString))) : GoString)), ((((("\'" : GoString))) : GoString)));
var _capitalLetters : Ref<Replacer> = newReplacer(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)));
var _algorithmTestCases : Slice<stdgo.strings_test.Strings_test.T__struct_5> = ((new Slice<T__struct_5>(((new T__struct_5(_capitalLetters, ((((("*strings.byteReplacer" : GoString))) : GoString))) : T__struct_5)), ((new T__struct_5(_htmlEscaper, ((((("*strings.byteStringReplacer" : GoString))) : GoString))) : T__struct_5)), ((new T__struct_5(newReplacer(((((("12" : GoString))) : GoString)), ((((("123" : GoString))) : GoString))), ((((("*strings.singleStringReplacer" : GoString))) : GoString))) : T__struct_5)), ((new T__struct_5(newReplacer(((((("1" : GoString))) : GoString)), ((((("12" : GoString))) : GoString))), ((((("*strings.byteStringReplacer" : GoString))) : GoString))) : T__struct_5)), ((new T__struct_5(newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))), ((((("*strings.genericReplacer" : GoString))) : GoString))) : T__struct_5)), ((new T__struct_5(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("12" : GoString))) : GoString)), ((((("cde" : GoString))) : GoString)), ((((("123" : GoString))) : GoString))), ((((("*strings.genericReplacer" : GoString))) : GoString))) : T__struct_5))) : Slice<T__struct_5>));
var _mapdata : Slice<stdgo.strings_test.Strings_test.T__struct_7> = ((new Slice<T__struct_7>(((new T__struct_7(((((("ASCII" : GoString))) : GoString)), ((((("a b c d e f g h i j k l m n o p q r s t u v w x y z" : GoString))) : GoString))) : T__struct_7)), ((new T__struct_7(((((("Greek" : GoString))) : GoString)), ((((("α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω" : GoString))) : GoString))) : T__struct_7))) : Slice<T__struct_7>));
var _abcd : GoString = ((((("abcd" : GoString))) : GoString));
var _faces : GoString = ((((("☺☻☹" : GoString))) : GoString));
var _commas : GoString = ((((("1,2,3,4" : GoString))) : GoString));
var _dots : GoString = ((((("1....2....3....4" : GoString))) : GoString));
var _indexTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<IndexTest>(
((new IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("fo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((4 : GoInt))) : IndexTest)),
((new IndexTest(((((("barfoobarfoo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((3 : GoInt))) : IndexTest)),
((new IndexTest(((((("foo" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("foo" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("abcABCabc" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((3 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("bc" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("ab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("xab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xab" : GoString))) : GoString)).__slice__(0, ((2 : GoInt))) : GoString)), ((((("ab" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xbc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("xabc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xabc" : GoString))) : GoString)).__slice__(0, ((3 : GoInt))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xabxc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xbcd" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("abcd" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("xabcd" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xyabcd" : GoString))) : GoString)).__slice__(0, ((5 : GoInt))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xbcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("abcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("xabcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xyabcqq" : GoString))) : GoString)).__slice__(0, ((6 : GoInt))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xabxcqq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xabcqxq" : GoString))) : GoString)), ((((("abcqq" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("32145678" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("01234567" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("x01234567" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x0123456x01234567" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((9 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xx01234567" : GoString))) : GoString)).__slice__(0, ((9 : GoInt))) : GoString)), ((((("01234567" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("3214567844" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("0123456789" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("x0123456789" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x012345678x0123456789" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((11 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xyz0123456789" : GoString))) : GoString)).__slice__(0, ((12 : GoInt))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x01234567x89" : GoString))) : GoString)), ((((("0123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("3214567889012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("0123456789012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("x0123456789012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x012345678901234x0123456789012345" : GoString))) : GoString)), ((((("0123456789012345" : GoString))) : GoString)), ((17 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("32145678890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("01234567890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("x01234567890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x0123456789012345678x01234567890123456789" : GoString))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((21 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xyz01234567890123456789" : GoString))) : GoString)).__slice__(0, ((22 : GoInt))) : GoString)), ((((("01234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("321456788901234567890123456789012345678911" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("0123456789012345678901234567890" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("x0123456789012345678901234567890" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x012345678901234567890123456789x0123456789012345678901234567890" : GoString))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((32 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xyz0123456789012345678901234567890" : GoString))) : GoString)).__slice__(0, ((33 : GoInt))) : GoString)), ((((("0123456789012345678901234567890" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("32145678890123456789012345678901234567890211" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("01234567890123456789012345678901" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("x01234567890123456789012345678901" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("x0123456789012345678901234567890x01234567890123456789012345678901" : GoString))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((33 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xyz01234567890123456789012345678901" : GoString))) : GoString)).__slice__(0, ((34 : GoInt))) : GoString)), ((((("01234567890123456789012345678901" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xxxxxx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((((("012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((6 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456789" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((((("xx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)).__slice__(0, ((41 : GoInt))) : GoString)), ((((("0123456789012345678901234567890123456789" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xx012345678901234567890123456789012345678901234567890123456789012" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456xxx" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("xx0123456789012345678901234567890123456789012345678901234567890120123456789012345678901234567890123456xxx" : GoString))) : GoString)), ((((("0123456789012345678901234567890123456xxx" : GoString))) : GoString)), ((65 : GoInt))) : IndexTest)),
((new IndexTest(((((("oxoxoxoxoxoxoxoxoxoxoxoy" : GoString))) : GoString)), ((((("oy" : GoString))) : GoString)), ((22 : GoInt))) : IndexTest)),
((new IndexTest(((((("oxoxoxoxoxoxoxoxoxoxoxox" : GoString))) : GoString)), ((((("oy" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest))) : Slice<IndexTest>));
var _lastIndexTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<IndexTest>(
((new IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("fo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("foo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), ((7 : GoInt))) : IndexTest)),
((new IndexTest(((((("oofofoofooo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((7 : GoInt))) : IndexTest)),
((new IndexTest(((((("barfoobarfoo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString)), ((9 : GoInt))) : IndexTest)),
((new IndexTest(((((("foo" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((3 : GoInt))) : IndexTest)),
((new IndexTest(((((("foo" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((("abcABCabc" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((3 : GoInt))) : IndexTest)),
((new IndexTest(((((("abcABCabc" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((6 : GoInt))) : IndexTest))) : Slice<IndexTest>));
var _indexAnyTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<IndexTest>(
((new IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest((((((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("aaa" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("xcz" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((("ab☺c" : GoString))) : GoString)), ((((("x☺yz" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("cx" : GoString))) : GoString)), (((((("a☺b☻" : GoString))) : GoString)) != null ? ((((("a☺b☻" : GoString))) : GoString)).length : ((0 : GoInt)))) : IndexTest)),
((new IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("uvw☻xyz" : GoString))) : GoString)), (((((("a☺b" : GoString))) : GoString)) != null ? ((((("a☺b" : GoString))) : GoString)).length : ((0 : GoInt)))) : IndexTest)),
((new IndexTest(((((("aRegExp*" : GoString))) : GoString)), (((((".(|)*+?^$$[]" : GoString))) : GoString)), ((7 : GoInt))) : IndexTest)),
((new IndexTest((_dots + _dots) + _dots, (((((" " : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("012abcba210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((4 : GoInt))) : IndexTest)),
((new IndexTest(((((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((3 : GoInt))) : IndexTest)),
((new IndexTest(((((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((10 : GoInt))) : IndexTest))) : Slice<IndexTest>));
var _lastIndexAnyTests : Slice<stdgo.strings_test.Strings_test.IndexTest> = ((new Slice<IndexTest>(
((new IndexTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest((((((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)),
((new IndexTest(((((("aaa" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("abc" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((1 : GoInt))) : IndexTest)),
((new IndexTest(((((("ab☺c" : GoString))) : GoString)), ((((("x☺yz" : GoString))) : GoString)), ((2 : GoInt))) : IndexTest)),
((new IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("cx" : GoString))) : GoString)), (((((("a☺b☻" : GoString))) : GoString)) != null ? ((((("a☺b☻" : GoString))) : GoString)).length : ((0 : GoInt)))) : IndexTest)),
((new IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("uvw☻xyz" : GoString))) : GoString)), (((((("a☺b" : GoString))) : GoString)) != null ? ((((("a☺b" : GoString))) : GoString)).length : ((0 : GoInt)))) : IndexTest)),
((new IndexTest(((((("a.RegExp*" : GoString))) : GoString)), (((((".(|)*+?^$$[]" : GoString))) : GoString)), ((8 : GoInt))) : IndexTest)),
((new IndexTest((_dots + _dots) + _dots, (((((" " : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)),
((new IndexTest(((((("012abcba210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((6 : GoInt))) : IndexTest)),
((new IndexTest(((((("012" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("bcb" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("210" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((7 : GoInt))) : IndexTest)),
((new IndexTest(((((("0123456" : GoString)) + ((haxe.io.Bytes.ofHex("cf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("cf") : GoString)) + (("b" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((10 : GoInt))) : IndexTest))) : Slice<IndexTest>));
var _benchmarkLongString : GoString = repeat((((((" " : GoString))) : GoString)), ((100 : GoInt))) + ((((("some_text=some" : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + ((haxe.io.Bytes.ofHex("BA") : GoString)) + (("value" : GoString))) : GoString));
var _splittests : Slice<stdgo.strings_test.Strings_test.SplitTest> = ((new Slice<SplitTest>(
((new SplitTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>() : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((2 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((4 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("" : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("" : GoString))) : GoString)), ((17 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("☺�☹" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("�" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((0 : GoInt)), ((null : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("z" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("abcd" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_commas, ((((("," : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_dots, ((((("..." : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), (((((".2" : GoString))) : GoString)), (((((".3" : GoString))) : GoString)), (((((".4" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("☹" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺☻" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("~" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("1 2 3 4" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3 4" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("1 2" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest))) : Slice<SplitTest>));
var _splitaftertests : Slice<stdgo.strings_test.Strings_test.SplitTest> = ((new Slice<SplitTest>(
((new SplitTest(_abcd, ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("z" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("abcd" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_abcd, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("d" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_commas, ((((("," : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1," : GoString))) : GoString)), ((((("2," : GoString))) : GoString)), ((((("3," : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_dots, ((((("..." : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("1..." : GoString))) : GoString)), (((((".2..." : GoString))) : GoString)), (((((".3..." : GoString))) : GoString)), (((((".4" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("☹" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺☻☹" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("~" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(_faces) : Slice<GoString>))) : SplitTest)),
((new SplitTest(_faces, ((((("" : GoString))) : GoString)), ((-1 : GoInt)), ((new Slice<GoString>(((((("☺" : GoString))) : GoString)), ((((("☻" : GoString))) : GoString)), ((((("☹" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("1 2 3 4" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2 " : GoString))) : GoString)), ((((("3 4" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("1 2 3" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2 " : GoString))) : GoString)), ((((("3" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("1 2" : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((3 : GoInt)), ((new Slice<GoString>(((((("1 " : GoString))) : GoString)), ((((("2" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((2 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("23" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest)),
((new SplitTest(((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((17 : GoInt)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))) : Slice<GoString>))) : SplitTest))) : Slice<SplitTest>));
var _fieldstests : Slice<stdgo.strings_test.Strings_test.FieldsTest> = ((new Slice<FieldsTest>(
((new FieldsTest(((((("" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : FieldsTest)),
((new FieldsTest((((((" " : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : FieldsTest)),
((new FieldsTest((((((" \t " : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("\u2000" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("  abc  " : GoString))) : GoString)), ((new Slice<GoString>(((((("abc" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("1 2 3 4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("1  2  3  4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("1\t\t2\t\t3\t4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("1\u20002\u20013\u20024" : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("4" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("\u2000\u2001\u2002" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("\n™\t™\n" : GoString))) : GoString)), ((new Slice<GoString>(((((("™" : GoString))) : GoString)), ((((("™" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("\n\u20001™2\u2000 \u2001 ™" : GoString))) : GoString)), ((new Slice<GoString>(((((("1™2" : GoString))) : GoString)), ((((("™" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("\n1\uFFFD \uFFFD2\u20003\uFFFD4" : GoString))) : GoString)), ((new Slice<GoString>(((((("1\uFFFD" : GoString))) : GoString)), ((((("\uFFFD2" : GoString))) : GoString)), ((((("3\uFFFD4" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(((((("1" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + (("\u2000" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + (("2" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + ((" " : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString)), ((new Slice<GoString>(((((("1" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("FF") : GoString)) + (("2" : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("FF") : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)),
((new FieldsTest(_faces, ((new Slice<GoString>(_faces) : Slice<GoString>))) : FieldsTest))) : Slice<FieldsTest>));
var fieldsFuncTests : Slice<stdgo.strings_test.Strings_test.FieldsTest> = ((new Slice<FieldsTest>(((new FieldsTest(((((("" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : FieldsTest)), ((new FieldsTest(((((("XX" : GoString))) : GoString)), ((new Slice<GoString>() : Slice<GoString>))) : FieldsTest)), ((new FieldsTest(((((("XXhiXXX" : GoString))) : GoString)), ((new Slice<GoString>(((((("hi" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest)), ((new FieldsTest(((((("aXXbXXXcX" : GoString))) : GoString)), ((new Slice<GoString>(((((("a" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("c" : GoString))) : GoString))) : Slice<GoString>))) : FieldsTest))) : Slice<FieldsTest>));
var _upperTests : Slice<stdgo.strings_test.Strings_test.StringTest> = ((new Slice<StringTest>(((new StringTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("ONLYUPPER" : GoString))) : GoString)), ((((("ONLYUPPER" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("abc" : GoString))) : GoString)), ((((("ABC" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("AbC123" : GoString))) : GoString)), ((((("ABC123" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("azAZ09_" : GoString))) : GoString)), ((((("AZAZ09_" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("longStrinGwitHmixofsmaLLandcAps" : GoString))) : GoString)), ((((("LONGSTRINGWITHMIXOFSMALLANDCAPS" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("long\u0250string\u0250with\u0250nonascii\u2C6Fchars" : GoString))) : GoString)), ((((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("\u0250\u0250\u0250\u0250\u0250" : GoString))) : GoString)), ((((("\u2C6F\u2C6F\u2C6F\u2C6F\u2C6F" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("a\u0080\u{0010FFFF}" : GoString))) : GoString)), ((((("A\u0080\u{0010FFFF}" : GoString))) : GoString))) : StringTest))) : Slice<StringTest>));
var _lowerTests : Slice<stdgo.strings_test.Strings_test.StringTest> = ((new Slice<StringTest>(((new StringTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("AbC123" : GoString))) : GoString)), ((((("abc123" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("azAZ09_" : GoString))) : GoString)), ((((("azaz09_" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("longStrinGwitHmixofsmaLLandcAps" : GoString))) : GoString)), ((((("longstringwithmixofsmallandcaps" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS" : GoString))) : GoString)), ((((("long\u0250string\u0250with\u0250nonascii\u0250chars" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("\u2C6D\u2C6D\u2C6D\u2C6D\u2C6D" : GoString))) : GoString)), ((((("\u0251\u0251\u0251\u0251\u0251" : GoString))) : GoString))) : StringTest)), ((new StringTest(((((("A\u0080\u{0010FFFF}" : GoString))) : GoString)), ((((("a\u0080\u{0010FFFF}" : GoString))) : GoString))) : StringTest))) : Slice<StringTest>));
var _trimSpaceTests : Slice<stdgo.strings_test.Strings_test.StringTest> = ((new Slice<StringTest>(
((new StringTest(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : StringTest)),
((new StringTest((((((" " : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : StringTest)),
((new StringTest((((((" \t\r\n \t\t\r\r\n\n " : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : StringTest)),
((new StringTest((((((" \t\r\n x\t\t\r\r\n\n " : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : StringTest)),
((new StringTest((((((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : GoString))) : GoString)), ((((("x\t\t\r\r\ny" : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("1 \t\r\n2" : GoString))) : GoString)), ((((("1 \t\r\n2" : GoString))) : GoString))) : StringTest)),
((new StringTest((((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : StringTest)),
((new StringTest((((((" x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((("x" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x " : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((" " : GoString))) : GoString)), ((((("x ☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : StringTest)),
((new StringTest(((((("x ☺ " : GoString))) : GoString)), ((((("x ☺" : GoString))) : GoString))) : StringTest))) : Slice<StringTest>));
var _toValidUTF8Tests : Slice<stdgo.strings_test.Strings_test.T__struct_11> = ((new Slice<T__struct_11>(
((new T__struct_11(((((("" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11(((((("abc" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11(((((("\uFDDD" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("\uFDDD" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11(((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("a\uFFFDb" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11(((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b\uFFFD" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((((("aXb\uFFFD" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11(((((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("a☺b☺c☺" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11(((((("a☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("b☺" : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString)) + (("c☺" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), ((((("日本語" : GoString))) : GoString)), ((((("a☺日本語b☺日本語c☺日本語" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11((((((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11((((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11((((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11((((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11((((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("af") : GoString))) : GoString)), ((((("☺" : GoString))) : GoString)), ((((("☺" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11((((((haxe.io.Bytes.ofHex("F8") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString))) : T__struct_11)),
((new T__struct_11((((((haxe.io.Bytes.ofHex("FC") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("AF") : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString)), ((((("\uFFFD" : GoString))) : GoString))) : T__struct_11))) : Slice<T__struct_11>));
var _trimTests : Slice<stdgo.strings_test.Strings_test.T__struct_12> = ((new Slice<T__struct_12>(
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("bb" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("bba" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("abb" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("<tag>" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((((("tag" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("* listitem" : GoString))) : GoString)), (((((" *" : GoString))) : GoString)), ((((("listitem" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), (("\"quote\"" : GoString)), (("\"" : GoString)), ((((("quote" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("\u2C6F\u2C6F\u0250\u0250\u2C6F\u2C6F" : GoString))) : GoString)), ((((("\u2C6F" : GoString))) : GoString)), ((((("\u0250\u0250" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("80") : GoString)) + (("test" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), ((((("test" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), (((((" Ġ " : GoString))) : GoString)), (((((" " : GoString))) : GoString)), ((((("Ġ" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), (((((" Ġİ0" : GoString))) : GoString)), ((((("0 " : GoString))) : GoString)), ((((("Ġİ" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("Trim" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimLeft" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimLeft" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimLeft" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimRight" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("abba" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimRight" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimRight" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimRight" : GoString))) : GoString)), ((((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((("☺" : GoString))) : GoString)), ((((("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimPrefix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("abb" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimPrefix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimSuffix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString))) : T__struct_12)),
((new T__struct_12(((((("TrimSuffix" : GoString))) : GoString)), ((((("aabb" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("aab" : GoString))) : GoString))) : T__struct_12))) : Slice<T__struct_12>));
var _isSpace : stdgo.strings_test.Strings_test.T_predicate = ((new T_predicate(stdgo.unicode.Unicode.isSpace, ((((("IsSpace" : GoString))) : GoString))) : T_predicate));
var _isDigit : stdgo.strings_test.Strings_test.T_predicate = ((new T_predicate(stdgo.unicode.Unicode.isDigit, ((((("IsDigit" : GoString))) : GoString))) : T_predicate));
var _isUpper : stdgo.strings_test.Strings_test.T_predicate = ((new T_predicate(stdgo.unicode.Unicode.isUpper, ((((("IsUpper" : GoString))) : GoString))) : T_predicate));
var _isValidRune : stdgo.strings_test.Strings_test.T_predicate = ((new T_predicate(function(_r:GoRune):Bool {
        return _r != ((65533 : GoInt32));
    }, ((((("IsValidRune" : GoString))) : GoString))) : T_predicate));
var _trimFuncTests : Slice<stdgo.strings_test.Strings_test.T__struct_14> = ((new Slice<T__struct_14>(((new T__struct_14((_isSpace == null ? null : _isSpace.__copy__()), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("hello" : GoString))) : GoString)), ((((("hello \t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((" hello" : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_isDigit == null ? null : _isDigit.__copy__()), ((((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))) : GoString)), ((((("hello" : GoString))) : GoString)), ((((("hello34\u0e50\u0e51" : GoString))) : GoString)), ((((("\u0e50\u0e5212hello" : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_isUpper == null ? null : _isUpper.__copy__()), ((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), ((((("hello" : GoString))) : GoString)), ((((("helloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), ((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhello" : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()), ((((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))) : GoString)), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("hello" : GoString))) : GoString)), ((((("hello\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), ((((("hello\u0e50\u0e521234\u0e50\u0e51helo" : GoString))) : GoString)), ((((("\u0e50\u0e521234\u0e50\u0e51" : GoString))) : GoString)), ((((("\u0e50\u0e521234\u0e50\u0e51helo" : GoString))) : GoString)), ((((("hello\u0e50\u0e521234\u0e50\u0e51" : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_isValidRune == null ? null : _isValidRune.__copy__()), ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), ((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_isSpace == null ? null : _isSpace.__copy__()), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_14)), ((new T__struct_14((_isSpace == null ? null : _isSpace.__copy__()), (((((" " : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_14))) : Slice<T__struct_14>));
var _indexFuncTests : Slice<stdgo.strings_test.Strings_test.T__struct_16> = ((new Slice<T__struct_16>(
((new T__struct_16(((((("" : GoString))) : GoString)), (_isValidRune == null ? null : _isValidRune.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("abc" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("0123" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((0 : GoInt)), ((3 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("a1b" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("\t\x0B\r\x0C\n" : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("E3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (_isSpace == null ? null : _isSpace.__copy__()), ((0 : GoInt)), ((12 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("\u0e50\u0e5212hello34\u0e50\u0e51" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((0 : GoInt)), ((18 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F" : GoString))) : GoString)), (_isUpper == null ? null : _isUpper.__copy__()), ((0 : GoInt)), ((34 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("12\u0e50\u0e52hello34\u0e50\u0e51" : GoString))) : GoString)), (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()), ((8 : GoInt)), ((12 : GoInt))) : T__struct_16)),
((new T__struct_16((((((haxe.io.Bytes.ofHex("80") : GoString)) + (("1" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : T__struct_16)),
((new T__struct_16((((((haxe.io.Bytes.ofHex("80") : GoString)) + (("abc" : GoString))) : GoString)), (_isDigit == null ? null : _isDigit.__copy__()), ((-1 : GoInt)), ((-1 : GoInt))) : T__struct_16)),
((new T__struct_16((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_isValidRune == null ? null : _isValidRune.__copy__()), ((1 : GoInt)), ((1 : GoInt))) : T__struct_16)),
((new T__struct_16((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((2 : GoInt))) : T__struct_16)),
((new T__struct_16((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((4 : GoInt))) : T__struct_16)),
((new T__struct_16((((((haxe.io.Bytes.ofHex("c0") : GoString)) + (("☺" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((5 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("a" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("cd" : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((2 : GoInt)), ((4 : GoInt))) : T__struct_16)),
((new T__struct_16(((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("e0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("cd" : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((1 : GoInt)), ((2 : GoInt))) : T__struct_16)),
((new T__struct_16((((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__())).__copy__()), ((0 : GoInt)), ((3 : GoInt))) : T__struct_16))) : Slice<T__struct_16>));
var repeatTests : Slice<stdgo.strings_test.Strings_test.T__struct_17> = ((new Slice<T__struct_17>(((new T__struct_17(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_17)), ((new T__struct_17(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_17)), ((new T__struct_17(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((2 : GoInt))) : T__struct_17)), ((new T__struct_17(((((("-" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_17)), ((new T__struct_17(((((("-" : GoString))) : GoString)), ((((("-" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_17)), ((new T__struct_17(((((("-" : GoString))) : GoString)), ((((("----------" : GoString))) : GoString)), ((10 : GoInt))) : T__struct_17)), ((new T__struct_17(((((("abc " : GoString))) : GoString)), ((((("abc abc abc " : GoString))) : GoString)), ((3 : GoInt))) : T__struct_17))) : Slice<T__struct_17>));
var runesTests : Slice<stdgo.strings_test.Strings_test.T__struct_19> = ((new Slice<T__struct_19>(((new T__struct_19(((((("" : GoString))) : GoString)), ((new Slice<GoRune>() : Slice<GoRune>)), false) : T__struct_19)), ((new T__struct_19((((((" " : GoString))) : GoString)), ((new Slice<GoRune>(((32 : GoInt32))) : Slice<GoRune>)), false) : T__struct_19)), ((new T__struct_19(((((("ABC" : GoString))) : GoString)), ((new Slice<GoRune>(((65 : GoInt32)), ((66 : GoInt32)), ((67 : GoInt32))) : Slice<GoRune>)), false) : T__struct_19)), ((new T__struct_19(((((("abc" : GoString))) : GoString)), ((new Slice<GoRune>(((97 : GoInt32)), ((98 : GoInt32)), ((99 : GoInt32))) : Slice<GoRune>)), false) : T__struct_19)), ((new T__struct_19(((((("\u65e5\u672c\u8a9e" : GoString))) : GoString)), ((new Slice<GoRune>(((26085 : GoInt32)), ((26412 : GoInt32)), ((35486 : GoInt32))) : Slice<GoRune>)), false) : T__struct_19)), ((new T__struct_19(((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("c" : GoString))) : GoString)), ((new Slice<GoRune>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoRune>)), true) : T__struct_19)), ((new T__struct_19(((((("ab" : GoString)) + ((haxe.io.Bytes.ofHex("c0") : GoString)) + (("c" : GoString))) : GoString)), ((new Slice<GoRune>(((97 : GoInt32)), ((98 : GoInt32)), ((65533 : GoInt32)), ((99 : GoInt32))) : Slice<GoRune>)), true) : T__struct_19))) : Slice<T__struct_19>));
var unreadRuneErrorTests : Slice<stdgo.strings_test.Strings_test.T__struct_20> = ((new Slice<T__struct_20>(((new T__struct_20(((((("Read" : GoString))) : GoString)), function(_r:Reader):Void {
        _r.read(((new Slice<GoByte>(((0 : GoUInt8))) : Slice<GoByte>)));
    }) : T__struct_20)), ((new T__struct_20(((((("ReadByte" : GoString))) : GoString)), function(_r:Reader):Void {
        _r.readByte();
    }) : T__struct_20)), ((new T__struct_20(((((("UnreadRune" : GoString))) : GoString)), function(_r:Reader):Void {
        _r.unreadRune();
    }) : T__struct_20)), ((new T__struct_20(((((("Seek" : GoString))) : GoString)), function(_r:Reader):Void {
        _r.seek(((0 : GoInt64)), ((1 : GoInt)));
    }) : T__struct_20)), ((new T__struct_20(((((("WriteTo" : GoString))) : GoString)), function(_r:Reader):Void {
        _r.writeTo({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)));
            __self__.bytes = #if !macro function():Slice<GoUInt8> return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).reset() #else null #end;
            __self__.toString = #if !macro function():GoString return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).toString() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)).writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return ((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer))._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
    }) : T__struct_20))) : Slice<T__struct_20>));
var replaceTests : Slice<stdgo.strings_test.Strings_test.T__struct_21> = ((new Slice<T__struct_21>(
((new T__struct_21(((((("hello" : GoString))) : GoString)), ((((("l" : GoString))) : GoString)), ((((("L" : GoString))) : GoString)), ((0 : GoInt)), ((((("hello" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("hello" : GoString))) : GoString)), ((((("l" : GoString))) : GoString)), ((((("L" : GoString))) : GoString)), ((-1 : GoInt)), ((((("heLLo" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("hello" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((-1 : GoInt)), ((((("hello" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("" : GoString))) : GoString)), ((((("x" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((-1 : GoInt)), ((((("" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("radar" : GoString))) : GoString)), ((((("r" : GoString))) : GoString)), ((((("<r>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<r>ada<r>" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<>" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("b<>n<>n<>" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((1 : GoInt)), ((((("b<>nana" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((1000 : GoInt)), ((((("b<>n<>n<>" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("an" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("b<><>a" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("ana" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("b<>na" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<>b<>a<>n<>a<>n<>a<>" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((10 : GoInt)), ((((("<>b<>a<>n<>a<>n<>a<>" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((6 : GoInt)), ((((("<>b<>a<>n<>a<>n<>a" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((5 : GoInt)), ((((("<>b<>a<>n<>a<>na" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((1 : GoInt)), ((((("<>banana" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((-1 : GoInt)), ((((("banana" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("banana" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((1 : GoInt)), ((((("banana" : GoString))) : GoString))) : T__struct_21)),
((new T__struct_21(((((("☺☻☹" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("<>" : GoString))) : GoString)), ((-1 : GoInt)), ((((("<>☺<>☻<>☹<>" : GoString))) : GoString))) : T__struct_21))) : Slice<T__struct_21>));
var titleTests : Slice<stdgo.strings_test.Strings_test.T__struct_6> = ((new Slice<T__struct_6>(((new T__struct_6(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6(((((("a" : GoString))) : GoString)), ((((("A" : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6((((((" aaa aaa aaa " : GoString))) : GoString)), (((((" Aaa Aaa Aaa " : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6((((((" Aaa Aaa Aaa " : GoString))) : GoString)), (((((" Aaa Aaa Aaa " : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6(((((("123a456" : GoString))) : GoString)), ((((("123a456" : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6(((((("double-blind" : GoString))) : GoString)), ((((("Double-Blind" : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6(((((("ÿøû" : GoString))) : GoString)), ((((("Ÿøû" : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6(((((("with_underscore" : GoString))) : GoString)), ((((("With_underscore" : GoString))) : GoString))) : T__struct_6)), ((new T__struct_6(((((("unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" line separator" : GoString))) : GoString)), ((((("Unicode " : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("a8") : GoString)) + ((" Line Separator" : GoString))) : GoString))) : T__struct_6))) : Slice<T__struct_6>));
var containsTests : Slice<stdgo.strings_test.Strings_test.T__struct_22> = ((new Slice<T__struct_22>(
((new T__struct_22(((((("abc" : GoString))) : GoString)), ((((("bc" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("abc" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("abc" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxx" : GoString))) : GoString)), ((((("01" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("01xxxx" : GoString))) : GoString)), ((((("01" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx01xx" : GoString))) : GoString)), ((((("01" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx01" : GoString))) : GoString)), ((((("01" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("01xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("01" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx01" : GoString))) : GoString)).__slice__(0, ((6 : GoInt))) : GoString)), ((((("01" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxxx" : GoString))) : GoString)), ((((("012" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("012xxxx" : GoString))) : GoString)), ((((("012" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx012xx" : GoString))) : GoString)), ((((("012" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx012" : GoString))) : GoString)), ((((("012" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("012xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("012" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx012" : GoString))) : GoString)).__slice__(0, ((7 : GoInt))) : GoString)), ((((("012" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxxxx" : GoString))) : GoString)), ((((("0123" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("0123xxxx" : GoString))) : GoString)), ((((("0123" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx0123xx" : GoString))) : GoString)), ((((("0123" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx0123" : GoString))) : GoString)), ((((("0123" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("0123xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("0123" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx0123" : GoString))) : GoString)).__slice__(0, ((8 : GoInt))) : GoString)), ((((("0123" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxxxxx" : GoString))) : GoString)), ((((("01234" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("01234xxxx" : GoString))) : GoString)), ((((("01234" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx01234xx" : GoString))) : GoString)), ((((("01234" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx01234" : GoString))) : GoString)), ((((("01234" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("01234xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("01234" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx01234" : GoString))) : GoString)).__slice__(0, ((9 : GoInt))) : GoString)), ((((("01234" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxxxxxxxx" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("01234567xxxx" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx01234567xx" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx01234567" : GoString))) : GoString)), ((((("01234567" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("01234567xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("01234567" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx01234567" : GoString))) : GoString)).__slice__(0, ((12 : GoInt))) : GoString)), ((((("01234567" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxxxxxxxxx" : GoString))) : GoString)), ((((("012345678" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("012345678xxxx" : GoString))) : GoString)), ((((("012345678" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx012345678xx" : GoString))) : GoString)), ((((("012345678" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx012345678" : GoString))) : GoString)), ((((("012345678" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("012345678xxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("012345678" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx012345678" : GoString))) : GoString)).__slice__(0, ((13 : GoInt))) : GoString)), ((((("012345678" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxxxxxxxxxxxxxxxx" : GoString))) : GoString)), ((((("0123456789ABCDEF" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("0123456789ABCDEFxxxx" : GoString))) : GoString)), ((((("0123456789ABCDEF" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx0123456789ABCDEFxx" : GoString))) : GoString)), ((((("0123456789ABCDEF" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx0123456789ABCDEF" : GoString))) : GoString)), ((((("0123456789ABCDEF" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("0123456789ABCDEFxxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("0123456789ABCDEF" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx0123456789ABCDEF" : GoString))) : GoString)).__slice__(0, ((20 : GoInt))) : GoString)), ((((("0123456789ABCDEF" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xxxxxxxxxxxxxxxxxxxxx" : GoString))) : GoString)), ((((("0123456789ABCDEFG" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("0123456789ABCDEFGxxxx" : GoString))) : GoString)), ((((("0123456789ABCDEFG" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xx0123456789ABCDEFGxx" : GoString))) : GoString)), ((((("0123456789ABCDEFG" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("xxxx0123456789ABCDEFG" : GoString))) : GoString)), ((((("0123456789ABCDEFG" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((((("0123456789ABCDEFGxxxxx" : GoString))) : GoString)).__slice__(((1 : GoInt))) : GoString)), ((((("0123456789ABCDEFG" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((((("xxxxx0123456789ABCDEFG" : GoString))) : GoString)).__slice__(0, ((21 : GoInt))) : GoString)), ((((("0123456789ABCDEFG" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xx01x" : GoString))) : GoString)), ((((("012" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xx0123x" : GoString))) : GoString)), ((((("01234" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xx01234567x" : GoString))) : GoString)), ((((("012345678" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("xx0123456789ABCDEFx" : GoString))) : GoString)), ((((("0123456789ABCDEFG" : GoString))) : GoString)), false) : T__struct_22))) : Slice<T__struct_22>));
var containsAnyTests : Slice<stdgo.strings_test.Strings_test.T__struct_22> = ((new Slice<T__struct_22>(
((new T__struct_22(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("a" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("aaa" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), false) : T__struct_22)),
((new T__struct_22(((((("abc" : GoString))) : GoString)), ((((("xcz" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("uvw☻xyz" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22(((((("aRegExp*" : GoString))) : GoString)), (((((".(|)*+?^$$[]" : GoString))) : GoString)), true) : T__struct_22)),
((new T__struct_22((_dots + _dots) + _dots, (((((" " : GoString))) : GoString)), false) : T__struct_22))) : Slice<T__struct_22>));
var containsRuneTests : Slice<stdgo.strings_test.Strings_test.T__struct_23> = ((new Slice<T__struct_23>(((new T__struct_23(((((("" : GoString))) : GoString)), (("a".code : GoInt32)), false) : T__struct_23)), ((new T__struct_23(((((("a" : GoString))) : GoString)), (("a".code : GoInt32)), true) : T__struct_23)), ((new T__struct_23(((((("aaa" : GoString))) : GoString)), (("a".code : GoInt32)), true) : T__struct_23)), ((new T__struct_23(((((("abc" : GoString))) : GoString)), (("y".code : GoInt32)), false) : T__struct_23)), ((new T__struct_23(((((("abc" : GoString))) : GoString)), (("c".code : GoInt32)), true) : T__struct_23)), ((new T__struct_23(((((("a☺b☻c☹d" : GoString))) : GoString)), (("x".code : GoInt32)), false) : T__struct_23)), ((new T__struct_23(((((("a☺b☻c☹d" : GoString))) : GoString)), (("☻".code : GoInt32)), true) : T__struct_23)), ((new T__struct_23(((((("aRegExp*" : GoString))) : GoString)), (("*".code : GoInt32)), true) : T__struct_23))) : Slice<T__struct_23>));
var equalFoldTests : Slice<stdgo.strings_test.Strings_test.T__struct_24> = ((new Slice<T__struct_24>(
((new T__struct_24(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), true) : T__struct_24)),
((new T__struct_24(((((("ABcd" : GoString))) : GoString)), ((((("ABcd" : GoString))) : GoString)), true) : T__struct_24)),
((new T__struct_24(((((("123abc" : GoString))) : GoString)), ((((("123ABC" : GoString))) : GoString)), true) : T__struct_24)),
((new T__struct_24(((((("αβδ" : GoString))) : GoString)), ((((("ΑΒΔ" : GoString))) : GoString)), true) : T__struct_24)),
((new T__struct_24(((((("abc" : GoString))) : GoString)), ((((("xyz" : GoString))) : GoString)), false) : T__struct_24)),
((new T__struct_24(((((("abc" : GoString))) : GoString)), ((((("XYZ" : GoString))) : GoString)), false) : T__struct_24)),
((new T__struct_24(((((("abcdefghijk" : GoString))) : GoString)), ((((("abcdefghijX" : GoString))) : GoString)), false) : T__struct_24)),
((new T__struct_24(((((("abcdefghijk" : GoString))) : GoString)), ((((("abcdefghij\u212A" : GoString))) : GoString)), true) : T__struct_24)),
((new T__struct_24(((((("abcdefghijK" : GoString))) : GoString)), ((((("abcdefghij\u212A" : GoString))) : GoString)), true) : T__struct_24)),
((new T__struct_24(((((("abcdefghijkz" : GoString))) : GoString)), ((((("abcdefghij\u212Ay" : GoString))) : GoString)), false) : T__struct_24)),
((new T__struct_24(((((("abcdefghijKz" : GoString))) : GoString)), ((((("abcdefghij\u212Ay" : GoString))) : GoString)), false) : T__struct_24)),
((new T__struct_24(((((("1" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), false) : T__struct_24)),
((new T__struct_24(((((("utf-8" : GoString))) : GoString)), ((((("US-ASCII" : GoString))) : GoString)), false) : T__struct_24))) : Slice<T__struct_24>));
var countTests : Slice<stdgo.strings_test.Strings_test.T__struct_25> = ((new Slice<T__struct_25>(((new T__struct_25(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("" : GoString))) : GoString)), ((((("notempty" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("notempty" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((9 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("smaller" : GoString))) : GoString)), ((((("not smaller" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("12345678987654321" : GoString))) : GoString)), ((((("6" : GoString))) : GoString)), ((2 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("611161116" : GoString))) : GoString)), ((((("6" : GoString))) : GoString)), ((3 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("notequal" : GoString))) : GoString)), ((((("NotEqual" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("equal" : GoString))) : GoString)), ((((("equal" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("abc1231231123q" : GoString))) : GoString)), ((((("123" : GoString))) : GoString)), ((3 : GoInt))) : T__struct_25)), ((new T__struct_25(((((("11111" : GoString))) : GoString)), ((((("11" : GoString))) : GoString)), ((2 : GoInt))) : T__struct_25))) : Slice<T__struct_25>));
var _cutTests : Slice<stdgo.strings_test.Strings_test.T__struct_26> = ((new Slice<T__struct_26>(((new T__struct_26(((((("abc" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), true) : T__struct_26)), ((new T__struct_26(((((("abc" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("bc" : GoString))) : GoString)), true) : T__struct_26)), ((new T__struct_26(((((("abc" : GoString))) : GoString)), ((((("c" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), true) : T__struct_26)), ((new T__struct_26(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), true) : T__struct_26)), ((new T__struct_26(((((("abc" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), true) : T__struct_26)), ((new T__struct_26(((((("abc" : GoString))) : GoString)), ((((("d" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), false) : T__struct_26)), ((new T__struct_26(((((("" : GoString))) : GoString)), ((((("d" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), false) : T__struct_26)), ((new T__struct_26(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), true) : T__struct_26))) : Slice<T__struct_26>));
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
var _stringdata : Slice<stdgo.strings_test.Strings_test.T__struct_7> = ((new Slice<T__struct_7>(((new T__struct_7(((((("ASCII" : GoString))) : GoString)), _makeFieldsInputASCII()) : T__struct_7)), ((new T__struct_7(((((("Mixed" : GoString))) : GoString)), _makeFieldsInput()) : T__struct_7))) : Slice<T__struct_7>));
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
    public var _s : GoString = "";
    public var _sep : GoString = "";
    public var _out : GoInt = 0;
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
    public var _out : GoString = "";
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
@:structInit @:local class T__struct_0 {
    public var _name : GoString = "";
    public var _fn : Ref<Builder> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public var _n : GoInt = 0;
    public var _want : GoString = "";
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_fn) + " " + Go.string(_n) + " " + Go.string(_want) + "}";
    public function new(?_name:GoString, ?_fn:Ref<Builder> -> { var _0 : GoInt; var _1 : stdgo.Error; }, ?_n:GoInt, ?_want:GoString, ?toString) {
        if (_name != null) this._name = _name;
        if (_fn != null) this._fn = _fn;
        if (_n != null) this._n = _n;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_name, _fn, _n, _want);
    }
}
@:structInit @:local class T__struct_1 {
    public var _name : GoString = "";
    public var _fn : () -> Void = null;
    public var _wantPanic : Bool = false;
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_fn) + " " + Go.string(_wantPanic) + "}";
    public function new(?_name:GoString, ?_fn:() -> Void, ?_wantPanic:Bool, ?toString) {
        if (_name != null) this._name = _name;
        if (_fn != null) this._fn = _fn;
        if (_wantPanic != null) this._wantPanic = _wantPanic;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_name, _fn, _wantPanic);
    }
}
@:structInit @:local class T__struct_2 {
    public var _a : GoString = "";
    public var _b : GoString = "";
    public var _i : GoInt = 0;
    public function toString():String return "{" + Go.string(_a) + " " + Go.string(_b) + " " + Go.string(_i) + "}";
    public function new(?_a:GoString, ?_b:GoString, ?_i:GoInt, ?toString) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_i != null) this._i = _i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_a, _b, _i);
    }
}
@:structInit @:local class T__struct_3 {
    public var _off : GoInt64 = 0;
    public var _seek : GoInt = 0;
    public var _n : GoInt = 0;
    public var _want : GoString = "";
    public var _wantpos : GoInt64 = 0;
    public var _readerr : stdgo.Error = ((null : stdgo.Error));
    public var _seekerr : GoString = "";
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
        return new T__struct_3(_off, _seek, _n, _want, _wantpos, _readerr, _seekerr);
    }
}
@:structInit @:local class T__struct_4 {
    public var _off : GoInt64 = 0;
    public var _n : GoInt = 0;
    public var _want : GoString = "";
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
        return new T__struct_4(_off, _n, _want, _wanterr);
    }
}
@:structInit @:local class T__struct_5 {
    public var _r : Ref<Replacer> = ((null : Replacer));
    public var _want : GoString = "";
    public function toString():String return "{" + Go.string(_r) + " " + Go.string(_want) + "}";
    public function new(?_r:Ref<Replacer>, ?_want:GoString, ?toString) {
        if (_r != null) this._r = _r;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_r, _want);
    }
}
@:structInit @:local class T__struct_6 {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_out) + "}";
    public function new(?_in:GoString, ?_out:GoString, ?toString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_in, _out);
    }
}
@:structInit @:local class T__struct_7 {
    public var _name : GoString = "";
    public var _data : GoString = "";
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_data) + "}";
    public function new(?_name:GoString, ?_data:GoString, ?toString) {
        if (_name != null) this._name = _name;
        if (_data != null) this._data = _data;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(_name, _data);
    }
}
@:structInit @:local class T__struct_8 {
    public var _pat : GoString = "";
    public var _text : GoString = "";
    public var _index : GoInt = 0;
    public function toString():String return "{" + Go.string(_pat) + " " + Go.string(_text) + " " + Go.string(_index) + "}";
    public function new(?_pat:GoString, ?_text:GoString, ?_index:GoInt, ?toString) {
        if (_pat != null) this._pat = _pat;
        if (_text != null) this._text = _text;
        if (_index != null) this._index = _index;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_8(_pat, _text, _index);
    }
}
@:structInit @:local class T__struct_9 {
    public var _pattern : GoString = "";
    public var _bad : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) ((0 : GoInt))]);
    public var _suf : Slice<GoInt> = ((null : Slice<GoInt>));
    public function toString():String return "{" + Go.string(_pattern) + " " + Go.string(_bad) + " " + Go.string(_suf) + "}";
    public function new(?_pattern:GoString, ?_bad:GoArray<GoInt>, ?_suf:Slice<GoInt>, ?toString) {
        if (_pattern != null) this._pattern = _pattern;
        if (_bad != null) this._bad = _bad;
        if (_suf != null) this._suf = _suf;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_9(_pattern, _bad, _suf);
    }
}
@:structInit @:local class T__struct_10 {
    public var _in : GoString = "";
    public var _rune : GoInt32 = 0;
    public var _want : GoInt = 0;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_rune) + " " + Go.string(_want) + "}";
    public function new(?_in:GoString, ?_rune:GoInt32, ?_want:GoInt, ?toString) {
        if (_in != null) this._in = _in;
        if (_rune != null) this._rune = _rune;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_10(_in, _rune, _want);
    }
}
@:structInit @:local class T__struct_11 {
    public var _in : GoString = "";
    public var _repl : GoString = "";
    public var _out : GoString = "";
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_repl) + " " + Go.string(_out) + "}";
    public function new(?_in:GoString, ?_repl:GoString, ?_out:GoString, ?toString) {
        if (_in != null) this._in = _in;
        if (_repl != null) this._repl = _repl;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_11(_in, _repl, _out);
    }
}
@:structInit @:local class T__struct_12 {
    public var _f : GoString = "";
    public var _in : GoString = "";
    public var _arg : GoString = "";
    public var _out : GoString = "";
    public function toString():String return "{" + Go.string(_f) + " " + Go.string(_in) + " " + Go.string(_arg) + " " + Go.string(_out) + "}";
    public function new(?_f:GoString, ?_in:GoString, ?_arg:GoString, ?_out:GoString, ?toString) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_arg != null) this._arg = _arg;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_12(_f, _in, _arg, _out);
    }
}
@:structInit @:local class T__struct_13 {
    public var _name : GoString = "";
    public var _input : GoString = "";
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_input) + "}";
    public function new(?_name:GoString, ?_input:GoString, ?toString) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_13(_name, _input);
    }
}
@:structInit @:local class T__struct_14 {
    public var _f : stdgo.strings_test.Strings_test.T_predicate = new stdgo.strings_test.Strings_test.T_predicate();
    public var _in : GoString = "";
    public var _trimOut : GoString = "";
    public var _leftOut : GoString = "";
    public var _rightOut : GoString = "";
    public function toString():String return "{" + Go.string(_f) + " " + Go.string(_in) + " " + Go.string(_trimOut) + " " + Go.string(_leftOut) + " " + Go.string(_rightOut) + "}";
    public function new(?_f:stdgo.strings_test.Strings_test.T_predicate, ?_in:GoString, ?_trimOut:GoString, ?_leftOut:GoString, ?_rightOut:GoString, ?toString) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_trimOut != null) this._trimOut = _trimOut;
        if (_leftOut != null) this._leftOut = _leftOut;
        if (_rightOut != null) this._rightOut = _rightOut;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_14(_f, _in, _trimOut, _leftOut, _rightOut);
    }
}
@:structInit @:local class T__struct_15 {
    public var _name : GoString = "";
    public var _trim : (GoString, GoInt32 -> Bool) -> GoString = null;
    public var _out : GoString = "";
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_trim) + " " + Go.string(_out) + "}";
    public function new(?_name:GoString, ?_trim:(GoString, GoInt32 -> Bool) -> GoString, ?_out:GoString, ?toString) {
        if (_name != null) this._name = _name;
        if (_trim != null) this._trim = _trim;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_15(_name, _trim, _out);
    }
}
@:structInit @:local class T__struct_16 {
    public var _in : GoString = "";
    public var _f : stdgo.strings_test.Strings_test.T_predicate = new stdgo.strings_test.Strings_test.T_predicate();
    public var _first : GoInt = 0;
    public var _last : GoInt = 0;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_f) + " " + Go.string(_first) + " " + Go.string(_last) + "}";
    public function new(?_in:GoString, ?_f:stdgo.strings_test.Strings_test.T_predicate, ?_first:GoInt, ?_last:GoInt, ?toString) {
        if (_in != null) this._in = _in;
        if (_f != null) this._f = _f;
        if (_first != null) this._first = _first;
        if (_last != null) this._last = _last;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_16(_in, _f, _first, _last);
    }
}
@:structInit @:local class T__struct_17 {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public var _count : GoInt = 0;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_out) + " " + Go.string(_count) + "}";
    public function new(?_in:GoString, ?_out:GoString, ?_count:GoInt, ?toString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_count != null) this._count = _count;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_17(_in, _out, _count);
    }
}
@:structInit @:local class T__struct_18 {
    public var _s : GoString = "";
    public var _count : GoInt = 0;
    public var _errStr : GoString = "";
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_count) + " " + Go.string(_errStr) + "}";
    public function new(?_s:GoString, ?_count:GoInt, ?_errStr:GoString, ?toString) {
        if (_s != null) this._s = _s;
        if (_count != null) this._count = _count;
        if (_errStr != null) this._errStr = _errStr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_18(_s, _count, _errStr);
    }
}
@:structInit @:local class T__struct_19 {
    public var _in : GoString = "";
    public var _out : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var _lossy : Bool = false;
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_out) + " " + Go.string(_lossy) + "}";
    public function new(?_in:GoString, ?_out:Slice<GoInt32>, ?_lossy:Bool, ?toString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_lossy != null) this._lossy = _lossy;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_19(_in, _out, _lossy);
    }
}
@:structInit @:local class T__struct_20 {
    public var _name : GoString = "";
    public var _f : Ref<Reader> -> Void = null;
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_f) + "}";
    public function new(?_name:GoString, ?_f:Ref<Reader> -> Void, ?toString) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_20(_name, _f);
    }
}
@:structInit @:local class T__struct_21 {
    public var _in : GoString = "";
    public var _old : GoString = "";
    public var _new : GoString = "";
    public var _n : GoInt = 0;
    public var _out : GoString = "";
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_old) + " " + Go.string(_new) + " " + Go.string(_n) + " " + Go.string(_out) + "}";
    public function new(?_in:GoString, ?_old:GoString, ?_new:GoString, ?_n:GoInt, ?_out:GoString, ?toString) {
        if (_in != null) this._in = _in;
        if (_old != null) this._old = _old;
        if (_new != null) this._new = _new;
        if (_n != null) this._n = _n;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_21(_in, _old, _new, _n, _out);
    }
}
@:structInit @:local class T__struct_22 {
    public var _str : GoString = "";
    public var _substr : GoString = "";
    public var _expected : Bool = false;
    public function toString():String return "{" + Go.string(_str) + " " + Go.string(_substr) + " " + Go.string(_expected) + "}";
    public function new(?_str:GoString, ?_substr:GoString, ?_expected:Bool, ?toString) {
        if (_str != null) this._str = _str;
        if (_substr != null) this._substr = _substr;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_22(_str, _substr, _expected);
    }
}
@:structInit @:local class T__struct_23 {
    public var _str : GoString = "";
    public var _r : GoInt32 = 0;
    public var _expected : Bool = false;
    public function toString():String return "{" + Go.string(_str) + " " + Go.string(_r) + " " + Go.string(_expected) + "}";
    public function new(?_str:GoString, ?_r:GoInt32, ?_expected:Bool, ?toString) {
        if (_str != null) this._str = _str;
        if (_r != null) this._r = _r;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_23(_str, _r, _expected);
    }
}
@:structInit @:local class T__struct_24 {
    public var _s : GoString = "";
    public var _t : GoString = "";
    public var _out : Bool = false;
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_t) + " " + Go.string(_out) + "}";
    public function new(?_s:GoString, ?_t:GoString, ?_out:Bool, ?toString) {
        if (_s != null) this._s = _s;
        if (_t != null) this._t = _t;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_24(_s, _t, _out);
    }
}
@:structInit @:local class T__struct_25 {
    public var _s : GoString = "";
    public var _sep : GoString = "";
    public var _num : GoInt = 0;
    public function toString():String return "{" + Go.string(_s) + " " + Go.string(_sep) + " " + Go.string(_num) + "}";
    public function new(?_s:GoString, ?_sep:GoString, ?_num:GoInt, ?toString) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_num != null) this._num = _num;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_25(_s, _sep, _num);
    }
}
@:structInit @:local class T__struct_26 {
    public var _s : GoString = "";
    public var _sep : GoString = "";
    public var _before : GoString = "";
    public var _after : GoString = "";
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
        return new T__struct_26(_s, _sep, _before, _after, _found);
    }
}
function _check(_t:stdgo.testing.Testing.T, _b:Builder, _want:GoString):Void {
        _t.helper();
        var _got:GoString = ((_b.toString() : GoString));
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
        var _b:Builder = new Builder();
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
        var _b:Builder = new Builder();
        _b.writeString(((((("alpha" : GoString))) : GoString)));
        _check(_t, _b, ((((("alpha" : GoString))) : GoString)));
        var _s1:GoString = ((_b.toString() : GoString));
        _b.writeString(((((("beta" : GoString))) : GoString)));
        _check(_t, _b, ((((("alphabeta" : GoString))) : GoString)));
        var _s2:GoString = ((_b.toString() : GoString));
        _b.writeString(((((("gamma" : GoString))) : GoString)));
        _check(_t, _b, ((((("alphabetagamma" : GoString))) : GoString)));
        var _s3:GoString = ((_b.toString() : GoString));
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
        var _b:Builder = new Builder();
        _check(_t, _b, ((((("" : GoString))) : GoString)));
        _b.writeString(((((("aaa" : GoString))) : GoString)));
        var _s:GoString = ((_b.toString() : GoString));
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
            var _p = stdgo.bytes.Bytes.repeat(((new Slice<GoByte>((("a".code : GoUInt8))) : Slice<GoByte>)), _growLen);
            var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), function():Void {
                var _b:Builder = new Builder();
                _b.grow(_growLen);
                if (_b.cap_() < _growLen) {
                    _t.fatalf(((((("growLen=%d: Cap() is lower than growLen" : GoString))) : GoString)), Go.toInterface(_growLen));
                };
                _b.write(_p);
                if (((_b.toString() : GoString)) != ((_p : GoString))) {
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
        for (_0 => _tt in ((new Slice<T__struct_0>(((new T__struct_0(((((("Write" : GoString))) : GoString)), function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.write(((((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) : Slice<GoByte>)));
        }, (((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) != null ? ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)).length : ((0 : GoInt))), ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString))) : T__struct_0)), ((new T__struct_0(((((("WriteRune" : GoString))) : GoString)), function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeRune((("a".code : GoInt32)));
        }, ((1 : GoInt)), ((((("a" : GoString))) : GoString))) : T__struct_0)), ((new T__struct_0(((((("WriteRuneWide" : GoString))) : GoString)), function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeRune((("世".code : GoInt32)));
        }, ((3 : GoInt)), ((((("世" : GoString))) : GoString))) : T__struct_0)), ((new T__struct_0(((((("WriteString" : GoString))) : GoString)), function(_b:Builder):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeString(((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)));
        }, (((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)) != null ? ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString)).length : ((0 : GoInt))), ((((("hello " : GoString)) + ((haxe.io.Bytes.ofHex("E4") : GoString)) + ((haxe.io.Bytes.ofHex("B8") : GoString)) + ((haxe.io.Bytes.ofHex("96") : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + ((haxe.io.Bytes.ofHex("95") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString))) : GoString))) : T__struct_0))) : Slice<T__struct_0>))) {
            _t.run(_tt._name, function(_t:stdgo.testing.Testing.T):Void {
                var _b:Builder = new Builder();
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
        var _b:Builder = new Builder();
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
            var _b:Builder = new Builder();
            _b.grow(((5 : GoInt)));
            _b.writeString(((((("abcde" : GoString))) : GoString)));
            ((_b.toString() : GoString));
        });
        if (_n != ((1 : GoFloat64))) {
            _t.errorf(((((("Builder allocs = %v; want 1" : GoString))) : GoString)), Go.toInterface(_n));
        };
    }
function testBuilderCopyPanic(_t:stdgo.testing.Testing.T):Void {
        var _tests = ((new Slice<T__struct_1>((({ _name : ((((("String" : GoString))) : GoString)), _wantPanic : false, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.writeByte((("x".code : GoUInt8)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            ((_b.toString() : GoString));
        } } : T__struct_1)), (({ _name : ((((("Len" : GoString))) : GoString)), _wantPanic : false, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.writeByte((("x".code : GoUInt8)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.len();
        } } : T__struct_1)), (({ _name : ((((("Cap" : GoString))) : GoString)), _wantPanic : false, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.writeByte((("x".code : GoUInt8)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.cap_();
        } } : T__struct_1)), (({ _name : ((((("Reset" : GoString))) : GoString)), _wantPanic : false, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.writeByte((("x".code : GoUInt8)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.reset();
            _b.writeByte((("y".code : GoUInt8)));
        } } : T__struct_1)), (({ _name : ((((("Write" : GoString))) : GoString)), _wantPanic : true, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.write(((((((("x" : GoString))) : GoString)) : Slice<GoByte>)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.write(((((((("y" : GoString))) : GoString)) : Slice<GoByte>)));
        } } : T__struct_1)), (({ _name : ((((("WriteByte" : GoString))) : GoString)), _wantPanic : true, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.writeByte((("x".code : GoUInt8)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.writeByte((("y".code : GoUInt8)));
        } } : T__struct_1)), (({ _name : ((((("WriteString" : GoString))) : GoString)), _wantPanic : true, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.writeString(((((("x" : GoString))) : GoString)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.writeString(((((("y" : GoString))) : GoString)));
        } } : T__struct_1)), (({ _name : ((((("WriteRune" : GoString))) : GoString)), _wantPanic : true, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.writeRune((("x".code : GoInt32)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.writeRune((("y".code : GoInt32)));
        } } : T__struct_1)), (({ _name : ((((("Grow" : GoString))) : GoString)), _wantPanic : true, _fn : function():Void {
            var _a:Builder = new Builder();
            _a.grow(((1 : GoInt)));
            var _b:Builder = (_a == null ? null : _a.__copy__());
            _b.grow(((2 : GoInt)));
        } } : T__struct_1))) : Slice<T__struct_1>));
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
        for (_0 => _r in ((new Slice<GoRune>(((-1 : GoInt32)), ((1114112 : GoInt32))) : Slice<GoRune>))) {
            var _b:Builder = new Builder();
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
                    var _buf:Builder = new Builder();
                    if (_grow) {
                        _buf.grow((_someBytes != null ? _someBytes.length : ((0 : GoInt))) * _numWrite);
                    };
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _numWrite, _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = ((_buf.toString() : GoString));
                });
            };
        });
    }
function benchmarkBuildString_ByteBuffer(_b:stdgo.testing.Testing.B):Void {
        _benchmarkBuilder(_b, function(_b:stdgo.testing.Testing.B, _numWrite:GoInt, _grow:Bool):Void {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                    if (_grow) {
                        _buf.grow((_someBytes != null ? _someBytes.length : ((0 : GoInt))) * _numWrite);
                    };
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _numWrite, _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = ((_buf.toString() : GoString));
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
        var _b:Builder = new Builder();
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i >= ((1 : GoInt)), _i--, {
                stdgo.fmt.Fmt.fprintf({
                    final __self__ = new Builder_wrapper(_b);
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(_n:GoInt):Void _b.grow(_n) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.toString = #if !macro function():GoString return _b.toString() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(_s) #else null #end;
                    __self__._copyCheck = #if !macro function():Void _b._copyCheck() #else null #end;
                    __self__._grow = #if !macro function(_n:GoInt):Void _b._grow(_n) #else null #end;
                    __self__;
                }, ((((("%d..." : GoString))) : GoString)), Go.toInterface(_i));
            });
        };
        _b.writeString(((((("ignition" : GoString))) : GoString)));
        stdgo.fmt.Fmt.println(((_b.toString() : GoString)));
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
        var _tests = ((new Slice<T__struct_3>((({ _seek : ((0 : GoInt)), _off : ((0 : GoInt64)), _n : ((20 : GoInt)), _want : ((((("0123456789" : GoString))) : GoString)) } : T__struct_3)), (({ _seek : ((0 : GoInt)), _off : ((1 : GoInt64)), _n : ((1 : GoInt)), _want : ((((("1" : GoString))) : GoString)) } : T__struct_3)), (({ _seek : ((1 : GoInt)), _off : ((1 : GoInt64)), _wantpos : ((3 : GoInt64)), _n : ((2 : GoInt)), _want : ((((("34" : GoString))) : GoString)) } : T__struct_3)), (({ _seek : ((0 : GoInt)), _off : ((-1 : GoInt64)), _seekerr : ((((("strings.Reader.Seek: negative position" : GoString))) : GoString)) } : T__struct_3)), (({ _seek : ((0 : GoInt)), _off : (("8589934592" : GoInt64)), _wantpos : (("8589934592" : GoInt64)), _readerr : stdgo.io.Io.eof } : T__struct_3)), (({ _seek : ((1 : GoInt)), _off : ((1 : GoInt64)), _wantpos : (("8589934593" : GoInt64)), _readerr : stdgo.io.Io.eof } : T__struct_3)), (({ _seek : ((0 : GoInt)), _n : ((5 : GoInt)), _want : ((((("01234" : GoString))) : GoString)) } : T__struct_3)), (({ _seek : ((1 : GoInt)), _n : ((5 : GoInt)), _want : ((((("56789" : GoString))) : GoString)) } : T__struct_3)), (({ _seek : ((2 : GoInt)), _off : ((-1 : GoInt64)), _n : ((1 : GoInt)), _wantpos : ((9 : GoInt64)), _want : ((((("9" : GoString))) : GoString)) } : T__struct_3))) : Slice<T__struct_3>));
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
        var _tests = ((new Slice<T__struct_4>(((new T__struct_4(((0 : GoInt64)), ((10 : GoInt)), ((((("0123456789" : GoString))) : GoString)), ((null : AnyInterface))) : T__struct_4)), ((new T__struct_4(((1 : GoInt64)), ((10 : GoInt)), ((((("123456789" : GoString))) : GoString)), Go.toInterface(stdgo.io.Io.eof)) : T__struct_4)), ((new T__struct_4(((1 : GoInt64)), ((9 : GoInt)), ((((("123456789" : GoString))) : GoString)), ((null : AnyInterface))) : T__struct_4)), ((new T__struct_4(((11 : GoInt64)), ((10 : GoInt)), ((((("" : GoString))) : GoString)), Go.toInterface(stdgo.io.Io.eof)) : T__struct_4)), ((new T__struct_4(((0 : GoInt64)), ((0 : GoInt)), ((((("" : GoString))) : GoString)), ((null : AnyInterface))) : T__struct_4)), ((new T__struct_4(((-1 : GoInt64)), ((0 : GoInt)), ((((("" : GoString))) : GoString)), Go.toInterface(((((("strings.Reader.ReadAt: negative offset" : GoString))) : GoString)))) : T__struct_4))) : Slice<T__struct_4>));
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
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
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
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
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
                var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                var __tmp__ = _r.writeTo({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(_n:GoInt):Void _b.grow(_n) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _b.next(_n) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_delim) #else null #end;
                    __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r_) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_delim) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.toString = #if !macro function():GoString return _b.toString() #else null #end;
                    __self__.truncate = #if !macro function(_n:GoInt):Void _b.truncate(_n) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r__) #else null #end;
                    __self__.writeString = #if !macro function(_s_:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(_s_) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(_n:GoInt):GoInt return _b._grow(_n) #else null #end;
                    __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_delim) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_n) #else null #end;
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
                if (((_b.toString() : GoString)) != _s) {
                    _t.errorf(((((("got string %q; want %q" : GoString))) : GoString)), Go.toInterface(((_b.toString() : GoString))), Go.toInterface(_s));
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
            __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_b) #else null #end;
            __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_b, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(_s:GoString):Void _r.reset(_s) #else null #end;
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
            __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_b) #else null #end;
            __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_b, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(_s:GoString):Void _r.reset(_s) #else null #end;
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
    public var _r : Ref<Replacer> = ((null : Replacer));
    public var _in : GoString = "";
    public var _out : GoString = "";
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
            return ((((new Slice<GoByte>(_b) : Slice<GoByte>)) : GoString));
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
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_capitalLetters, ((((("brad" : GoString))) : GoString)), ((((("BrAd" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_capitalLetters, repeat(((((("a" : GoString))) : GoString)), ((32891 : GoInt))), repeat(((((("A" : GoString))) : GoString)), ((32891 : GoInt)))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_capitalLetters, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_inc, ((((("brad" : GoString))) : GoString)), ((((("csbe" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_inc, (((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_inc, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_capitalLetters, ((((("brad" : GoString))) : GoString)), ((((("BrAd" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_capitalLetters, repeat(((((("a" : GoString))) : GoString)), ((32891 : GoInt))), repeat(((((("A" : GoString))) : GoString)), ((32891 : GoInt)))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_capitalLetters, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_inc, ((((("brad" : GoString))) : GoString)), ((((("csbe" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_inc, (((((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_inc, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
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
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_htmlEscaper, ((((("No changes" : GoString))) : GoString)), ((((("No changes" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlEscaper, ((((("I <3 escaping & stuff" : GoString))) : GoString)), ((((("I &lt;3 escaping &amp; stuff" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlEscaper, ((((("&&&" : GoString))) : GoString)), ((((("&amp;&amp;&amp;" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlEscaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_repeat, ((((("brad" : GoString))) : GoString)), ((((("bbrrrrrrrrrrrrrrrrrradddd" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_repeat, ((((("abba" : GoString))) : GoString)), ((((("abbbba" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_repeat, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("11" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("22" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br11d" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_htmlEscaper, ((((("No changes" : GoString))) : GoString)), ((((("No changes" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlEscaper, ((((("I <3 escaping & stuff" : GoString))) : GoString)), ((((("I &lt;3 escaping &amp; stuff" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlEscaper, ((((("&&&" : GoString))) : GoString)), ((((("&amp;&amp;&amp;" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlEscaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_repeat, ((((("brad" : GoString))) : GoString)), ((((("bbrrrrrrrrrrrrrrrrrradddd" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_repeat, ((((("abba" : GoString))) : GoString)), ((((("abbbba" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_repeat, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("11" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("22" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br11d" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_htmlUnescaper, ((((("&amp;amp;" : GoString))) : GoString)), ((((("&amp;" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlUnescaper, ((((("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;" : GoString))) : GoString)), ((((("<b>HTML\'s neat</b>" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlUnescaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("1111" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("31" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_htmlUnescaper, ((((("&amp;amp;" : GoString))) : GoString)), ((((("&amp;" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlUnescaper, ((((("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;" : GoString))) : GoString)), ((((("<b>HTML\'s neat</b>" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_htmlUnescaper, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString)), ((((("xxx" : GoString))) : GoString))), ((((("brad" : GoString))) : GoString)), ((((("br1d" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("1111" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(newReplacer(((((("aaa" : GoString))) : GoString)), ((((("3" : GoString))) : GoString)), ((((("aa" : GoString))) : GoString)), ((((("2" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), ((((("1" : GoString))) : GoString))), ((((("aaaa" : GoString))) : GoString)), ((((("31" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
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
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_gen1, ((((("fooaaabar" : GoString))) : GoString)), ((((("foo3[aaa]b1[a]r" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("long, longerst, longer" : GoString))) : GoString)), ((((("short, most long, medium" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("xxxxx" : GoString))) : GoString)), ((((("xxxxX" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("XiX" : GoString))) : GoString)), ((((("YiY" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_gen1, ((((("fooaaabar" : GoString))) : GoString)), ((((("foo3[aaa]b1[a]r" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("long, longerst, longer" : GoString))) : GoString)), ((((("short, most long, medium" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("xxxxx" : GoString))) : GoString)), ((((("xxxxX" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("XiX" : GoString))) : GoString)), ((((("YiY" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _gen2 = newReplacer(((((("roses" : GoString))) : GoString)), ((((("red" : GoString))) : GoString)), ((((("violets" : GoString))) : GoString)), ((((("blue" : GoString))) : GoString)), ((((("sugar" : GoString))) : GoString)), ((((("sweet" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_gen2, ((((("roses are red, violets are blue..." : GoString))) : GoString)), ((((("red are red, blue are blue..." : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_gen2, ((((("roses are red, violets are blue..." : GoString))) : GoString)), ((((("red are red, blue are blue..." : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _gen3 = newReplacer(((((("abracadabra" : GoString))) : GoString)), ((((("poof" : GoString))) : GoString)), ((((("abracadabrakazam" : GoString))) : GoString)), ((((("splat" : GoString))) : GoString)), ((((("abraham" : GoString))) : GoString)), ((((("lincoln" : GoString))) : GoString)), ((((("abrasion" : GoString))) : GoString)), ((((("scrape" : GoString))) : GoString)), ((((("abraham" : GoString))) : GoString)), ((((("isaac" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_gen3, ((((("abracadabrakazam abraham" : GoString))) : GoString)), ((((("poofkazam lincoln" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen3, ((((("abrasion abracad" : GoString))) : GoString)), ((((("scrape abracad" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen3, ((((("abba abram abrasive" : GoString))) : GoString)), ((((("abba abram abrasive" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_gen3, ((((("abracadabrakazam abraham" : GoString))) : GoString)), ((((("poofkazam lincoln" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen3, ((((("abrasion abracad" : GoString))) : GoString)), ((((("scrape abracad" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen3, ((((("abba abram abrasive" : GoString))) : GoString)), ((((("abba abram abrasive" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_gen3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _foo1 = newReplacer(((((("foo1" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("foo2" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo3" : GoString))) : GoString)), ((((("C" : GoString))) : GoString)));
        var _foo2 = newReplacer(((((("foo1" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("foo2" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo31" : GoString))) : GoString)), ((((("C" : GoString))) : GoString)), ((((("foo32" : GoString))) : GoString)), ((((("D" : GoString))) : GoString)));
        var _foo3 = newReplacer(((((("foo11" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)), ((((("foo12" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo31" : GoString))) : GoString)), ((((("C" : GoString))) : GoString)), ((((("foo32" : GoString))) : GoString)), ((((("D" : GoString))) : GoString)));
        var _foo4 = newReplacer(((((("foo12" : GoString))) : GoString)), ((((("B" : GoString))) : GoString)), ((((("foo32" : GoString))) : GoString)), ((((("D" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_foo1, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2C2oo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo2, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2Doo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo3, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo4, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo4, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_foo1, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2C2oo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo2, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooA2Doo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo3, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo3, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo4, ((((("fofoofoo12foo32oo" : GoString))) : GoString)), ((((("fofooBDoo" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_foo4, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _allBytes = new Slice<GoUInt8>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _allBytes) {
            if (_allBytes != null) _allBytes[_i] = ((_i : GoByte));
        };
        var _allString:GoString = ((_allBytes : GoString));
        var _genAll = newReplacer(_allString, ((((("[all]" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), ((((("[ff]" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), ((((("[00]" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_genAll, _allString, ((((("[all]" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_genAll, (((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)) + _allString) + (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), ((((("a[ff][all][00]" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_genAll, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_genAll, _allString, ((((("[all]" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_genAll, (((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)) + _allString) + (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), ((((("a[ff][all][00]" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_genAll, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _blankToX1 = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)));
        var _blankToX2 = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)));
        var _blankHighPriority = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((((("o" : GoString))) : GoString)), ((((("O" : GoString))) : GoString)));
        var _blankLowPriority = newReplacer(((((("o" : GoString))) : GoString)), ((((("O" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)));
        var _blankNoOp1 = newReplacer(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)));
        var _blankNoOp2 = newReplacer(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((((("A" : GoString))) : GoString)));
        var _blankFoo = newReplacer(((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString)), ((((("foobar" : GoString))) : GoString)), ((((("R" : GoString))) : GoString)), ((((("foobaz" : GoString))) : GoString)), ((((("Z" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_blankToX1, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankToX1, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankToX2, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankToX2, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("oo" : GoString))) : GoString)), ((((("XOXOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("oiio" : GoString))) : GoString)), ((((("XOXiXiXOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiXOXOXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("oo" : GoString))) : GoString)), ((((("OOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("oiio" : GoString))) : GoString)), ((((("OXiXiOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiOOXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp1, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp2, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankFoo, ((((("foobarfoobaz" : GoString))) : GoString)), ((((("XRXZX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankFoo, ((((("foobar-foobaz" : GoString))) : GoString)), ((((("XRX-XZX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankFoo, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(
((new T_testCase_testReplacer_0(_blankToX1, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankToX1, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankToX2, ((((("foo" : GoString))) : GoString)), ((((("XfXoXoX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankToX2, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("oo" : GoString))) : GoString)), ((((("XOXOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("oiio" : GoString))) : GoString)), ((((("XOXiXiXOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiXOXOXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankHighPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("oo" : GoString))) : GoString)), ((((("OOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("ii" : GoString))) : GoString)), ((((("XiXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("oiio" : GoString))) : GoString)), ((((("OXiXiOX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("iooi" : GoString))) : GoString)), ((((("XiOOXiX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankLowPriority, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp1, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp1, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp2, ((((("foo" : GoString))) : GoString)), ((((("foo" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankNoOp2, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankFoo, ((((("foobarfoobaz" : GoString))) : GoString)), ((((("XRXZX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankFoo, ((((("foobar-foobaz" : GoString))) : GoString)), ((((("XRX-XZX" : GoString))) : GoString))) : T_testCase_testReplacer_0)),
((new T_testCase_testReplacer_0(_blankFoo, ((((("" : GoString))) : GoString)), ((((("X" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _abcMatcher = newReplacer(((((("abc" : GoString))) : GoString)), ((((("[match]" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_abcMatcher, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("ab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("abc" : GoString))) : GoString)), ((((("[match]" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("abcd" : GoString))) : GoString)), ((((("[match]d" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("cabcabcdabca" : GoString))) : GoString)), ((((("c[match][match]d[match]a" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_abcMatcher, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("ab" : GoString))) : GoString)), ((((("ab" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("abc" : GoString))) : GoString)), ((((("[match]" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("abcd" : GoString))) : GoString)), ((((("[match]d" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_abcMatcher, ((((("cabcabcdabca" : GoString))) : GoString)), ((((("c[match][match]d[match]a" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _noHello = newReplacer(((((("Hello" : GoString))) : GoString)), ((((("" : GoString))) : GoString)));
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_noHello, ((((("Hello" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_noHello, ((((("Hellox" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_noHello, ((((("xHello" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_noHello, ((((("xHellox" : GoString))) : GoString)), ((((("xx" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_noHello, ((((("Hello" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_noHello, ((((("Hellox" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_noHello, ((((("xHello" : GoString))) : GoString)), ((((("x" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_noHello, ((((("xHellox" : GoString))) : GoString)), ((((("xx" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        var _nop = newReplacer();
        _testCases = (_testCases != null ? _testCases.__append__(((new T_testCase_testReplacer_0(_nop, ((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_nop, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))) : new Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>(((new T_testCase_testReplacer_0(_nop, ((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString))) : T_testCase_testReplacer_0)), ((new T_testCase_testReplacer_0(_nop, ((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString))) : T_testCase_testReplacer_0))));
        for (_i => _tc in _testCases) {
            {
                var _s:GoString = _tc._r.replace(_tc._in);
                if (_s != _tc._out) {
                    _t.errorf(((((("%d. Replace(%q) = %q, want %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_s), Go.toInterface(_tc._out));
                };
            };
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var __tmp__ = _tc._r.writeString({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                __self__.grow = #if !macro function(_n_:GoInt):Void _buf.grow(_n_) #else null #end;
                __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                __self__.next = #if !macro function(_n__:GoInt):Slice<GoUInt8> return _buf.next(_n__) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
                __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                __self__.toString = #if !macro function():GoString return _buf.toString() #else null #end;
                __self__.truncate = #if !macro function(_n___:GoInt):Void _buf.truncate(_n___) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s_:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s_) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                __self__._grow = #if !macro function(_n____:GoInt):GoInt return _buf._grow(_n____) #else null #end;
                __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_n_____:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n_____) #else null #end;
                __self__;
            }, _tc._in), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((((("%d. WriteString: %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_err));
                continue;
            };
            var _got:GoString = ((_buf.toString() : GoString));
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
                final __self__ = new stdgo.strings_test.Strings_test.T_errWriter_wrapper(((new T_errWriter() : T_errWriter)));
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_errWriter() : T_errWriter)).write(_p) #else null #end;
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
        var _testCases = ((new Slice<T__struct_6>(((new T__struct_6(((((("abc;abdef;abdefgh;xx;xy;z" : GoString))) : GoString)), (("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t" : GoString))) : T__struct_6)), ((new T__struct_6(((((("abracadabra;abracadabrakazam;abraham;abrasion" : GoString))) : GoString)), (("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t" : GoString))) : T__struct_6)), ((new T__struct_6(((((("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y" : GoString))) : GoString)), (("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t" : GoString))) : T__struct_6)), ((new T__struct_6(((((("foo;;foo;foo1" : GoString))) : GoString)), (("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t" : GoString))) : T__struct_6))) : Slice<T__struct_6>));
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
        var _buf = new stdgo.bytes.Bytes.Buffer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.writeString({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                    __self__.grow = #if !macro function(_n:GoInt):Void _buf.grow(_n) #else null #end;
                    __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                    __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _buf.next(_n) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
                    __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                    __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
                    __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                    __self__.toString = #if !macro function():GoString return _buf.toString() #else null #end;
                    __self__.truncate = #if !macro function(_n:GoInt):Void _buf.truncate(_n) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                    __self__._grow = #if !macro function(_n:GoInt):GoInt return _buf._grow(_n) #else null #end;
                    __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n) #else null #end;
                    __self__;
                }, _str);
                _buf.reset();
            });
        };
    }
function benchmarkByteReplacerWriteString(_b:stdgo.testing.Testing.B):Void {
        var _str:GoString = repeat(((((("abcdefghijklmnopqrstuvwxyz" : GoString))) : GoString)), ((100 : GoInt)));
        var _buf = new stdgo.bytes.Bytes.Buffer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.writeString({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                    __self__.grow = #if !macro function(_n:GoInt):Void _buf.grow(_n) #else null #end;
                    __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                    __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _buf.next(_n) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
                    __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                    __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
                    __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                    __self__.toString = #if !macro function():GoString return _buf.toString() #else null #end;
                    __self__.truncate = #if !macro function(_n:GoInt):Void _buf.truncate(_n) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                    __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
                    __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                    __self__._grow = #if !macro function(_n:GoInt):GoInt return _buf._grow(_n) #else null #end;
                    __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n) #else null #end;
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
((new T__struct_8(((((("" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("abc" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("abc" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("d" : GoString))) : GoString)), ((((("abcdefg" : GoString))) : GoString)), ((3 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("nan" : GoString))) : GoString)), ((((("banana" : GoString))) : GoString)), ((2 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("pan" : GoString))) : GoString)), ((((("anpanman" : GoString))) : GoString)), ((2 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("nnaaman" : GoString))) : GoString)), ((((("anpanmanam" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("abcd" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("abcd" : GoString))) : GoString)), ((((("bcd" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("bcd" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((1 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("abc" : GoString))) : GoString)), ((((("acca" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("aa" : GoString))) : GoString)), ((((("aaa" : GoString))) : GoString)), ((0 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("baa" : GoString))) : GoString)), ((((("aaaaa" : GoString))) : GoString)), ((-1 : GoInt))) : T__struct_8)),
((new T__struct_8(((((("at that" : GoString))) : GoString)), ((((("which finally halts.  at that point" : GoString))) : GoString)), ((22 : GoInt))) : T__struct_8))) : Slice<T__struct_8>));
        for (_0 => _tc in _testCases) {
            var _got:GoInt = stringFind(_tc._pat, _tc._text);
            var _want:GoInt = _tc._index;
            if (_got != _want) {
                _t.errorf(((((("stringFind(%q, %q) got %d, want %d\n" : GoString))) : GoString)), Go.toInterface(_tc._pat), Go.toInterface(_tc._text), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testFinderCreation(_t:stdgo.testing.Testing.T):Void {
        var _testCases = ((new Slice<T__struct_9>(((new T__struct_9(((((("abc" : GoString))) : GoString)), {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((2 : GoInt));
            s[1] = ((1 : GoInt));
            s[2] = ((3 : GoInt));
            s;
        }, ((new Slice<GoInt>(((5 : GoInt)), ((4 : GoInt)), ((1 : GoInt))) : Slice<GoInt>))) : T__struct_9)), ((new T__struct_9(((((("mississi" : GoString))) : GoString)), {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((3 : GoInt));
            s[1] = ((7 : GoInt));
            s[2] = ((1 : GoInt));
            s;
        }, ((new Slice<GoInt>(((15 : GoInt)), ((14 : GoInt)), ((13 : GoInt)), ((7 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((7 : GoInt)), ((1 : GoInt))) : Slice<GoInt>))) : T__struct_9)), ((new T__struct_9(((((("abcxxxabc" : GoString))) : GoString)), {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((2 : GoInt));
            s[1] = ((1 : GoInt));
            s[2] = ((6 : GoInt));
            s[3] = ((3 : GoInt));
            s;
        }, ((new Slice<GoInt>(((14 : GoInt)), ((13 : GoInt)), ((12 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((9 : GoInt)), ((11 : GoInt)), ((10 : GoInt)), ((1 : GoInt))) : Slice<GoInt>))) : T__struct_9)), ((new T__struct_9(((((("abyxcdeyx" : GoString))) : GoString)), {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[0] = ((8 : GoInt));
            s[1] = ((7 : GoInt));
            s[2] = ((4 : GoInt));
            s[3] = ((3 : GoInt));
            s[4] = ((2 : GoInt));
            s[5] = ((1 : GoInt));
            s[6] = ((5 : GoInt));
            s;
        }, ((new Slice<GoInt>(((17 : GoInt)), ((16 : GoInt)), ((15 : GoInt)), ((14 : GoInt)), ((13 : GoInt)), ((12 : GoInt)), ((7 : GoInt)), ((10 : GoInt)), ((1 : GoInt))) : Slice<GoInt>))) : T__struct_9))) : Slice<T__struct_9>));
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
        var _testCases = ((new Slice<IndexTest>(((new IndexTest(((((("" : GoString))) : GoString)), ((((("q" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)), ((new IndexTest(((((("abcdef" : GoString))) : GoString)), ((((("q" : GoString))) : GoString)), ((-1 : GoInt))) : IndexTest)), ((new IndexTest(((((("abcdefabcdef" : GoString))) : GoString)), ((((("a" : GoString))) : GoString)), (((((("abcdef" : GoString))) : GoString)) != null ? ((((("abcdef" : GoString))) : GoString)).length : ((0 : GoInt)))) : IndexTest)), ((new IndexTest(((((("abcdefabcdef" : GoString))) : GoString)), ((((("f" : GoString))) : GoString)), (((((("abcdefabcde" : GoString))) : GoString)) != null ? ((((("abcdefabcde" : GoString))) : GoString)).length : ((0 : GoInt)))) : IndexTest)), ((new IndexTest(((((("zabcdefabcdef" : GoString))) : GoString)), ((((("z" : GoString))) : GoString)), ((0 : GoInt))) : IndexTest)), ((new IndexTest(((((("a☺b☻c☹d" : GoString))) : GoString)), ((((("b" : GoString))) : GoString)), (((((("a☺" : GoString))) : GoString)) != null ? ((((("a☺" : GoString))) : GoString)).length : ((0 : GoInt)))) : IndexTest))) : Slice<IndexTest>));
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
((new T__struct_10(((((("" : GoString))) : GoString)), (("a".code : GoInt32)), ((-1 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("" : GoString))) : GoString)), (("☺".code : GoInt32)), ((-1 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("foo" : GoString))) : GoString)), (("☹".code : GoInt32)), ((-1 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("foo" : GoString))) : GoString)), (("o".code : GoInt32)), ((1 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("foo☺bar" : GoString))) : GoString)), (("☺".code : GoInt32)), ((3 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("foo☺☻☹bar" : GoString))) : GoString)), (("☹".code : GoInt32)), ((9 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("a A x" : GoString))) : GoString)), (("A".code : GoInt32)), ((2 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("some_text=some_value" : GoString))) : GoString)), (("=".code : GoInt32)), ((9 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("☺a" : GoString))) : GoString)), (("a".code : GoInt32)), ((3 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("a☻☺b" : GoString))) : GoString)), (("☺".code : GoInt32)), ((4 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("�" : GoString))) : GoString)), (("�".code : GoInt32)), ((0 : GoInt))) : T__struct_10)),
((new T__struct_10((((((haxe.io.Bytes.ofHex("ff") : GoString))) : GoString)), (("�".code : GoInt32)), ((0 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("☻x�" : GoString))) : GoString)), (("�".code : GoInt32)), (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt)))) : T__struct_10)),
((new T__struct_10(((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString))) : GoString)), (("�".code : GoInt32)), (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt)))) : T__struct_10)),
((new T__struct_10(((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString))) : GoString)), (("�".code : GoInt32)), (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt)))) : T__struct_10)),
((new T__struct_10(((((("☻x" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("x" : GoString))) : GoString)), (("�".code : GoInt32)), (((((("☻x" : GoString))) : GoString)) != null ? ((((("☻x" : GoString))) : GoString)).length : ((0 : GoInt)))) : T__struct_10)),
((new T__struct_10(((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((-1 : GoInt32)), ((-1 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((55296 : GoInt32)), ((-1 : GoInt))) : T__struct_10)),
((new T__struct_10(((((("a☺b☻c☹d" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("98") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("�" : GoString)) + ((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((1114112 : GoInt32)), ((-1 : GoInt))) : T__struct_10))) : Slice<T__struct_10>));
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
        var _tests = ((new Slice<T__struct_13>(((new T__struct_13(((((("Valid" : GoString))) : GoString)), ((((("typical" : GoString))) : GoString))) : T__struct_13)), ((new T__struct_13(((((("InvalidASCII" : GoString))) : GoString)), ((((("foo" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("bar" : GoString))) : GoString))) : T__struct_13)), ((new T__struct_13(((((("InvalidNonASCII" : GoString))) : GoString)), ((((("日本語" : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("日本語" : GoString))) : GoString))) : T__struct_13))) : Slice<T__struct_13>));
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
        return ((new T_predicate(function(_r:GoRune):Bool {
            return !_p._f(_r);
        }, ((((("not " : GoString))) : GoString)) + _p._name) : T_predicate));
    }
function testTrimFunc(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in _trimFuncTests) {
            var _trimmers = ((new Slice<T__struct_15>(((new T__struct_15(((((("TrimFunc" : GoString))) : GoString)), trimFunc, _tc._trimOut) : T__struct_15)), ((new T__struct_15(((((("TrimLeftFunc" : GoString))) : GoString)), trimLeftFunc, _tc._leftOut) : T__struct_15)), ((new T__struct_15(((((("TrimRightFunc" : GoString))) : GoString)), trimRightFunc, _tc._rightOut) : T__struct_15))) : Slice<T__struct_15>));
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
            var s:GoArray<T__struct_18> = new GoArray<stdgo.strings_test.Strings_test.T__struct_18>(...[for (i in 0 ... 7) new stdgo.strings_test.Strings_test.T__struct_18()]);
            s[0] = ((new T__struct_18(((((("--" : GoString))) : GoString)), ((-2147483647 : GoInt)), ((((("negative" : GoString))) : GoString))) : T__struct_18));
            s[1] = ((new T__struct_18(((((("" : GoString))) : GoString)), ((((2147483647 : GoUInt)) : GoInt)), ((((("" : GoString))) : GoString))) : T__struct_18));
            s[2] = ((new T__struct_18(((((("-" : GoString))) : GoString)), ((10 : GoInt)), ((((("" : GoString))) : GoString))) : T__struct_18));
            s[3] = ((new T__struct_18(((((("gopher" : GoString))) : GoString)), ((0 : GoInt)), ((((("" : GoString))) : GoString))) : T__struct_18));
            s[4] = ((new T__struct_18(((((("-" : GoString))) : GoString)), ((-1 : GoInt)), ((((("negative" : GoString))) : GoString))) : T__struct_18));
            s[5] = ((new T__struct_18(((((("--" : GoString))) : GoString)), ((-102 : GoInt)), ((((("negative" : GoString))) : GoString))) : T__struct_18));
            s[6] = ((new T__struct_18(((new Slice<GoUInt8>(...[for (i in 0 ... ((((255 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]) : GoString)), ((((16843010 : GoUInt)) : GoInt)), ((((("overflow" : GoString))) : GoString))) : T__struct_18));
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
            var _res:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
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
            if (((_res.toString() : GoString)) != _s) {
                _t.errorf(((((("Reader(%q).ReadByte() produced %q" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(((_res.toString() : GoString))));
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
        var _tests = ((new Slice<T__struct_13>(((new T__struct_13(((((("NoTrim" : GoString))) : GoString)), ((((("typical" : GoString))) : GoString))) : T__struct_13)), ((new T__struct_13(((((("ASCII" : GoString))) : GoString)), ((((("  foo bar  " : GoString))) : GoString))) : T__struct_13)), ((new T__struct_13(((((("SomeNonASCII" : GoString))) : GoString)), ((((("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : GoString))) : GoString))) : T__struct_13)), ((new T__struct_13(((((("JustNonASCII" : GoString))) : GoString)), ((((("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : GoString))) : GoString))) : T__struct_13))) : Slice<T__struct_13>));
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
