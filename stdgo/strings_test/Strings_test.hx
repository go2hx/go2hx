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

private var _someBytes:Slice<GoUInt8> = (Go.str("some bytes sdljlk jsklj3lkjlk djlkjw") : Slice<GoByte>);

private var _compareTests:Slice<T__struct_2> = (new Slice<T__struct_2>(0, 0, ({_a: Go.str(), _b: Go.str(), _i: (0 : GoInt)} : T__struct_2),
	({_a: Go.str("a"), _b: Go.str(), _i: (1 : GoInt)} : T__struct_2), ({_a: Go.str(), _b: Go.str("a"), _i: (-1 : GoInt)} : T__struct_2),
	({_a: Go.str("abc"), _b: Go.str("abc"), _i: (0 : GoInt)} : T__struct_2), ({_a: Go.str("ab"), _b: Go.str("abc"), _i: (-1 : GoInt)} : T__struct_2),
	({_a: Go.str("abc"), _b: Go.str("ab"), _i: (1 : GoInt)} : T__struct_2), ({_a: Go.str("x"), _b: Go.str("ab"), _i: (1 : GoInt)} : T__struct_2),
	({_a: Go.str("ab"), _b: Go.str("x"), _i: (-1 : GoInt)} : T__struct_2), ({_a: Go.str("x"), _b: Go.str("a"), _i: (1 : GoInt)} : T__struct_2),
	({_a: Go.str("b"), _b: Go.str("x"), _i: (-1 : GoInt)} : T__struct_2), ({_a: Go.str("abcdefgh"), _b: Go.str("abcdefgh"), _i: (0 : GoInt)} : T__struct_2),
	({_a: Go.str("abcdefghi"), _b: Go.str("abcdefghi"), _i: (0 : GoInt)} : T__struct_2),
	({_a: Go.str("abcdefghi"), _b: Go.str("abcdefghj"), _i: (-1 : GoInt)} : T__struct_2)) : Slice<T__struct_2>);

private var _htmlEscaper:Ref<Replacer> = newReplacer(Go.str("&"), Go.str("&amp;"), Go.str("<"), Go.str("&lt;"), Go.str(">"), Go.str("&gt;"), Go.str("\""),
	Go.str("&quot;"), Go.str("\'"), Go.str("&apos;"));

private var _htmlUnescaper:Ref<Replacer> = newReplacer(Go.str("&amp;"), Go.str("&"), Go.str("&lt;"), Go.str("<"), Go.str("&gt;"), Go.str(">"),
	Go.str("&quot;"), Go.str("\""), Go.str("&apos;"), Go.str("\'"));

private var _capitalLetters:Ref<Replacer> = newReplacer(Go.str("a"), Go.str("A"), Go.str("b"), Go.str("B"));

private var _algorithmTestCases:Slice<T__struct_5> = (new Slice<T__struct_5>(0, 0,
	({_r: _capitalLetters, _want: Go.str("*strings.byteReplacer")} : T__struct_5),
	({_r: _htmlEscaper, _want: Go.str("*strings.byteStringReplacer")} : T__struct_5),
	({_r: newReplacer(Go.str("12"), Go.str("123")), _want: Go.str("*strings.singleStringReplacer")} : T__struct_5),
	({_r: newReplacer(Go.str("1"), Go.str("12")), _want: Go.str("*strings.byteStringReplacer")} : T__struct_5),
	({_r: newReplacer(Go.str(), Go.str("X")), _want: Go.str("*strings.genericReplacer")} : T__struct_5),
	({_r: newReplacer(Go.str("a"), Go.str("1"), Go.str("b"), Go.str("12"), Go.str("cde"),
		Go.str("123")), _want: Go.str("*strings.genericReplacer")} : T__struct_5)) : Slice<T__struct_5>);

private var _mapdata:Slice<T__struct_7> = (new Slice<T__struct_7>(0, 0,
	({_name: Go.str("ASCII"), _data: Go.str("a b c d e f g h i j k l m n o p q r s t u v w x y z")} : T__struct_7),
	({_name: Go.str("Greek"), _data: Go.str("α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω")} : T__struct_7)) : Slice<T__struct_7>);

private var _abcd:GoString = Go.str("abcd");
private var _faces:GoString = Go.str("☺☻☹");
private var _commas:GoString = Go.str("1,2,3,4");
private var _dots:GoString = Go.str("1....2....3....4");

private var _indexTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("a"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("foo"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("fo"), Go.str("foo"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("foo"), Go.str("foo"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("oofofoofooo"), Go.str("f"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("oofofoofooo"), Go.str("foo"), (4 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("barfoobarfoo"), Go.str("foo"), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("foo"), Go.str(), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("foo"), Go.str("o"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcABCabc"), Go.str("A"), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("a"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x"), Go.str("a"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x"), Go.str("x"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("a"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("b"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("c"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("x"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("ab"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("bc"), Go.str("ab"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("ab"), Go.str("ab"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xab"), Go.str("ab"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xab").__slice__(0, (2 : GoInt)) : GoString), Go.str("ab"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("abc"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xbc"), Go.str("abc"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("abc"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xabc"), Go.str("abc"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xabc").__slice__(0, (3 : GoInt)) : GoString), Go.str("abc"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xabxc"), Go.str("abc"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("abcd"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xbcd"), Go.str("abcd"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcd"), Go.str("abcd"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xabcd"), Go.str("abcd"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xyabcd").__slice__(0, (5 : GoInt)) : GoString), Go.str("abcd"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xbcqq"), Go.str("abcqq"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcqq"), Go.str("abcqq"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xabcqq"), Go.str("abcqq"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xyabcqq").__slice__(0, (6 : GoInt)) : GoString), Go.str("abcqq"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xabxcqq"), Go.str("abcqq"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xabcqxq"), Go.str("abcqq"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("01234567"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("32145678"), Go.str("01234567"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("01234567"), Go.str("01234567"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x01234567"), Go.str("01234567"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x0123456x01234567"), Go.str("01234567"), (9 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xx01234567").__slice__(0, (9 : GoInt)) : GoString), Go.str("01234567"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("0123456789"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("3214567844"), Go.str("0123456789"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("0123456789"), Go.str("0123456789"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x0123456789"), Go.str("0123456789"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x012345678x0123456789"), Go.str("0123456789"),
		(11 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xyz0123456789").__slice__(0, (12 : GoInt)) : GoString), Go.str("0123456789"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x01234567x89"), Go.str("0123456789"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("0123456789012345"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("3214567889012345"), Go.str("0123456789012345"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("0123456789012345"), Go.str("0123456789012345"),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x0123456789012345"), Go.str("0123456789012345"),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x012345678901234x0123456789012345"), Go.str("0123456789012345"),
		(17 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("01234567890123456789"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("32145678890123456789"), Go.str("01234567890123456789"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("01234567890123456789"), Go.str("01234567890123456789"),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x01234567890123456789"), Go.str("01234567890123456789"),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x0123456789012345678x01234567890123456789"), Go.str("01234567890123456789"),
		(21 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xyz01234567890123456789").__slice__(0, (22 : GoInt)) : GoString), Go.str("01234567890123456789"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("0123456789012345678901234567890"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("321456788901234567890123456789012345678911"), Go.str("0123456789012345678901234567890"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("0123456789012345678901234567890"), Go.str("0123456789012345678901234567890"),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x0123456789012345678901234567890"), Go.str("0123456789012345678901234567890"),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x012345678901234567890123456789x0123456789012345678901234567890"),
		Go.str("0123456789012345678901234567890"), (32 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xyz0123456789012345678901234567890").__slice__(0, (33 : GoInt)) : GoString),
		Go.str("0123456789012345678901234567890"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("01234567890123456789012345678901"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("32145678890123456789012345678901234567890211"), Go.str("01234567890123456789012345678901"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("01234567890123456789012345678901"), Go.str("01234567890123456789012345678901"),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x01234567890123456789012345678901"), Go.str("01234567890123456789012345678901"),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("x0123456789012345678901234567890x01234567890123456789012345678901"),
		Go.str("01234567890123456789012345678901"), (33 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xyz01234567890123456789012345678901").__slice__(0, (34 : GoInt)) : GoString),
		Go.str("01234567890123456789012345678901"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xxxxxx012345678901234567890123456789012345678901234567890123456789012"),
		Go.str("012345678901234567890123456789012345678901234567890123456789012"), (6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("0123456789012345678901234567890123456789"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xx012345678901234567890123456789012345678901234567890123456789012"),
		Go.str("0123456789012345678901234567890123456789"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xx012345678901234567890123456789012345678901234567890123456789012")
		.__slice__(0, (41 : GoInt)) : GoString),
		Go.str("0123456789012345678901234567890123456789"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xx012345678901234567890123456789012345678901234567890123456789012"),
		Go.str("0123456789012345678901234567890123456xxx"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("xx0123456789012345678901234567890123456789012345678901234567890120123456789012345678901234567890123456xxx"),
		Go.str("0123456789012345678901234567890123456xxx"), (65 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("oxoxoxoxoxoxoxoxoxoxoxoy"), Go.str("oy"),
		(22 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("oxoxoxoxoxoxoxoxoxoxoxox"), Go.str("oy"),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

private var _lastIndexTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("a"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("foo"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("fo"), Go.str("foo"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("foo"), Go.str("foo"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("foo"), Go.str("f"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("oofofoofooo"), Go.str("f"), (7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("oofofoofooo"), Go.str("foo"), (7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("barfoobarfoo"), Go.str("foo"), (9 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("foo"), Go.str(), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("foo"), Go.str("o"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcABCabc"), Go.str("A"), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcABCabc"), Go.str("a"),
		(6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

private var _indexAnyTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("a"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("abc"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a"), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a"), Go.str("a"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(128), Go.str(255, "b"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("aaa"), Go.str("a"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("xyz"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("xcz"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("ab☺c"), Go.str("x☺yz"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a☺b☻c☹d"), Go.str("cx"), (Go.str("a☺b☻").length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a☺b☻c☹d"), Go.str("uvw☻xyz"), (Go.str("a☺b").length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("aRegExp*"), Go.str(".(|)*+?^$$[]"), (7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, Go.str(" "), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("012abcba210"), Go.str(255, "b"), (4 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("012", 128, "bcb", 128, "210"), Go.str(255, "b"),
		(3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("0123456πabc"), Go.str(207, "b", 128),
		(10 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

private var _lastIndexAnyTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("a"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("abc"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a"), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a"), Go.str("a"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str(128), Go.str(255, "b"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("aaa"), Go.str("a"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("xyz"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abc"), Go.str("ab"), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("ab☺c"), Go.str("x☺yz"), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a☺b☻c☹d"), Go.str("cx"), (Go.str("a☺b☻").length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a☺b☻c☹d"), Go.str("uvw☻xyz"), (Go.str("a☺b").length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a.RegExp*"), Go.str(".(|)*+?^$$[]"), (8 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, Go.str(" "), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("012abcba210"), Go.str(255, "b"), (6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("012", 128, "bcb", 128, "210"), Go.str(255, "b"),
		(7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(Go.str("0123456πabc"), Go.str(207, "b", 128),
		(10 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

private var _benchmarkLongString:GoString = repeat(Go.str(" "), (100 : GoInt)) + Go.str("some_text=some☺value");

private var _splittests:Slice<stdgo.strings_test.Strings_test.SplitTest> = (new Slice<stdgo.strings_test.Strings_test.SplitTest>(0, 0,
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str(), Go.str(), (-1 : GoInt),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (2 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("a"), Go.str("bcd")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (4 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("a"), Go.str("b"), Go.str("c"), Go.str("d")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("a"), Go.str("b"), Go.str("c"), Go.str("d")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("☺"), Go.str("☻"), Go.str("☹")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (3 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("☺"), Go.str("☻"), Go.str("☹")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (17 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("☺"), Go.str("☻"), Go.str("☹")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("☺�☹"), Go.str(), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("☺"), Go.str("�"), Go.str("☹")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str("a"), (0 : GoInt), (null : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str("a"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str(), Go.str("bcd")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str("z"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("abcd")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_commas, Go.str(","), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3"), Go.str("4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_dots, Go.str("..."), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str(".2"), Go.str(".3"), Go.str(".4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str("☹"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("☺☻"), Go.str()) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str("~"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("1 2 3 4"), Go.str(" "), (3 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3 4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("1 2"), Go.str(" "), (3 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str(), Go.str("T"), (536870911 : GoInt),
		(new Slice<GoString>(0, 0,
			Go.str()) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : Slice<stdgo.strings_test.Strings_test.SplitTest>);

private var _splitaftertests:Slice<stdgo.strings_test.Strings_test.SplitTest> = (new Slice<stdgo.strings_test.Strings_test.SplitTest>(0, 0,
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str("a"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("a"), Go.str("bcd")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str("z"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("abcd")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("a"), Go.str("b"), Go.str("c"), Go.str("d")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_commas, Go.str(","), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1,"), Go.str("2,"), Go.str("3,"), Go.str("4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_dots, Go.str("..."), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1..."), Go.str(".2..."), Go.str(".3..."),
			Go.str(".4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str("☹"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("☺☻☹"), Go.str()) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str("~"), (-1 : GoInt),
		(new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (-1 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("☺"), Go.str("☻"), Go.str("☹")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("1 2 3 4"), Go.str(" "), (3 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1 "), Go.str("2 "), Go.str("3 4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("1 2 3"), Go.str(" "), (3 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1 "), Go.str("2 "), Go.str("3")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("1 2"), Go.str(" "), (3 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1 "), Go.str("2")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("123"), Go.str(), (2 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("23")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(Go.str("123"), Go.str(), (17 : GoInt),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"),
			Go.str("3")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : Slice<stdgo.strings_test.Strings_test.SplitTest>);

private var _fieldstests:Slice<stdgo.strings_test.Strings_test.FieldsTest> = (new Slice<stdgo.strings_test.Strings_test.FieldsTest>(0, 0,
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str(), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str(" "), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str(" \t "),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("\u2000"),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("  abc  "),
		(new Slice<GoString>(0, 0, Go.str("abc")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("1 2 3 4"),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3"), Go.str("4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("1  2  3  4"),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3"), Go.str("4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("1\t\t2\t\t3\t4"),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3"), Go.str("4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("1\u20002\u20013\u20024"),
		(new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3"), Go.str("4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("\u2000\u2001\u2002"),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("\n™\t™\n"),
		(new Slice<GoString>(0, 0, Go.str("™"), Go.str("™")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("\n\u20001™2\u2000 \u2001 ™"),
		(new Slice<GoString>(0, 0, Go.str("1™2"), Go.str("™")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("\n1� �2\u20003�4"),
		(new Slice<GoString>(0, 0, Go.str("1�"), Go.str("�2"), Go.str("3�4")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("1", 255, "\u2000", 255, "2", 255, " ", 255),
		(new Slice<GoString>(0, 0, Go.str("1", 255), Go.str(255, "2", 255), Go.str(255)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(_faces,
		(new Slice<GoString>(0, 0,
			_faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : Slice<stdgo.strings_test.Strings_test.FieldsTest>);

var fieldsFuncTests:Slice<stdgo.strings_test.Strings_test.FieldsTest> = (new Slice<stdgo.strings_test.Strings_test.FieldsTest>(0, 0,
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str(), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("XX"), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("XXhiXXX"),
		(new Slice<GoString>(0, 0, Go.str("hi")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("aXXbXXXcX"),
		(new Slice<GoString>(0, 0, Go.str("a"), Go.str("b"),
			Go.str("c")) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : Slice<stdgo.strings_test.Strings_test.FieldsTest>);

private var _upperTests:Slice<stdgo.strings_test.Strings_test.StringTest> = (new Slice<stdgo.strings_test.Strings_test.StringTest>(0, 0,
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("ONLYUPPER"), Go.str("ONLYUPPER")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("abc"), Go.str("ABC")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("AbC123"), Go.str("ABC123")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("azAZ09_"), Go.str("AZAZ09_")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("longStrinGwitHmixofsmaLLandcAps"),
		Go.str("LONGSTRINGWITHMIXOFSMALLANDCAPS")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("longɐstringɐwithɐnonasciiⱯchars"),
		Go.str("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("ɐɐɐɐɐ"), Go.str("ⱯⱯⱯⱯⱯ")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("a\u0080\u{0010ffff}"),
		Go.str("A\u0080\u{0010ffff}")) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);

private var _lowerTests:Slice<stdgo.strings_test.Strings_test.StringTest> = (new Slice<stdgo.strings_test.Strings_test.StringTest>(0, 0,
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("abc"), Go.str("abc")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("AbC123"), Go.str("abc123")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("azAZ09_"), Go.str("azaz09_")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("longStrinGwitHmixofsmaLLandcAps"),
		Go.str("longstringwithmixofsmallandcaps")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS"),
		Go.str("longɐstringɐwithɐnonasciiɐchars")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("ⱭⱭⱭⱭⱭ"), Go.str("ɑɑɑɑɑ")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("A\u0080\u{0010ffff}"),
		Go.str("a\u0080\u{0010ffff}")) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);

private var _trimSpaceTests:Slice<stdgo.strings_test.Strings_test.StringTest> = (new Slice<stdgo.strings_test.Strings_test.StringTest>(0, 0,
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("abc"), Go.str("abc")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000"),
		Go.str("abc")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(" "), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(" \t\r\n \t\t\r\r\n\n "), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(" \t\r\n x\t\t\r\r\n\n "), Go.str("x")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(" \u2000\t\r\n x\t\t\r\r\ny\n \u3000"),
		Go.str("x\t\t\r\r\ny")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("1 \t\r\n2"), Go.str("1 \t\r\n2")) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(" x", 128), Go.str("x", 128)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str(" x", 192), Go.str("x", 192)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192, 192, " "), Go.str("x ", 192, 192)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192), Go.str("x ", 192)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192, " "), Go.str("x ", 192)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192, 192, " "), Go.str("x ", 192, 192)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ☺", 192, 192, " "), Go.str("x ☺", 192, 192)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ☺ "),
		Go.str("x ☺")) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);

private var _toValidUTF8Tests:Slice<T__struct_11> = (new Slice<T__struct_11>(0, 0, ({_in: Go.str(), _repl: Go.str("�"), _out: Go.str()} : T__struct_11),
	({_in: Go.str("abc"), _repl: Go.str("�"), _out: Go.str("abc")} : T__struct_11),
	({_in: Go.str("\ufddd"), _repl: Go.str("�"), _out: Go.str("\ufddd")} : T__struct_11),
	({_in: Go.str("a", 255, "b"), _repl: Go.str("�"), _out: Go.str("a�b")} : T__struct_11),
	({_in: Go.str("a", 255, "b�"), _repl: Go.str("X"), _out: Go.str("aXb�")} : T__struct_11),
	({_in: Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl: Go.str(), _out: Go.str("a☺b☺c☺")} : T__struct_11),
	({_in: Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl: Go.str("日本語"), _out: Go.str("a☺日本語b☺日本語c☺日本語")} : T__struct_11),
	({_in: Go.str(192, 175), _repl: Go.str("�"), _out: Go.str("�")} : T__struct_11),
	({_in: Go.str(224, 128, 175), _repl: Go.str("�"), _out: Go.str("�")} : T__struct_11),
	({_in: Go.str(237, 160, 128), _repl: Go.str("abc"), _out: Go.str("abc")} : T__struct_11),
	({_in: Go.str(237, 191, 191), _repl: Go.str("�"), _out: Go.str("�")} : T__struct_11),
	({_in: Go.str(240, 128, 128, 175), _repl: Go.str("☺"), _out: Go.str("☺")} : T__struct_11),
	({_in: Go.str(248, 128, 128, 128, 175), _repl: Go.str("�"), _out: Go.str("�")} : T__struct_11),
	({_in: Go.str(252, 128, 128, 128, 128, 175), _repl: Go.str("�"), _out: Go.str("�")} : T__struct_11)) : Slice<T__struct_11>);

private var _trimTests:Slice<T__struct_12> = (new Slice<T__struct_12>(0, 0, ({
	_f: Go.str("Trim"),
	_in: Go.str("abba"),
	_arg: Go.str("a"),
	_out: Go.str("bb")
} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str("abba"),
	_arg: Go.str("ab"),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimLeft"),
	_in: Go.str("abba"),
	_arg: Go.str("ab"),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimRight"),
	_in: Go.str("abba"),
	_arg: Go.str("ab"),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimLeft"),
	_in: Go.str("abba"),
	_arg: Go.str("a"),
	_out: Go.str("bba")
	} : T__struct_12), ({
	_f: Go.str("TrimLeft"),
	_in: Go.str("abba"),
	_arg: Go.str("b"),
	_out: Go.str("abba")
	} : T__struct_12), ({
	_f: Go.str("TrimRight"),
	_in: Go.str("abba"),
	_arg: Go.str("a"),
	_out: Go.str("abb")
	} : T__struct_12), ({
	_f: Go.str("TrimRight"),
	_in: Go.str("abba"),
	_arg: Go.str("b"),
	_out: Go.str("abba")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str("<tag>"),
	_arg: Go.str("<>"),
	_out: Go.str("tag")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str("* listitem"),
	_arg: Go.str(" *"),
	_out: Go.str("listitem")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str("\"quote\""),
	_arg: Go.str("\""),
	_out: Go.str("quote")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str("ⱯⱯɐɐⱯⱯ"),
	_arg: Go.str("Ɐ"),
	_out: Go.str("ɐɐ")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str(128, "test", 255),
	_arg: Go.str(255),
	_out: Go.str("test")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str(" Ġ "),
	_arg: Go.str(" "),
	_out: Go.str("Ġ")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str(" Ġİ0"),
	_arg: Go.str("0 "),
	_out: Go.str("Ġİ")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str("abba"),
	_arg: Go.str(),
	_out: Go.str("abba")
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str(),
	_arg: Go.str("123"),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("Trim"),
	_in: Go.str(),
	_arg: Go.str(),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimLeft"),
	_in: Go.str("abba"),
	_arg: Go.str(),
	_out: Go.str("abba")
	} : T__struct_12), ({
	_f: Go.str("TrimLeft"),
	_in: Go.str(),
	_arg: Go.str("123"),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimLeft"),
	_in: Go.str(),
	_arg: Go.str(),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimRight"),
	_in: Go.str("abba"),
	_arg: Go.str(),
	_out: Go.str("abba")
	} : T__struct_12), ({
	_f: Go.str("TrimRight"),
	_in: Go.str(),
	_arg: Go.str("123"),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimRight"),
	_in: Go.str(),
	_arg: Go.str(),
	_out: Go.str()
	} : T__struct_12), ({
	_f: Go.str("TrimRight"),
	_in: Go.str("☺", 192),
	_arg: Go.str("☺"),
	_out: Go.str("☺", 192)
	} : T__struct_12), ({
	_f: Go.str("TrimPrefix"),
	_in: Go.str("aabb"),
	_arg: Go.str("a"),
	_out: Go.str("abb")
	} : T__struct_12), ({
	_f: Go.str("TrimPrefix"),
	_in: Go.str("aabb"),
	_arg: Go.str("b"),
	_out: Go.str("aabb")
	} : T__struct_12), ({
	_f: Go.str("TrimSuffix"),
	_in: Go.str("aabb"),
	_arg: Go.str("a"),
	_out: Go.str("aabb")
	} : T__struct_12), ({
	_f: Go.str("TrimSuffix"),
	_in: Go.str("aabb"),
	_arg: Go.str("b"),
	_out: Go.str("aab")
	} : T__struct_12)) : Slice<T__struct_12>);

private var _isSpace:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isSpace,
	Go.str("IsSpace")) : stdgo.strings_test.Strings_test.T_predicate);

private var _isDigit:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isDigit,
	Go.str("IsDigit")) : stdgo.strings_test.Strings_test.T_predicate);

private var _isUpper:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isUpper,
	Go.str("IsUpper")) : stdgo.strings_test.Strings_test.T_predicate);

private var _isValidRune:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(function(_r:GoRune):Bool {
	return _r != ((65533 : GoInt32));
}, Go.str("IsValidRune")) : stdgo.strings_test.Strings_test.T_predicate);

private var _trimFuncTests:Slice<T__struct_14> = (new Slice<T__struct_14>(0, 0, ({
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_in: Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000"),
	_trimOut: Go.str("hello"),
	_leftOut: Go.str("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000"),
	_rightOut: Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello")
} : T__struct_14), ({
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_in: Go.str("๐๒12hello34๐๑"),
	_trimOut: Go.str("hello"),
	_leftOut: Go.str("hello34๐๑"),
	_rightOut: Go.str("๐๒12hello")
	} : T__struct_14), ({
	_f: (_isUpper == null ? null : _isUpper.__copy__()),
	_in: Go.str("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ"),
	_trimOut: Go.str("hello"),
	_leftOut: Go.str("helloEFⱯⱯGHⱯⱯ"),
	_rightOut: Go.str("ⱯⱯⱯⱯABCDhello")
	} : T__struct_14), ({
	_f: (_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()),
	_in: Go.str("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello"),
	_trimOut: Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000"),
	_leftOut: Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello"),
	_rightOut: Go.str("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000")
	} : T__struct_14), ({
	_f: (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()),
	_in: Go.str("hello๐๒1234๐๑helo"),
	_trimOut: Go.str("๐๒1234๐๑"),
	_leftOut: Go.str("๐๒1234๐๑helo"),
	_rightOut: Go.str("hello๐๒1234๐๑")
	} : T__struct_14), ({
	_f: (_isValidRune == null ? null : _isValidRune.__copy__()),
	_in: Go.str("ab", 192, "a", 192, "cd"),
	_trimOut: Go.str(192, "a", 192),
	_leftOut: Go.str(192, "a", 192, "cd"),
	_rightOut: Go.str("ab", 192, "a", 192)
	} : T__struct_14), ({
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_in: Go.str(192, "a", 192),
	_trimOut: Go.str("a"),
	_leftOut: Go.str("a", 192),
	_rightOut: Go.str(192, "a")
	} : T__struct_14), ({
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_in: Go.str(),
	_trimOut: Go.str(),
	_leftOut: Go.str(),
	_rightOut: Go.str()
	} : T__struct_14), ({
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_in: Go.str(" "),
	_trimOut: Go.str(),
	_leftOut: Go.str(),
	_rightOut: Go.str()
	} : T__struct_14)) : Slice<T__struct_14>);

private var _indexFuncTests:Slice<T__struct_16> = (new Slice<T__struct_16>(0, 0, ({
	_in: Go.str(),
	_f: (_isValidRune == null ? null : _isValidRune.__copy__()),
	_first: (-1 : GoInt),
	_last: (-1 : GoInt)
} : T__struct_16), ({
	_in: Go.str("abc"),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (-1 : GoInt),
	_last: (-1 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("0123"),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (0 : GoInt),
	_last: (3 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("a1b"),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (1 : GoInt),
	_last: (1 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000"),
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_first: (0 : GoInt),
	_last: (12 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("๐๒12hello34๐๑"),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (0 : GoInt),
	_last: (18 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ"),
	_f: (_isUpper == null ? null : _isUpper.__copy__()),
	_first: (0 : GoInt),
	_last: (34 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("12๐๒hello34๐๑"),
	_f: (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()),
	_first: (8 : GoInt),
	_last: (12 : GoInt)
	} : T__struct_16), ({
	_in: Go.str(128, "1"),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (1 : GoInt),
	_last: (1 : GoInt)
	} : T__struct_16), ({
	_in: Go.str(128, "abc"),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (-1 : GoInt),
	_last: (-1 : GoInt)
	} : T__struct_16), ({
	_in: Go.str(192, "a", 192),
	_f: (_isValidRune == null ? null : _isValidRune.__copy__()),
	_first: (1 : GoInt),
	_last: (1 : GoInt)
	} : T__struct_16), ({
	_in: Go.str(192, "a", 192),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (2 : GoInt)
	} : T__struct_16), ({
	_in: Go.str(192, "☺", 192),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (4 : GoInt)
	} : T__struct_16), ({
	_in: Go.str(192, "☺", 192, 192),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (5 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("ab", 192, "a", 192, "cd"),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (2 : GoInt),
	_last: (4 : GoInt)
	} : T__struct_16), ({
	_in: Go.str("a", 224, 128, "cd"),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (1 : GoInt),
	_last: (2 : GoInt)
	} : T__struct_16), ({
	_in: Go.str(128, 128, 128, 128),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (3 : GoInt)
	} : T__struct_16)) : Slice<T__struct_16>);

var repeatTests:Slice<T__struct_17> = (new Slice<T__struct_17>(0, 0, ({_in: Go.str(), _out: Go.str(), _count: (0 : GoInt)} : T__struct_17),
	({_in: Go.str(), _out: Go.str(), _count: (1 : GoInt)} : T__struct_17), ({_in: Go.str(), _out: Go.str(), _count: (2 : GoInt)} : T__struct_17),
	({_in: Go.str("-"), _out: Go.str(), _count: (0 : GoInt)} : T__struct_17), ({_in: Go.str("-"), _out: Go.str("-"), _count: (1 : GoInt)} : T__struct_17),
	({_in: Go.str("-"), _out: Go.str("----------"), _count: (10 : GoInt)} : T__struct_17),
	({_in: Go.str("abc "), _out: Go.str("abc abc abc "), _count: (3 : GoInt)} : T__struct_17)) : Slice<T__struct_17>);

var runesTests:Slice<T__struct_19> = (new Slice<T__struct_19>(0, 0,
	({_in: Go.str(), _out: (new Slice<GoInt32>(0, 0) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: Go.str(" "), _out: (new Slice<GoInt32>(0, 0, (32 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: Go.str("ABC"), _out: (new Slice<GoInt32>(0, 0, (65 : GoInt32), (66 : GoInt32), (67 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: Go.str("abc"), _out: (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: Go.str("日本語"), _out: (new Slice<GoInt32>(0, 0, (26085 : GoInt32), (26412 : GoInt32),
		(35486 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: Go.str("ab", 128,
		"c"), _out: (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32),
			(99 : GoInt32)) : Slice<GoInt32>), _lossy: true} : T__struct_19),
	({_in: Go.str("ab", 192,
		"c"), _out: (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32),
			(99 : GoInt32)) : Slice<GoInt32>), _lossy: true} : T__struct_19)) : Slice<T__struct_19>);

var unreadRuneErrorTests:Slice<T__struct_20> = (new Slice<T__struct_20>(0, 0, ({
	_name: Go.str("Read"),
	_f: function(_r:Ref<Reader>):Void {
		_r.read((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>));
	}
} : T__struct_20), ({
	_name: Go.str("ReadByte"),
	_f: function(_r:Ref<Reader>):Void {
		_r.readByte();
	}
	} : T__struct_20), ({
	_name: Go.str("UnreadRune"),
	_f: function(_r:Ref<Reader>):Void {
		_r.unreadRune();
	}
	} : T__struct_20), ({
	_name: Go.str("Seek"),
	_f: function(_r:Ref<Reader>):Void {
		_r.seek(("0" : GoInt64), (1 : GoInt));
	}
	} : T__struct_20), ({
	_name: Go.str("WriteTo"),
	_f: function(_r:Ref<Reader>):Void {
		_r.writeTo(Go.asInterface(((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer) : Ref<stdgo.bytes.Bytes.Buffer>)));
	}
	} : T__struct_20)) : Slice<T__struct_20>);

var replaceTests:Slice<T__struct_21> = (new Slice<T__struct_21>(0, 0, ({
	_in: Go.str("hello"),
	_old: Go.str("l"),
	_new: Go.str("L"),
	_n: (0 : GoInt),
	_out: Go.str("hello")
} : T__struct_21), ({
	_in: Go.str("hello"),
	_old: Go.str("l"),
	_new: Go.str("L"),
	_n: (-1 : GoInt),
	_out: Go.str("heLLo")
	} : T__struct_21), ({
	_in: Go.str("hello"),
	_old: Go.str("x"),
	_new: Go.str("X"),
	_n: (-1 : GoInt),
	_out: Go.str("hello")
	} : T__struct_21), ({
	_in: Go.str(),
	_old: Go.str("x"),
	_new: Go.str("X"),
	_n: (-1 : GoInt),
	_out: Go.str()
	} : T__struct_21), ({
	_in: Go.str("radar"),
	_old: Go.str("r"),
	_new: Go.str("<r>"),
	_n: (-1 : GoInt),
	_out: Go.str("<r>ada<r>")
	} : T__struct_21), ({
	_in: Go.str(),
	_old: Go.str(),
	_new: Go.str("<>"),
	_n: (-1 : GoInt),
	_out: Go.str("<>")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str("a"),
	_new: Go.str("<>"),
	_n: (-1 : GoInt),
	_out: Go.str("b<>n<>n<>")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str("a"),
	_new: Go.str("<>"),
	_n: (1 : GoInt),
	_out: Go.str("b<>nana")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str("a"),
	_new: Go.str("<>"),
	_n: (1000 : GoInt),
	_out: Go.str("b<>n<>n<>")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str("an"),
	_new: Go.str("<>"),
	_n: (-1 : GoInt),
	_out: Go.str("b<><>a")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str("ana"),
	_new: Go.str("<>"),
	_n: (-1 : GoInt),
	_out: Go.str("b<>na")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str(),
	_new: Go.str("<>"),
	_n: (-1 : GoInt),
	_out: Go.str("<>b<>a<>n<>a<>n<>a<>")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str(),
	_new: Go.str("<>"),
	_n: (10 : GoInt),
	_out: Go.str("<>b<>a<>n<>a<>n<>a<>")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str(),
	_new: Go.str("<>"),
	_n: (6 : GoInt),
	_out: Go.str("<>b<>a<>n<>a<>n<>a")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str(),
	_new: Go.str("<>"),
	_n: (5 : GoInt),
	_out: Go.str("<>b<>a<>n<>a<>na")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str(),
	_new: Go.str("<>"),
	_n: (1 : GoInt),
	_out: Go.str("<>banana")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str("a"),
	_new: Go.str("a"),
	_n: (-1 : GoInt),
	_out: Go.str("banana")
	} : T__struct_21), ({
	_in: Go.str("banana"),
	_old: Go.str("a"),
	_new: Go.str("a"),
	_n: (1 : GoInt),
	_out: Go.str("banana")
	} : T__struct_21), ({
	_in: Go.str("☺☻☹"),
	_old: Go.str(),
	_new: Go.str("<>"),
	_n: (-1 : GoInt),
	_out: Go.str("<>☺<>☻<>☹<>")
	} : T__struct_21)) : Slice<T__struct_21>);

var titleTests:Slice<StringTest> = (new Slice<StringTest>(0, 0, (new StringTest(Go.str(), Go.str()) : StringTest),
	(new StringTest(Go.str("a"), Go.str("A")) : StringTest), (new StringTest(Go.str(" aaa aaa aaa "), Go.str(" Aaa Aaa Aaa ")) : StringTest),
	(new StringTest(Go.str(" Aaa Aaa Aaa "), Go.str(" Aaa Aaa Aaa ")) : StringTest), (new StringTest(Go.str("123a456"), Go.str("123a456")) : StringTest),
	(new StringTest(Go.str("double-blind"), Go.str("Double-Blind")) : StringTest), (new StringTest(Go.str("ÿøû"), Go.str("Ÿøû")) : StringTest),
	(new StringTest(Go.str("with_underscore"), Go.str("With_underscore")) : StringTest),
	(new StringTest(Go.str("unicode \u2028 line separator"), Go.str("Unicode \u2028 Line Separator")) : StringTest)) : Slice<StringTest>);

var containsTests:Slice<T__struct_22> = (new Slice<T__struct_22>(0, 0, ({_str: Go.str("abc"), _substr: Go.str("bc"), _expected: true} : T__struct_22),
	({_str: Go.str("abc"), _substr: Go.str("bcd"), _expected: false} : T__struct_22),
	({_str: Go.str("abc"), _substr: Go.str(), _expected: true} : T__struct_22), ({_str: Go.str(), _substr: Go.str("a"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxx"), _substr: Go.str("01"), _expected: false} : T__struct_22),
	({_str: Go.str("01xxxx"), _substr: Go.str("01"), _expected: true} : T__struct_22),
	({_str: Go.str("xx01xx"), _substr: Go.str("01"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx01"), _substr: Go.str("01"), _expected: true} : T__struct_22),
	({_str: (Go.str("01xxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("01"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx01").__slice__(0, (6 : GoInt)) : GoString), _substr: Go.str("01"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxxx"), _substr: Go.str("012"), _expected: false} : T__struct_22),
	({_str: Go.str("012xxxx"), _substr: Go.str("012"), _expected: true} : T__struct_22),
	({_str: Go.str("xx012xx"), _substr: Go.str("012"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx012"), _substr: Go.str("012"), _expected: true} : T__struct_22),
	({_str: (Go.str("012xxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("012"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx012").__slice__(0, (7 : GoInt)) : GoString), _substr: Go.str("012"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxxxx"), _substr: Go.str("0123"), _expected: false} : T__struct_22),
	({_str: Go.str("0123xxxx"), _substr: Go.str("0123"), _expected: true} : T__struct_22),
	({_str: Go.str("xx0123xx"), _substr: Go.str("0123"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx0123"), _substr: Go.str("0123"), _expected: true} : T__struct_22),
	({_str: (Go.str("0123xxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("0123"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx0123").__slice__(0, (8 : GoInt)) : GoString), _substr: Go.str("0123"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxxxxx"), _substr: Go.str("01234"), _expected: false} : T__struct_22),
	({_str: Go.str("01234xxxx"), _substr: Go.str("01234"), _expected: true} : T__struct_22),
	({_str: Go.str("xx01234xx"), _substr: Go.str("01234"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx01234"), _substr: Go.str("01234"), _expected: true} : T__struct_22),
	({_str: (Go.str("01234xxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("01234"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx01234").__slice__(0, (9 : GoInt)) : GoString), _substr: Go.str("01234"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxxxxxxxx"), _substr: Go.str("01234567"), _expected: false} : T__struct_22),
	({_str: Go.str("01234567xxxx"), _substr: Go.str("01234567"), _expected: true} : T__struct_22),
	({_str: Go.str("xx01234567xx"), _substr: Go.str("01234567"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx01234567"), _substr: Go.str("01234567"), _expected: true} : T__struct_22),
	({_str: (Go.str("01234567xxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("01234567"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx01234567").__slice__(0, (12 : GoInt)) : GoString), _substr: Go.str("01234567"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxxxxxxxxx"), _substr: Go.str("012345678"), _expected: false} : T__struct_22),
	({_str: Go.str("012345678xxxx"), _substr: Go.str("012345678"), _expected: true} : T__struct_22),
	({_str: Go.str("xx012345678xx"), _substr: Go.str("012345678"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx012345678"), _substr: Go.str("012345678"), _expected: true} : T__struct_22),
	({_str: (Go.str("012345678xxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("012345678"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx012345678").__slice__(0, (13 : GoInt)) : GoString), _substr: Go.str("012345678"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxxxxxxxxxxxxxxxx"), _substr: Go.str("0123456789ABCDEF"), _expected: false} : T__struct_22),
	({_str: Go.str("0123456789ABCDEFxxxx"), _substr: Go.str("0123456789ABCDEF"), _expected: true} : T__struct_22),
	({_str: Go.str("xx0123456789ABCDEFxx"), _substr: Go.str("0123456789ABCDEF"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx0123456789ABCDEF"), _substr: Go.str("0123456789ABCDEF"), _expected: true} : T__struct_22),
	({_str: (Go.str("0123456789ABCDEFxxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("0123456789ABCDEF"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx0123456789ABCDEF").__slice__(0, (20 : GoInt)) : GoString), _substr: Go.str("0123456789ABCDEF"), _expected: false} : T__struct_22),
	({_str: Go.str("xxxxxxxxxxxxxxxxxxxxx"), _substr: Go.str("0123456789ABCDEFG"), _expected: false} : T__struct_22),
	({_str: Go.str("0123456789ABCDEFGxxxx"), _substr: Go.str("0123456789ABCDEFG"), _expected: true} : T__struct_22),
	({_str: Go.str("xx0123456789ABCDEFGxx"), _substr: Go.str("0123456789ABCDEFG"), _expected: true} : T__struct_22),
	({_str: Go.str("xxxx0123456789ABCDEFG"), _substr: Go.str("0123456789ABCDEFG"), _expected: true} : T__struct_22),
	({_str: (Go.str("0123456789ABCDEFGxxxxx").__slice__((1 : GoInt)) : GoString), _substr: Go.str("0123456789ABCDEFG"), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxx0123456789ABCDEFG").__slice__(0, (21 : GoInt)) : GoString), _substr: Go.str("0123456789ABCDEFG"), _expected: false} : T__struct_22),
	({_str: Go.str("xx01x"), _substr: Go.str("012"), _expected: false} : T__struct_22),
	({_str: Go.str("xx0123x"), _substr: Go.str("01234"), _expected: false} : T__struct_22),
	({_str: Go.str("xx01234567x"), _substr: Go.str("012345678"), _expected: false} : T__struct_22),
	({_str: Go.str("xx0123456789ABCDEFx"), _substr: Go.str("0123456789ABCDEFG"), _expected: false} : T__struct_22)) : Slice<T__struct_22>);

var containsAnyTests:Slice<T__struct_22> = (new Slice<T__struct_22>(0, 0, ({_str: Go.str(), _substr: Go.str(), _expected: false} : T__struct_22),
	({_str: Go.str(), _substr: Go.str("a"), _expected: false} : T__struct_22), ({_str: Go.str(), _substr: Go.str("abc"), _expected: false} : T__struct_22),
	({_str: Go.str("a"), _substr: Go.str(), _expected: false} : T__struct_22), ({_str: Go.str("a"), _substr: Go.str("a"), _expected: true} : T__struct_22),
	({_str: Go.str("aaa"), _substr: Go.str("a"), _expected: true} : T__struct_22),
	({_str: Go.str("abc"), _substr: Go.str("xyz"), _expected: false} : T__struct_22),
	({_str: Go.str("abc"), _substr: Go.str("xcz"), _expected: true} : T__struct_22),
	({_str: Go.str("a☺b☻c☹d"), _substr: Go.str("uvw☻xyz"), _expected: true} : T__struct_22),
	({_str: Go.str("aRegExp*"), _substr: Go.str(".(|)*+?^$$[]"), _expected: true} : T__struct_22),
	({_str: (_dots + _dots) + _dots, _substr: Go.str(" "), _expected: false} : T__struct_22)) : Slice<T__struct_22>);

var containsRuneTests:Slice<T__struct_23> = (new Slice<T__struct_23>(0, 0, ({_str: Go.str(), _r: (97 : GoInt32), _expected: false} : T__struct_23),
	({_str: Go.str("a"), _r: (97 : GoInt32), _expected: true} : T__struct_23), ({_str: Go.str("aaa"), _r: (97 : GoInt32), _expected: true} : T__struct_23),
	({_str: Go.str("abc"), _r: (121 : GoInt32), _expected: false} : T__struct_23),
	({_str: Go.str("abc"), _r: (99 : GoInt32), _expected: true} : T__struct_23),
	({_str: Go.str("a☺b☻c☹d"), _r: (120 : GoInt32), _expected: false} : T__struct_23),
	({_str: Go.str("a☺b☻c☹d"), _r: (9787 : GoInt32), _expected: true} : T__struct_23),
	({_str: Go.str("aRegExp*"), _r: (42 : GoInt32), _expected: true} : T__struct_23)) : Slice<T__struct_23>);

var equalFoldTests:Slice<T__struct_24> = (new Slice<T__struct_24>(0, 0, ({_s: Go.str("abc"), _t: Go.str("abc"), _out: true} : T__struct_24),
	({_s: Go.str("ABcd"), _t: Go.str("ABcd"), _out: true} : T__struct_24), ({_s: Go.str("123abc"), _t: Go.str("123ABC"), _out: true} : T__struct_24),
	({_s: Go.str("αβδ"), _t: Go.str("ΑΒΔ"), _out: true} : T__struct_24), ({_s: Go.str("abc"), _t: Go.str("xyz"), _out: false} : T__struct_24),
	({_s: Go.str("abc"), _t: Go.str("XYZ"), _out: false} : T__struct_24),
	({_s: Go.str("abcdefghijk"), _t: Go.str("abcdefghijX"), _out: false} : T__struct_24),
	({_s: Go.str("abcdefghijk"), _t: Go.str("abcdefghijK"), _out: true} : T__struct_24),
	({_s: Go.str("abcdefghijK"), _t: Go.str("abcdefghijK"), _out: true} : T__struct_24),
	({_s: Go.str("abcdefghijkz"), _t: Go.str("abcdefghijKy"), _out: false} : T__struct_24),
	({_s: Go.str("abcdefghijKz"), _t: Go.str("abcdefghijKy"), _out: false} : T__struct_24), ({_s: Go.str("1"), _t: Go.str("2"), _out: false} : T__struct_24),
	({_s: Go.str("utf-8"), _t: Go.str("US-ASCII"), _out: false} : T__struct_24)) : Slice<T__struct_24>);

var countTests:Slice<T__struct_25> = (new Slice<T__struct_25>(0, 0, ({_s: Go.str(), _sep: Go.str(), _num: (1 : GoInt)} : T__struct_25),
	({_s: Go.str(), _sep: Go.str("notempty"), _num: (0 : GoInt)} : T__struct_25),
	({_s: Go.str("notempty"), _sep: Go.str(), _num: (9 : GoInt)} : T__struct_25),
	({_s: Go.str("smaller"), _sep: Go.str("not smaller"), _num: (0 : GoInt)} : T__struct_25),
	({_s: Go.str("12345678987654321"), _sep: Go.str("6"), _num: (2 : GoInt)} : T__struct_25),
	({_s: Go.str("611161116"), _sep: Go.str("6"), _num: (3 : GoInt)} : T__struct_25),
	({_s: Go.str("notequal"), _sep: Go.str("NotEqual"), _num: (0 : GoInt)} : T__struct_25),
	({_s: Go.str("equal"), _sep: Go.str("equal"), _num: (1 : GoInt)} : T__struct_25),
	({_s: Go.str("abc1231231123q"), _sep: Go.str("123"), _num: (3 : GoInt)} : T__struct_25),
	({_s: Go.str("11111"), _sep: Go.str("11"), _num: (2 : GoInt)} : T__struct_25)) : Slice<T__struct_25>);

private var _cutTests:Slice<T__struct_26> = (new Slice<T__struct_26>(0, 0, ({
	_s: Go.str("abc"),
	_sep: Go.str("b"),
	_before: Go.str("a"),
	_after: Go.str("c"),
	_found: true
} : T__struct_26), ({
	_s: Go.str("abc"),
	_sep: Go.str("a"),
	_before: Go.str(),
	_after: Go.str("bc"),
	_found: true
	} : T__struct_26), ({
	_s: Go.str("abc"),
	_sep: Go.str("c"),
	_before: Go.str("ab"),
	_after: Go.str(),
	_found: true
	} : T__struct_26), ({
	_s: Go.str("abc"),
	_sep: Go.str("abc"),
	_before: Go.str(),
	_after: Go.str(),
	_found: true
	} : T__struct_26), ({
	_s: Go.str("abc"),
	_sep: Go.str(),
	_before: Go.str(),
	_after: Go.str("abc"),
	_found: true
	} : T__struct_26), ({
	_s: Go.str("abc"),
	_sep: Go.str("d"),
	_before: Go.str("abc"),
	_after: Go.str(),
	_found: false
	} : T__struct_26), ({
	_s: Go.str(),
	_sep: Go.str("d"),
	_before: Go.str(),
	_after: Go.str(),
	_found: false
	} : T__struct_26), ({
	_s: Go.str(),
	_sep: Go.str(),
	_before: Go.str(),
	_after: Go.str(),
	_found: true
	} : T__struct_26)) : Slice<T__struct_26>);

private var _benchInputHard:GoString = _makeBenchInputHard();
private var _benchInputTorture:GoString = (repeat(Go.str("ABC"), (1024 : GoInt)) + Go.str("123")) + repeat(Go.str("ABC"), (1024 : GoInt));
private var _benchNeedleTorture:GoString = repeat(Go.str("ABC"), (1025 : GoInt));

private var _makeFieldsInput:() -> GoString = function():GoString {
	var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0...(1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i in 0..._x.length.toBasic()) {
		{
			var __switchIndex__ = -1;
			while (true) {
				if (__switchIndex__ == 0 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn((10 : GoInt)) == ((0 : GoInt)))) {
					_x[_i] = (32 : GoUInt8);
					break;
					break;
				} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && stdgo.math.rand.Rand.intn((10 : GoInt)) == ((1 : GoInt)))) {
					if ((_i > (0 : GoInt)) && (_x[_i - (1 : GoInt)] == (120 : GoUInt8))) {
						Go.copySlice((_x.__slice__(_i - (1 : GoInt)) : Slice<GoUInt8>), Go.str("χ"));
						break;
					};
					@:fallthrough {
						__switchIndex__ = 2;
						continue;
					};
					break;
				} else {
					_x[_i] = (120 : GoUInt8);
					break;
				};
				break;
			};
		};
	};
	return (_x : GoString);
};

private var _makeFieldsInputASCII:() -> GoString = function():GoString {
	var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0...(1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i in 0..._x.length.toBasic()) {
		if (stdgo.math.rand.Rand.intn((10 : GoInt)) == ((0 : GoInt))) {
			_x[_i] = (32 : GoUInt8);
		} else {
			_x[_i] = (120 : GoUInt8);
		};
	};
	return (_x : GoString);
};

private var _stringdata:Slice<T__struct_7> = (new Slice<T__struct_7>(0, 0, ({_name: Go.str("ASCII"), _data: _makeFieldsInputASCII()} : T__struct_7),
	({_name: Go.str("Mixed"), _data: _makeFieldsInput()} : T__struct_7)) : Slice<T__struct_7>);

private var _sinkS:GoString = ("" : GoString);
private var _emptyString:GoString = ("" : GoString);
private final _benchmarkString:GoString = Go.str("some_text=some☺value");
private final _space:GoString = Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000");
private var _stringSink:GoString = ("" : GoString);

@:structInit @:using(stdgo.strings_test.Strings_test.T_errWriter_static_extension) private class T_errWriter {
	public function new() {}

	public function __copy__() {
		return new T_errWriter();
	}
}

@:structInit class IndexTest {
	public var _s:GoString = "";
	public var _sep:GoString = "";
	public var _out:GoInt = 0;

	public function new(?_s:GoString, ?_sep:GoString, ?_out:GoInt) {
		if (_s != null)
			this._s = _s;
		if (_sep != null)
			this._sep = _sep;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new IndexTest(_s, _sep, _out);
	}
}

@:structInit class SplitTest {
	public var _s:GoString = "";
	public var _sep:GoString = "";
	public var _n:GoInt = 0;
	public var _a:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_s:GoString, ?_sep:GoString, ?_n:GoInt, ?_a:Slice<GoString>) {
		if (_s != null)
			this._s = _s;
		if (_sep != null)
			this._sep = _sep;
		if (_n != null)
			this._n = _n;
		if (_a != null)
			this._a = _a;
	}

	public function __copy__() {
		return new SplitTest(_s, _sep, _n, _a);
	}
}

@:structInit class FieldsTest {
	public var _s:GoString = "";
	public var _a:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_s:GoString, ?_a:Slice<GoString>) {
		if (_s != null)
			this._s = _s;
		if (_a != null)
			this._a = _a;
	}

	public function __copy__() {
		return new FieldsTest(_s, _a);
	}
}

/**
	// Test case for any function which accepts and returns a single string.
**/
@:structInit class StringTest {
	public var _in:GoString = "";
	public var _out:GoString = "";

	public function new(?_in:GoString, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new StringTest(_in, _out);
	}
}

@:structInit private class T_predicate {
	public var _f:GoInt32->Bool = null;
	public var _name:GoString = "";

	public function new(?_f:GoInt32->Bool, ?_name:GoString) {
		if (_f != null)
			this._f = _f;
		if (_name != null)
			this._name = _name;
	}

	public function __copy__() {
		return new T_predicate(_f, _name);
	}
}

@:structInit @:local private class T__struct_0 {
	public var _name:GoString = "";
	public var _fn:Ref<Builder> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	public var _n:GoInt = 0;
	public var _want:GoString = "";

	public function new(?_name:GoString, ?_fn:Ref<Builder> -> {
		var _0:GoInt;
		var _1:Error;
	}, ?_n:GoInt, ?_want:GoString) {
		if (_name != null)
			this._name = _name;
		if (_fn != null)
			this._fn = _fn;
		if (_n != null)
			this._n = _n;
		if (_want != null)
			this._want = _want;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_0(_name, _fn, _n, _want);
	}
}

@:structInit @:local private class T__struct_1 {
	public var _name:GoString = "";
	public var _fn:() -> Void = null;
	public var _wantPanic:Bool = false;

	public function new(?_name:GoString, ?_fn:() -> Void, ?_wantPanic:Bool) {
		if (_name != null)
			this._name = _name;
		if (_fn != null)
			this._fn = _fn;
		if (_wantPanic != null)
			this._wantPanic = _wantPanic;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_1(_name, _fn, _wantPanic);
	}
}

@:structInit @:local private class T__struct_2 {
	public var _a:GoString = "";
	public var _b:GoString = "";
	public var _i:GoInt = 0;

	public function new(?_a:GoString, ?_b:GoString, ?_i:GoInt) {
		if (_a != null)
			this._a = _a;
		if (_b != null)
			this._b = _b;
		if (_i != null)
			this._i = _i;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_2(_a, _b, _i);
	}
}

@:structInit @:local private class T__struct_3 {
	public var _off:GoInt64 = 0;
	public var _seek:GoInt = 0;
	public var _n:GoInt = 0;
	public var _want:GoString = "";
	public var _wantpos:GoInt64 = 0;
	public var _readerr:Error = (null : Error);
	public var _seekerr:GoString = "";

	public function new(?_off:GoInt64, ?_seek:GoInt, ?_n:GoInt, ?_want:GoString, ?_wantpos:GoInt64, ?_readerr:Error, ?_seekerr:GoString) {
		if (_off != null)
			this._off = _off;
		if (_seek != null)
			this._seek = _seek;
		if (_n != null)
			this._n = _n;
		if (_want != null)
			this._want = _want;
		if (_wantpos != null)
			this._wantpos = _wantpos;
		if (_readerr != null)
			this._readerr = _readerr;
		if (_seekerr != null)
			this._seekerr = _seekerr;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_3(_off, _seek, _n, _want, _wantpos, _readerr, _seekerr);
	}
}

@:structInit @:local private class T__struct_4 {
	public var _off:GoInt64 = 0;
	public var _n:GoInt = 0;
	public var _want:GoString = "";
	public var _wanterr:AnyInterface = (null : AnyInterface);

	public function new(?_off:GoInt64, ?_n:GoInt, ?_want:GoString, ?_wanterr:AnyInterface) {
		if (_off != null)
			this._off = _off;
		if (_n != null)
			this._n = _n;
		if (_want != null)
			this._want = _want;
		if (_wanterr != null)
			this._wanterr = _wanterr;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_4(_off, _n, _want, _wanterr);
	}
}

@:structInit @:local private class T__struct_5 {
	public var _r:Ref<Replacer> = (null : Ref<Replacer>);
	public var _want:GoString = "";

	public function new(?_r:Ref<Replacer>, ?_want:GoString) {
		if (_r != null)
			this._r = _r;
		if (_want != null)
			this._want = _want;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_5(_r, _want);
	}
}

@:structInit @:local private class T__struct_6 {
	public var _in:GoString = "";
	public var _out:GoString = "";

	public function new(?_in:GoString, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_6(_in, _out);
	}
}

@:structInit @:local private class T__struct_7 {
	public var _name:GoString = "";
	public var _data:GoString = "";

	public function new(?_name:GoString, ?_data:GoString) {
		if (_name != null)
			this._name = _name;
		if (_data != null)
			this._data = _data;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_7(_name, _data);
	}
}

@:structInit @:local private class T__struct_8 {
	public var _pat:GoString = "";
	public var _text:GoString = "";
	public var _index:GoInt = 0;

	public function new(?_pat:GoString, ?_text:GoString, ?_index:GoInt) {
		if (_pat != null)
			this._pat = _pat;
		if (_text != null)
			this._text = _text;
		if (_index != null)
			this._index = _index;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_8(_pat, _text, _index);
	}
}

@:structInit @:local private class T__struct_9 {
	public var _pattern:GoString = "";
	public var _bad:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) (0 : GoInt)]);
	public var _suf:Slice<GoInt> = (null : Slice<GoInt>);

	public function new(?_pattern:GoString, ?_bad:GoArray<GoInt>, ?_suf:Slice<GoInt>) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_bad != null)
			this._bad = _bad;
		if (_suf != null)
			this._suf = _suf;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_9(_pattern, _bad, _suf);
	}
}

@:structInit @:local private class T__struct_10 {
	public var _in:GoString = "";
	public var _rune:GoInt32 = 0;
	public var _want:GoInt = 0;

	public function new(?_in:GoString, ?_rune:GoInt32, ?_want:GoInt) {
		if (_in != null)
			this._in = _in;
		if (_rune != null)
			this._rune = _rune;
		if (_want != null)
			this._want = _want;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_10(_in, _rune, _want);
	}
}

@:structInit @:local private class T__struct_11 {
	public var _in:GoString = "";
	public var _repl:GoString = "";
	public var _out:GoString = "";

	public function new(?_in:GoString, ?_repl:GoString, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_repl != null)
			this._repl = _repl;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_11(_in, _repl, _out);
	}
}

@:structInit @:local private class T__struct_12 {
	public var _f:GoString = "";
	public var _in:GoString = "";
	public var _arg:GoString = "";
	public var _out:GoString = "";

	public function new(?_f:GoString, ?_in:GoString, ?_arg:GoString, ?_out:GoString) {
		if (_f != null)
			this._f = _f;
		if (_in != null)
			this._in = _in;
		if (_arg != null)
			this._arg = _arg;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_12(_f, _in, _arg, _out);
	}
}

@:structInit @:local private class T__struct_13 {
	public var _name:GoString = "";
	public var _input:GoString = "";

	public function new(?_name:GoString, ?_input:GoString) {
		if (_name != null)
			this._name = _name;
		if (_input != null)
			this._input = _input;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_13(_name, _input);
	}
}

@:structInit @:local private class T__struct_14 {
	public var _f:stdgo.strings_test.Strings_test.T_predicate = ({} : stdgo.strings_test.Strings_test.T_predicate);
	public var _in:GoString = "";
	public var _trimOut:GoString = "";
	public var _leftOut:GoString = "";
	public var _rightOut:GoString = "";

	public function new(?_f:stdgo.strings_test.Strings_test.T_predicate, ?_in:GoString, ?_trimOut:GoString, ?_leftOut:GoString, ?_rightOut:GoString) {
		if (_f != null)
			this._f = _f;
		if (_in != null)
			this._in = _in;
		if (_trimOut != null)
			this._trimOut = _trimOut;
		if (_leftOut != null)
			this._leftOut = _leftOut;
		if (_rightOut != null)
			this._rightOut = _rightOut;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_14(_f, _in, _trimOut, _leftOut, _rightOut);
	}
}

@:structInit @:local private class T__struct_15 {
	public var _name:GoString = "";
	public var _trim:(GoString, GoInt32->Bool) -> GoString = null;
	public var _out:GoString = "";

	public function new(?_name:GoString, ?_trim:(GoString, GoInt32->Bool) -> GoString, ?_out:GoString) {
		if (_name != null)
			this._name = _name;
		if (_trim != null)
			this._trim = _trim;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_15(_name, _trim, _out);
	}
}

@:structInit @:local private class T__struct_16 {
	public var _in:GoString = "";
	public var _f:stdgo.strings_test.Strings_test.T_predicate = ({} : stdgo.strings_test.Strings_test.T_predicate);
	public var _first:GoInt = 0;
	public var _last:GoInt = 0;

	public function new(?_in:GoString, ?_f:stdgo.strings_test.Strings_test.T_predicate, ?_first:GoInt, ?_last:GoInt) {
		if (_in != null)
			this._in = _in;
		if (_f != null)
			this._f = _f;
		if (_first != null)
			this._first = _first;
		if (_last != null)
			this._last = _last;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_16(_in, _f, _first, _last);
	}
}

@:structInit @:local private class T__struct_17 {
	public var _in:GoString = "";
	public var _out:GoString = "";
	public var _count:GoInt = 0;

	public function new(?_in:GoString, ?_out:GoString, ?_count:GoInt) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_count != null)
			this._count = _count;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_17(_in, _out, _count);
	}
}

@:structInit @:local private class T__struct_18 {
	public var _s:GoString = "";
	public var _count:GoInt = 0;
	public var _errStr:GoString = "";

	public function new(?_s:GoString, ?_count:GoInt, ?_errStr:GoString) {
		if (_s != null)
			this._s = _s;
		if (_count != null)
			this._count = _count;
		if (_errStr != null)
			this._errStr = _errStr;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_18(_s, _count, _errStr);
	}
}

@:structInit @:local private class T__struct_19 {
	public var _in:GoString = "";
	public var _out:Slice<GoInt32> = (null : Slice<GoInt32>);
	public var _lossy:Bool = false;

	public function new(?_in:GoString, ?_out:Slice<GoInt32>, ?_lossy:Bool) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_lossy != null)
			this._lossy = _lossy;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_19(_in, _out, _lossy);
	}
}

@:structInit @:local private class T__struct_20 {
	public var _name:GoString = "";
	public var _f:Ref<Reader>->Void = null;

	public function new(?_name:GoString, ?_f:Ref<Reader>->Void) {
		if (_name != null)
			this._name = _name;
		if (_f != null)
			this._f = _f;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_20(_name, _f);
	}
}

@:structInit @:local private class T__struct_21 {
	public var _in:GoString = "";
	public var _old:GoString = "";
	public var _new:GoString = "";
	public var _n:GoInt = 0;
	public var _out:GoString = "";

	public function new(?_in:GoString, ?_old:GoString, ?_new:GoString, ?_n:GoInt, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_old != null)
			this._old = _old;
		if (_new != null)
			this._new = _new;
		if (_n != null)
			this._n = _n;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_21(_in, _old, _new, _n, _out);
	}
}

@:structInit @:local private class T__struct_22 {
	public var _str:GoString = "";
	public var _substr:GoString = "";
	public var _expected:Bool = false;

	public function new(?_str:GoString, ?_substr:GoString, ?_expected:Bool) {
		if (_str != null)
			this._str = _str;
		if (_substr != null)
			this._substr = _substr;
		if (_expected != null)
			this._expected = _expected;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_22(_str, _substr, _expected);
	}
}

@:structInit @:local private class T__struct_23 {
	public var _str:GoString = "";
	public var _r:GoInt32 = 0;
	public var _expected:Bool = false;

	public function new(?_str:GoString, ?_r:GoInt32, ?_expected:Bool) {
		if (_str != null)
			this._str = _str;
		if (_r != null)
			this._r = _r;
		if (_expected != null)
			this._expected = _expected;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_23(_str, _r, _expected);
	}
}

@:structInit @:local private class T__struct_24 {
	public var _s:GoString = "";
	public var _t:GoString = "";
	public var _out:Bool = false;

	public function new(?_s:GoString, ?_t:GoString, ?_out:Bool) {
		if (_s != null)
			this._s = _s;
		if (_t != null)
			this._t = _t;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_24(_s, _t, _out);
	}
}

@:structInit @:local private class T__struct_25 {
	public var _s:GoString = "";
	public var _sep:GoString = "";
	public var _num:GoInt = 0;

	public function new(?_s:GoString, ?_sep:GoString, ?_num:GoInt) {
		if (_s != null)
			this._s = _s;
		if (_sep != null)
			this._sep = _sep;
		if (_num != null)
			this._num = _num;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_25(_s, _sep, _num);
	}
}

@:structInit @:local private class T__struct_26 {
	public var _s:GoString = "";
	public var _sep:GoString = "";
	public var _before:GoString = "";
	public var _after:GoString = "";
	public var _found:Bool = false;

	public function new(?_s:GoString, ?_sep:GoString, ?_before:GoString, ?_after:GoString, ?_found:Bool) {
		if (_s != null)
			this._s = _s;
		if (_sep != null)
			this._sep = _sep;
		if (_before != null)
			this._before = _before;
		if (_after != null)
			this._after = _after;
		if (_found != null)
			this._found = _found;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_26(_s, _sep, _before, _after, _found);
	}
}

function _check(_t:Ref<stdgo.testing.Testing.T>, _b:Ref<Builder>, _want:GoString):Void {
	_t.helper();
	var _got:GoString = (_b.string() : GoString);
	if (_got != (_want)) {
		_t.errorf(Go.str("String: got %#q; want %#q"), Go.toInterface(_got), Go.toInterface(_want));
		return;
	};
	{
		var _n:GoInt = _b.len();
		if (_n != ((_got.length))) {
			_t.errorf(Go.str("Len: got %d; but len(String()) is %d"), Go.toInterface(_n), Go.toInterface((_got.length)));
		};
	};
	{
		var _n:GoInt = _b.cap();
		if (_n < (_got.length)) {
			_t.errorf(Go.str("Cap: got %d; but len(String()) is %d"), Go.toInterface(_n), Go.toInterface((_got.length)));
		};
	};
}

function testBuilder(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _b:Builder = ({} : Builder);
	_check(_t, (_b : Ref<Builder>), Go.str());
	var __tmp__ = _b.writeString(Go.str("hello")),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_err != null) || (_n != (5 : GoInt))) {
		_t.errorf(Go.str("WriteString: got %d,%s; want 5,nil"), Go.toInterface(_n), Go.toInterface(_err));
	};
	_check(_t, (_b : Ref<Builder>), Go.str("hello"));
	{
		_err = _b.writeByte((32 : GoUInt8));
		if (_err != null) {
			_t.errorf(Go.str("WriteByte: %s"), Go.toInterface(_err));
		};
	};
	_check(_t, (_b : Ref<Builder>), Go.str("hello "));
	{
		var __tmp__ = _b.writeString(Go.str("world"));
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	if ((_err != null) || (_n != (5 : GoInt))) {
		_t.errorf(Go.str("WriteString: got %d,%s; want 5,nil"), Go.toInterface(_n), Go.toInterface(_err));
	};
	_check(_t, (_b : Ref<Builder>), Go.str("hello world"));
}

function testBuilderString(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _b:Builder = ({} : Builder);
	_b.writeString(Go.str("alpha"));
	_check(_t, (_b : Ref<Builder>), Go.str("alpha"));
	var _s1:GoString = (_b.string() : GoString);
	_b.writeString(Go.str("beta"));
	_check(_t, (_b : Ref<Builder>), Go.str("alphabeta"));
	var _s2:GoString = (_b.string() : GoString);
	_b.writeString(Go.str("gamma"));
	_check(_t, (_b : Ref<Builder>), Go.str("alphabetagamma"));
	var _s3:GoString = (_b.string() : GoString);
	{
		var _want:GoString = Go.str("alpha");
		if (_s1 != (_want)) {
			_t.errorf(Go.str("first String result is now %q; want %q"), Go.toInterface(_s1), Go.toInterface(_want));
		};
	};
	{
		var _want:GoString = Go.str("alphabeta");
		if (_s2 != (_want)) {
			_t.errorf(Go.str("second String result is now %q; want %q"), Go.toInterface(_s2), Go.toInterface(_want));
		};
	};
	{
		var _want:GoString = Go.str("alphabetagamma");
		if (_s3 != (_want)) {
			_t.errorf(Go.str("third String result is now %q; want %q"), Go.toInterface(_s3), Go.toInterface(_want));
		};
	};
}

function testBuilderReset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _b:Builder = ({} : Builder);
	_check(_t, (_b : Ref<Builder>), Go.str());
	_b.writeString(Go.str("aaa"));
	var _s:GoString = (_b.string() : GoString);
	_check(_t, (_b : Ref<Builder>), Go.str("aaa"));
	_b.reset();
	_check(_t, (_b : Ref<Builder>), Go.str());
	_b.writeString(Go.str("bbb"));
	_check(_t, (_b : Ref<Builder>), Go.str("bbb"));
	{
		var _want:GoString = Go.str("aaa");
		if (_s != (_want)) {
			_t.errorf(Go.str("previous String result changed after Reset: got %q; want %q"), Go.toInterface(_s), Go.toInterface(_want));
		};
	};
}

function testBuilderGrow(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testBuilderGrow" + " skip function");
	return;
	for (_0 => _growLen in (new Slice<GoInt>(0, 0, (0 : GoInt), (100 : GoInt), (1000 : GoInt), (10000 : GoInt), (100000 : GoInt)) : Slice<GoInt>)) {
		var _p = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), _growLen);
		var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
			var _b:Builder = ({} : Builder);
			_b.grow(_growLen);
			if (_b.cap() < _growLen) {
				_t.fatalf(Go.str("growLen=%d: Cap() is lower than growLen"), Go.toInterface(_growLen));
			};
			_b.write(_p);
			if ((_b.string() : GoString) != ((_p : GoString))) {
				_t.fatalf(Go.str("growLen=%d: bad data written after Grow"), Go.toInterface(_growLen));
			};
		});
		var _wantAllocs:GoInt = (1 : GoInt);
		if (_growLen == ((0 : GoInt))) {
			_wantAllocs = (0 : GoInt);
		};
		{
			var _0:GoInt = (_allocs : GoInt),
				_1:GoInt = _wantAllocs,
				_w:GoInt = _1,
				_g:GoInt = _0;
			if (_g != (_w)) {
				_t.errorf(Go.str("growLen=%d: got %d allocs during Write; want %v"), Go.toInterface(_growLen), Go.toInterface(_g), Go.toInterface(_w));
			};
		};
	};
}

function testBuilderWrite2(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	for (_0 => _tt in (new Slice<T__struct_0>(0, 0, ({
		_name: Go.str("Write"),
		_fn: function(_b:Ref<Builder>):{var _0:GoInt; var _1:Error;} {
			return _b.write((Go.str("hello 世界") : Slice<GoByte>));
		},
		_n: (Go.str("hello 世界").length),
		_want: Go.str("hello 世界")
	} : T__struct_0), ({
		_name: Go.str("WriteRune"),
		_fn: function(_b:Ref<Builder>):{var _0:GoInt; var _1:Error;} {
			return _b.writeRune((97 : GoInt32));
		},
		_n: (1 : GoInt),
		_want: Go.str("a")
		} : T__struct_0), ({
		_name: Go.str("WriteRuneWide"),
		_fn: function(_b:Ref<Builder>):{var _0:GoInt; var _1:Error;} {
			return _b.writeRune((19990 : GoInt32));
		},
		_n: (3 : GoInt),
		_want: Go.str("世")
		} : T__struct_0), ({
		_name: Go.str("WriteString"),
		_fn: function(_b:Ref<Builder>):{var _0:GoInt; var _1:Error;} {
			return _b.writeString(Go.str("hello 世界"));
		},
		_n: (Go.str("hello 世界").length),
		_want: Go.str("hello 世界")
		} : T__struct_0)) : Slice<T__struct_0>)) {
		_t.run(_tt._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var _b:Builder = ({} : Builder);
			var __tmp__ = _tt._fn((_b : Ref<Builder>)),
				_n:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf(Go.str("first call: got %s"), Go.toInterface(_err));
			};
			if (_n != (_tt._n)) {
				_t.errorf(Go.str("first call: got n=%d; want %d"), Go.toInterface(_n), Go.toInterface(_tt._n));
			};
			_check(_t, (_b : Ref<Builder>), _tt._want);
			{
				var __tmp__ = _tt._fn((_b : Ref<Builder>));
				_n = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				_t.fatalf(Go.str("second call: got %s"), Go.toInterface(_err));
			};
			if (_n != (_tt._n)) {
				_t.errorf(Go.str("second call: got n=%d; want %d"), Go.toInterface(_n), Go.toInterface(_tt._n));
			};
			_check(_t, (_b : Ref<Builder>), _tt._want + _tt._want);
		});
	};
}

function testBuilderWriteByte(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _b:Builder = ({} : Builder);
	{
		var _err:Error = _b.writeByte((97 : GoUInt8));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	{
		var _err:Error = _b.writeByte((0 : GoUInt8));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	_check(_t, (_b : Ref<Builder>), Go.str("a", 0));
}

function testBuilderAllocs(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testBuilderAllocs" + " skip function");
	return;
	var _n:GoFloat64 = stdgo.testing.Testing.allocsPerRun((10000 : GoInt), function():Void {
		var _b:Builder = ({} : Builder);
		_b.grow((5 : GoInt));
		_b.writeString(Go.str("abcde"));
		(_b.string() : GoString);
	});
	if (_n != (1 : GoFloat64)) {
		_t.errorf(Go.str("Builder allocs = %v; want 1"), Go.toInterface(_n));
	};
}

function testBuilderCopyPanic(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testBuilderCopyPanic" + " skip function");
	return;
	var _tests = (new Slice<T__struct_1>(0, 0, ({
		_name: Go.str("String"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.writeByte((120 : GoUInt8));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			(_b.string() : GoString);
		},
		_wantPanic: false
	} : T__struct_1), ({
		_name: Go.str("Len"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.writeByte((120 : GoUInt8));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.len();
		},
		_wantPanic: false
		} : T__struct_1), ({
		_name: Go.str("Cap"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.writeByte((120 : GoUInt8));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.cap();
		},
		_wantPanic: false
		} : T__struct_1), ({
		_name: Go.str("Reset"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.writeByte((120 : GoUInt8));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.reset();
			_b.writeByte((121 : GoUInt8));
		},
		_wantPanic: false
		} : T__struct_1), ({
		_name: Go.str("Write"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.write((Go.str("x") : Slice<GoByte>));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.write((Go.str("y") : Slice<GoByte>));
		},
		_wantPanic: true
		} : T__struct_1), ({
		_name: Go.str("WriteByte"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.writeByte((120 : GoUInt8));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.writeByte((121 : GoUInt8));
		},
		_wantPanic: true
		} : T__struct_1), ({
		_name: Go.str("WriteString"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.writeString(Go.str("x"));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.writeString(Go.str("y"));
		},
		_wantPanic: true
		} : T__struct_1), ({
		_name: Go.str("WriteRune"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.writeRune((120 : GoInt32));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.writeRune((121 : GoInt32));
		},
		_wantPanic: true
		} : T__struct_1), ({
		_name: Go.str("Grow"),
		_fn: function():Void {
			var _a:Builder = ({} : Builder);
			_a.grow((1 : GoInt));
			var _b:Builder = (_a == null ? null : _a.__copy__());
			_b.grow((2 : GoInt));
		},
		_wantPanic: true
		} : T__struct_1)) : Slice<T__struct_1>);
	for (_0 => _tt in _tests) {
		var _didPanic = new Chan<Bool>(0, () -> false);
		Go.routine(() -> {
			var a = function():Void {
				var __deferstack__:Array<Void->Void> = [];
				__deferstack__.unshift(() -> {
					var a = function():Void {
						_didPanic.__send__(({
							final r = Go.recover_exception;
							Go.recover_exception = null;
							r;
						}) != null);
					};
					a();
				});
				try {
					_tt._fn();
					for (defer in __deferstack__) {
						defer();
					};
					{
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				} catch (__exception__) {
					if (!(__exception__.native is AnyInterfaceData))
						throw __exception__;
					Go.recover_exception = __exception__.native;
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			};
			a();
		});
		{
			var _got:Bool = _didPanic.__get__();
			if (_got != (_tt._wantPanic)) {
				_t.errorf(Go.str("%s: panicked = %v; want %v"), Go.toInterface(_tt._name), Go.toInterface(_got), Go.toInterface(_tt._wantPanic));
			};
		};
	};
}

function testBuilderWriteInvalidRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _r in (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32)) : Slice<GoInt32>)) {
		var _b:Builder = ({} : Builder);
		_b.writeRune(_r);
		_check(_t, (_b : Ref<Builder>), Go.str("�"));
	};
}

function _benchmarkBuilder(_b:Ref<stdgo.testing.Testing.B>, _f:(_b:Ref<stdgo.testing.Testing.B>, _numWrite:GoInt, _grow:Bool) -> Void):Void {
	_b.run(Go.str("1Write_NoGrow"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		_b.reportAllocs();
		_f(_b, (1 : GoInt), false);
	});
	_b.run(Go.str("3Write_NoGrow"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		_b.reportAllocs();
		_f(_b, (3 : GoInt), false);
	});
	_b.run(Go.str("3Write_Grow"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		_b.reportAllocs();
		_f(_b, (3 : GoInt), true);
	});
}

function benchmarkBuildString_Builder(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkBuilder(_b, function(_b:Ref<stdgo.testing.Testing.B>, _numWrite:GoInt, _grow:Bool):Void {
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				var _buf:Builder = ({} : Builder);
				if (_grow) {
					_buf.grow((_someBytes.length) * _numWrite);
				};
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < _numWrite, _i++, {
						_buf.write(_someBytes);
					});
				};
				_sinkS = (_buf.string() : GoString);
			});
		};
	});
}

function benchmarkBuildString_ByteBuffer(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkBuilder(_b, function(_b:Ref<stdgo.testing.Testing.B>, _numWrite:GoInt, _grow:Bool):Void {
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
				if (_grow) {
					_buf.grow((_someBytes.length) * _numWrite);
				};
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < _numWrite, _i++, {
						_buf.write(_someBytes);
					});
				};
				_sinkS = (_buf.string() : GoString);
			});
		};
	});
}

function testClone(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testClone" + " skip function");
	return;
	var _cloneTests:Slice<GoString> = (new Slice<GoString>(0, 0, Go.str(), stdgo.strings.Strings.clone(Go.str()),
		(stdgo.strings.Strings.repeat(Go.str("a"), (42 : GoInt)).__slice__(0, (0 : GoInt)) : GoString), Go.str("short"),
		stdgo.strings.Strings.repeat(Go.str("a"), (42 : GoInt))) : Slice<GoString>);
	for (_0 => _input in _cloneTests) {
		var _clone:GoString = stdgo.strings.Strings.clone(_input);
		if (_clone != (_input)) {
			_t.errorf(Go.str("Clone(%q) = %q; want %q"), Go.toInterface(_input), Go.toInterface(_clone), Go.toInterface(_input));
		};
		var _inputHeader = ((Go.toInterface(Go.pointer(_input)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
				stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
				optional: false
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(int_kind),
				optional: false
			}
		])))) : Ref<stdgo.reflect.Reflect.StringHeader>);
		var _cloneHeader = ((Go.toInterface(Go.pointer(_clone)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
				stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
				optional: false
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(int_kind),
				optional: false
			}
		])))) : Ref<stdgo.reflect.Reflect.StringHeader>);
		if ((_input.length != (0 : GoInt)) && (_cloneHeader.data == _inputHeader.data)) {
			_t.errorf(Go.str("Clone(%q) return value should not reference inputs backing memory."), Go.toInterface(_input));
		};
		var _emptyHeader = ((Go.toInterface(Go.pointer(_emptyString)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
				stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
				optional: false
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(int_kind),
				optional: false
			}
		])))) : Ref<stdgo.reflect.Reflect.StringHeader>);
		if ((_input.length == (0 : GoInt)) && (_cloneHeader.data != _emptyHeader.data)) {
			_t.errorf(Go.str("Clone(%#v) return value should be equal to empty string."), Go.toInterface(_inputHeader));
		};
	};
}

function benchmarkClone(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = stdgo.strings.Strings.repeat(Go.str("a"), (42 : GoInt));
	_b.reportAllocs();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_stringSink = stdgo.strings.Strings.clone(_str);
		});
	};
}

function testCompare(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _compareTests) {
		var _cmp:GoInt = compare(_tt._a, _tt._b);
		if (_cmp != (_tt._i)) {
			_t.errorf(Go.str("Compare(%q, %q) = %v"), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_cmp));
		};
	};
}

function testCompareIdenticalString(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _s:GoString = Go.str("Hello Gophers!");
	if (compare(_s, _s) != ((0 : GoInt))) {
		_t.error(Go.toInterface(Go.str("s != s")));
	};
	if (compare(_s, (_s.__slice__(0, (1 : GoInt)) : GoString)) != ((1 : GoInt))) {
		_t.error(Go.toInterface(Go.str("s > s[:1] failed")));
	};
}

function testCompareStrings(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testCompareStrings" + " skip function");
	return;
	var _unsafeString = function(_b:Slice<GoByte>):GoString {
		return ((Go.toInterface((_b : Ref<Slice<GoUInt8>>)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(string_kind))) : Pointer<GoString>)
			.value;
	};
	var _lengths = new Slice<GoInt>((0 : GoInt).toBasic(), 0, ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoInt)]);
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
	var _n:GoInt = _lengths[(_lengths.length) - (1 : GoInt)];
	var _a = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0...(_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
	var _b = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0...(_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
	var _lastLen:GoInt = (0 : GoInt);
	for (_0 => _len in _lengths) {
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _len, _i++, {
				_a[_i] = ((1 : GoInt) + (((31 : GoInt) * _i) % (254 : GoInt)) : GoByte);
				_b[_i] = ((1 : GoInt) + (((31 : GoInt) * _i) % (254 : GoInt)) : GoByte);
			});
		};
		{
			var _i:GoInt = _len;
			Go.cfor(_i <= _n, _i++, {
				_a[_i] = (8 : GoUInt8);
				_b[_i] = (9 : GoUInt8);
			});
		};
		var _0:GoString = _unsafeString(_a),
			_1:GoString = _unsafeString(_b),
			_sb:GoString = _1,
			_sa:GoString = _0;
		var _cmp:GoInt = compare((_sa.__slice__(0, _len) : GoString), (_sb.__slice__(0, _len) : GoString));
		if (_cmp != ((0 : GoInt))) {
			_t.errorf(Go.str("CompareIdentical(%d) = %d"), Go.toInterface(_len), Go.toInterface(_cmp));
		};
		if (_len > (0 : GoInt)) {
			_cmp = compare((_sa.__slice__(0, _len - (1 : GoInt)) : GoString), (_sb.__slice__(0, _len) : GoString));
			if (_cmp != ((-1 : GoInt))) {
				_t.errorf(Go.str("CompareAshorter(%d) = %d"), Go.toInterface(_len), Go.toInterface(_cmp));
			};
			_cmp = compare((_sa.__slice__(0, _len) : GoString), (_sb.__slice__(0, _len - (1 : GoInt)) : GoString));
			if (_cmp != ((1 : GoInt))) {
				_t.errorf(Go.str("CompareBshorter(%d) = %d"), Go.toInterface(_len), Go.toInterface(_cmp));
			};
		};
		{
			var _k:GoInt = _lastLen;
			Go.cfor(_k < _len, _k++, {
				_b[_k] = _a[_k] - (1 : GoUInt8);
				_cmp = compare(_unsafeString((_a.__slice__(0, _len) : Slice<GoUInt8>)), _unsafeString((_b.__slice__(0, _len) : Slice<GoUInt8>)));
				if (_cmp != ((1 : GoInt))) {
					_t.errorf(Go.str("CompareAbigger(%d,%d) = %d"), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
				};
				_b[_k] = _a[_k] + (1 : GoUInt8);
				_cmp = compare(_unsafeString((_a.__slice__(0, _len) : Slice<GoUInt8>)), _unsafeString((_b.__slice__(0, _len) : Slice<GoUInt8>)));
				if (_cmp != ((-1 : GoInt))) {
					_t.errorf(Go.str("CompareBbigger(%d,%d) = %d"), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
				};
				_b[_k] = _a[_k];
			});
		};
		_lastLen = _len;
	};
}

function exampleBuilder():Void {
	var _b:Builder = ({} : Builder);
	{
		var _i:GoInt = (3 : GoInt);
		Go.cfor(_i >= (1 : GoInt), _i--, {
			stdgo.fmt.Fmt.fprintf(Go.asInterface((_b : Ref<Builder>)), Go.str("%d..."), Go.toInterface(_i));
		});
	};
	_b.writeString(Go.str("ignition"));
	stdgo.fmt.Fmt.println((_b.string() : GoString));
}

function exampleCompare():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare(Go.str("a"), Go.str("b")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare(Go.str("a"), Go.str("a")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare(Go.str("b"), Go.str("a")));
}

function exampleContains():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(Go.str("seafood"), Go.str("foo")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(Go.str("seafood"), Go.str("bar")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(Go.str("seafood"), Go.str()));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains(Go.str(), Go.str()));
}

function exampleContainsAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(Go.str("team"), Go.str("i")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(Go.str("fail"), Go.str("ui")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(Go.str("ure"), Go.str("ui")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(Go.str("failure"), Go.str("ui")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(Go.str("foo"), Go.str()));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny(Go.str(), Go.str()));
}

function exampleContainsRune():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune(Go.str("aardvark"), (97 : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune(Go.str("timeout"), (97 : GoInt32)));
}

function exampleCount():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.count(Go.str("cheese"), Go.str("e")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.count(Go.str("five"), Go.str()));
}

function exampleCut():Void {
	var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
		var __tmp__ = stdgo.strings.Strings.cut(_s, _sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
		stdgo.fmt.Fmt.printf(Go.str("Cut(%q, %q) = %q, %q, %v\n"), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after),
			Go.toInterface(_found));
	};
	_show(Go.str("Gopher"), Go.str("Go"));
	_show(Go.str("Gopher"), Go.str("ph"));
	_show(Go.str("Gopher"), Go.str("er"));
	_show(Go.str("Gopher"), Go.str("Badger"));
}

function exampleEqualFold():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold(Go.str("Go"), Go.str("go")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold(Go.str("AB"), Go.str("ab")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold(Go.str("ß"), Go.str("ss")));
}

function exampleFields():Void {
	stdgo.fmt.Fmt.printf(Go.str("Fields are: %q"), Go.toInterface(stdgo.strings.Strings.fields(Go.str("  foo bar  baz   "))));
}

function exampleFieldsFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
	};
	stdgo.fmt.Fmt.printf(Go.str("Fields are: %q"), Go.toInterface(stdgo.strings.Strings.fieldsFunc(Go.str("  foo1;bar2,baz3..."), _f)));
}

function exampleHasPrefix():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix(Go.str("Gopher"), Go.str("Go")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix(Go.str("Gopher"), Go.str("C")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix(Go.str("Gopher"), Go.str()));
}

function exampleHasSuffix():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(Go.str("Amigo"), Go.str("go")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(Go.str("Amigo"), Go.str("O")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(Go.str("Amigo"), Go.str("Ami")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix(Go.str("Amigo"), Go.str()));
}

function exampleIndex():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index(Go.str("chicken"), Go.str("ken")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index(Go.str("chicken"), Go.str("dmr")));
}

function exampleIndexFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
	};
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc(Go.str("Hello, 世界"), _f));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc(Go.str("Hello, world"), _f));
}

function exampleIndexAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny(Go.str("chicken"), Go.str("aeiouy")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny(Go.str("crwth"), Go.str("aeiouy")));
}

function exampleIndexByte():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte(Go.str("golang"), (103 : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte(Go.str("gophers"), (104 : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte(Go.str("golang"), (120 : GoUInt8)));
}

function exampleIndexRune():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune(Go.str("chicken"), (107 : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune(Go.str("chicken"), (100 : GoInt32)));
}

function exampleLastIndex():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index(Go.str("go gopher"), Go.str("go")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex(Go.str("go gopher"), Go.str("go")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex(Go.str("go gopher"), Go.str("rodent")));
}

function exampleLastIndexAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny(Go.str("go gopher"), Go.str("go")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny(Go.str("go gopher"), Go.str("rodent")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny(Go.str("go gopher"), Go.str("fail")));
}

function exampleLastIndexByte():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte(Go.str("Hello, world"), (108 : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte(Go.str("Hello, world"), (111 : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte(Go.str("Hello, world"), (120 : GoUInt8)));
}

function exampleLastIndexFunc():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc(Go.str("go 123"), stdgo.unicode.Unicode.isNumber));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc(Go.str("123 go"), stdgo.unicode.Unicode.isNumber));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc(Go.str("go"), stdgo.unicode.Unicode.isNumber));
}

function exampleJoin():Void {
	var _s = (new Slice<GoString>(0, 0, Go.str("foo"), Go.str("bar"), Go.str("baz")) : Slice<GoString>);
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.join(_s, Go.str(", ")));
}

function exampleRepeat():Void {
	stdgo.fmt.Fmt.println(Go.str("ba") + stdgo.strings.Strings.repeat(Go.str("na"), (2 : GoInt)));
}

function exampleReplace():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace(Go.str("oink oink oink"), Go.str("k"), Go.str("ky"), (2 : GoInt)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace(Go.str("oink oink oink"), Go.str("oink"), Go.str("moo"), (-1 : GoInt)));
}

function exampleReplaceAll():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replaceAll(Go.str("oink oink oink"), Go.str("oink"), Go.str("moo")));
}

function exampleSplit():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.strings.Strings.split(Go.str("a,b,c"), Go.str(","))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.strings.Strings.split(Go.str("a man a plan a canal panama"), Go.str("a "))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.strings.Strings.split(Go.str(" xyz "), Go.str())));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.strings.Strings.split(Go.str(), Go.str("Bernardo O\'Higgins"))));
}

function exampleSplitN():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.strings.Strings.splitN(Go.str("a,b,c"), Go.str(","), (2 : GoInt))));
	var _z = stdgo.strings.Strings.splitN(Go.str("a,b,c"), Go.str(","), (0 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%q (nil = %v)\n"), Go.toInterface(_z), Go.toInterface(_z == null));
}

function exampleSplitAfter():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.strings.Strings.splitAfter(Go.str("a,b,c"), Go.str(","))));
}

function exampleSplitAfterN():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.strings.Strings.splitAfterN(Go.str("a,b,c"), Go.str(","), (2 : GoInt))));
}

function exampleTitle():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title(Go.str("her royal highness")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title(Go.str("loud noises")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title(Go.str("хлеб")));
}

function exampleToTitle():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle(Go.str("her royal highness")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle(Go.str("loud noises")));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle(Go.str("хлеб")));
}

function exampleToTitleSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase, Go.str("dünyanın ilk borsa yapısı Aizonai kabul edilir")));
}

function exampleMap():Void {
	var _rot13:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if ((_r >= (65 : GoInt32)) && (_r <= (90 : GoInt32))) {
			return (65 : GoInt32) + (((_r - (65 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
		} else if ((_r >= (97 : GoInt32)) && (_r <= (122 : GoInt32))) {
			return (97 : GoInt32) + (((_r - (97 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
		};
		return _r;
	};
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.map(_rot13, Go.str("\'Twas brillig and the slithy gopher...")));
}

function exampleNewReplacer():Void {
	var _r = stdgo.strings.Strings.newReplacer(Go.str("<"), Go.str("&lt;"), Go.str(">"), Go.str("&gt;"));
	stdgo.fmt.Fmt.println(_r.replace(Go.str("This is <b>HTML</b>!")));
}

function exampleToUpper():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpper(Go.str("Gopher")));
}

function exampleToUpperSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, Go.str("örnek iş")));
}

function exampleToLower():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLower(Go.str("Gopher")));
}

function exampleToLowerSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, Go.str("Önnek İş")));
}

function exampleTrim():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trim(Go.str("¡¡¡Hello, Gophers!!!"), Go.str("!¡")));
}

function exampleTrimSpace():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.trimSpace(Go.str(" \t\n Hello, Gophers \n\t\r\n")));
}

function exampleTrimPrefix():Void {
	var _s:GoString = Go.str("¡¡¡Hello, Gophers!!!");
	_s = stdgo.strings.Strings.trimPrefix(_s, Go.str("¡¡¡Hello, "));
	_s = stdgo.strings.Strings.trimPrefix(_s, Go.str("¡¡¡Howdy, "));
	stdgo.fmt.Fmt.print(_s);
}

function exampleTrimSuffix():Void {
	var _s:GoString = Go.str("¡¡¡Hello, Gophers!!!");
	_s = stdgo.strings.Strings.trimSuffix(_s, Go.str(", Gophers!!!"));
	_s = stdgo.strings.Strings.trimSuffix(_s, Go.str(", Marmots!!!"));
	stdgo.fmt.Fmt.print(_s);
}

function exampleTrimFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimFunc(Go.str("¡¡¡Hello, Gophers!!!"), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}

function exampleTrimLeft():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeft(Go.str("¡¡¡Hello, Gophers!!!"), Go.str("!¡")));
}

function exampleTrimLeftFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeftFunc(Go.str("¡¡¡Hello, Gophers!!!"), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}

function exampleTrimRight():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRight(Go.str("¡¡¡Hello, Gophers!!!"), Go.str("!¡")));
}

function exampleTrimRightFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRightFunc(Go.str("¡¡¡Hello, Gophers!!!"), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}

function testReader(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = stdgo.strings.Strings.newReader(Go.str("0123456789"));
	var _tests = (new Slice<T__struct_3>(0, 0, ({
		_off: ("0" : GoInt64),
		_seek: (0 : GoInt),
		_n: (20 : GoInt),
		_want: Go.str("0123456789")
	} : T__struct_3), ({
		_off: ("1" : GoInt64),
		_seek: (0 : GoInt),
		_n: (1 : GoInt),
		_want: Go.str("1")
		} : T__struct_3), ({
		_off: ("1" : GoInt64),
		_seek: (1 : GoInt),
		_n: (2 : GoInt),
		_want: Go.str("34"),
		_wantpos: ("3" : GoInt64)
		} : T__struct_3),
		({_off: ("-1" : GoInt64), _seek: (0 : GoInt), _seekerr: Go.str("strings.Reader.Seek: negative position")} : T__struct_3), ({
			_off: ("8589934592" : GoInt64),
			_seek: (0 : GoInt),
			_wantpos: ("8589934592" : GoInt64),
			_readerr: stdgo.io.Io.eof
		} : T__struct_3), ({
			_off: ("1" : GoInt64),
			_seek: (1 : GoInt),
			_wantpos: ("8589934593" : GoInt64),
			_readerr: stdgo.io.Io.eof
		} : T__struct_3),
		({_seek: (0 : GoInt), _n: (5 : GoInt), _want: Go.str("01234")} : T__struct_3),
		({_seek: (1 : GoInt), _n: (5 : GoInt), _want: Go.str("56789")} : T__struct_3), ({
			_off: ("-1" : GoInt64),
			_seek: (2 : GoInt),
			_n: (1 : GoInt),
			_want: Go.str("9"),
			_wantpos: ("9" : GoInt64)
		} : T__struct_3)) : Slice<T__struct_3>);
	for (_i => _tt in _tests) {
		var __tmp__ = _r.seek(_tt._off, _tt._seek),
			_pos:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_err == null) && (_tt._seekerr != Go.str())) {
			_t.errorf(Go.str("%d. want seek error %q"), Go.toInterface(_i), Go.toInterface(_tt._seekerr));
			continue;
		};
		if ((_err != null) && (_err.error() != _tt._seekerr)) {
			_t.errorf(Go.str("%d. seek error = %q; want %q"), Go.toInterface(_i), Go.toInterface(_err.error()), Go.toInterface(_tt._seekerr));
			continue;
		};
		if ((_tt._wantpos != ("0" : GoInt64)) && (_tt._wantpos != _pos)) {
			_t.errorf(Go.str("%d. pos = %d, want %d"), Go.toInterface(_i), Go.toInterface(_pos), Go.toInterface(_tt._wantpos));
		};
		var _buf = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _r.read(_buf),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(_tt._readerr))) {
			_t.errorf(Go.str("%d. read = %v; want %v"), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._readerr));
			continue;
		};
		var _got:GoString = ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString);
		if (_got != (_tt._want)) {
			_t.errorf(Go.str("%d. got %q; want %q"), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
		};
	};
}

function testReadAfterBigSeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = stdgo.strings.Strings.newReader(Go.str("0123456789"));
	{
		var __tmp__ = _r.seek(("2147483653" : GoInt64), (0 : GoInt)),
			_0:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _r.read(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoUInt8)])),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.errorf(Go.str("Read = %d, %v; want 0, EOF"), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

function testReaderAt(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = stdgo.strings.Strings.newReader(Go.str("0123456789"));
	var _tests = (new Slice<T__struct_4>(0, 0, ({
		_off: ("0" : GoInt64),
		_n: (10 : GoInt),
		_want: Go.str("0123456789"),
		_wanterr: (null : AnyInterface)
	} : T__struct_4), ({
		_off: ("1" : GoInt64),
		_n: (10 : GoInt),
		_want: Go.str("123456789"),
		_wanterr: Go.toInterface(stdgo.io.Io.eof)
		} : T__struct_4), ({
		_off: ("1" : GoInt64),
		_n: (9 : GoInt),
		_want: Go.str("123456789"),
		_wanterr: (null : AnyInterface)
		} : T__struct_4), ({
		_off: ("11" : GoInt64),
		_n: (10 : GoInt),
		_want: Go.str(),
		_wanterr: Go.toInterface(stdgo.io.Io.eof)
		} : T__struct_4), ({
		_off: ("0" : GoInt64),
		_n: (0 : GoInt),
		_want: Go.str(),
		_wanterr: (null : AnyInterface)
		} : T__struct_4), ({
		_off: ("-1" : GoInt64),
		_n: (0 : GoInt),
		_want: Go.str(),
		_wanterr: Go.toInterface(Go.str("strings.Reader.ReadAt: negative offset"))
		} : T__struct_4)) : Slice<T__struct_4>);
	for (_i => _tt in _tests) {
		var _b = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _r.readAt(_b, _tt._off),
			_rn:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		var _got:GoString = ((_b.__slice__(0, _rn) : Slice<GoUInt8>) : GoString);
		if (_got != (_tt._want)) {
			_t.errorf(Go.str("%d. got %q; want %q"), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
		};
		if (stdgo.fmt.Fmt.sprintf(Go.str("%v"), Go.toInterface(_err)) != (stdgo.fmt.Fmt.sprintf(Go.str("%v"), _tt._wanterr))) {
			_t.errorf(Go.str("%d. got error = %v; want %v"), Go.toInterface(_i), Go.toInterface(_err), _tt._wanterr);
		};
	};
}

function testReaderAtConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = stdgo.strings.Strings.newReader(Go.str("0123456789"));
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (5:GoInt), _i++, {
			_wg.add((1 : GoInt));
			Go.routine(() -> {
				var a = function(_i:GoInt):Void {
					var __deferstack__:Array<Void->Void> = [];
					__deferstack__.unshift(() -> _wg.done());
					try {
						var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1) (0 : GoUInt8)]);
						_r.readAt((_buf.__slice__(0) : Slice<GoUInt8>), (_i : GoInt64));
						for (defer in __deferstack__) {
							defer();
						};
						{
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						Go.recover_exception = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
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
	var _r = stdgo.strings.Strings.newReader(Go.str());
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (5:GoInt), _i++, {
			_wg.add((2 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					var __deferstack__:Array<Void->Void> = [];
					__deferstack__.unshift(() -> _wg.done());
					try {
						var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1) (0 : GoUInt8)]);
						_r.read((_buf.__slice__(0) : Slice<GoUInt8>));
						for (defer in __deferstack__) {
							defer();
						};
						{
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						Go.recover_exception = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				};
				a();
			});
			Go.routine(() -> {
				var a = function():Void {
					var __deferstack__:Array<Void->Void> = [];
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
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						Go.recover_exception = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				};
				a();
			});
		});
	};
	_wg.wait_();
}

function testWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i <= (Go.str("0123456789").length), _i++, {
			var _s:GoString = (Go.str("0123456789").__slice__(_i) : GoString);
			var _r = stdgo.strings.Strings.newReader(_s);
			var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
			var __tmp__ = _r.writeTo(Go.asInterface((_b : Ref<stdgo.bytes.Bytes.Buffer>))),
				_n:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			{
				var _expect:GoInt64 = (_s.length : GoInt64);
				if (_n != (_expect)) {
					_t.errorf(Go.str("got %v; want %v"), Go.toInterface(_n), Go.toInterface(_expect));
				};
			};
			if (_err != null) {
				_t.errorf(Go.str("for length %d: got error = %v; want nil"), Go.toInterface((_s.length)), Go.toInterface(_err));
			};
			if ((_b.string() : GoString) != (_s)) {
				_t.errorf(Go.str("got string %q; want %q"), Go.toInterface((_b.string() : GoString)), Go.toInterface(_s));
			};
			if (_r.len() != ((0 : GoInt))) {
				_t.errorf(Go.str("reader contains %v bytes; want 0"), Go.toInterface(_r.len()));
			};
		});
	};
}

/**
	// tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testReaderLenSize" + " skip function");
	return;
	var _r = stdgo.strings.Strings.newReader(Go.str("abc"));
	stdgo.io.Io.copyN(stdgo.io.Io.discard, Go.asInterface(_r), ("1" : GoInt64));
	if (_r.len() != ((2 : GoInt))) {
		_t.errorf(Go.str("Len = %d; want 2"), Go.toInterface(_r.len()));
	};
	if (_r.size() != (("3" : GoInt64))) {
		_t.errorf(Go.str("Size = %d; want 3"), Go.toInterface(_r.size()));
	};
}

function testReaderReset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = stdgo.strings.Strings.newReader(Go.str("世界"));
	{
		var __tmp__ = _r.readRune(),
			_0:GoInt32 = __tmp__._0,
			_1:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		if (_err != null) {
			_t.errorf(Go.str("ReadRune: unexpected error: %v"), Go.toInterface(_err));
		};
	};
	{};
	_r.reset(Go.str("abcdef"));
	{
		var _err:Error = _r.unreadRune();
		if (_err == null) {
			_t.errorf(Go.str("UnreadRune: expected error, got nil"));
		};
	};
	var __tmp__ = stdgo.io.Io.readAll(Go.asInterface(_r)),
		_buf:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.errorf(Go.str("ReadAll: unexpected error: %v"), Go.toInterface(_err));
	};
	{
		var _got:GoString = (_buf : GoString);
		if (_got != (Go.str("abcdef"))) {
			_t.errorf(Go.str("ReadAll: got %q, want %q"), Go.toInterface(_got), Go.toInterface(Go.str("abcdef")));
		};
	};
}

function testReaderZero(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _l:GoInt = (((new Reader() : Reader) : Ref<Reader>)).len();
		if (_l != ((0 : GoInt))) {
			_t.errorf(Go.str("Len: got %d, want 0"), Go.toInterface(_l));
		};
	};
	{
		var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).read((null : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.errorf(Go.str("Read: got %d, %v; want 0, io.EOF"), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).readAt((null : Slice<GoUInt8>), ("11" : GoInt64)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.errorf(Go.str("ReadAt: got %d, %v; want 0, io.EOF"), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).readByte(),
			_b:GoUInt8 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_b != (0 : GoUInt8)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.errorf(Go.str("ReadByte: got %d, %v; want 0, io.EOF"), Go.toInterface(_b), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).readRune(),
			_ch:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		if (((_ch != (0 : GoInt32)) || (_size != (0 : GoInt))) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.errorf(Go.str("ReadRune: got %d, %d, %v; want 0, 0, io.EOF"), Go.toInterface(_ch), Go.toInterface(_size), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).seek(("11" : GoInt64), (0 : GoInt)),
			_offset:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_offset != ("11" : GoInt64)) || (_err != null)) {
			_t.errorf(Go.str("Seek: got %d, %v; want 11, nil"), Go.toInterface(_offset), Go.toInterface(_err));
		};
	};
	{
		var _s:GoInt64 = (((new Reader() : Reader) : Ref<Reader>)).size();
		if (_s != (("0" : GoInt64))) {
			_t.errorf(Go.str("Size: got %d, want 0"), Go.toInterface(_s));
		};
	};
	if ((((new Reader() : Reader) : Ref<Reader>)).unreadByte() == null) {
		_t.errorf(Go.str("UnreadByte: got nil, want error"));
	};
	if ((((new Reader() : Reader) : Ref<Reader>)).unreadRune() == null) {
		_t.errorf(Go.str("UnreadRune: got nil, want error"));
	};
	{
		var __tmp__ = (((new Reader() : Reader) : Ref<Reader>)).writeTo(stdgo.io.Io.discard),
			_n:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n != ("0" : GoInt64)) || (_err != null)) {
			_t.errorf(Go.str("WriteTo: got %d, %v; want 0, nil"), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

/**
	// The http package's old HTML escaping function.
**/
function _oldHTMLEscape(_s:GoString):GoString {
	_s = replace(_s, Go.str("&"), Go.str("&amp;"), (-1 : GoInt));
	_s = replace(_s, Go.str("<"), Go.str("&lt;"), (-1 : GoInt));
	_s = replace(_s, Go.str(">"), Go.str("&gt;"), (-1 : GoInt));
	_s = replace(_s, Go.str("\""), Go.str("&quot;"), (-1 : GoInt));
	_s = replace(_s, Go.str("\'"), Go.str("&apos;"), (-1 : GoInt));
	return _s;
}

@:structInit private class T_testCase_testReplacer_0 {
	public var _r:Ref<Replacer> = (null : Ref<Replacer>);
	public var _in:GoString = "";
	public var _out:GoString = "";

	public function new(?_r:Ref<Replacer>, ?_in:GoString, ?_out:GoString) {
		if (_r != null)
			this._r = _r;
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_testCase_testReplacer_0(_r, _in, _out);
	}
}

/**
	// TestReplacer tests the replacer implementations.
**/
function testReplacer(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testReplacer" + " skip function");
	return;
	{};
	var _testCases:Slice<T_testCase_testReplacer_0> = (null : Slice<stdgo.strings_test.Strings_test.T_testCase_testReplacer_0>);
	var _str:GoUInt8->GoString = function(_b:GoByte):GoString {
		return ((new Slice<GoUInt8>(0, 0, _b) : Slice<GoUInt8>) : GoString);
	};
	var _s:Slice<GoString> = (null : Slice<GoString>);
	_s = (null : Slice<GoString>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (256:GoInt), _i++, {
			_s = _s.__appendref__(_str((_i : GoByte)), _str((_i + (1 : GoInt) : GoByte)));
		});
	};
	var _inc = newReplacer(..._s.__toArray__());
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, Go.str("brad"),
		Go.str("BrAd")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, repeat(Go.str("a"), (32891 : GoInt)),
			repeat(Go.str("A"), (32891 : GoInt))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, Go.str("brad"),
			Go.str("csbe")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, Go.str(0, 255),
			Go.str(1, 0)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, Go.str(), Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(Go.str("a"), Go.str("1"), Go.str("a"), Go.str("2")), Go.str("brad"),
			Go.str("br1d")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	_s = (null : Slice<GoString>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (256:GoInt), _i++, {
			var _n:GoInt = (_i + (1 : GoInt)) - (97 : GoInt);
			if (_n < (1:GoInt)) {
				_n = (1 : GoInt);
			};
			_s = _s.__appendref__(_str((_i : GoByte)), repeat(_str((_i : GoByte)), _n));
		});
	};
	var _repeat = newReplacer(..._s.__toArray__());
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, Go.str("No changes"),
		Go.str("No changes")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, Go.str("I <3 escaping & stuff"),
			Go.str("I &lt;3 escaping &amp; stuff")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, Go.str("&&&"),
			Go.str("&amp;&amp;&amp;")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, Go.str("brad"),
			Go.str("bbrrrrrrrrrrrrrrrrrradddd")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, Go.str("abba"),
			Go.str("abbbba")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(Go.str("a"), Go.str("11"), Go.str("a"), Go.str("22")), Go.str("brad"),
			Go.str("br11d")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, Go.str("&amp;amp;"),
		Go.str("&amp;")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, Go.str("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;"),
			Go.str("<b>HTML\'s neat</b>")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(Go.str("a"), Go.str("1"), Go.str("a"), Go.str("2"), Go.str("xxx"),
			Go.str("xxx")), Go.str("brad"),
			Go.str("br1d")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(Go.str("a"), Go.str("1"), Go.str("aa"), Go.str("2"), Go.str("aaa"),
			Go.str("3")), Go.str("aaaa"),
			Go.str("1111")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer(Go.str("aaa"), Go.str("3"), Go.str("aa"), Go.str("2"), Go.str("a"),
			Go.str("1")), Go.str("aaaa"),
			Go.str("31")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _gen1 = newReplacer(Go.str("aaa"), Go.str("3[aaa]"), Go.str("aa"), Go.str("2[aa]"), Go.str("a"), Go.str("1[a]"), Go.str("i"), Go.str("i"),
		Go.str("longerst"), Go.str("most long"), Go.str("longer"), Go.str("medium"), Go.str("long"), Go.str("short"), Go.str("xx"), Go.str("xx"), Go.str("x"),
		Go.str("X"), Go.str("X"), Go.str("Y"), Go.str("Y"), Go.str("Z"));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, Go.str("fooaaabar"),
		Go.str("foo3[aaa]b1[a]r")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, Go.str("long, longerst, longer"),
			Go.str("short, most long, medium")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, Go.str("xxxxx"),
			Go.str("xxxxX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, Go.str("XiX"),
			Go.str("YiY")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _gen2 = newReplacer(Go.str("roses"), Go.str("red"), Go.str("violets"), Go.str("blue"), Go.str("sugar"), Go.str("sweet"));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2, Go.str("roses are red, violets are blue..."),
		Go.str("red are red, blue are blue...")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _gen3 = newReplacer(Go.str("abracadabra"), Go.str("poof"), Go.str("abracadabrakazam"), Go.str("splat"), Go.str("abraham"), Go.str("lincoln"),
		Go.str("abrasion"), Go.str("scrape"), Go.str("abraham"), Go.str("isaac"));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, Go.str("abracadabrakazam abraham"),
		Go.str("poofkazam lincoln")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, Go.str("abrasion abracad"),
			Go.str("scrape abracad")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, Go.str("abba abram abrasive"),
			Go.str("abba abram abrasive")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _foo1 = newReplacer(Go.str("foo1"), Go.str("A"), Go.str("foo2"), Go.str("B"), Go.str("foo3"), Go.str("C"));
	var _foo2 = newReplacer(Go.str("foo1"), Go.str("A"), Go.str("foo2"), Go.str("B"), Go.str("foo31"), Go.str("C"), Go.str("foo32"), Go.str("D"));
	var _foo3 = newReplacer(Go.str("foo11"), Go.str("A"), Go.str("foo12"), Go.str("B"), Go.str("foo31"), Go.str("C"), Go.str("foo32"), Go.str("D"));
	var _foo4 = newReplacer(Go.str("foo12"), Go.str("B"), Go.str("foo32"), Go.str("D"));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, Go.str("fofoofoo12foo32oo"),
		Go.str("fofooA2C2oo")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, Go.str(), Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, Go.str("fofoofoo12foo32oo"),
			Go.str("fofooA2Doo")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, Go.str(), Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, Go.str("fofoofoo12foo32oo"),
			Go.str("fofooBDoo")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, Go.str(), Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, Go.str("fofoofoo12foo32oo"),
			Go.str("fofooBDoo")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _allBytes = new Slice<GoUInt8>((256 : GoInt).toBasic(), 0, ...[for (i in 0...(256 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i in 0..._allBytes.length.toBasic()) {
		_allBytes[_i] = (_i : GoByte);
	};
	var _allString:GoString = (_allBytes : GoString);
	var _genAll = newReplacer(_allString, Go.str("[all]"), Go.str(255), Go.str("[ff]"), Go.str(0), Go.str("[00]"));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, _allString,
		Go.str("[all]")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, (Go.str("a", 255) + _allString) + Go.str(0),
			Go.str("a[ff][all][00]")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _blankToX1 = newReplacer(Go.str(), Go.str("X"));
	var _blankToX2 = newReplacer(Go.str(), Go.str("X"), Go.str(), Go.str());
	var _blankHighPriority = newReplacer(Go.str(), Go.str("X"), Go.str("o"), Go.str("O"));
	var _blankLowPriority = newReplacer(Go.str("o"), Go.str("O"), Go.str(), Go.str("X"));
	var _blankNoOp1 = newReplacer(Go.str(), Go.str());
	var _blankNoOp2 = newReplacer(Go.str(), Go.str(), Go.str(), Go.str("A"));
	var _blankFoo = newReplacer(Go.str(), Go.str("X"), Go.str("foobar"), Go.str("R"), Go.str("foobaz"), Go.str("Z"));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, Go.str("foo"),
		Go.str("XfXoXoX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, Go.str(),
			Go.str("X")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, Go.str("foo"),
			Go.str("XfXoXoX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, Go.str(),
			Go.str("X")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, Go.str("oo"),
			Go.str("XOXOX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, Go.str("ii"),
			Go.str("XiXiX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, Go.str("oiio"),
			Go.str("XOXiXiXOX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, Go.str("iooi"),
			Go.str("XiXOXOXiX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, Go.str(),
			Go.str("X")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, Go.str("oo"),
			Go.str("OOX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, Go.str("ii"),
			Go.str("XiXiX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, Go.str("oiio"),
			Go.str("OXiXiOX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, Go.str("iooi"),
			Go.str("XiOOXiX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, Go.str(),
			Go.str("X")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, Go.str("foo"),
			Go.str("foo")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, Go.str("foo"),
			Go.str("foo")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, Go.str(),
			Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, Go.str("foobarfoobaz"),
			Go.str("XRXZX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, Go.str("foobar-foobaz"),
			Go.str("XRX-XZX")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, Go.str(),
			Go.str("X")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _abcMatcher = newReplacer(Go.str("abc"), Go.str("[match]"));
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, Go.str(),
		Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, Go.str("ab"),
			Go.str("ab")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, Go.str("abc"),
			Go.str("[match]")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, Go.str("abcd"),
			Go.str("[match]d")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, Go.str("cabcabcdabca"),
			Go.str("c[match][match]d[match]a")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _noHello = newReplacer(Go.str("Hello"), Go.str());
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, Go.str("Hello"),
		Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, Go.str("Hellox"),
			Go.str("x")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, Go.str("xHello"),
			Go.str("x")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, Go.str("xHellox"),
			Go.str("xx")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	var _nop = newReplacer();
	_testCases = _testCases.__appendref__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, Go.str("abc"),
		Go.str("abc")) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, Go.str(), Go.str()) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0));
	for (_i => _tc in _testCases) {
		{
			var _s:GoString = _tc._r.replace(_tc._in);
			if (_s != (_tc._out)) {
				_t.errorf(Go.str("%d. Replace(%q) = %q, want %q"), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_s), Go.toInterface(_tc._out));
			};
		};
		var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		var __tmp__ = _tc._r.writeString(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _tc._in),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.errorf(Go.str("%d. WriteString: %v"), Go.toInterface(_i), Go.toInterface(_err));
			continue;
		};
		var _got:GoString = (_buf.string() : GoString);
		if (_got != (_tc._out)) {
			_t.errorf(Go.str("%d. WriteString(%q) wrote %q, want %q"), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_got),
				Go.toInterface(_tc._out));
			continue;
		};
		if (_n != ((_tc._out.length))) {
			_t.errorf(Go.str("%d. WriteString(%q) wrote correct string but reported %d bytes; want %d (%q)"), Go.toInterface(_i), Go.toInterface(_tc._in),
				Go.toInterface(_n), Go.toInterface((_tc._out.length)), Go.toInterface(_tc._out));
		};
	};
}

/**
	// TestPickAlgorithm tests that NewReplacer picks the correct algorithm.
**/
function testPickAlgorithm(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testPickAlgorithm" + " skip function");
	return;
	for (_i => _tc in _algorithmTestCases) {
		var _got:GoString = stdgo.fmt.Fmt.sprintf(Go.str("%T"), _tc._r.replacer());
		if (_got != (_tc._want)) {
			_t.errorf(Go.str("%d. algorithm = %s, want %s"), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tc._want));
		};
	};
}

/**
	// TestWriteStringError tests that WriteString returns an error
	// received from the underlying io.Writer.
**/
function testWriteStringError(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _tc in _algorithmTestCases) {
		var __tmp__ = _tc._r.writeString(Go.asInterface((new stdgo.strings_test.Strings_test.T_errWriter() : stdgo.strings_test.Strings_test.T_errWriter)),
			Go.str("abc")),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_n != (0 : GoInt)) || (_err == null)) || (_err.error() != Go.str("unwritable"))) {
			_t.errorf(Go.str("%d. WriteStringError = %d, %v, want 0, unwritable"), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

/**
	// TestGenericTrieBuilding verifies the structure of the generated trie. There
	// is one node per line, and the key ending with the current line is in the
	// trie if it ends with a "+".
**/
function testGenericTrieBuilding(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testCases = (new Slice<StringTest>(0, 0,
		(new StringTest(Go.str("abc;abdef;abdefgh;xx;xy;z"),
			Go.str("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t")) : StringTest),
		(new StringTest(Go.str("abracadabra;abracadabrakazam;abraham;abrasion"),
			Go.str("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t")) : StringTest),
		(new StringTest(Go.str("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y"),
			Go.str("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t")) : StringTest),
		(new StringTest(Go.str("foo;;foo;foo1"), Go.str("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t")) : StringTest)) : Slice<StringTest>);
	for (_0 => _tc in _testCases) {
		var _keys = split(_tc._in, Go.str(";"));
		var _args = new Slice<GoString>(((_keys.length) * (2 : GoInt) : GoInt).toBasic(), 0,
			...[for (i in 0...((_keys.length) * (2 : GoInt) : GoInt).toBasic()) ("" : GoString)]);
		for (_i => _key in _keys) {
			_args[_i * (2 : GoInt)] = _key;
		};
		var _got:GoString = newReplacer(..._args.__toArray__()).printTrie();
		var _wantbuf = new Slice<GoUInt8>((0 : GoInt).toBasic(), (_tc._out.length), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_tc._out.length), _i++, {
				if (_tc._out[_i] != ((9 : GoUInt8))) {
					_wantbuf = _wantbuf.__appendref__(_tc._out[_i]);
				};
			});
		};
		var _want:GoString = (_wantbuf : GoString);
		if (_got != (_want)) {
			_t.errorf(Go.str("PrintTrie(%q)\ngot\n%swant\n%s"), Go.toInterface(_tc._in), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function benchmarkGenericNoMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("A"), (100 : GoInt)) + repeat(Go.str("B"), (100 : GoInt));
	var _generic = newReplacer(Go.str("a"), Go.str("A"), Go.str("b"), Go.str("B"), Go.str("12"), Go.str("123"));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_generic.replace(_str);
		});
	};
}

function benchmarkGenericMatch1(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("a"), (100 : GoInt)) + repeat(Go.str("b"), (100 : GoInt));
	var _generic = newReplacer(Go.str("a"), Go.str("A"), Go.str("b"), Go.str("B"), Go.str("12"), Go.str("123"));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_generic.replace(_str);
		});
	};
}

function benchmarkGenericMatch2(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("It&apos;s &lt;b&gt;HTML&lt;/b&gt;!"), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlUnescaper.replace(_str);
		});
	};
}

function _benchmarkSingleString(_b:Ref<stdgo.testing.Testing.B>, _pattern:GoString, _text:GoString):Void {
	var _r = newReplacer(_pattern, Go.str("[match]"));
	_b.setBytes((_text.length : GoInt64));
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_r.replace(_text);
		});
	};
}

function benchmarkSingleMaxSkipping(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkSingleString(_b, repeat(Go.str("b"), (25 : GoInt)), repeat(Go.str("a"), (10000 : GoInt)));
}

function benchmarkSingleLongSuffixFail(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkSingleString(_b, Go.str("b") + repeat(Go.str("a"), (500 : GoInt)), repeat(Go.str("a"), (1002 : GoInt)));
}

function benchmarkSingleMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkSingleString(_b, Go.str("abcdef"), repeat(Go.str("abcdefghijklmno"), (1000 : GoInt)));
}

function benchmarkByteByteNoMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("A"), (100 : GoInt)) + repeat(Go.str("B"), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_capitalLetters.replace(_str);
		});
	};
}

function benchmarkByteByteMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("a"), (100 : GoInt)) + repeat(Go.str("b"), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_capitalLetters.replace(_str);
		});
	};
}

function benchmarkByteStringMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = ((Go.str("<") + repeat(Go.str("a"), (99 : GoInt))) + repeat(Go.str("b"), (99 : GoInt))) + Go.str(">");
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlEscaper.replace(_str);
		});
	};
}

function benchmarkHTMLEscapeNew(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = Go.str("I <3 to escape HTML & other text too.");
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlEscaper.replace(_str);
		});
	};
}

function benchmarkHTMLEscapeOld(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = Go.str("I <3 to escape HTML & other text too.");
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_oldHTMLEscape(_str);
		});
	};
}

function benchmarkByteStringReplacerWriteString(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("I <3 to escape HTML & other text too."), (100 : GoInt));
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlEscaper.writeString(Go.asInterface(_buf), _str);
			_buf.reset();
		});
	};
}

function benchmarkByteReplacerWriteString(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("abcdefghijklmnopqrstuvwxyz"), (100 : GoInt));
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_capitalLetters.writeString(Go.asInterface(_buf), _str);
			_buf.reset();
		});
	};
}

/**
	// BenchmarkByteByteReplaces compares byteByteImpl against multiple Replaces.
**/
function benchmarkByteByteReplaces(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("a"), (100 : GoInt)) + repeat(Go.str("b"), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			replace(replace(_str, Go.str("a"), Go.str("A"), (-1 : GoInt)), Go.str("b"), Go.str("B"), (-1 : GoInt));
		});
	};
}

/**
	// BenchmarkByteByteMap compares byteByteImpl against Map.
**/
function benchmarkByteByteMap(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _str:GoString = repeat(Go.str("a"), (100 : GoInt)) + repeat(Go.str("b"), (100 : GoInt));
	var _fn:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (_r == ((97 : GoInt32))) {
			return (65 : GoInt32);
		} else if (_r == ((98 : GoInt32))) {
			return (66 : GoInt32);
		};
		return _r;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			map(_fn, _str);
		});
	};
}

function benchmarkMap(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _mapidentity:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		return _r;
	};
	_b.run(Go.str("identity"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		for (_0 => _md in _mapdata) {
			_b.run(_md._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < _b.n, _i++, {
						map(_mapidentity, _md._data);
					});
				};
			});
		};
	});
	var _mapchange:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (((97 : GoInt32) <= _r) && (_r <= (122 : GoInt32))) {
			return (_r + (65 : GoInt32)) - (97 : GoInt32);
		};
		if (((945 : GoInt32) <= _r) && (_r <= (969 : GoInt32))) {
			return (_r + (913 : GoInt32)) - (945 : GoInt32);
		};
		return _r;
	};
	_b.run(Go.str("change"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		for (_0 => _md in _mapdata) {
			_b.run(_md._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < _b.n, _i++, {
						map(_mapchange, _md._data);
					});
				};
			});
		};
	});
}

function testFinderNext(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testCases = (new Slice<T__struct_8>(0, 0, ({_pat: Go.str(), _text: Go.str(), _index: (0 : GoInt)} : T__struct_8),
		({_pat: Go.str(), _text: Go.str("abc"), _index: (0 : GoInt)} : T__struct_8),
		({_pat: Go.str("abc"), _text: Go.str(), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: Go.str("abc"), _text: Go.str("abc"), _index: (0 : GoInt)} : T__struct_8),
		({_pat: Go.str("d"), _text: Go.str("abcdefg"), _index: (3 : GoInt)} : T__struct_8),
		({_pat: Go.str("nan"), _text: Go.str("banana"), _index: (2 : GoInt)} : T__struct_8),
		({_pat: Go.str("pan"), _text: Go.str("anpanman"), _index: (2 : GoInt)} : T__struct_8),
		({_pat: Go.str("nnaaman"), _text: Go.str("anpanmanam"), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: Go.str("abcd"), _text: Go.str("abc"), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: Go.str("abcd"), _text: Go.str("bcd"), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: Go.str("bcd"), _text: Go.str("abcd"), _index: (1 : GoInt)} : T__struct_8),
		({_pat: Go.str("abc"), _text: Go.str("acca"), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: Go.str("aa"), _text: Go.str("aaa"), _index: (0 : GoInt)} : T__struct_8),
		({_pat: Go.str("baa"), _text: Go.str("aaaaa"), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: Go.str("at that"), _text: Go.str("which finally halts.  at that point"), _index: (22 : GoInt)} : T__struct_8)) : Slice<T__struct_8>);
	for (_0 => _tc in _testCases) {
		var _got:GoInt = stringFind(_tc._pat, _tc._text);
		var _want:GoInt = _tc._index;
		if (_got != (_want)) {
			_t.errorf(Go.str("stringFind(%q, %q) got %d, want %d\n"), Go.toInterface(_tc._pat), Go.toInterface(_tc._text), Go.toInterface(_got),
				Go.toInterface(_want));
		};
	};
}

function testFinderCreation(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testCases = (new Slice<T__struct_9>(0, 0, ({
		_pattern: Go.str("abc"),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[97] = (2 : GoInt);
			s[98] = (1 : GoInt);
			s[99] = (3 : GoInt);
			s;
		},
		_suf: (new Slice<GoInt>(0, 0, (5 : GoInt), (4 : GoInt), (1 : GoInt)) : Slice<GoInt>)
	} : T__struct_9), ({
		_pattern: Go.str("mississi"),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[105] = (3 : GoInt);
			s[109] = (7 : GoInt);
			s[115] = (1 : GoInt);
			s;
		},
		_suf: (new Slice<GoInt>(0, 0, (15 : GoInt), (14 : GoInt), (13 : GoInt), (7 : GoInt), (11 : GoInt), (10 : GoInt), (7 : GoInt),
			(1 : GoInt)) : Slice<GoInt>)
		} : T__struct_9), ({
		_pattern: Go.str("abcxxxabc"),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[97] = (2 : GoInt);
			s[98] = (1 : GoInt);
			s[99] = (6 : GoInt);
			s[120] = (3 : GoInt);
			s;
		},
		_suf: (new Slice<GoInt>(0, 0, (14 : GoInt), (13 : GoInt), (12 : GoInt), (11 : GoInt), (10 : GoInt), (9 : GoInt), (11 : GoInt), (10 : GoInt),
			(1 : GoInt)) : Slice<GoInt>)
		} : T__struct_9), ({
		_pattern: Go.str("abyxcdeyx"),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[97] = (8 : GoInt);
			s[98] = (7 : GoInt);
			s[99] = (4 : GoInt);
			s[100] = (3 : GoInt);
			s[101] = (2 : GoInt);
			s[121] = (1 : GoInt);
			s[120] = (5 : GoInt);
			s;
		},
		_suf: (new Slice<GoInt>(0, 0, (17 : GoInt), (16 : GoInt), (15 : GoInt), (14 : GoInt), (13 : GoInt), (12 : GoInt), (7 : GoInt), (10 : GoInt),
			(1 : GoInt)) : Slice<GoInt>)
		} : T__struct_9)) : Slice<T__struct_9>);
	for (_0 => _tc in _testCases) {
		var __tmp__ = dumpTables(_tc._pattern),
			_bad:Slice<GoInt> = __tmp__._0,
			_good:Slice<GoInt> = __tmp__._1;
		for (_i => _got in _bad) {
			var _want:GoInt = _tc._bad[_i];
			if (_want == ((0 : GoInt))) {
				_want = (_tc._pattern.length);
			};
			if (_got != (_want)) {
				_t.errorf(Go.str("boyerMoore(%q) bad[\'%c\']: got %d want %d"), Go.toInterface(_tc._pattern), Go.toInterface(_i), Go.toInterface(_got),
					Go.toInterface(_want));
			};
		};
		if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_good), Go.toInterface(_tc._suf))) {
			_t.errorf(Go.str("boyerMoore(%q) got %v want %v"), Go.toInterface(_tc._pattern), Go.toInterface(_good), Go.toInterface(_tc._suf));
		};
	};
}

function _eq(_a:Slice<GoString>, _b:Slice<GoString>):Bool {
	if ((_a.length) != ((_b.length))) {
		return false;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_a.length), _i++, {
			if (_a[_i] != (_b[_i])) {
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
function _runIndexTests(_t:Ref<stdgo.testing.Testing.T>, _f:(_s:GoString, _sep:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<IndexTest>):Void {
	for (_0 => _test in _testCases) {
		var _actual:GoInt = _f(_test._s, _test._sep);
		if (_actual != (_test._out)) {
			_t.errorf(Go.str("%s(%q,%q) = %v; want %v"), Go.toInterface(_funcName), Go.toInterface(_test._s), Go.toInterface(_test._sep),
				Go.toInterface(_actual), Go.toInterface(_test._out));
		};
	};
}

function testIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
	_runIndexTests(_t, index, Go.str("Index"), _indexTests);
}

function testLastIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
	_runIndexTests(_t, lastIndex, Go.str("LastIndex"), _lastIndexTests);
}

function testIndexAny(_t:Ref<stdgo.testing.Testing.T>):Void {
	_runIndexTests(_t, indexAny, Go.str("IndexAny"), _indexAnyTests);
}

function testLastIndexAny(_t:Ref<stdgo.testing.Testing.T>):Void {
	_runIndexTests(_t, lastIndexAny, Go.str("LastIndexAny"), _lastIndexAnyTests);
}

function testIndexByte(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _indexTests) {
		if ((_tt._sep.length) != ((1 : GoInt))) {
			continue;
		};
		var _pos:GoInt = indexByte(_tt._s, _tt._sep[(0 : GoInt)]);
		if (_pos != (_tt._out)) {
			_t.errorf(Go.str("IndexByte(%q, %q) = %v; want %v"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep[(0 : GoInt)]), Go.toInterface(_pos),
				Go.toInterface(_tt._out));
		};
	};
}

function testLastIndexByte(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testCases = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
		(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str("q"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcdef"), Go.str("q"), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcdefabcdef"), Go.str("a"),
			(Go.str("abcdef").length)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest(Go.str("abcdefabcdef"), Go.str("f"),
			(Go.str("abcdefabcde").length)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest(Go.str("zabcdefabcdef"), Go.str("z"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest(Go.str("a☺b☻c☹d"), Go.str("b"),
			(Go.str("a☺").length)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);
	for (_0 => _test in _testCases) {
		var _actual:GoInt = lastIndexByte(_test._s, _test._sep[(0 : GoInt)]);
		if (_actual != (_test._out)) {
			_t.errorf(Go.str("LastIndexByte(%q,%c) = %v; want %v"), Go.toInterface(_test._s), Go.toInterface(_test._sep[(0 : GoInt)]),
				Go.toInterface(_actual), Go.toInterface(_test._out));
		};
	};
}

function _simpleIndex(_s:GoString, _sep:GoString):GoInt {
	var _n:GoInt = (_sep.length);
	{
		var _i:GoInt = _n;
		Go.cfor(_i <= (_s.length), _i++, {
			if ((_s.__slice__(_i - _n, _i) : GoString) == (_sep)) {
				return _i - _n;
			};
		});
	};
	return (-1 : GoInt);
}

function testIndexRandom(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	{
		var _times:GoInt = (0 : GoInt);
		Go.cfor(_times < (10:GoInt), _times++, {
			{
				var _strLen:GoInt = (5 : GoInt) + stdgo.math.rand.Rand.intn((5 : GoInt));
				Go.cfor(_strLen < (140:GoInt), _strLen = _strLen + ((10 : GoInt)), {
					var _s1 = new Slice<GoUInt8>((_strLen : GoInt).toBasic(), 0, ...[for (i in 0...(_strLen : GoInt).toBasic()) (0 : GoUInt8)]);
					for (_i in 0..._s1.length.toBasic()) {
						_s1[_i] = Go.str("abcdefghijklmnopqrstuvwxyz0123456789")[
							stdgo.math.rand.Rand.intn((Go.str("abcdefghijklmnopqrstuvwxyz0123456789").length))
						];
					};
					var _s:GoString = (_s1 : GoString);
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < (50:GoInt), _i++, {
							var _begin:GoInt = stdgo.math.rand.Rand.intn((_s.length) + (1 : GoInt));
							var _end:GoInt = _begin + stdgo.math.rand.Rand.intn((_s.length + (1 : GoInt)) - _begin);
							var _sep:GoString = (_s.__slice__(_begin, _end) : GoString);
							if (_i % (4 : GoInt) == ((0 : GoInt))) {
								var _pos:GoInt = stdgo.math.rand.Rand.intn((_sep.length) + (1 : GoInt));
								_sep = ((_sep.__slice__(0, _pos) : GoString) + Go.str("A")) + (_sep.__slice__(_pos) : GoString);
							};
							var _want:GoInt = _simpleIndex(_s, _sep);
							var _res:GoInt = index(_s, _sep);
							if (_res != (_want)) {
								_t.errorf(Go.str("Index(%s,%s) = %d; want %d"), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_res),
									Go.toInterface(_want));
							};
						});
					};
				});
			};
		});
	};
}

function testIndexRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_10>(0, 0, ({_in: Go.str(), _rune: (97 : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: Go.str(), _rune: (9786 : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: Go.str("foo"), _rune: (9785 : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: Go.str("foo"), _rune: (111 : GoInt32), _want: (1 : GoInt)} : T__struct_10),
		({_in: Go.str("foo☺bar"), _rune: (9786 : GoInt32), _want: (3 : GoInt)} : T__struct_10),
		({_in: Go.str("foo☺☻☹bar"), _rune: (9785 : GoInt32), _want: (9 : GoInt)} : T__struct_10),
		({_in: Go.str("a A x"), _rune: (65 : GoInt32), _want: (2 : GoInt)} : T__struct_10),
		({_in: Go.str("some_text=some_value"), _rune: (61 : GoInt32), _want: (9 : GoInt)} : T__struct_10),
		({_in: Go.str("☺a"), _rune: (97 : GoInt32), _want: (3 : GoInt)} : T__struct_10),
		({_in: Go.str("a☻☺b"), _rune: (9786 : GoInt32), _want: (4 : GoInt)} : T__struct_10),
		({_in: Go.str("�"), _rune: (65533 : GoInt32), _want: (0 : GoInt)} : T__struct_10),
		({_in: Go.str(255), _rune: (65533 : GoInt32), _want: (0 : GoInt)} : T__struct_10),
		({_in: Go.str("☻x�"), _rune: (65533 : GoInt32), _want: (Go.str("☻x").length)} : T__struct_10),
		({_in: Go.str("☻x", 226, 152), _rune: (65533 : GoInt32), _want: (Go.str("☻x").length)} : T__struct_10),
		({_in: Go.str("☻x", 226, 152, "�"), _rune: (65533 : GoInt32), _want: (Go.str("☻x").length)} : T__struct_10),
		({_in: Go.str("☻x", 226, 152, "x"), _rune: (65533 : GoInt32), _want: (Go.str("☻x").length)} : T__struct_10),
		({_in: Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune: (-1 : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune: (55296 : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160,
			128), _rune: (1114112 : GoInt32), _want: (-1 : GoInt)} : T__struct_10)) : Slice<T__struct_10>);
	for (_0 => _tt in _tests) {
		{
			var _got:GoInt = indexRune(_tt._in, _tt._rune);
			if (_got != (_tt._want)) {
				_t.errorf(Go.str("IndexRune(%q, %d) = %v; want %v"), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
	var _haystack:GoString = Go.str("test世界");
	var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((1000 : GoInt), function():Void {
		{
			var _i:GoInt = indexRune(_haystack, (115 : GoInt32));
			if (_i != ((2 : GoInt))) {
				_t.fatalf(Go.str("\'s\' at %d; want 2"), Go.toInterface(_i));
			};
		};
		{
			var _i:GoInt = indexRune(_haystack, (19990 : GoInt32));
			if (_i != ((4 : GoInt))) {
				_t.fatalf(Go.str("\'世\' at %d; want 4"), Go.toInterface(_i));
			};
		};
	});
	if ((_allocs != (0 : GoFloat64)) && (stdgo.testing.Testing.coverMode() == Go.str())) {
		_t.errorf(Go.str("expected no allocations, got %f"), Go.toInterface(_allocs));
	};
}

function benchmarkIndexRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _got:GoInt = indexRune(Go.str("some_text=some☺value"), (9786 : GoInt32));
		if (_got != ((14 : GoInt))) {
			_b.fatalf(Go.str("wrong index: expected 14, got=%d"), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexRune(Go.str("some_text=some☺value"), (9786 : GoInt32));
		});
	};
}

function benchmarkIndexRuneLongString(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _got:GoInt = indexRune(_benchmarkLongString, (9786 : GoInt32));
		if (_got != ((114 : GoInt))) {
			_b.fatalf(Go.str("wrong index: expected 114, got=%d"), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexRune(_benchmarkLongString, (9786 : GoInt32));
		});
	};
}

function benchmarkIndexRuneFastPath(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _got:GoInt = indexRune(Go.str("some_text=some☺value"), (118 : GoInt32));
		if (_got != ((17 : GoInt))) {
			_b.fatalf(Go.str("wrong index: expected 17, got=%d"), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexRune(Go.str("some_text=some☺value"), (118 : GoInt32));
		});
	};
}

function benchmarkIndex(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _got:GoInt = index(Go.str("some_text=some☺value"), Go.str("v"));
		if (_got != ((17 : GoInt))) {
			_b.fatalf(Go.str("wrong index: expected 17, got=%d"), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			index(Go.str("some_text=some☺value"), Go.str("v"));
		});
	};
}

function benchmarkLastIndex(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _got:GoInt = index(Go.str("some_text=some☺value"), Go.str("v"));
		if (_got != ((17 : GoInt))) {
			_b.fatalf(Go.str("wrong index: expected 17, got=%d"), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			lastIndex(Go.str("some_text=some☺value"), Go.str("v"));
		});
	};
}

function benchmarkIndexByte(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _got:GoInt = indexByte(Go.str("some_text=some☺value"), (118 : GoUInt8));
		if (_got != ((17 : GoInt))) {
			_b.fatalf(Go.str("wrong index: expected 17, got=%d"), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexByte(Go.str("some_text=some☺value"), (118 : GoUInt8));
		});
	};
}

function testSplit(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _splittests) {
		var _a = splitN(_tt._s, _tt._sep, _tt._n);
		if (!_eq(_a, _tt._a)) {
			_t.errorf(Go.str("Split(%q, %q, %d) = %v; want %v"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_a),
				Go.toInterface(_tt._a));
			continue;
		};
		if (_tt._n == ((0 : GoInt))) {
			continue;
		};
		var _s:GoString = join(_a, _tt._sep);
		if (_s != (_tt._s)) {
			_t.errorf(Go.str("Join(Split(%q, %q, %d), %q) = %q"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n),
				Go.toInterface(_tt._sep), Go.toInterface(_s));
		};
		if (_tt._n < (0:GoInt)) {
			var _b = split(_tt._s, _tt._sep);
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
				_t.errorf(Go.str("Split disagrees with SplitN(%q, %q, %d) = %v; want %v"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep),
					Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
			};
		};
	};
}

function testSplitAfter(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _splitaftertests) {
		var _a = splitAfterN(_tt._s, _tt._sep, _tt._n);
		if (!_eq(_a, _tt._a)) {
			_t.errorf(Go.str("Split(%q, %q, %d) = %v; want %v"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_a),
				Go.toInterface(_tt._a));
			continue;
		};
		var _s:GoString = join(_a, Go.str());
		if (_s != (_tt._s)) {
			_t.errorf(Go.str("Join(Split(%q, %q, %d), %q) = %q"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n),
				Go.toInterface(_tt._sep), Go.toInterface(_s));
		};
		if (_tt._n < (0:GoInt)) {
			var _b = splitAfter(_tt._s, _tt._sep);
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
				_t.errorf(Go.str("SplitAfter disagrees with SplitAfterN(%q, %q, %d) = %v; want %v"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep),
					Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
			};
		};
	};
}

function testFields(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _fieldstests) {
		var _a = fields(_tt._s);
		if (!_eq(_a, _tt._a)) {
			_t.errorf(Go.str("Fields(%q) = %v; want %v"), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
			continue;
		};
	};
}

function testFieldsFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _fieldstests) {
		var _a = fieldsFunc(_tt._s, stdgo.unicode.Unicode.isSpace);
		if (!_eq(_a, _tt._a)) {
			_t.errorf(Go.str("FieldsFunc(%q, unicode.IsSpace) = %v; want %v"), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
			continue;
		};
	};
	var _pred:GoInt32->Bool = function(_c:GoRune):Bool {
		return _c == ((88 : GoInt32));
	};
	for (_1 => _tt in fieldsFuncTests) {
		var _a = fieldsFunc(_tt._s, _pred);
		if (!_eq(_a, _tt._a)) {
			_t.errorf(Go.str("FieldsFunc(%q) = %v, want %v"), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
		};
	};
}

/**
	// Execute f on each test case.  funcName should be the name of f; it's used
	// in failure reports.
**/
function _runStringTests(_t:Ref<stdgo.testing.Testing.T>, _f:GoString->GoString, _funcName:GoString, _testCases:Slice<StringTest>):Void {
	for (_0 => _tc in _testCases) {
		var _actual:GoString = _f(_tc._in);
		if (_actual != (_tc._out)) {
			_t.errorf(Go.str("%s(%q) = %q; want %q"), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
		};
	};
}

function _tenRunes(_ch:GoRune):GoString {
	var _r = new Slice<GoInt32>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoInt32)]);
	for (_i in 0..._r.length.toBasic()) {
		_r[_i] = _ch;
	};
	return (_r : GoString);
}

/**
	// User-defined self-inverse mapping function
**/
function _rot13(_r:GoRune):GoRune {
	var _step:GoInt32 = ((13 : GoInt32) : GoRune);
	if ((_r >= (97 : GoInt32)) && (_r <= (122 : GoInt32))) {
		return (((_r - (97 : GoInt32)) + _step) % (26 : GoInt32)) + (97 : GoInt32);
	};
	if ((_r >= (65 : GoInt32)) && (_r <= (90 : GoInt32))) {
		return (((_r - (65 : GoInt32)) + _step) % (26 : GoInt32)) + (65 : GoInt32);
	};
	return _r;
}

function testMap(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testMap" + " skip function");
	return;
	var _a:GoString = _tenRunes((97 : GoInt32));
	var _maxRune:GoInt32->GoInt32 = function(_0:GoRune):GoRune {
		return (1114111 : GoInt32);
	};
	var _m:GoString = map(_maxRune, _a);
	var _expect:GoString = _tenRunes((1114111 : GoInt32));
	if (_m != (_expect)) {
		_t.errorf(Go.str("growing: expected %q got %q"), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _minRune:GoInt32->GoInt32 = function(_0:GoRune):GoRune {
		return (97 : GoInt32);
	};
	_m = map(_minRune, _tenRunes((1114111 : GoInt32)));
	_expect = _a;
	if (_m != (_expect)) {
		_t.errorf(Go.str("shrinking: expected %q got %q"), Go.toInterface(_expect), Go.toInterface(_m));
	};
	_m = map(_rot13, Go.str("a to zed"));
	_expect = Go.str("n gb mrq");
	if (_m != (_expect)) {
		_t.errorf(Go.str("rot13: expected %q got %q"), Go.toInterface(_expect), Go.toInterface(_m));
	};
	_m = map(_rot13, map(_rot13, Go.str("a to zed")));
	_expect = Go.str("a to zed");
	if (_m != (_expect)) {
		_t.errorf(Go.str("rot13: expected %q got %q"), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _dropNotLatin:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
			return _r;
		};
		return (-1 : GoInt32);
	};
	_m = map(_dropNotLatin, Go.str("Hello, 세계"));
	_expect = Go.str("Hello");
	if (_m != (_expect)) {
		_t.errorf(Go.str("drop: expected %q got %q"), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _identity:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		return _r;
	};
	var _orig:GoString = Go.str("Input string that we expect not to be copied.");
	_m = map(_identity, _orig);
	if (((Go.toInterface(Go.pointer(_orig)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
		stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
				optional: false
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(int_kind),
				optional: false
			}
		])))) : Ref<stdgo.reflect.Reflect.StringHeader>).data != (((Go.toInterface(Go.pointer(_m)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
			stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "data",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			optional: false
		},
		{
			name: "len",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int_kind),
			optional: false
		}
		])))) : Ref<stdgo.reflect.Reflect.StringHeader>).data)) {
			_t.error(Go.toInterface(Go.str("unexpected copy during identity map")));
		};
	var _replaceNotLatin:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
			return _r;
		};
		return (65533 : GoInt32);
	};
	_m = map(_replaceNotLatin, Go.str("Hello", 173, "World"));
	_expect = Go.str("Hello�World");
	if (_m != (_expect)) {
		_t.errorf(Go.str("replace invalid sequence: expected %q got %q"), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _encode:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (_r == ((128 : GoInt32))) {
			return (1114111 : GoInt32);
		} else if (_r == ((1114111 : GoInt32))) {
			return (128 : GoInt32);
		};
		return _r;
	};
	var _s:GoString = Go.str("\u0080\u{0010ffff}");
	var _r:GoString = Go.str("\u{0010ffff}\u0080");
	_m = map(_encode, _s);
	if (_m != (_r)) {
		_t.errorf(Go.str("encoding not handled correctly: expected %q got %q"), Go.toInterface(_r), Go.toInterface(_m));
	};
	_m = map(_encode, _r);
	if (_m != (_s)) {
		_t.errorf(Go.str("encoding not handled correctly: expected %q got %q"), Go.toInterface(_s), Go.toInterface(_m));
	};
	var _trimSpaces:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (stdgo.unicode.Unicode.isSpace(_r)) {
			return (-1 : GoInt32);
		};
		return _r;
	};
	_m = map(_trimSpaces, Go.str("   abc    123   "));
	_expect = Go.str("abc123");
	if (_m != (_expect)) {
		_t.errorf(Go.str("trimSpaces: expected %q got %q"), Go.toInterface(_expect), Go.toInterface(_m));
	};
}

function testToUpper(_t:Ref<stdgo.testing.Testing.T>):Void {
	_runStringTests(_t, toUpper, Go.str("ToUpper"), _upperTests);
}

function testToLower(_t:Ref<stdgo.testing.Testing.T>):Void {
	_runStringTests(_t, toLower, Go.str("ToLower"), _lowerTests);
}

function testToValidUTF8(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tc in _toValidUTF8Tests) {
		var _got:GoString = toValidUTF8(_tc._in, _tc._repl);
		if (_got != (_tc._out)) {
			_t.errorf(Go.str("ToValidUTF8(%q, %q) = %q; want %q"), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got),
				Go.toInterface(_tc._out));
		};
	};
}

function benchmarkToUpper(_b:Ref<stdgo.testing.Testing.B>):Void {
	for (_0 => _tc in _upperTests) {
		_b.run(_tc._in, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					var _actual:GoString = toUpper(_tc._in);
					if (_actual != (_tc._out)) {
						_b.errorf(Go.str("ToUpper(%q) = %q; want %q"), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
					};
				});
			};
		});
	};
}

function benchmarkToLower(_b:Ref<stdgo.testing.Testing.B>):Void {
	for (_0 => _tc in _lowerTests) {
		_b.run(_tc._in, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					var _actual:GoString = toLower(_tc._in);
					if (_actual != (_tc._out)) {
						_b.errorf(Go.str("ToLower(%q) = %q; want %q"), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
					};
				});
			};
		});
	};
}

function benchmarkMapNoChanges(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _identity:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		return _r;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			map(_identity, Go.str("Some string that won\'t be modified."));
		});
	};
}

function testSpecialCase(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _lower:GoString = Go.str("abcçdefgğhıijklmnoöprsştuüvyz");
	var _upper:GoString = Go.str("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ");
	var _u:GoString = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
	if (_u != (_upper)) {
		_t.errorf(Go.str("Upper(upper) is %s not %s"), Go.toInterface(_u), Go.toInterface(_upper));
	};
	_u = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
	if (_u != (_upper)) {
		_t.errorf(Go.str("Upper(lower) is %s not %s"), Go.toInterface(_u), Go.toInterface(_upper));
	};
	var _l:GoString = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
	if (_l != (_lower)) {
		_t.errorf(Go.str("Lower(lower) is %s not %s"), Go.toInterface(_l), Go.toInterface(_lower));
	};
	_l = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
	if (_l != (_lower)) {
		_t.errorf(Go.str("Lower(upper) is %s not %s"), Go.toInterface(_l), Go.toInterface(_lower));
	};
}

function testTrimSpace(_t:Ref<stdgo.testing.Testing.T>):Void {
	_runStringTests(_t, trimSpace, Go.str("TrimSpace"), _trimSpaceTests);
}

function testTrim(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tc in _trimTests) {
		var _name:GoString = _tc._f;
		var _f:(GoString, GoString) -> GoString = null;
		if (_name == (Go.str("Trim"))) {
			_f = trim;
		} else if (_name == (Go.str("TrimLeft"))) {
			_f = trimLeft;
		} else if (_name == (Go.str("TrimRight"))) {
			_f = trimRight;
		} else if (_name == (Go.str("TrimPrefix"))) {
			_f = trimPrefix;
		} else if (_name == (Go.str("TrimSuffix"))) {
			_f = trimSuffix;
		} else {
			_t.errorf(Go.str("Undefined trim function %s"), Go.toInterface(_name));
		};
		var _actual:GoString = _f(_tc._in, _tc._arg);
		if (_actual != (_tc._out)) {
			_t.errorf(Go.str("%s(%q, %q) = %q; want %q"), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual),
				Go.toInterface(_tc._out));
		};
	};
}

function benchmarkTrim(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.reportAllocs();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _tc in _trimTests) {
				var _name:GoString = _tc._f;
				var _f:(GoString, GoString) -> GoString = null;
				if (_name == (Go.str("Trim"))) {
					_f = trim;
				} else if (_name == (Go.str("TrimLeft"))) {
					_f = trimLeft;
				} else if (_name == (Go.str("TrimRight"))) {
					_f = trimRight;
				} else if (_name == (Go.str("TrimPrefix"))) {
					_f = trimPrefix;
				} else if (_name == (Go.str("TrimSuffix"))) {
					_f = trimSuffix;
				} else {
					_b.errorf(Go.str("Undefined trim function %s"), Go.toInterface(_name));
				};
				var _actual:GoString = _f(_tc._in, _tc._arg);
				if (_actual != (_tc._out)) {
					_b.errorf(Go.str("%s(%q, %q) = %q; want %q"), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg),
						Go.toInterface(_actual), Go.toInterface(_tc._out));
				};
			};
		});
	};
}

function benchmarkToValidUTF8(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _tests = (new Slice<T__struct_13>(0, 0, ({_name: Go.str("Valid"), _input: Go.str("typical")} : T__struct_13),
		({_name: Go.str("InvalidASCII"), _input: Go.str("foo", 255, "bar")} : T__struct_13),
		({_name: Go.str("InvalidNonASCII"), _input: Go.str("日本語", 255, "日本語")} : T__struct_13)) : Slice<T__struct_13>);
	var _replacement:GoString = Go.str("�");
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

function _not(_p:T_predicate):T_predicate {
	return (new stdgo.strings_test.Strings_test.T_predicate(function(_r:GoRune):Bool {
		return !_p._f(_r);
	}, Go.str("not ") + _p._name) : stdgo.strings_test.Strings_test.T_predicate);
}

function testTrimFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tc in _trimFuncTests) {
		var _trimmers = (new Slice<T__struct_15>(0, 0, ({_name: Go.str("TrimFunc"), _trim: trimFunc, _out: _tc._trimOut} : T__struct_15),
			({_name: Go.str("TrimLeftFunc"), _trim: trimLeftFunc, _out: _tc._leftOut} : T__struct_15),
			({_name: Go.str("TrimRightFunc"), _trim: trimRightFunc, _out: _tc._rightOut} : T__struct_15)) : Slice<T__struct_15>);
		for (_1 => _trimmer in _trimmers) {
			var _actual:GoString = _trimmer._trim(_tc._in, _tc._f._f);
			if (_actual != (_trimmer._out)) {
				_t.errorf(Go.str("%s(%q, %q) = %q; want %q"), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name),
					Go.toInterface(_actual), Go.toInterface(_trimmer._out));
			};
		};
	};
}

function testIndexFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tc in _indexFuncTests) {
		var _first:GoInt = indexFunc(_tc._in, _tc._f._f);
		if (_first != (_tc._first)) {
			_t.errorf(Go.str("IndexFunc(%q, %s) = %d; want %d"), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first),
				Go.toInterface(_tc._first));
		};
		var _last:GoInt = lastIndexFunc(_tc._in, _tc._f._f);
		if (_last != (_tc._last)) {
			_t.errorf(Go.str("LastIndexFunc(%q, %s) = %d; want %d"), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_last),
				Go.toInterface(_tc._last));
		};
	};
}

function _equal(_m:GoString, _s1:GoString, _s2:GoString, _t:Ref<stdgo.testing.Testing.T>):Bool {
	if (_s1 == (_s2)) {
		return true;
	};
	var _e1 = split(_s1, Go.str());
	var _e2 = split(_s2, Go.str());
	for (_i => _c1 in _e1) {
		if (_i >= (_e2.length)) {
			break;
		};
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_c1),
			_r1:GoInt32 = __tmp__._0,
			_0:GoInt = __tmp__._1;
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_e2[_i]),
			_r2:GoInt32 = __tmp__._0,
			_1:GoInt = __tmp__._1;
		if (_r1 != (_r2)) {
			_t.errorf(Go.str("%s diff at %d: U+%04X U+%04X"), Go.toInterface(_m), Go.toInterface(_i), Go.toInterface(_r1), Go.toInterface(_r2));
		};
	};
	return false;
}

function testCaseConsistency(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _numRunes:GoInt = (1114112 : GoInt);
	if (stdgo.testing.Testing.short()) {
		_numRunes = (1000 : GoInt);
	};
	var _a = new Slice<GoInt32>((_numRunes : GoInt).toBasic(), 0, ...[for (i in 0...(_numRunes : GoInt).toBasic()) (0 : GoInt32)]);
	for (_i in 0..._a.length.toBasic()) {
		_a[_i] = (_i : GoRune);
	};
	var _s:GoString = (_a : GoString);
	var _upper:GoString = toUpper(_s);
	var _lower:GoString = toLower(_s);
	{
		var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_upper);
		if (_n != (_numRunes)) {
			_t.error(Go.toInterface(Go.str("rune count wrong in upper:")), Go.toInterface(_n));
		};
	};
	{
		var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_lower);
		if (_n != (_numRunes)) {
			_t.error(Go.toInterface(Go.str("rune count wrong in lower:")), Go.toInterface(_n));
		};
	};
	if (!_equal(Go.str("ToUpper(upper)"), toUpper(_upper), _upper, _t)) {
		_t.error(Go.toInterface(Go.str("ToUpper(upper) consistency fail")));
	};
	if (!_equal(Go.str("ToLower(lower)"), toLower(_lower), _lower, _t)) {
		_t.error(Go.toInterface(Go.str("ToLower(lower) consistency fail")));
	};
}

function testRepeat(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in repeatTests) {
		var _a:GoString = repeat(_tt._in, _tt._count);
		if (!_equal(Go.str("Repeat(s)"), _a, _tt._out, _t)) {
			_t.errorf(Go.str("Repeat(%v, %d) = %v; want %v"), Go.toInterface(_tt._in), Go.toInterface(_tt._count), Go.toInterface(_a),
				Go.toInterface(_tt._out));
			continue;
		};
	};
}

function _repeat(_s:GoString, _count:GoInt):Error {
	var __deferstack__:Array<Void->Void> = [];
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
							var _v:Error = __type__ == null ? (null : Error) : __type__.__underlying__() == null ? (null : Error) : __type__ == null ? (null : Error) : __type__.__underlying__()
								.value;
							_err = _v;
						} else {
							var _v:AnyInterface = __type__ == null ? null : __type__.__underlying__();
							_err = stdgo.fmt.Fmt.errorf(Go.str("%s"), _v);
						};
					};
				};
			};
		};
		a();
	});
	try {
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
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return _err;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return _err;
	};
}

/**
	// See Issue golang.org/issue/16237
**/
function testRepeatCatchesOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = {
		var s:GoArray<T__struct_18> = new GoArray<T__struct_18>(...[
			for (i in 0...7) ({
				_s:("" : GoString), _count:(0 : GoInt), _errStr:("" : GoString)
			} : T__struct_18)
		]);
		s[0] = ({_s: Go.str("--"), _count: (-2147483647 : GoInt), _errStr: Go.str("negative")} : T__struct_18);
		s[1] = ({_s: Go.str(), _count: ((("2147483647" : GoUInt) : GoUInt) : GoInt), _errStr: Go.str()} : T__struct_18);
		s[2] = ({_s: Go.str("-"), _count: (10 : GoInt), _errStr: Go.str()} : T__struct_18);
		s[3] = ({_s: Go.str("gopher"), _count: (0 : GoInt), _errStr: Go.str()} : T__struct_18);
		s[4] = ({_s: Go.str("-"), _count: (-1 : GoInt), _errStr: Go.str("negative")} : T__struct_18);
		s[5] = ({_s: Go.str("--"), _count: (-102 : GoInt), _errStr: Go.str("negative")} : T__struct_18);
		s[6] = ({_s: (new Slice<GoUInt8>((255 : GoInt).toBasic(), 0,
			...[for (i in 0...(255 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString), _count: ((("16843010" : GoUInt) : GoUInt) : GoInt),
			_errStr: Go.str("overflow")} : T__struct_18);
		s;
	};
	for (_i => _tt in _tests) {
		var _err:Error = _repeat(_tt._s, _tt._count);
		if (_tt._errStr == (Go.str())) {
			if (_err != null) {
				_t.errorf(Go.str("#%d panicked %v"), Go.toInterface(_i), Go.toInterface(_err));
			};
			continue;
		};
		if ((_err == null) || !contains(_err.error(), _tt._errStr)) {
			_t.errorf(Go.str("#%d expected %q got %q"), Go.toInterface(_i), Go.toInterface(_tt._errStr), Go.toInterface(_err));
		};
	};
}

function _runesEqual(_a:Slice<GoRune>, _b:Slice<GoRune>):Bool {
	if ((_a.length) != ((_b.length))) {
		return false;
	};
	for (_i => _r in _a) {
		if (_r != (_b[_i])) {
			return false;
		};
	};
	return true;
}

function testRunes(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in runesTests) {
		var _a = (_tt._in : Slice<GoRune>);
		if (!_runesEqual(_a, _tt._out)) {
			_t.errorf(Go.str("[]rune(%q) = %v; want %v"), Go.toInterface(_tt._in), Go.toInterface(_a), Go.toInterface(_tt._out));
			continue;
		};
		if (!_tt._lossy) {
			var _s:GoString = (_a : GoString);
			if (_s != (_tt._in)) {
				_t.errorf(Go.str("string([]rune(%q)) = %x; want %x"), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._in));
			};
		};
	};
}

function testReadByte(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testStrings = (new Slice<GoString>(0, 0, Go.str(), _abcd, _faces, _commas) : Slice<GoString>);
	for (_0 => _s in _testStrings) {
		var _reader = newReader(_s);
		{
			var _e:Error = _reader.unreadByte();
			if (_e == null) {
				_t.errorf(Go.str("Unreading %q at beginning: expected error"), Go.toInterface(_s));
			};
		};
		var _res:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		while (true) {
			var __tmp__ = _reader.readByte(),
				_b:GoUInt8 = __tmp__._0,
				_e:Error = __tmp__._1;
			if (Go.toInterface(_e) == (Go.toInterface(stdgo.io.Io.eof))) {
				break;
			};
			if (_e != null) {
				_t.errorf(Go.str("Reading %q: %s"), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			_res.writeByte(_b);
			_e = _reader.unreadByte();
			if (_e != null) {
				_t.errorf(Go.str("Unreading %q: %s"), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			var __tmp__ = _reader.readByte(),
				_b1:GoUInt8 = __tmp__._0,
				_e:Error = __tmp__._1;
			if (_e != null) {
				_t.errorf(Go.str("Reading %q after unreading: %s"), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			if (_b1 != (_b)) {
				_t.errorf(Go.str("Reading %q after unreading: want byte %q, got %q"), Go.toInterface(_s), Go.toInterface(_b), Go.toInterface(_b1));
				break;
			};
		};
		if ((_res.string() : GoString) != (_s)) {
			_t.errorf(Go.str("Reader(%q).ReadByte() produced %q"), Go.toInterface(_s), Go.toInterface((_res.string() : GoString)));
		};
	};
}

function testReadRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _testStrings = (new Slice<GoString>(0, 0, Go.str(), _abcd, _faces, _commas) : Slice<GoString>);
	for (_0 => _s in _testStrings) {
		var _reader = newReader(_s);
		{
			var _e:Error = _reader.unreadRune();
			if (_e == null) {
				_t.errorf(Go.str("Unreading %q at beginning: expected error"), Go.toInterface(_s));
			};
		};
		var _res:GoString = Go.str();
		while (true) {
			var __tmp__ = _reader.readRune(),
				_r:GoInt32 = __tmp__._0,
				_z:GoInt = __tmp__._1,
				_e:Error = __tmp__._2;
			if (Go.toInterface(_e) == (Go.toInterface(stdgo.io.Io.eof))) {
				break;
			};
			if (_e != null) {
				_t.errorf(Go.str("Reading %q: %s"), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			_res = _res + ((_r : GoString));
			_e = _reader.unreadRune();
			if (_e != null) {
				_t.errorf(Go.str("Unreading %q: %s"), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			var __tmp__ = _reader.readRune(),
				_r1:GoInt32 = __tmp__._0,
				_z1:GoInt = __tmp__._1,
				_e:Error = __tmp__._2;
			if (_e != null) {
				_t.errorf(Go.str("Reading %q after unreading: %s"), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			if (_r1 != (_r)) {
				_t.errorf(Go.str("Reading %q after unreading: want rune %q, got %q"), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_r1));
				break;
			};
			if (_z1 != (_z)) {
				_t.errorf(Go.str("Reading %q after unreading: want size %d, got %d"), Go.toInterface(_s), Go.toInterface(_z), Go.toInterface(_z1));
				break;
			};
		};
		if (_res != (_s)) {
			_t.errorf(Go.str("Reader(%q).ReadRune() produced %q"), Go.toInterface(_s), Go.toInterface(_res));
		};
	};
}

function testUnreadRuneError(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in unreadRuneErrorTests) {
		var _reader = newReader(Go.str("0123456789"));
		{
			var __tmp__ = _reader.readRune(),
				_1:GoInt32 = __tmp__._0,
				_2:GoInt = __tmp__._1,
				_err:Error = __tmp__._2;
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		_tt._f(_reader);
		var _err:Error = _reader.unreadRune();
		if (_err == null) {
			_t.errorf(Go.str("Unreading after %s: expected error"), Go.toInterface(_tt._name));
		};
	};
}

function testReplace(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in replaceTests) {
		{
			var _s:GoString = replace(_tt._in, _tt._old, _tt._new, _tt._n);
			if (_s != (_tt._out)) {
				_t.errorf(Go.str("Replace(%q, %q, %q, %d) = %q, want %q"), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new),
					Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
			};
		};
		if (_tt._n == ((-1 : GoInt))) {
			var _s:GoString = replaceAll(_tt._in, _tt._old, _tt._new);
			if (_s != (_tt._out)) {
				_t.errorf(Go.str("ReplaceAll(%q, %q, %q) = %q, want %q"), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new),
					Go.toInterface(_s), Go.toInterface(_tt._out));
			};
		};
	};
}

function testTitle(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in titleTests) {
		{
			var _s:GoString = title(_tt._in);
			if (_s != (_tt._out)) {
				_t.errorf(Go.str("Title(%q) = %q, want %q"), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
			};
		};
	};
}

function testContains(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _ct in containsTests) {
		if (contains(_ct._str, _ct._substr) != (_ct._expected)) {
			_t.errorf(Go.str("Contains(%s, %s) = %v, want %v"), Go.toInterface(_ct._str), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected),
				Go.toInterface(_ct._expected));
		};
	};
}

function testContainsAny(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _ct in containsAnyTests) {
		if (containsAny(_ct._str, _ct._substr) != (_ct._expected)) {
			_t.errorf(Go.str("ContainsAny(%s, %s) = %v, want %v"), Go.toInterface(_ct._str), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected),
				Go.toInterface(_ct._expected));
		};
	};
}

function testContainsRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _ct in containsRuneTests) {
		if (containsRune(_ct._str, _ct._r) != (_ct._expected)) {
			_t.errorf(Go.str("ContainsRune(%q, %q) = %v, want %v"), Go.toInterface(_ct._str), Go.toInterface(_ct._r), Go.toInterface(!_ct._expected),
				Go.toInterface(_ct._expected));
		};
	};
}

function testEqualFold(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in equalFoldTests) {
		{
			var _out:Bool = equalFold(_tt._s, _tt._t);
			if (_out != (_tt._out)) {
				_t.errorf(Go.str("EqualFold(%#q, %#q) = %v, want %v"), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out),
					Go.toInterface(_tt._out));
			};
		};
		{
			var _out:Bool = equalFold(_tt._t, _tt._s);
			if (_out != (_tt._out)) {
				_t.errorf(Go.str("EqualFold(%#q, %#q) = %v, want %v"), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out),
					Go.toInterface(_tt._out));
			};
		};
	};
}

function benchmarkEqualFold(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _tt in equalFoldTests) {
				{
					var _out:Bool = equalFold(_tt._s, _tt._t);
					if (_out != (_tt._out)) {
						_b.fatal(Go.toInterface(Go.str("wrong result")));
					};
				};
			};
		});
	};
}

function testCount(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in countTests) {
		{
			var _num:GoInt = count(_tt._s, _tt._sep);
			if (_num != (_tt._num)) {
				_t.errorf(Go.str("Count(%q, %q) = %d, want %d"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_num),
					Go.toInterface(_tt._num));
			};
		};
	};
}

function testCut(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _cutTests) {
		{
			var __tmp__ = cut(_tt._s, _tt._sep),
				_before:GoString = __tmp__._0,
				_after:GoString = __tmp__._1,
				_found:Bool = __tmp__._2;
			if (((_before != _tt._before) || (_after != _tt._after)) || (_found != _tt._found)) {
				_t.errorf(Go.str("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v"), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_before),
					Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
			};
		};
	};
}

function _makeBenchInputHard():GoString
	return "";

function _benchmarkIndexHard(_b:Ref<stdgo.testing.Testing.B>, _sep:GoString):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			index(_benchInputHard, _sep);
		});
	};
}

function _benchmarkLastIndexHard(_b:Ref<stdgo.testing.Testing.B>, _sep:GoString):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			lastIndex(_benchInputHard, _sep);
		});
	};
}

function _benchmarkCountHard(_b:Ref<stdgo.testing.Testing.B>, _sep:GoString):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			count(_benchInputHard, _sep);
		});
	};
}

function benchmarkIndexHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkIndexHard(_b, Go.str("<>"));
}

function benchmarkIndexHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkIndexHard(_b, Go.str("</pre>"));
}

function benchmarkIndexHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkIndexHard(_b, Go.str("<b>hello world</b>"));
}

function benchmarkIndexHard4(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkIndexHard(_b, Go.str("<pre><b>hello</b><strong>world</strong></pre>"));
}

function benchmarkLastIndexHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkLastIndexHard(_b, Go.str("<>"));
}

function benchmarkLastIndexHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkLastIndexHard(_b, Go.str("</pre>"));
}

function benchmarkLastIndexHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkLastIndexHard(_b, Go.str("<b>hello world</b>"));
}

function benchmarkCountHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCountHard(_b, Go.str("<>"));
}

function benchmarkCountHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCountHard(_b, Go.str("</pre>"));
}

function benchmarkCountHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCountHard(_b, Go.str("<b>hello world</b>"));
}

function benchmarkIndexTorture(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			index(_benchInputTorture, _benchNeedleTorture);
		});
	};
}

function benchmarkCountTorture(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			count(_benchInputTorture, _benchNeedleTorture);
		});
	};
}

function benchmarkCountTortureOverlapping(_b:Ref<stdgo.testing.Testing.B>):Void {
	var a:GoString = repeat(Go.str("ABC"), (1048576 : GoInt));
	var b:GoString = repeat(Go.str("ABC"), (1024 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			count(a, b);
		});
	};
}

function benchmarkCountByte(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _indexSizes = (new Slice<GoInt>(0, 0, (10 : GoInt), (32 : GoInt), (4096 : GoInt), (4194304 : GoInt), (67108864 : GoInt)) : Slice<GoInt>);
	var _benchStr:GoString = repeat(Go.str("some_text=some☺value"),
		((_indexSizes[(_indexSizes.length) - (1 : GoInt)] + Go.str("some_text=some☺value").length) - (1 : GoInt)) / (Go.str("some_text=some☺value").length));
	var _benchFunc = function(_b:Ref<stdgo.testing.Testing.B>, _benchStr:GoString):Void {
		_b.setBytes((_benchStr.length : GoInt64));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				count(_benchStr, Go.str("="));
			});
		};
	};
	for (_0 => _size in _indexSizes) {
		_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_size)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
			_benchFunc(_b, (_benchStr.__slice__(0, _size) : GoString));
		});
	};
}

function benchmarkFields(_b:Ref<stdgo.testing.Testing.B>):Void {
	for (_0 => _sd in _stringdata) {
		_b.run(_sd._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _j:GoInt = (16 : GoInt);
				Go.cfor(_j <= (1048576 : GoInt), _j = _j << (("4" : GoUInt64)), {
					_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
						_b.reportAllocs();
						_b.setBytes((_j : GoInt64));
						var _data:GoString = (_sd._data.__slice__(0, _j) : GoString);
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
	for (_0 => _sd in _stringdata) {
		_b.run(_sd._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _j:GoInt = (16 : GoInt);
				Go.cfor(_j <= (1048576 : GoInt), _j = _j << (("4" : GoUInt64)), {
					_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
						_b.reportAllocs();
						_b.setBytes((_j : GoInt64));
						var _data:GoString = (_sd._data.__slice__(0, _j) : GoString);
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

function benchmarkSplitEmptySeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			split(_benchInputHard, Go.str());
		});
	};
}

function benchmarkSplitSingleByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			split(_benchInputHard, Go.str("/"));
		});
	};
}

function benchmarkSplitMultiByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			split(_benchInputHard, Go.str("hello"));
		});
	};
}

function benchmarkSplitNSingleByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			splitN(_benchInputHard, Go.str("/"), (10 : GoInt));
		});
	};
}

function benchmarkSplitNMultiByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			splitN(_benchInputHard, Go.str("hello"), (10 : GoInt));
		});
	};
}

function benchmarkRepeat(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _s:GoString = Go.str("0123456789");
	for (_0 => _n in (new Slice<GoInt>(0, 0, (5 : GoInt), (10 : GoInt)) : Slice<GoInt>)) {
		for (_1 => _c in (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (6 : GoInt)) : Slice<GoInt>)) {
			_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%dx%d"), Go.toInterface(_n), Go.toInterface(_c)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < _b.n, _i++, {
						repeat((_s.__slice__(0, _n) : GoString), _c);
					});
				};
			});
		};
	};
}

function benchmarkIndexAnyASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _x:GoString = repeat(Go.str("#"), (2048 : GoInt));
	var _cs:GoString = Go.str("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz");
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
					_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d:%d"), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < _b.n, _i++, {
								indexAny((_x.__slice__(0, _k) : GoString), (_cs.__slice__(0, _j) : GoString));
							});
						};
					});
				});
			};
		});
	};
}

function benchmarkIndexAnyUTF8(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _x:GoString = repeat(Go.str("#"), (2048 : GoInt));
	var _cs:GoString = Go.str("你好世界, hello world. 你好世界, hello world. 你好世界, hello world.");
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
					_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d:%d"), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < _b.n, _i++, {
								indexAny((_x.__slice__(0, _k) : GoString), (_cs.__slice__(0, _j) : GoString));
							});
						};
					});
				});
			};
		});
	};
}

function benchmarkLastIndexAnyASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _x:GoString = repeat(Go.str("#"), (2048 : GoInt));
	var _cs:GoString = Go.str("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz");
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
					_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d:%d"), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < _b.n, _i++, {
								lastIndexAny((_x.__slice__(0, _k) : GoString), (_cs.__slice__(0, _j) : GoString));
							});
						};
					});
				});
			};
		});
	};
}

function benchmarkLastIndexAnyUTF8(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _x:GoString = repeat(Go.str("#"), (2048 : GoInt));
	var _cs:GoString = Go.str("你好世界, hello world. 你好世界, hello world. 你好世界, hello world.");
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << (("4" : GoUInt64)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << (("1" : GoUInt64)), {
					_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d:%d"), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < _b.n, _i++, {
								lastIndexAny((_x.__slice__(0, _k) : GoString), (_cs.__slice__(0, _j) : GoString));
							});
						};
					});
				});
			};
		});
	};
}

function benchmarkTrimASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _cs:GoString = Go.str("0123456789abcdef");
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (4096 : GoInt), _k = _k << (("4" : GoUInt64)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (16 : GoInt), _j = _j << (("1" : GoUInt64)), {
					_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%d:%d"), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
						var _x:GoString = repeat((_cs.__slice__(0, _j) : GoString), _k);
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < _b.n, _i++, {
								trim((_x.__slice__(0, _k) : GoString), (_cs.__slice__(0, _j) : GoString));
							});
						};
					});
				});
			};
		});
	};
}

function benchmarkTrimByte(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _x:GoString = Go.str("  the quick brown fox   ");
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			trim(_x, Go.str(" "));
		});
	};
}

function benchmarkIndexPeriodic(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _key:GoString = Go.str("aa");
	for (_0 => _skip in (new GoArray<GoInt>((2 : GoInt), (4 : GoInt), (8 : GoInt), (16 : GoInt), (32 : GoInt), (64 : GoInt)) : GoArray<GoInt>)) {
		_b.run(stdgo.fmt.Fmt.sprintf(Go.str("IndexPeriodic%d"), Go.toInterface(_skip)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
			var _s:GoString = repeat(Go.str("a") + repeat(Go.str(" "), _skip - (1 : GoInt)), (65536 : GoInt) / _skip);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					index(_s, _key);
				});
			};
		});
	};
}

function benchmarkJoin(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _vals = (new Slice<GoString>(0, 0, Go.str("red"), Go.str("yellow"), Go.str("pink"), Go.str("green"), Go.str("purple"), Go.str("orange"),
		Go.str("blue")) : Slice<GoString>);
	{
		var _l:GoInt = (0 : GoInt);
		Go.cfor(_l <= (_vals.length), _l++, {
			_b.run(stdgo.strconv.Strconv.itoa(_l), function(_b:Ref<stdgo.testing.Testing.B>):Void {
				_b.reportAllocs();
				var _vals = (_vals.__slice__(0, _l) : Slice<GoString>);
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < _b.n, _i++, {
						join(_vals, Go.str(" and "));
					});
				};
			});
		});
	};
}

function benchmarkTrimSpace(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _tests = (new Slice<T__struct_13>(0, 0, ({_name: Go.str("NoTrim"), _input: Go.str("typical")} : T__struct_13),
		({_name: Go.str("ASCII"), _input: Go.str("  foo bar  ")} : T__struct_13),
		({_name: Go.str("SomeNonASCII"), _input: Go.str("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    ")} : T__struct_13),
		({_name: Go.str("JustNonASCII"), _input: Go.str("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000")} : T__struct_13)) : Slice<T__struct_13>);
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

function benchmarkReplaceAll(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.reportAllocs();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_stringSink = replaceAll(Go.str("banana"), Go.str("a"), Go.str("<>"));
		});
	};
}

class T_errWriter_asInterface {
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_errWriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings_test.Strings_test.T_errWriter_asInterface) class T_errWriter_static_extension {
	@:keep
	static public function write(_:T_errWriter, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		return {_0: (0 : GoInt), _1: stdgo.fmt.Fmt.errorf(Go.str("unwritable"))};
	}
}
