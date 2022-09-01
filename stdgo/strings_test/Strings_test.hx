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

var _someBytes:Slice<GoUInt8> = ((Go.str("some bytes sdljlk jsklj3lkjlk djlkjw") : GoString) : Slice<GoByte>);

var _compareTests:Slice<T__struct_2> = (new Slice<T__struct_2>(0, 0, ({_a: (Go.str() : GoString), _b: (Go.str() : GoString), _i: (0 : GoInt)} : T__struct_2),
	({_a: (Go.str("a") : GoString), _b: (Go.str() : GoString), _i: (1 : GoInt)} : T__struct_2),
	({_a: (Go.str() : GoString), _b: (Go.str("a") : GoString), _i: (-1 : GoInt)} : T__struct_2),
	({_a: (Go.str("abc") : GoString), _b: (Go.str("abc") : GoString), _i: (0 : GoInt)} : T__struct_2),
	({_a: (Go.str("ab") : GoString), _b: (Go.str("abc") : GoString), _i: (-1 : GoInt)} : T__struct_2),
	({_a: (Go.str("abc") : GoString), _b: (Go.str("ab") : GoString), _i: (1 : GoInt)} : T__struct_2),
	({_a: (Go.str("x") : GoString), _b: (Go.str("ab") : GoString), _i: (1 : GoInt)} : T__struct_2),
	({_a: (Go.str("ab") : GoString), _b: (Go.str("x") : GoString), _i: (-1 : GoInt)} : T__struct_2),
	({_a: (Go.str("x") : GoString), _b: (Go.str("a") : GoString), _i: (1 : GoInt)} : T__struct_2),
	({_a: (Go.str("b") : GoString), _b: (Go.str("x") : GoString), _i: (-1 : GoInt)} : T__struct_2),
	({_a: (Go.str("abcdefgh") : GoString), _b: (Go.str("abcdefgh") : GoString), _i: (0 : GoInt)} : T__struct_2),
	({_a: (Go.str("abcdefghi") : GoString), _b: (Go.str("abcdefghi") : GoString), _i: (0 : GoInt)} : T__struct_2),
	({_a: (Go.str("abcdefghi") : GoString), _b: (Go.str("abcdefghj") : GoString), _i: (-1 : GoInt)} : T__struct_2)) : Slice<T__struct_2>);

var _htmlEscaper:Ref<Replacer> = newReplacer((Go.str("&") : GoString), (Go.str("&amp;") : GoString), (Go.str("<") : GoString), (Go.str("&lt;") : GoString),
	(Go.str(">") : GoString), (Go.str("&gt;") : GoString), ("\"" : GoString), (Go.str("&quot;") : GoString), (Go.str("\'") : GoString),
	(Go.str("&apos;") : GoString));

var _htmlUnescaper:Ref<Replacer> = newReplacer((Go.str("&amp;") : GoString), (Go.str("&") : GoString), (Go.str("&lt;") : GoString), (Go.str("<") : GoString),
	(Go.str("&gt;") : GoString), (Go.str(">") : GoString), (Go.str("&quot;") : GoString), ("\"" : GoString), (Go.str("&apos;") : GoString),
	(Go.str("\'") : GoString));

var _capitalLetters:Ref<Replacer> = newReplacer((Go.str("a") : GoString), (Go.str("A") : GoString), (Go.str("b") : GoString), (Go.str("B") : GoString));

var _algorithmTestCases:Slice<T__struct_5> = (new Slice<T__struct_5>(0, 0,
	({_r: _capitalLetters, _want: (Go.str("*strings.byteReplacer") : GoString)} : T__struct_5),
	({_r: _htmlEscaper, _want: (Go.str("*strings.byteStringReplacer") : GoString)} : T__struct_5),
	({_r: newReplacer((Go.str("12") : GoString), (Go.str("123") : GoString)), _want: (Go.str("*strings.singleStringReplacer") : GoString)} : T__struct_5),
	({_r: newReplacer((Go.str("1") : GoString), (Go.str("12") : GoString)), _want: (Go.str("*strings.byteStringReplacer") : GoString)} : T__struct_5),
	({_r: newReplacer((Go.str() : GoString), (Go.str("X") : GoString)), _want: (Go.str("*strings.genericReplacer") : GoString)} : T__struct_5),
	({_r: newReplacer((Go.str("a") : GoString), (Go.str("1") : GoString), (Go.str("b") : GoString), (Go.str("12") : GoString), (Go.str("cde") : GoString),
		(Go.str("123") : GoString)), _want: (Go.str("*strings.genericReplacer") : GoString)} : T__struct_5)) : Slice<T__struct_5>);

var _mapdata:Slice<T__struct_7> = (new Slice<T__struct_7>(0, 0,
	({_name: (Go.str("ASCII") : GoString), _data: (Go.str("a b c d e f g h i j k l m n o p q r s t u v w x y z") : GoString)} : T__struct_7),
	({_name: (Go.str("Greek") : GoString),
		_data: (Go.str("α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω") : GoString)} : T__struct_7)) : Slice<T__struct_7>);

var _abcd:GoString = (Go.str("abcd") : GoString);
var _faces:GoString = (Go.str("☺☻☹") : GoString);
var _commas:GoString = (Go.str("1,2,3,4") : GoString);
var _dots:GoString = (Go.str("1....2....3....4") : GoString);

var _indexTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str() : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("foo") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("fo") : GoString), (Go.str("foo") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("foo") : GoString), (Go.str("foo") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("oofofoofooo") : GoString), (Go.str("f") : GoString),
		(2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("oofofoofooo") : GoString), (Go.str("foo") : GoString),
		(4 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("barfoobarfoo") : GoString), (Go.str("foo") : GoString),
		(3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("foo") : GoString), (Go.str() : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("foo") : GoString), (Go.str("o") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcABCabc") : GoString), (Go.str("A") : GoString),
		(3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x") : GoString), (Go.str("a") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x") : GoString), (Go.str("x") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("a") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("b") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("c") : GoString),
		(2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("x") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("ab") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("bc") : GoString), (Go.str("ab") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("ab") : GoString), (Go.str("ab") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xab") : GoString), (Go.str("ab") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xab") : GoString).__slice__(0, (2 : GoInt)) : GoString), (Go.str("ab") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("abc") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xbc") : GoString), (Go.str("abc") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("abc") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xabc") : GoString), (Go.str("abc") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xabc") : GoString).__slice__(0, (3 : GoInt)) : GoString), (Go.str("abc") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xabxc") : GoString), (Go.str("abc") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("abcd") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xbcd") : GoString), (Go.str("abcd") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcd") : GoString), (Go.str("abcd") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xabcd") : GoString), (Go.str("abcd") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xyabcd") : GoString).__slice__(0, (5 : GoInt)) : GoString), (Go.str("abcd") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xbcqq") : GoString), (Go.str("abcqq") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcqq") : GoString), (Go.str("abcqq") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xabcqq") : GoString), (Go.str("abcqq") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xyabcqq") : GoString).__slice__(0, (6 : GoInt)) : GoString), (Go.str("abcqq") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xabxcqq") : GoString), (Go.str("abcqq") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xabcqxq") : GoString), (Go.str("abcqq") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("01234567") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("32145678") : GoString), (Go.str("01234567") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("01234567") : GoString), (Go.str("01234567") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x01234567") : GoString), (Go.str("01234567") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x0123456x01234567") : GoString), (Go.str("01234567") : GoString),
		(9 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xx01234567") : GoString).__slice__(0, (9 : GoInt)) : GoString), (Go.str("01234567") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("0123456789") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("3214567844") : GoString), (Go.str("0123456789") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("0123456789") : GoString), (Go.str("0123456789") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x0123456789") : GoString), (Go.str("0123456789") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x012345678x0123456789") : GoString), (Go.str("0123456789") : GoString),
		(11 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xyz0123456789") : GoString).__slice__(0, (12 : GoInt)) : GoString),
		(Go.str("0123456789") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x01234567x89") : GoString), (Go.str("0123456789") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("0123456789012345") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("3214567889012345") : GoString), (Go.str("0123456789012345") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("0123456789012345") : GoString), (Go.str("0123456789012345") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x0123456789012345") : GoString), (Go.str("0123456789012345") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x012345678901234x0123456789012345") : GoString), (Go.str("0123456789012345") : GoString),
		(17 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("01234567890123456789") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("32145678890123456789") : GoString), (Go.str("01234567890123456789") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("01234567890123456789") : GoString), (Go.str("01234567890123456789") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x01234567890123456789") : GoString), (Go.str("01234567890123456789") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x0123456789012345678x01234567890123456789") : GoString),
		(Go.str("01234567890123456789") : GoString), (21 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xyz01234567890123456789") : GoString).__slice__(0, (22 : GoInt)) : GoString),
		(Go.str("01234567890123456789") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("0123456789012345678901234567890") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("321456788901234567890123456789012345678911") : GoString),
		(Go.str("0123456789012345678901234567890") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("0123456789012345678901234567890") : GoString),
		(Go.str("0123456789012345678901234567890") : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x0123456789012345678901234567890") : GoString),
		(Go.str("0123456789012345678901234567890") : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x012345678901234567890123456789x0123456789012345678901234567890") : GoString),
		(Go.str("0123456789012345678901234567890") : GoString), (32 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xyz0123456789012345678901234567890") : GoString).__slice__(0, (33 : GoInt)) : GoString),
		(Go.str("0123456789012345678901234567890") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("01234567890123456789012345678901") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("32145678890123456789012345678901234567890211") : GoString),
		(Go.str("01234567890123456789012345678901") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("01234567890123456789012345678901") : GoString),
		(Go.str("01234567890123456789012345678901") : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x01234567890123456789012345678901") : GoString),
		(Go.str("01234567890123456789012345678901") : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("x0123456789012345678901234567890x01234567890123456789012345678901") : GoString),
		(Go.str("01234567890123456789012345678901") : GoString), (33 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xyz01234567890123456789012345678901") : GoString).__slice__(0, (34 : GoInt)) : GoString),
		(Go.str("01234567890123456789012345678901") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xxxxxx012345678901234567890123456789012345678901234567890123456789012") : GoString),
		(Go.str("012345678901234567890123456789012345678901234567890123456789012") : GoString), (6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("0123456789012345678901234567890123456789") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xx012345678901234567890123456789012345678901234567890123456789012") : GoString),
		(Go.str("0123456789012345678901234567890123456789") : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest(((Go.str("xx012345678901234567890123456789012345678901234567890123456789012") : GoString).__slice__(0,
		(41 : GoInt)) : GoString),
		(Go.str("0123456789012345678901234567890123456789") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xx012345678901234567890123456789012345678901234567890123456789012") : GoString),
		(Go.str("0123456789012345678901234567890123456xxx") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("xx0123456789012345678901234567890123456789012345678901234567890120123456789012345678901234567890123456xxx") : GoString),
		(Go.str("0123456789012345678901234567890123456xxx") : GoString), (65 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("oxoxoxoxoxoxoxoxoxoxoxoy") : GoString), (Go.str("oy") : GoString),
		(22 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("oxoxoxoxoxoxoxoxoxoxoxox") : GoString), (Go.str("oy") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

var _lastIndexTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str() : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("foo") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("fo") : GoString), (Go.str("foo") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("foo") : GoString), (Go.str("foo") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("foo") : GoString), (Go.str("f") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("oofofoofooo") : GoString), (Go.str("f") : GoString),
		(7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("oofofoofooo") : GoString), (Go.str("foo") : GoString),
		(7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("barfoobarfoo") : GoString), (Go.str("foo") : GoString),
		(9 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("foo") : GoString), (Go.str() : GoString),
		(3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("foo") : GoString), (Go.str("o") : GoString),
		(2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcABCabc") : GoString), (Go.str("A") : GoString),
		(3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcABCabc") : GoString), (Go.str("a") : GoString),
		(6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

var _indexAnyTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("abc") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a") : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a") : GoString), (Go.str("a") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str(128) : GoString), (Go.str(255, "b") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("aaa") : GoString), (Go.str("a") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("xyz") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("xcz") : GoString),
		(2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("ab☺c") : GoString), (Go.str("x☺yz") : GoString),
		(2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("cx") : GoString),
		((Go.str("a☺b☻") : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("uvw☻xyz") : GoString),
		((Go.str("a☺b") : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("aRegExp*") : GoString), (Go.str(".(|)*+?^$$[]") : GoString),
		(7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, (Go.str(" ") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("012abcba210") : GoString), (Go.str(255, "b") : GoString),
		(4 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("012", 128, "bcb", 128, "210") : GoString), (Go.str(255, "b") : GoString),
		(3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("0123456", 207, 128, "abc") : GoString), (Go.str(207, "b", 128) : GoString),
		(10 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

var _lastIndexAnyTests:Slice<stdgo.strings_test.Strings_test.IndexTest> = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("a") : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("abc") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a") : GoString), (Go.str() : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a") : GoString), (Go.str("a") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str(128) : GoString), (Go.str(255, "b") : GoString),
		(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("aaa") : GoString), (Go.str("a") : GoString),
		(2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("xyz") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abc") : GoString), (Go.str("ab") : GoString),
		(1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("ab☺c") : GoString), (Go.str("x☺yz") : GoString),
		(2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("cx") : GoString),
		((Go.str("a☺b☻") : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("uvw☻xyz") : GoString),
		((Go.str("a☺b") : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a.RegExp*") : GoString), (Go.str(".(|)*+?^$$[]") : GoString),
		(8 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, (Go.str(" ") : GoString),
		(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("012abcba210") : GoString), (Go.str(255, "b") : GoString),
		(6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("012", 128, "bcb", 128, "210") : GoString), (Go.str(255, "b") : GoString),
		(7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
	(new stdgo.strings_test.Strings_test.IndexTest((Go.str("0123456", 207, 128, "abc") : GoString), (Go.str(207, "b", 128) : GoString),
		(10 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);

var _benchmarkLongString:GoString = repeat((Go.str(" ") : GoString), (100 : GoInt)) + (Go.str("some_text=some☺value") : GoString);

var _splittests:Slice<stdgo.strings_test.Strings_test.SplitTest> = (new Slice<stdgo.strings_test.Strings_test.SplitTest>(0, 0,
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str() : GoString), (Go.str() : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str() : GoString), (2 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("bcd") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str() : GoString), (4 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString), (Go.str("c") : GoString),
			(Go.str("d") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str() : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString), (Go.str("c") : GoString),
			(Go.str("d") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str() : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("☺") : GoString), (Go.str("☻") : GoString),
			(Go.str("☹") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str() : GoString), (3 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("☺") : GoString), (Go.str("☻") : GoString),
			(Go.str("☹") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str() : GoString), (17 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("☺") : GoString), (Go.str("☻") : GoString),
			(Go.str("☹") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("☺�☹") : GoString), (Go.str() : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("☺") : GoString), (Go.str("�") : GoString),
			(Go.str("☹") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str("a") : GoString), (0 : GoInt),
		(null : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str("a") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str() : GoString), (Go.str("bcd") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str("z") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("abcd") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_commas, (Go.str(",") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString),
			(Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_dots, (Go.str("...") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str(".2") : GoString), (Go.str(".3") : GoString),
			(Go.str(".4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str("☹") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("☺☻") : GoString), (Go.str() : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str("~") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("1 2 3 4") : GoString), (Go.str(" ") : GoString), (3 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString),
			(Go.str("3 4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("1 2") : GoString), (Go.str(" ") : GoString), (3 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str() : GoString), (Go.str("T") : GoString), (536870911 : GoInt),
		(new Slice<GoString>(0, 0,
			(Go.str() : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : Slice<stdgo.strings_test.Strings_test.SplitTest>);

var _splitaftertests:Slice<stdgo.strings_test.Strings_test.SplitTest> = (new Slice<stdgo.strings_test.Strings_test.SplitTest>(0, 0,
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str("a") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("bcd") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str("z") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("abcd") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_abcd, (Go.str() : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString), (Go.str("c") : GoString),
			(Go.str("d") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_commas, (Go.str(",") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1,") : GoString), (Go.str("2,") : GoString), (Go.str("3,") : GoString),
			(Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_dots, (Go.str("...") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1...") : GoString), (Go.str(".2...") : GoString), (Go.str(".3...") : GoString),
			(Go.str(".4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str("☹") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("☺☻☹") : GoString), (Go.str() : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str("~") : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest(_faces, (Go.str() : GoString), (-1 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("☺") : GoString), (Go.str("☻") : GoString),
			(Go.str("☹") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("1 2 3 4") : GoString), (Go.str(" ") : GoString), (3 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1 ") : GoString), (Go.str("2 ") : GoString),
			(Go.str("3 4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("1 2 3") : GoString), (Go.str(" ") : GoString), (3 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1 ") : GoString), (Go.str("2 ") : GoString),
			(Go.str("3") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("1 2") : GoString), (Go.str(" ") : GoString), (3 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1 ") : GoString), (Go.str("2") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("123") : GoString), (Go.str() : GoString), (2 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("23") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
	(new stdgo.strings_test.Strings_test.SplitTest((Go.str("123") : GoString), (Go.str() : GoString), (17 : GoInt),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString),
			(Go.str("3") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : Slice<stdgo.strings_test.Strings_test.SplitTest>);

var _fieldstests:Slice<stdgo.strings_test.Strings_test.FieldsTest> = (new Slice<stdgo.strings_test.Strings_test.FieldsTest>(0, 0,
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str() : GoString),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str(" ") : GoString),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str(" \t ") : GoString),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("\u2000") : GoString),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("  abc  ") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("abc") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("1 2 3 4") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString),
			(Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("1  2  3  4") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString),
			(Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("1\t\t2\t\t3\t4") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString),
			(Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("1\u20002\u20013\u20024") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("1") : GoString), (Go.str("2") : GoString), (Go.str("3") : GoString),
			(Go.str("4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("\u2000\u2001\u2002") : GoString),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("\n™\t™\n") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("™") : GoString), (Go.str("™") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("\n\u20001™2\u2000 \u2001 ™") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("1™2") : GoString), (Go.str("™") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("\n1\uFFFD \uFFFD2\u20003\uFFFD4") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("1\uFFFD") : GoString), (Go.str("\uFFFD2") : GoString),
			(Go.str("3\uFFFD4") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("1", 255, "\u2000", 255, "2", 255, " ", 255) : GoString),
		(new Slice<GoString>(0, 0, (Go.str("1", 255) : GoString), (Go.str(255, "2", 255) : GoString),
			(Go.str(255) : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest(_faces,
		(new Slice<GoString>(0, 0,
			_faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : Slice<stdgo.strings_test.Strings_test.FieldsTest>);

var fieldsFuncTests:Slice<stdgo.strings_test.Strings_test.FieldsTest> = (new Slice<stdgo.strings_test.Strings_test.FieldsTest>(0, 0,
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str() : GoString),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("XX") : GoString),
		(new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("XXhiXXX") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("hi") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
	(new stdgo.strings_test.Strings_test.FieldsTest((Go.str("aXXbXXXcX") : GoString),
		(new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString),
			(Go.str("c") : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : Slice<stdgo.strings_test.Strings_test.FieldsTest>);

var _upperTests:Slice<stdgo.strings_test.Strings_test.StringTest> = (new Slice<stdgo.strings_test.Strings_test.StringTest>(0, 0,
	(new stdgo.strings_test.Strings_test.StringTest((Go.str() : GoString), (Go.str() : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("ONLYUPPER") : GoString),
		(Go.str("ONLYUPPER") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("abc") : GoString), (Go.str("ABC") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("AbC123") : GoString),
		(Go.str("ABC123") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("azAZ09_") : GoString),
		(Go.str("AZAZ09_") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("longStrinGwitHmixofsmaLLandcAps") : GoString),
		(Go.str("LONGSTRINGWITHMIXOFSMALLANDCAPS") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("long\u0250string\u0250with\u0250nonascii\u2C6Fchars") : GoString),
		(Go.str("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("\u0250\u0250\u0250\u0250\u0250") : GoString),
		(Go.str("\u2C6F\u2C6F\u2C6F\u2C6F\u2C6F") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("a\u0080\u{0010FFFF}") : GoString),
		(Go.str("A\u0080\u{0010FFFF}") : GoString)) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);

var _lowerTests:Slice<stdgo.strings_test.Strings_test.StringTest> = (new Slice<stdgo.strings_test.Strings_test.StringTest>(0, 0,
	(new stdgo.strings_test.Strings_test.StringTest((Go.str() : GoString), (Go.str() : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("abc") : GoString), (Go.str("abc") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("AbC123") : GoString),
		(Go.str("abc123") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("azAZ09_") : GoString),
		(Go.str("azaz09_") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("longStrinGwitHmixofsmaLLandcAps") : GoString),
		(Go.str("longstringwithmixofsmallandcaps") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("LONG\u2C6FSTRING\u2C6FWITH\u2C6FNONASCII\u2C6FCHARS") : GoString),
		(Go.str("long\u0250string\u0250with\u0250nonascii\u0250chars") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("\u2C6D\u2C6D\u2C6D\u2C6D\u2C6D") : GoString),
		(Go.str("\u0251\u0251\u0251\u0251\u0251") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("A\u0080\u{0010FFFF}") : GoString),
		(Go.str("a\u0080\u{0010FFFF}") : GoString)) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);

var _trimSpaceTests:Slice<stdgo.strings_test.Strings_test.StringTest> = (new Slice<stdgo.strings_test.Strings_test.StringTest>(0, 0,
	(new stdgo.strings_test.Strings_test.StringTest((Go.str() : GoString), (Go.str() : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("abc") : GoString), (Go.str("abc") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString),
		(Go.str("abc") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str(" ") : GoString), (Go.str() : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str(" \t\r\n \t\t\r\r\n\n ") : GoString),
		(Go.str() : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str(" \t\r\n x\t\t\r\r\n\n ") : GoString),
		(Go.str("x") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str(" \u2000\t\r\n x\t\t\r\r\ny\n \u3000") : GoString),
		(Go.str("x\t\t\r\r\ny") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("1 \t\r\n2") : GoString),
		(Go.str("1 \t\r\n2") : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str(" x", 128) : GoString),
		(Go.str("x", 128) : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str(" x", 192) : GoString),
		(Go.str("x", 192) : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("x ", 192, 192, " ") : GoString),
		(Go.str("x ", 192, 192) : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("x ", 192) : GoString),
		(Go.str("x ", 192) : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("x ", 192, " ") : GoString),
		(Go.str("x ", 192) : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("x ", 192, 192, " ") : GoString),
		(Go.str("x ", 192, 192) : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("x ☺", 192, 192, " ") : GoString),
		(Go.str("x ☺", 192, 192) : GoString)) : stdgo.strings_test.Strings_test.StringTest),
	(new stdgo.strings_test.Strings_test.StringTest((Go.str("x ☺ ") : GoString),
		(Go.str("x ☺") : GoString)) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);

var _toValidUTF8Tests:Slice<T__struct_11> = (new Slice<T__struct_11>(0, 0,
	({_in: (Go.str() : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str() : GoString)} : T__struct_11),
	({_in: (Go.str("abc") : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("abc") : GoString)} : T__struct_11),
	({_in: (Go.str("\uFDDD") : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("\uFDDD") : GoString)} : T__struct_11),
	({_in: (Go.str("a", 255, "b") : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("a\uFFFDb") : GoString)} : T__struct_11),
	({_in: (Go.str("a", 255, "b\uFFFD") : GoString), _repl: (Go.str("X") : GoString), _out: (Go.str("aXb\uFFFD") : GoString)} : T__struct_11),
	({_in: (Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255) : GoString), _repl: (Go.str() : GoString), _out: (Go.str("a☺b☺c☺") : GoString)} : T__struct_11),
	({_in: (Go.str("a☺", 255, "b☺", 192, 175, "c☺",
		255) : GoString), _repl: (Go.str("日本語") : GoString), _out: (Go.str("a☺日本語b☺日本語c☺日本語") : GoString)} : T__struct_11),
	({_in: (Go.str(192, 175) : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("\uFFFD") : GoString)} : T__struct_11),
	({_in: (Go.str(224, 128, 175) : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("\uFFFD") : GoString)} : T__struct_11),
	({_in: (Go.str(237, 160, 128) : GoString), _repl: (Go.str("abc") : GoString), _out: (Go.str("abc") : GoString)} : T__struct_11),
	({_in: (Go.str(237, 191, 191) : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("\uFFFD") : GoString)} : T__struct_11),
	({_in: (Go.str(240, 128, 128, 175) : GoString), _repl: (Go.str("☺") : GoString), _out: (Go.str("☺") : GoString)} : T__struct_11),
	({_in: (Go.str(248, 128, 128, 128, 175) : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("\uFFFD") : GoString)} : T__struct_11),
	({_in: (Go.str(252, 128, 128, 128, 128,
		175) : GoString), _repl: (Go.str("\uFFFD") : GoString), _out: (Go.str("\uFFFD") : GoString)} : T__struct_11)) : Slice<T__struct_11>);

var _trimTests:Slice<T__struct_12> = (new Slice<T__struct_12>(0, 0, ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("a") : GoString),
	_out: (Go.str("bb") : GoString)
} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("ab") : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimLeft") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("ab") : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimRight") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("ab") : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimLeft") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("a") : GoString),
	_out: (Go.str("bba") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimLeft") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("b") : GoString),
	_out: (Go.str("abba") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimRight") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("a") : GoString),
	_out: (Go.str("abb") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimRight") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str("b") : GoString),
	_out: (Go.str("abba") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str("<tag>") : GoString),
	_arg: (Go.str("<>") : GoString),
	_out: (Go.str("tag") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str("* listitem") : GoString),
	_arg: (Go.str(" *") : GoString),
	_out: (Go.str("listitem") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: ("\"quote\"" : GoString),
	_arg: ("\"" : GoString),
	_out: (Go.str("quote") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str("\u2C6F\u2C6F\u0250\u0250\u2C6F\u2C6F") : GoString),
	_arg: (Go.str("\u2C6F") : GoString),
	_out: (Go.str("\u0250\u0250") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str(128, "test", 255) : GoString),
	_arg: (Go.str(255) : GoString),
	_out: (Go.str("test") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str(" Ġ ") : GoString),
	_arg: (Go.str(" ") : GoString),
	_out: (Go.str("Ġ") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str(" Ġİ0") : GoString),
	_arg: (Go.str("0 ") : GoString),
	_out: (Go.str("Ġİ") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str() : GoString),
	_out: (Go.str("abba") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str() : GoString),
	_arg: (Go.str("123") : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("Trim") : GoString),
	_in: (Go.str() : GoString),
	_arg: (Go.str() : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimLeft") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str() : GoString),
	_out: (Go.str("abba") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimLeft") : GoString),
	_in: (Go.str() : GoString),
	_arg: (Go.str("123") : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimLeft") : GoString),
	_in: (Go.str() : GoString),
	_arg: (Go.str() : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimRight") : GoString),
	_in: (Go.str("abba") : GoString),
	_arg: (Go.str() : GoString),
	_out: (Go.str("abba") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimRight") : GoString),
	_in: (Go.str() : GoString),
	_arg: (Go.str("123") : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimRight") : GoString),
	_in: (Go.str() : GoString),
	_arg: (Go.str() : GoString),
	_out: (Go.str() : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimRight") : GoString),
	_in: (Go.str("☺", 192) : GoString),
	_arg: (Go.str("☺") : GoString),
	_out: (Go.str("☺", 192) : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimPrefix") : GoString),
	_in: (Go.str("aabb") : GoString),
	_arg: (Go.str("a") : GoString),
	_out: (Go.str("abb") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimPrefix") : GoString),
	_in: (Go.str("aabb") : GoString),
	_arg: (Go.str("b") : GoString),
	_out: (Go.str("aabb") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimSuffix") : GoString),
	_in: (Go.str("aabb") : GoString),
	_arg: (Go.str("a") : GoString),
	_out: (Go.str("aabb") : GoString)
	} : T__struct_12), ({
	_f: (Go.str("TrimSuffix") : GoString),
	_in: (Go.str("aabb") : GoString),
	_arg: (Go.str("b") : GoString),
	_out: (Go.str("aab") : GoString)
	} : T__struct_12)) : Slice<T__struct_12>);

var _isSpace:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isSpace,
	(Go.str("IsSpace") : GoString)) : stdgo.strings_test.Strings_test.T_predicate);

var _isDigit:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isDigit,
	(Go.str("IsDigit") : GoString)) : stdgo.strings_test.Strings_test.T_predicate);

var _isUpper:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(stdgo.unicode.Unicode.isUpper,
	(Go.str("IsUpper") : GoString)) : stdgo.strings_test.Strings_test.T_predicate);

var _isValidRune:stdgo.strings_test.Strings_test.T_predicate = (new stdgo.strings_test.Strings_test.T_predicate(function(_r:GoRune):Bool {
	return _r != (65533 : GoInt32);
},
	(Go.str("IsValidRune") : GoString)) : stdgo.strings_test.Strings_test.T_predicate);

var _trimFuncTests:Slice<T__struct_14> = (new Slice<T__struct_14>(0, 0, ({
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_in: (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString),
	_trimOut: (Go.str("hello") : GoString),
	_leftOut: (Go.str("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString),
	_rightOut: (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello") : GoString)
} : T__struct_14), ({
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_in: (Go.str("\u0e50\u0e5212hello34\u0e50\u0e51") : GoString),
	_trimOut: (Go.str("hello") : GoString),
	_leftOut: (Go.str("hello34\u0e50\u0e51") : GoString),
	_rightOut: (Go.str("\u0e50\u0e5212hello") : GoString)
	} : T__struct_14), ({
	_f: (_isUpper == null ? null : _isUpper.__copy__()),
	_in: (Go.str("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F") : GoString),
	_trimOut: (Go.str("hello") : GoString),
	_leftOut: (Go.str("helloEF\u2C6F\u2C6FGH\u2C6F\u2C6F") : GoString),
	_rightOut: (Go.str("\u2C6F\u2C6F\u2C6F\u2C6FABCDhello") : GoString)
	} : T__struct_14), ({
	_f: (_not((_isSpace == null ? null : _isSpace.__copy__())) == null ? null : _not((_isSpace == null ? null : _isSpace.__copy__())).__copy__()),
	_in: (Go.str("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello") : GoString),
	_trimOut: (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString),
	_leftOut: (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello") : GoString),
	_rightOut: (Go.str("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString)
	} : T__struct_14), ({
	_f: (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()),
	_in: (Go.str("hello\u0e50\u0e521234\u0e50\u0e51helo") : GoString),
	_trimOut: (Go.str("\u0e50\u0e521234\u0e50\u0e51") : GoString),
	_leftOut: (Go.str("\u0e50\u0e521234\u0e50\u0e51helo") : GoString),
	_rightOut: (Go.str("hello\u0e50\u0e521234\u0e50\u0e51") : GoString)
	} : T__struct_14), ({
	_f: (_isValidRune == null ? null : _isValidRune.__copy__()),
	_in: (Go.str("ab", 192, "a", 192, "cd") : GoString),
	_trimOut: (Go.str(192, "a", 192) : GoString),
	_leftOut: (Go.str(192, "a", 192, "cd") : GoString),
	_rightOut: (Go.str("ab", 192, "a", 192) : GoString)
	} : T__struct_14), ({
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_in: (Go.str(192, "a", 192) : GoString),
	_trimOut: (Go.str("a") : GoString),
	_leftOut: (Go.str("a", 192) : GoString),
	_rightOut: (Go.str(192, "a") : GoString)
	} : T__struct_14), ({
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_in: (Go.str() : GoString),
	_trimOut: (Go.str() : GoString),
	_leftOut: (Go.str() : GoString),
	_rightOut: (Go.str() : GoString)
	} : T__struct_14), ({
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_in: (Go.str(" ") : GoString),
	_trimOut: (Go.str() : GoString),
	_leftOut: (Go.str() : GoString),
	_rightOut: (Go.str() : GoString)
	} : T__struct_14)) : Slice<T__struct_14>);

var _indexFuncTests:Slice<T__struct_16> = (new Slice<T__struct_16>(0, 0, ({
	_in: (Go.str() : GoString),
	_f: (_isValidRune == null ? null : _isValidRune.__copy__()),
	_first: (-1 : GoInt),
	_last: (-1 : GoInt)
} : T__struct_16), ({
	_in: (Go.str("abc") : GoString),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (-1 : GoInt),
	_last: (-1 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("0123") : GoString),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (0 : GoInt),
	_last: (3 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("a1b") : GoString),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (1 : GoInt),
	_last: (1 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString),
	_f: (_isSpace == null ? null : _isSpace.__copy__()),
	_first: (0 : GoInt),
	_last: (12 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("\u0e50\u0e5212hello34\u0e50\u0e51") : GoString),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (0 : GoInt),
	_last: (18 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("\u2C6F\u2C6F\u2C6F\u2C6FABCDhelloEF\u2C6F\u2C6FGH\u2C6F\u2C6F") : GoString),
	_f: (_isUpper == null ? null : _isUpper.__copy__()),
	_first: (0 : GoInt),
	_last: (34 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("12\u0e50\u0e52hello34\u0e50\u0e51") : GoString),
	_f: (_not((_isDigit == null ? null : _isDigit.__copy__())) == null ? null : _not((_isDigit == null ? null : _isDigit.__copy__())).__copy__()),
	_first: (8 : GoInt),
	_last: (12 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str(128, "1") : GoString),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (1 : GoInt),
	_last: (1 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str(128, "abc") : GoString),
	_f: (_isDigit == null ? null : _isDigit.__copy__()),
	_first: (-1 : GoInt),
	_last: (-1 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str(192, "a", 192) : GoString),
	_f: (_isValidRune == null ? null : _isValidRune.__copy__()),
	_first: (1 : GoInt),
	_last: (1 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str(192, "a", 192) : GoString),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (2 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str(192, "☺", 192) : GoString),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (4 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str(192, "☺", 192, 192) : GoString),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (5 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("ab", 192, "a", 192, "cd") : GoString),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (2 : GoInt),
	_last: (4 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str("a", 224, 128, "cd") : GoString),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (1 : GoInt),
	_last: (2 : GoInt)
	} : T__struct_16), ({
	_in: (Go.str(128, 128, 128, 128) : GoString),
	_f: (_not((_isValidRune == null ? null : _isValidRune.__copy__())) == null ? null : _not((_isValidRune == null ? null : _isValidRune.__copy__()))
		.__copy__()),
	_first: (0 : GoInt),
	_last: (3 : GoInt)
	} : T__struct_16)) : Slice<T__struct_16>);

var repeatTests:Slice<T__struct_17> = (new Slice<T__struct_17>(0, 0,
	({_in: (Go.str() : GoString), _out: (Go.str() : GoString), _count: (0 : GoInt)} : T__struct_17),
	({_in: (Go.str() : GoString), _out: (Go.str() : GoString), _count: (1 : GoInt)} : T__struct_17),
	({_in: (Go.str() : GoString), _out: (Go.str() : GoString), _count: (2 : GoInt)} : T__struct_17),
	({_in: (Go.str("-") : GoString), _out: (Go.str() : GoString), _count: (0 : GoInt)} : T__struct_17),
	({_in: (Go.str("-") : GoString), _out: (Go.str("-") : GoString), _count: (1 : GoInt)} : T__struct_17),
	({_in: (Go.str("-") : GoString), _out: (Go.str("----------") : GoString), _count: (10 : GoInt)} : T__struct_17),
	({_in: (Go.str("abc ") : GoString), _out: (Go.str("abc abc abc ") : GoString), _count: (3 : GoInt)} : T__struct_17)) : Slice<T__struct_17>);

var runesTests:Slice<T__struct_19> = (new Slice<T__struct_19>(0, 0,
	({_in: (Go.str() : GoString), _out: (new Slice<GoInt32>(0, 0) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: (Go.str(" ") : GoString), _out: (new Slice<GoInt32>(0, 0, (32 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: (Go.str("ABC") : GoString), _out: (new Slice<GoInt32>(0, 0, (65 : GoInt32), (66 : GoInt32),
		(67 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: (Go.str("abc") : GoString), _out: (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32),
		(99 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: (Go.str("\u65e5\u672c\u8a9e") : GoString), _out: (new Slice<GoInt32>(0, 0, (26085 : GoInt32), (26412 : GoInt32),
		(35486 : GoInt32)) : Slice<GoInt32>), _lossy: false} : T__struct_19),
	({_in: (Go.str("ab", 128,
		"c") : GoString), _out: (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32),
			(99 : GoInt32)) : Slice<GoInt32>), _lossy: true} : T__struct_19),
	({_in: (Go.str("ab", 192,
		"c") : GoString), _out: (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32),
			(99 : GoInt32)) : Slice<GoInt32>), _lossy: true} : T__struct_19)) : Slice<T__struct_19>);

var unreadRuneErrorTests:Slice<T__struct_20> = (new Slice<T__struct_20>(0, 0, ({
	_name: (Go.str("Read") : GoString),
	_f: function(_r:Reader):Void {
		_r.read((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>));
	}
} : T__struct_20), ({
	_name: (Go.str("ReadByte") : GoString),
	_f: function(_r:Reader):Void {
		_r.readByte();
	}
	} : T__struct_20), ({
	_name: (Go.str("UnreadRune") : GoString),
	_f: function(_r:Reader):Void {
		_r.unreadRune();
	}
	} : T__struct_20), ({
	_name: (Go.str("Seek") : GoString),
	_f: function(_r:Reader):Void {
		_r.seek((0 : GoInt64), (1 : GoInt));
	}
	} : T__struct_20), ({
	_name: (Go.str("WriteTo") : GoString),
	_f: function(_r:Reader):Void {
		_r.writeTo({
			final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer));
			__self__.bytes = #if !macro function():Slice<GoUInt8> return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).bytes() #else null #end;
			__self__.cap = #if !macro function():GoInt return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).cap() #else null #end;
			__self__.grow = #if !macro function(__0:GoInt):Void(new stdgo.bytes.Bytes.Buffer():stdgo.bytes.Bytes.Buffer).grow(__0) #else null #end;
			__self__.len = #if !macro function():GoInt return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).len() #else null #end;
			__self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)
				.next(__0) #else null #end;
			__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).read(_p) #else null #end;
			__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).readByte() #else null #end;
			__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).readBytes(_c) #else null #end;
			__self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).readFrom(_r_) #else null #end;
			__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).readRune() #else null #end;
			__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).readString(_c) #else null #end;
			__self__.reset = #if !macro function():Void(new stdgo.bytes.Bytes.Buffer():stdgo.bytes.Bytes.Buffer).reset() #else null #end;
			__self__.string = #if !macro function():GoString return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).string() #else null #end;
			__self__.truncate = #if !macro function(__0:GoInt):Void(new stdgo.bytes.Bytes.Buffer():stdgo.bytes.Bytes.Buffer).truncate(__0) #else null #end;
			__self__.unreadByte = #if !macro function():stdgo.Error return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)
				.unreadByte() #else null #end;
			__self__.unreadRune = #if !macro function():stdgo.Error return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)
				.unreadRune() #else null #end;
			__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).write(_p) #else null #end;
			__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)
				.writeByte(_c) #else null #end;
			__self__.writeRune = #if !macro function(_r__:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).writeRune(_r__) #else null #end;
			__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).writeString(__0) #else null #end;
			__self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer).writeTo(_w) #else null #end;
			__self__._empty = #if !macro function():Bool return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)._empty() #else null #end;
			__self__._grow = #if !macro function(__0:GoInt):GoInt return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)._grow(__0) #else null #end;
			__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)._readSlice(_c) #else null #end;
			__self__._tryGrowByReslice = #if !macro function(__0:GoInt):{var _0:GoInt; var _1:Bool;}
				return (new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)._tryGrowByReslice(__0) #else null #end;
			__self__;
		});
	}
	} : T__struct_20)) : Slice<T__struct_20>);

var replaceTests:Slice<T__struct_21> = (new Slice<T__struct_21>(0, 0, ({
	_in: (Go.str("hello") : GoString),
	_old: (Go.str("l") : GoString),
	_new: (Go.str("L") : GoString),
	_n: (0 : GoInt),
	_out: (Go.str("hello") : GoString)
} : T__struct_21), ({
	_in: (Go.str("hello") : GoString),
	_old: (Go.str("l") : GoString),
	_new: (Go.str("L") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("heLLo") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("hello") : GoString),
	_old: (Go.str("x") : GoString),
	_new: (Go.str("X") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("hello") : GoString)
	} : T__struct_21), ({
	_in: (Go.str() : GoString),
	_old: (Go.str("x") : GoString),
	_new: (Go.str("X") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str() : GoString)
	} : T__struct_21), ({
	_in: (Go.str("radar") : GoString),
	_old: (Go.str("r") : GoString),
	_new: (Go.str("<r>") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("<r>ada<r>") : GoString)
	} : T__struct_21), ({
	_in: (Go.str() : GoString),
	_old: (Go.str() : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("<>") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str("a") : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("b<>n<>n<>") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str("a") : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (1 : GoInt),
	_out: (Go.str("b<>nana") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str("a") : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (1000 : GoInt),
	_out: (Go.str("b<>n<>n<>") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str("an") : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("b<><>a") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str("ana") : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("b<>na") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str() : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("<>b<>a<>n<>a<>n<>a<>") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str() : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (10 : GoInt),
	_out: (Go.str("<>b<>a<>n<>a<>n<>a<>") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str() : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (6 : GoInt),
	_out: (Go.str("<>b<>a<>n<>a<>n<>a") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str() : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (5 : GoInt),
	_out: (Go.str("<>b<>a<>n<>a<>na") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str() : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (1 : GoInt),
	_out: (Go.str("<>banana") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str("a") : GoString),
	_new: (Go.str("a") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("banana") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("banana") : GoString),
	_old: (Go.str("a") : GoString),
	_new: (Go.str("a") : GoString),
	_n: (1 : GoInt),
	_out: (Go.str("banana") : GoString)
	} : T__struct_21), ({
	_in: (Go.str("☺☻☹") : GoString),
	_old: (Go.str() : GoString),
	_new: (Go.str("<>") : GoString),
	_n: (-1 : GoInt),
	_out: (Go.str("<>☺<>☻<>☹<>") : GoString)
	} : T__struct_21)) : Slice<T__struct_21>);

var titleTests:Slice<StringTest> = (new Slice<StringTest>(0, 0, (new StringTest((Go.str() : GoString), (Go.str() : GoString)) : StringTest),
	(new StringTest((Go.str("a") : GoString), (Go.str("A") : GoString)) : StringTest),
	(new StringTest((Go.str(" aaa aaa aaa ") : GoString), (Go.str(" Aaa Aaa Aaa ") : GoString)) : StringTest),
	(new StringTest((Go.str(" Aaa Aaa Aaa ") : GoString), (Go.str(" Aaa Aaa Aaa ") : GoString)) : StringTest),
	(new StringTest((Go.str("123a456") : GoString), (Go.str("123a456") : GoString)) : StringTest),
	(new StringTest((Go.str("double-blind") : GoString), (Go.str("Double-Blind") : GoString)) : StringTest),
	(new StringTest((Go.str("ÿøû") : GoString), (Go.str("Ÿøû") : GoString)) : StringTest),
	(new StringTest((Go.str("with_underscore") : GoString), (Go.str("With_underscore") : GoString)) : StringTest),
	(new StringTest((Go.str("unicode ", 226, 128, 168, " line separator") : GoString),
		(Go.str("Unicode ", 226, 128, 168, " Line Separator") : GoString)) : StringTest)) : Slice<StringTest>);

var containsTests:Slice<T__struct_22> = (new Slice<T__struct_22>(0, 0,
	({_str: (Go.str("abc") : GoString), _substr: (Go.str("bc") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("abc") : GoString), _substr: (Go.str("bcd") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("abc") : GoString), _substr: (Go.str() : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str() : GoString), _substr: (Go.str("a") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxx") : GoString), _substr: (Go.str("01") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("01xxxx") : GoString), _substr: (Go.str("01") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx01xx") : GoString), _substr: (Go.str("01") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx01") : GoString), _substr: (Go.str("01") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("01xxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("01") : GoString), _expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx01") : GoString).__slice__(0, (6 : GoInt)) : GoString), _substr: (Go.str("01") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxxx") : GoString), _substr: (Go.str("012") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("012xxxx") : GoString), _substr: (Go.str("012") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx012xx") : GoString), _substr: (Go.str("012") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx012") : GoString), _substr: (Go.str("012") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("012xxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("012") : GoString), _expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx012") : GoString).__slice__(0, (7 : GoInt)) : GoString), _substr: (Go.str("012") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxxxx") : GoString), _substr: (Go.str("0123") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("0123xxxx") : GoString), _substr: (Go.str("0123") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx0123xx") : GoString), _substr: (Go.str("0123") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx0123") : GoString), _substr: (Go.str("0123") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("0123xxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("0123") : GoString), _expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx0123") : GoString).__slice__(0, (8 : GoInt)) : GoString), _substr: (Go.str("0123") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxxxxx") : GoString), _substr: (Go.str("01234") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("01234xxxx") : GoString), _substr: (Go.str("01234") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx01234xx") : GoString), _substr: (Go.str("01234") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx01234") : GoString), _substr: (Go.str("01234") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("01234xxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("01234") : GoString), _expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx01234") : GoString).__slice__(0, (9 : GoInt)) : GoString), _substr: (Go.str("01234") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxxxxxxxx") : GoString), _substr: (Go.str("01234567") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("01234567xxxx") : GoString), _substr: (Go.str("01234567") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx01234567xx") : GoString), _substr: (Go.str("01234567") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx01234567") : GoString), _substr: (Go.str("01234567") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("01234567xxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("01234567") : GoString),
		_expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx01234567") : GoString).__slice__(0,
		(12 : GoInt)) : GoString), _substr: (Go.str("01234567") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxxxxxxxxx") : GoString), _substr: (Go.str("012345678") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("012345678xxxx") : GoString), _substr: (Go.str("012345678") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx012345678xx") : GoString), _substr: (Go.str("012345678") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx012345678") : GoString), _substr: (Go.str("012345678") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("012345678xxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("012345678") : GoString),
		_expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx012345678") : GoString).__slice__(0,
		(13 : GoInt)) : GoString), _substr: (Go.str("012345678") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxxxxxxxxxxxxxxxx") : GoString), _substr: (Go.str("0123456789ABCDEF") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("0123456789ABCDEFxxxx") : GoString), _substr: (Go.str("0123456789ABCDEF") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx0123456789ABCDEFxx") : GoString), _substr: (Go.str("0123456789ABCDEF") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx0123456789ABCDEF") : GoString), _substr: (Go.str("0123456789ABCDEF") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("0123456789ABCDEFxxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("0123456789ABCDEF") : GoString),
		_expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx0123456789ABCDEF") : GoString).__slice__(0,
		(20 : GoInt)) : GoString), _substr: (Go.str("0123456789ABCDEF") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xxxxxxxxxxxxxxxxxxxxx") : GoString), _substr: (Go.str("0123456789ABCDEFG") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("0123456789ABCDEFGxxxx") : GoString), _substr: (Go.str("0123456789ABCDEFG") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xx0123456789ABCDEFGxx") : GoString), _substr: (Go.str("0123456789ABCDEFG") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("xxxx0123456789ABCDEFG") : GoString), _substr: (Go.str("0123456789ABCDEFG") : GoString), _expected: true} : T__struct_22),
	({_str: ((Go.str("0123456789ABCDEFGxxxxx") : GoString).__slice__((1 : GoInt)) : GoString), _substr: (Go.str("0123456789ABCDEFG") : GoString),
		_expected: false} : T__struct_22),
	({_str: ((Go.str("xxxxx0123456789ABCDEFG") : GoString).__slice__(0,
		(21 : GoInt)) : GoString), _substr: (Go.str("0123456789ABCDEFG") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xx01x") : GoString), _substr: (Go.str("012") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xx0123x") : GoString), _substr: (Go.str("01234") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xx01234567x") : GoString), _substr: (Go.str("012345678") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("xx0123456789ABCDEFx") : GoString), _substr: (Go.str("0123456789ABCDEFG") : GoString),
		_expected: false} : T__struct_22)) : Slice<T__struct_22>);

var containsAnyTests:Slice<T__struct_22> = (new Slice<T__struct_22>(0, 0,
	({_str: (Go.str() : GoString), _substr: (Go.str() : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str() : GoString), _substr: (Go.str("a") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str() : GoString), _substr: (Go.str("abc") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("a") : GoString), _substr: (Go.str() : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("a") : GoString), _substr: (Go.str("a") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("aaa") : GoString), _substr: (Go.str("a") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("abc") : GoString), _substr: (Go.str("xyz") : GoString), _expected: false} : T__struct_22),
	({_str: (Go.str("abc") : GoString), _substr: (Go.str("xcz") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("a☺b☻c☹d") : GoString), _substr: (Go.str("uvw☻xyz") : GoString), _expected: true} : T__struct_22),
	({_str: (Go.str("aRegExp*") : GoString), _substr: (Go.str(".(|)*+?^$$[]") : GoString), _expected: true} : T__struct_22),
	({_str: (_dots + _dots) + _dots, _substr: (Go.str(" ") : GoString), _expected: false} : T__struct_22)) : Slice<T__struct_22>);

var containsRuneTests:Slice<T__struct_23> = (new Slice<T__struct_23>(0, 0,
	({_str: (Go.str() : GoString), _r: ("a".code : GoInt32), _expected: false} : T__struct_23),
	({_str: (Go.str("a") : GoString), _r: ("a".code : GoInt32), _expected: true} : T__struct_23),
	({_str: (Go.str("aaa") : GoString), _r: ("a".code : GoInt32), _expected: true} : T__struct_23),
	({_str: (Go.str("abc") : GoString), _r: ("y".code : GoInt32), _expected: false} : T__struct_23),
	({_str: (Go.str("abc") : GoString), _r: ("c".code : GoInt32), _expected: true} : T__struct_23),
	({_str: (Go.str("a☺b☻c☹d") : GoString), _r: ("x".code : GoInt32), _expected: false} : T__struct_23),
	({_str: (Go.str("a☺b☻c☹d") : GoString), _r: ("☻".code : GoInt32), _expected: true} : T__struct_23),
	({_str: (Go.str("aRegExp*") : GoString), _r: ("*".code : GoInt32), _expected: true} : T__struct_23)) : Slice<T__struct_23>);

var equalFoldTests:Slice<T__struct_24> = (new Slice<T__struct_24>(0, 0,
	({_s: (Go.str("abc") : GoString), _t: (Go.str("abc") : GoString), _out: true} : T__struct_24),
	({_s: (Go.str("ABcd") : GoString), _t: (Go.str("ABcd") : GoString), _out: true} : T__struct_24),
	({_s: (Go.str("123abc") : GoString), _t: (Go.str("123ABC") : GoString), _out: true} : T__struct_24),
	({_s: (Go.str("αβδ") : GoString), _t: (Go.str("ΑΒΔ") : GoString), _out: true} : T__struct_24),
	({_s: (Go.str("abc") : GoString), _t: (Go.str("xyz") : GoString), _out: false} : T__struct_24),
	({_s: (Go.str("abc") : GoString), _t: (Go.str("XYZ") : GoString), _out: false} : T__struct_24),
	({_s: (Go.str("abcdefghijk") : GoString), _t: (Go.str("abcdefghijX") : GoString), _out: false} : T__struct_24),
	({_s: (Go.str("abcdefghijk") : GoString), _t: (Go.str("abcdefghij\u212A") : GoString), _out: true} : T__struct_24),
	({_s: (Go.str("abcdefghijK") : GoString), _t: (Go.str("abcdefghij\u212A") : GoString), _out: true} : T__struct_24),
	({_s: (Go.str("abcdefghijkz") : GoString), _t: (Go.str("abcdefghij\u212Ay") : GoString), _out: false} : T__struct_24),
	({_s: (Go.str("abcdefghijKz") : GoString), _t: (Go.str("abcdefghij\u212Ay") : GoString), _out: false} : T__struct_24),
	({_s: (Go.str("1") : GoString), _t: (Go.str("2") : GoString), _out: false} : T__struct_24),
	({_s: (Go.str("utf-8") : GoString), _t: (Go.str("US-ASCII") : GoString), _out: false} : T__struct_24)) : Slice<T__struct_24>);

var countTests:Slice<T__struct_25> = (new Slice<T__struct_25>(0, 0,
	({_s: (Go.str() : GoString), _sep: (Go.str() : GoString), _num: (1 : GoInt)} : T__struct_25),
	({_s: (Go.str() : GoString), _sep: (Go.str("notempty") : GoString), _num: (0 : GoInt)} : T__struct_25),
	({_s: (Go.str("notempty") : GoString), _sep: (Go.str() : GoString), _num: (9 : GoInt)} : T__struct_25),
	({_s: (Go.str("smaller") : GoString), _sep: (Go.str("not smaller") : GoString), _num: (0 : GoInt)} : T__struct_25),
	({_s: (Go.str("12345678987654321") : GoString), _sep: (Go.str("6") : GoString), _num: (2 : GoInt)} : T__struct_25),
	({_s: (Go.str("611161116") : GoString), _sep: (Go.str("6") : GoString), _num: (3 : GoInt)} : T__struct_25),
	({_s: (Go.str("notequal") : GoString), _sep: (Go.str("NotEqual") : GoString), _num: (0 : GoInt)} : T__struct_25),
	({_s: (Go.str("equal") : GoString), _sep: (Go.str("equal") : GoString), _num: (1 : GoInt)} : T__struct_25),
	({_s: (Go.str("abc1231231123q") : GoString), _sep: (Go.str("123") : GoString), _num: (3 : GoInt)} : T__struct_25),
	({_s: (Go.str("11111") : GoString), _sep: (Go.str("11") : GoString), _num: (2 : GoInt)} : T__struct_25)) : Slice<T__struct_25>);

var _cutTests:Slice<T__struct_26> = (new Slice<T__struct_26>(0, 0, ({
	_s: (Go.str("abc") : GoString),
	_sep: (Go.str("b") : GoString),
	_before: (Go.str("a") : GoString),
	_after: (Go.str("c") : GoString),
	_found: true
} : T__struct_26), ({
	_s: (Go.str("abc") : GoString),
	_sep: (Go.str("a") : GoString),
	_before: (Go.str() : GoString),
	_after: (Go.str("bc") : GoString),
	_found: true
	} : T__struct_26), ({
	_s: (Go.str("abc") : GoString),
	_sep: (Go.str("c") : GoString),
	_before: (Go.str("ab") : GoString),
	_after: (Go.str() : GoString),
	_found: true
	} : T__struct_26), ({
	_s: (Go.str("abc") : GoString),
	_sep: (Go.str("abc") : GoString),
	_before: (Go.str() : GoString),
	_after: (Go.str() : GoString),
	_found: true
	} : T__struct_26), ({
	_s: (Go.str("abc") : GoString),
	_sep: (Go.str() : GoString),
	_before: (Go.str() : GoString),
	_after: (Go.str("abc") : GoString),
	_found: true
	} : T__struct_26), ({
	_s: (Go.str("abc") : GoString),
	_sep: (Go.str("d") : GoString),
	_before: (Go.str("abc") : GoString),
	_after: (Go.str() : GoString),
	_found: false
	} : T__struct_26), ({
	_s: (Go.str() : GoString),
	_sep: (Go.str("d") : GoString),
	_before: (Go.str() : GoString),
	_after: (Go.str() : GoString),
	_found: false
	} : T__struct_26), ({
	_s: (Go.str() : GoString),
	_sep: (Go.str() : GoString),
	_before: (Go.str() : GoString),
	_after: (Go.str() : GoString),
	_found: true
	} : T__struct_26)) : Slice<T__struct_26>);

var _benchInputHard:GoString = _makeBenchInputHard();

var _benchInputTorture:GoString = (repeat((Go.str("ABC") : GoString), (1024 : GoInt)) + (Go.str("123") : GoString))
	+ repeat((Go.str("ABC") : GoString), (1024 : GoInt));

var _benchNeedleTorture:GoString = repeat((Go.str("ABC") : GoString), (1025 : GoInt));

var _makeFieldsInput:() -> GoString = function():GoString {
	var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0...(1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
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
	return (_x : GoString);
};

var _makeFieldsInputASCII:() -> GoString = function():GoString {
	var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0...(1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i => _ in _x) {
		if (stdgo.math.rand.Rand.intn((10 : GoInt)) == (0 : GoInt)) {
			_x[_i] = (" ".code : GoUInt8);
		} else {
			_x[_i] = ("x".code : GoUInt8);
		};
	};
	return (_x : GoString);
};

var _stringdata:Slice<T__struct_7> = (new Slice<T__struct_7>(0, 0, ({_name: (Go.str("ASCII") : GoString), _data: _makeFieldsInputASCII()} : T__struct_7),
	({_name: (Go.str("Mixed") : GoString), _data: _makeFieldsInput()} : T__struct_7)) : Slice<T__struct_7>);

var _sinkS:GoString = ("" : GoString);
var _emptyString:GoString = ("" : GoString);
var _benchmarkString:GoString = (Go.str("some_text=some☺value") : GoString);
var _space:GoString = (Go.str("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000") : GoString);
var _stringSink:GoString = ("" : GoString);

@:structInit @:using(stdgo.strings_test.Strings_test.T_errWriter_static_extension) private class T_errWriter {
	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FieldsTest(_s, _a);
	}
}

@:structInit class StringTest {
	public var _in:GoString = "";
	public var _out:GoString = "";

	public function new(?_in:GoString, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_predicate(_f, _name);
	}
}

@:local typedef T__struct_0 = {
	public var _name:GoString;
	public var _fn:Ref<Builder> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	};
	public var _n:GoInt;
	public var _want:GoString;
};

@:local typedef T__struct_1 = {
	public var _name:GoString;
	public var _fn:() -> Void;
	public var _wantPanic:Bool;
};

@:local typedef T__struct_2 = {
	public var _a:GoString;
	public var _b:GoString;
	public var _i:GoInt;
};

@:local typedef T__struct_3 = {
	public var _off:GoInt64;
	public var _seek:GoInt;
	public var _n:GoInt;
	public var _want:GoString;
	public var _wantpos:GoInt64;
	public var _readerr:stdgo.Error;
	public var _seekerr:GoString;
};

@:local typedef T__struct_4 = {
	public var _off:GoInt64;
	public var _n:GoInt;
	public var _want:GoString;
	public var _wanterr:AnyInterface;
};

@:local typedef T__struct_5 = {
	public var _r:Ref<Replacer>;
	public var _want:GoString;
};

@:local typedef T__struct_6 = {
	public var _in:GoString;
	public var _out:GoString;
};

@:local typedef T__struct_7 = {
	public var _name:GoString;
	public var _data:GoString;
};

@:local typedef T__struct_8 = {
	public var _pat:GoString;
	public var _text:GoString;
	public var _index:GoInt;
};

@:local typedef T__struct_9 = {
	public var _pattern:GoString;
	public var _bad:GoArray<GoInt>;
	public var _suf:Slice<GoInt>;
};

@:local typedef T__struct_10 = {
	public var _in:GoString;
	public var _rune:GoInt32;
	public var _want:GoInt;
};

@:local typedef T__struct_11 = {
	public var _in:GoString;
	public var _repl:GoString;
	public var _out:GoString;
};

@:local typedef T__struct_12 = {
	public var _f:GoString;
	public var _in:GoString;
	public var _arg:GoString;
	public var _out:GoString;
};

@:local typedef T__struct_13 = {
	public var _name:GoString;
	public var _input:GoString;
};

@:local typedef T__struct_14 = {
	public var _f:stdgo.strings_test.Strings_test.T_predicate;
	public var _in:GoString;
	public var _trimOut:GoString;
	public var _leftOut:GoString;
	public var _rightOut:GoString;
};

@:local typedef T__struct_15 = {
	public var _name:GoString;
	public var _trim:(GoString, GoInt32->Bool) -> GoString;
	public var _out:GoString;
};

@:local typedef T__struct_16 = {
	public var _in:GoString;
	public var _f:stdgo.strings_test.Strings_test.T_predicate;
	public var _first:GoInt;
	public var _last:GoInt;
};

@:local typedef T__struct_17 = {
	public var _in:GoString;
	public var _out:GoString;
	public var _count:GoInt;
};

@:local typedef T__struct_18 = {
	public var _s:GoString;
	public var _count:GoInt;
	public var _errStr:GoString;
};

@:local typedef T__struct_19 = {
	public var _in:GoString;
	public var _out:Slice<GoInt32>;
	public var _lossy:Bool;
};

@:local typedef T__struct_20 = {
	public var _name:GoString;
	public var _f:Ref<Reader>->Void;
};

@:local typedef T__struct_21 = {
	public var _in:GoString;
	public var _old:GoString;
	public var _new:GoString;
	public var _n:GoInt;
	public var _out:GoString;
};

@:local typedef T__struct_22 = {
	public var _str:GoString;
	public var _substr:GoString;
	public var _expected:Bool;
};

@:local typedef T__struct_23 = {
	public var _str:GoString;
	public var _r:GoInt32;
	public var _expected:Bool;
};

@:local typedef T__struct_24 = {
	public var _s:GoString;
	public var _t:GoString;
	public var _out:Bool;
};

@:local typedef T__struct_25 = {
	public var _s:GoString;
	public var _sep:GoString;
	public var _num:GoInt;
};

@:local typedef T__struct_26 = {
	public var _s:GoString;
	public var _sep:GoString;
	public var _before:GoString;
	public var _after:GoString;
	public var _found:Bool;
};

function _check(_t:stdgo.testing.Testing.T, _b:Builder, _want:GoString):Void {
	_t.helper();
	var _got:GoString = (_b.string() : GoString);
	if (_got != _want) {
		_t.errorf((Go.str("String: got %#q; want %#q") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		return;
	};
	{
		var _n:GoInt = _b.len();
		if (_n != (_got.length)) {
			_t.errorf((Go.str("Len: got %d; but len(String()) is %d") : GoString), Go.toInterface(_n), Go.toInterface((_got.length)));
		};
	};
	{
		var _n:GoInt = _b.cap();
		if (_n < (_got.length)) {
			_t.errorf((Go.str("Cap: got %d; but len(String()) is %d") : GoString), Go.toInterface(_n), Go.toInterface((_got.length)));
		};
	};
}

function testBuilder(_t:stdgo.testing.Testing.T):Void {
	var _b:Builder = ({} : Builder);
	_check(_t, _b, (Go.str() : GoString));
	var __tmp__ = _b.writeString((Go.str("hello") : GoString)),
		_n:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if ((_err != null) || (_n != (5 : GoInt))) {
		_t.errorf((Go.str("WriteString: got %d,%s; want 5,nil") : GoString), Go.toInterface(_n), Go.toInterface(_err));
	};
	_check(_t, _b, (Go.str("hello") : GoString));
	{
		_err = _b.writeByte((" ".code : GoUInt8));
		if (_err != null) {
			_t.errorf((Go.str("WriteByte: %s") : GoString), Go.toInterface(_err));
		};
	};
	_check(_t, _b, (Go.str("hello ") : GoString));
	{
		var __tmp__ = _b.writeString((Go.str("world") : GoString));
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	if ((_err != null) || (_n != (5 : GoInt))) {
		_t.errorf((Go.str("WriteString: got %d,%s; want 5,nil") : GoString), Go.toInterface(_n), Go.toInterface(_err));
	};
	_check(_t, _b, (Go.str("hello world") : GoString));
}

function testBuilderString(_t:stdgo.testing.Testing.T):Void {
	var _b:Builder = ({} : Builder);
	_b.writeString((Go.str("alpha") : GoString));
	_check(_t, _b, (Go.str("alpha") : GoString));
	var _s1:GoString = (_b.string() : GoString);
	_b.writeString((Go.str("beta") : GoString));
	_check(_t, _b, (Go.str("alphabeta") : GoString));
	var _s2:GoString = (_b.string() : GoString);
	_b.writeString((Go.str("gamma") : GoString));
	_check(_t, _b, (Go.str("alphabetagamma") : GoString));
	var _s3:GoString = (_b.string() : GoString);
	{
		var _want:GoString = (Go.str("alpha") : GoString);
		if (_s1 != _want) {
			_t.errorf((Go.str("first String result is now %q; want %q") : GoString), Go.toInterface(_s1), Go.toInterface(_want));
		};
	};
	{
		var _want:GoString = (Go.str("alphabeta") : GoString);
		if (_s2 != _want) {
			_t.errorf((Go.str("second String result is now %q; want %q") : GoString), Go.toInterface(_s2), Go.toInterface(_want));
		};
	};
	{
		var _want:GoString = (Go.str("alphabetagamma") : GoString);
		if (_s3 != _want) {
			_t.errorf((Go.str("third String result is now %q; want %q") : GoString), Go.toInterface(_s3), Go.toInterface(_want));
		};
	};
}

function testBuilderReset(_t:stdgo.testing.Testing.T):Void {
	var _b:Builder = ({} : Builder);
	_check(_t, _b, (Go.str() : GoString));
	_b.writeString((Go.str("aaa") : GoString));
	var _s:GoString = (_b.string() : GoString);
	_check(_t, _b, (Go.str("aaa") : GoString));
	_b.reset();
	_check(_t, _b, (Go.str() : GoString));
	_b.writeString((Go.str("bbb") : GoString));
	_check(_t, _b, (Go.str("bbb") : GoString));
	{
		var _want:GoString = (Go.str("aaa") : GoString);
		if (_s != _want) {
			_t.errorf((Go.str("previous String result changed after Reset: got %q; want %q") : GoString), Go.toInterface(_s), Go.toInterface(_want));
		};
	};
}

function testBuilderGrow(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _growLen in (new Slice<GoInt>(0, 0, (0 : GoInt), (100 : GoInt), (1000 : GoInt), (10000 : GoInt), (100000 : GoInt)) : Slice<GoInt>)) {
		var _p = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>), _growLen);
		var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
			var _b:Builder = ({} : Builder);
			_b.grow(_growLen);
			if (_b.cap() < _growLen) {
				_t.fatalf((Go.str("growLen=%d: Cap() is lower than growLen") : GoString), Go.toInterface(_growLen));
			};
			_b.write(_p);
			if ((_b.string() : GoString) != (_p : GoString)) {
				_t.fatalf((Go.str("growLen=%d: bad data written after Grow") : GoString), Go.toInterface(_growLen));
			};
		});
		var _wantAllocs:GoInt = (1 : GoInt);
		if (_growLen == (0 : GoInt)) {
			_wantAllocs = (0 : GoInt);
		};
		{
			var _g:GoInt = (_allocs : GoInt), _w:GoInt = _wantAllocs;
			if (_g != _w) {
				_t.errorf((Go.str("growLen=%d: got %d allocs during Write; want %v") : GoString), Go.toInterface(_growLen), Go.toInterface(_g),
					Go.toInterface(_w));
			};
		};
	};
}

function testBuilderWrite2(_t:stdgo.testing.Testing.T):Void {
	var _s0:GoString = (Go.str("hello 世界") : GoString);
	for (_0 => _tt in (new Slice<T__struct_0>(0, 0, ({
		_name: (Go.str("Write") : GoString),
		_fn: function(_b:Builder):{var _0:GoInt; var _1:Error;} {
			return _b.write(((Go.str("hello 世界") : GoString) : Slice<GoByte>));
		},
		_n: ((Go.str("hello 世界") : GoString).length),
		_want: (Go.str("hello 世界") : GoString)
	} : T__struct_0), ({
		_name: (Go.str("WriteRune") : GoString),
		_fn: function(_b:Builder):{var _0:GoInt; var _1:Error;} {
			return _b.writeRune(("a".code : GoInt32));
		},
		_n: (1 : GoInt),
		_want: (Go.str("a") : GoString)
		} : T__struct_0), ({
		_name: (Go.str("WriteRuneWide") : GoString),
		_fn: function(_b:Builder):{var _0:GoInt; var _1:Error;} {
			return _b.writeRune(("世".code : GoInt32));
		},
		_n: (3 : GoInt),
		_want: (Go.str("世") : GoString)
		} : T__struct_0), ({
		_name: (Go.str("WriteString") : GoString),
		_fn: function(_b:Builder):{var _0:GoInt; var _1:Error;} {
			return _b.writeString((Go.str("hello 世界") : GoString));
		},
		_n: ((Go.str("hello 世界") : GoString).length),
		_want: (Go.str("hello 世界") : GoString)
		} : T__struct_0)) : Slice<T__struct_0>)) {
		_t.run(_tt._name, function(_t:stdgo.testing.Testing.T):Void {
			var _b:Builder = ({} : Builder);
			var __tmp__ = _tt._fn(_b),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf((Go.str("first call: got %s") : GoString), Go.toInterface(_err));
			};
			if (_n != _tt._n) {
				_t.errorf((Go.str("first call: got n=%d; want %d") : GoString), Go.toInterface(_n), Go.toInterface(_tt._n));
			};
			_check(_t, _b, _tt._want);
			{
				var __tmp__ = _tt._fn(_b);
				_n = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				_t.fatalf((Go.str("second call: got %s") : GoString), Go.toInterface(_err));
			};
			if (_n != _tt._n) {
				_t.errorf((Go.str("second call: got n=%d; want %d") : GoString), Go.toInterface(_n), Go.toInterface(_tt._n));
			};
			_check(_t, _b, _tt._want + _tt._want);
		});
	};
}

function testBuilderWriteByte(_t:stdgo.testing.Testing.T):Void {
	var _b:Builder = ({} : Builder);
	{
		var _err:stdgo.Error = _b.writeByte(("a".code : GoUInt8));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	{
		var _err:stdgo.Error = _b.writeByte((0 : GoUInt8));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	_check(_t, _b, (Go.str("a", 0) : GoString));
}

function testBuilderAllocs(_t:stdgo.testing.Testing.T):Void {
	var _n:GoFloat64 = stdgo.testing.Testing.allocsPerRun((10000 : GoInt), function():Void {
		var _b:Builder = ({} : Builder);
		_b.grow((5 : GoInt));
		_b.writeString((Go.str("abcde") : GoString));
		(_b.string() : GoString);
	});
	if (_n != (1 : GoFloat64)) {
		_t.errorf((Go.str("Builder allocs = %v; want 1") : GoString), Go.toInterface(_n));
	};
}

function testBuilderCopyPanic(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<T__struct_1>(0, 0, ({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1),
		({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1), ({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1),
		({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1), ({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1),
		({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1), ({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1),
		({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1),
		({_name: ("" : GoString), _fn: null, _wantPanic: false} : T__struct_1)) : Slice<T__struct_1>);
	for (_0 => _tt in _tests) {
		var _didPanic = new Chan<Bool>(0, () -> false);
		Go.routine(() -> {
			var a = function():Void {
				var __recover_exception__:AnyInterface = null;
				var __deferstack__:Array<Void->Void> = [];
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
						if (__recover_exception__ != null)
							throw __recover_exception__;
						return;
					};
				} catch (__exception__) {
					if (!(__exception__.native is AnyInterfaceData))
						throw __exception__;
					__recover_exception__ = __exception__.native;
					for (defer in __deferstack__) {
						defer();
					};
					if (__recover_exception__ != null)
						throw __recover_exception__;
					return;
				};
			};
			a();
		});
		{
			var _got:Bool = _didPanic.__get__();
			if (_got != _tt._wantPanic) {
				_t.errorf((Go.str("%s: panicked = %v; want %v") : GoString), Go.toInterface(_tt._name), Go.toInterface(_got), Go.toInterface(_tt._wantPanic));
			};
		};
	};
}

function testBuilderWriteInvalidRune(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _r in (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32)) : Slice<GoInt32>)) {
		var _b:Builder = ({} : Builder);
		_b.writeRune(_r);
		_check(_t, _b, (Go.str("\uFFFD") : GoString));
	};
}

function _benchmarkBuilder(_b:stdgo.testing.Testing.B, _f:(_b:stdgo.testing.Testing.B, _numWrite:GoInt, _grow:Bool) -> Void):Void {
	_b.run((Go.str("1Write_NoGrow") : GoString), function(_b:stdgo.testing.Testing.B):Void {
		_b.reportAllocs();
		_f(_b, (1 : GoInt), false);
	});
	_b.run((Go.str("3Write_NoGrow") : GoString), function(_b:stdgo.testing.Testing.B):Void {
		_b.reportAllocs();
		_f(_b, (3 : GoInt), false);
	});
	_b.run((Go.str("3Write_Grow") : GoString), function(_b:stdgo.testing.Testing.B):Void {
		_b.reportAllocs();
		_f(_b, (3 : GoInt), true);
	});
}

function benchmarkBuildString_Builder(_b:stdgo.testing.Testing.B):Void {
	_benchmarkBuilder(_b, function(_b:stdgo.testing.Testing.B, _numWrite:GoInt, _grow:Bool):Void {
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

function benchmarkBuildString_ByteBuffer(_b:stdgo.testing.Testing.B):Void {
	_benchmarkBuilder(_b, function(_b:stdgo.testing.Testing.B, _numWrite:GoInt, _grow:Bool):Void {
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

function testClone(_t:stdgo.testing.Testing.T):Void {
	var _cloneTests:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str() : GoString), stdgo.strings.Strings.clone((Go.str() : GoString)),
		(stdgo.strings.Strings.repeat((Go.str("a") : GoString), (42 : GoInt)).__slice__(0, (0 : GoInt)) : GoString), (Go.str("short") : GoString),
		stdgo.strings.Strings.repeat((Go.str("a") : GoString), (42 : GoInt))) : Slice<GoString>);
	for (_0 => _input in _cloneTests) {
		var _clone:GoString = stdgo.strings.Strings.clone(_input);
		if (_clone != _input) {
			_t.errorf((Go.str("Clone(%q) = %q; want %q") : GoString), Go.toInterface(_input), Go.toInterface(_clone), Go.toInterface(_input));
		};
		var _inputHeader = ((Go.toInterface(Go.pointer(_input)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
				stdgo.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))) : stdgo.reflect.Reflect.StringHeader);
		var _cloneHeader = ((Go.toInterface(Go.pointer(_clone)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
				stdgo.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))) : stdgo.reflect.Reflect.StringHeader);
		if ((_input.length != (0 : GoInt)) && (_cloneHeader.data == _inputHeader.data)) {
			_t.errorf((Go.str("Clone(%q) return value should not reference inputs backing memory.") : GoString), Go.toInterface(_input));
		};
		var _emptyHeader = ((Go.toInterface(Go.pointer(_emptyString)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
				stdgo.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))) : stdgo.reflect.Reflect.StringHeader);
		if ((_input.length == (0 : GoInt)) && (_cloneHeader.data != _emptyHeader.data)) {
			_t.errorf((Go.str("Clone(%#v) return value should be equal to empty string.") : GoString), Go.toInterface(_inputHeader));
		};
	};
}

function benchmarkClone(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = stdgo.strings.Strings.repeat((Go.str("a") : GoString), (42 : GoInt));
	_b.reportAllocs();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_stringSink = stdgo.strings.Strings.clone(_str);
		});
	};
}

function testCompare(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _compareTests) {
		var _cmp:GoInt = compare(_tt._a, _tt._b);
		if (_cmp != _tt._i) {
			_t.errorf(("Compare(%q, %q) = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_cmp));
		};
	};
}

function testCompareIdenticalString(_t:stdgo.testing.Testing.T):Void {
	var _s:GoString = (Go.str("Hello Gophers!") : GoString);
	if (compare(_s, _s) != (0 : GoInt)) {
		_t.error(Go.toInterface((Go.str("s != s") : GoString)));
	};
	if (compare(_s, (_s.__slice__(0, (1 : GoInt)) : GoString)) != (1 : GoInt)) {
		_t.error(Go.toInterface((Go.str("s > s[:1] failed") : GoString)));
	};
}

function testCompareStrings(_t:stdgo.testing.Testing.T):Void {
	var _unsafeString = function(_b:Slice<GoByte>):GoString {
		return ((Go.toInterface(_b) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(string_kind))) : Pointer<GoString>).value;
	};
	var _lengths = new Slice<GoInt>((0 : GoInt).toBasic(), 0, ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoInt)]);
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
	var _a = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0...(_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
	var _b = new Slice<GoUInt8>((_n + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0...(_n + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
	var _lastLen:GoInt = (0 : GoInt);
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
		var _sa:GoString = _unsafeString(_a), _sb:GoString = _unsafeString(_b);
		var _cmp:GoInt = compare((_sa.__slice__(0, _len) : GoString), (_sb.__slice__(0, _len) : GoString));
		if (_cmp != (0 : GoInt)) {
			_t.errorf(("CompareIdentical(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
		};
		if (_len > (0 : GoInt)) {
			_cmp = compare((_sa.__slice__(0, _len - (1 : GoInt)) : GoString), (_sb.__slice__(0, _len) : GoString));
			if (_cmp != (-1 : GoInt)) {
				_t.errorf(("CompareAshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
			};
			_cmp = compare((_sa.__slice__(0, _len) : GoString), (_sb.__slice__(0, _len - (1 : GoInt)) : GoString));
			if (_cmp != (1 : GoInt)) {
				_t.errorf(("CompareBshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
			};
		};
		{
			var _k:GoInt = _lastLen;
			Go.cfor(_k < _len, _k++, {
				_b[_k] = _a[_k] - (1 : GoUInt8);
				_cmp = compare(_unsafeString((_a.__slice__(0, _len) : Slice<GoUInt8>)), _unsafeString((_b.__slice__(0, _len) : Slice<GoUInt8>)));
				if (_cmp != (1 : GoInt)) {
					_t.errorf(("CompareAbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
				};
				_b[_k] = _a[_k] + (1 : GoUInt8);
				_cmp = compare(_unsafeString((_a.__slice__(0, _len) : Slice<GoUInt8>)), _unsafeString((_b.__slice__(0, _len) : Slice<GoUInt8>)));
				if (_cmp != (-1 : GoInt)) {
					_t.errorf(("CompareBbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
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
			stdgo.fmt.Fmt.fprintf({
				final __self__ = new Builder_wrapper(_b);
				__self__.cap = #if !macro function():GoInt return _b.cap() #else null #end;
				__self__.grow = #if !macro function(__0:GoInt):Void _b.grow(__0) #else null #end;
				__self__.len = #if !macro function():GoInt return _b.len() #else null #end;
				__self__.reset = #if !macro function():Void _b.reset() #else null #end;
				__self__.string = #if !macro function():GoString return _b.string() #else null #end;
				__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
					return _b.write(_p) #else null #end;
				__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
				__self__.writeRune = #if !macro function(_r:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
					return _b.writeRune(_r) #else null #end;
				__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
					return _b.writeString(__0) #else null #end;
				__self__._copyCheck = #if !macro function():Void _b._copyCheck() #else null #end;
				__self__._grow = #if !macro function(__0:GoInt):Void _b._grow(__0) #else null #end;
				__self__;
			}, (Go.str("%d...") : GoString), Go.toInterface(_i));
		});
	};
	_b.writeString((Go.str("ignition") : GoString));
	stdgo.fmt.Fmt.println((_b.string() : GoString));
}

function exampleCompare():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare((Go.str("a") : GoString), (Go.str("b") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare((Go.str("a") : GoString), (Go.str("a") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.compare((Go.str("b") : GoString), (Go.str("a") : GoString)));
}

function exampleContains():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str("seafood") : GoString), (Go.str("foo") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str("seafood") : GoString), (Go.str("bar") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str("seafood") : GoString), (Go.str() : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.contains((Go.str() : GoString), (Go.str() : GoString)));
}

function exampleContainsAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("team") : GoString), (Go.str("i") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("fail") : GoString), (Go.str("ui") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("ure") : GoString), (Go.str("ui") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("failure") : GoString), (Go.str("ui") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str("foo") : GoString), (Go.str() : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsAny((Go.str() : GoString), (Go.str() : GoString)));
}

function exampleContainsRune():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune((Go.str("aardvark") : GoString), (97 : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.containsRune((Go.str("timeout") : GoString), (97 : GoInt32)));
}

function exampleCount():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.count((Go.str("cheese") : GoString), (Go.str("e") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.count((Go.str("five") : GoString), (Go.str() : GoString)));
}

function exampleCut():Void {
	var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
		var __tmp__ = stdgo.strings.Strings.cut(_s, _sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
		stdgo.fmt.Fmt.printf((Go.str("Cut(%q, %q) = %q, %q, %v\n") : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before),
			Go.toInterface(_after), Go.toInterface(_found));
	};
	_show((Go.str("Gopher") : GoString), (Go.str("Go") : GoString));
	_show((Go.str("Gopher") : GoString), (Go.str("ph") : GoString));
	_show((Go.str("Gopher") : GoString), (Go.str("er") : GoString));
	_show((Go.str("Gopher") : GoString), (Go.str("Badger") : GoString));
}

function exampleEqualFold():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold((Go.str("Go") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold((Go.str("AB") : GoString), (Go.str("ab") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.equalFold((Go.str("ß") : GoString), (Go.str("ss") : GoString)));
}

function exampleFields():Void {
	stdgo.fmt.Fmt.printf((Go.str("Fields are: %q") : GoString), Go.toInterface(stdgo.strings.Strings.fields((Go.str("  foo bar  baz   ") : GoString))));
}

function exampleFieldsFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
	};
	stdgo.fmt.Fmt.printf((Go.str("Fields are: %q") : GoString),
		Go.toInterface(stdgo.strings.Strings.fieldsFunc((Go.str("  foo1;bar2,baz3...") : GoString), _f)));
}

function exampleHasPrefix():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix((Go.str("Gopher") : GoString), (Go.str("Go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix((Go.str("Gopher") : GoString), (Go.str("C") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasPrefix((Go.str("Gopher") : GoString), (Go.str() : GoString)));
}

function exampleHasSuffix():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str("O") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str("Ami") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.hasSuffix((Go.str("Amigo") : GoString), (Go.str() : GoString)));
}

function exampleIndex():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index((Go.str("chicken") : GoString), (Go.str("ken") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index((Go.str("chicken") : GoString), (Go.str("dmr") : GoString)));
}

function exampleIndexFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
	};
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc((Go.str("Hello, 世界") : GoString), _f));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexFunc((Go.str("Hello, world") : GoString), _f));
}

function exampleIndexAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny((Go.str("chicken") : GoString), (Go.str("aeiouy") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexAny((Go.str("crwth") : GoString), (Go.str("aeiouy") : GoString)));
}

function exampleIndexByte():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte((Go.str("golang") : GoString), ("g".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte((Go.str("gophers") : GoString), ("h".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexByte((Go.str("golang") : GoString), ("x".code : GoUInt8)));
}

function exampleIndexRune():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune((Go.str("chicken") : GoString), ("k".code : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.indexRune((Go.str("chicken") : GoString), ("d".code : GoInt32)));
}

function exampleLastIndex():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.index((Go.str("go gopher") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex((Go.str("go gopher") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndex((Go.str("go gopher") : GoString), (Go.str("rodent") : GoString)));
}

function exampleLastIndexAny():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny((Go.str("go gopher") : GoString), (Go.str("go") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny((Go.str("go gopher") : GoString), (Go.str("rodent") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexAny((Go.str("go gopher") : GoString), (Go.str("fail") : GoString)));
}

function exampleLastIndexByte():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte((Go.str("Hello, world") : GoString), ("l".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte((Go.str("Hello, world") : GoString), ("o".code : GoUInt8)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexByte((Go.str("Hello, world") : GoString), ("x".code : GoUInt8)));
}

function exampleLastIndexFunc():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc((Go.str("go 123") : GoString), stdgo.unicode.Unicode.isNumber));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc((Go.str("123 go") : GoString), stdgo.unicode.Unicode.isNumber));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.lastIndexFunc((Go.str("go") : GoString), stdgo.unicode.Unicode.isNumber));
}

function exampleJoin():Void {
	var _s = (new Slice<GoString>(0, 0, (Go.str("foo") : GoString), (Go.str("bar") : GoString), (Go.str("baz") : GoString)) : Slice<GoString>);
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.join(_s, (Go.str(", ") : GoString)));
}

function exampleRepeat():Void {
	stdgo.fmt.Fmt.println((Go.str("ba") : GoString) + stdgo.strings.Strings.repeat((Go.str("na") : GoString), (2 : GoInt)));
}

function exampleReplace():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace((Go.str("oink oink oink") : GoString), (Go.str("k") : GoString), (Go.str("ky") : GoString),
		(2 : GoInt)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replace((Go.str("oink oink oink") : GoString), (Go.str("oink") : GoString), (Go.str("moo") : GoString),
		(-1 : GoInt)));
}

function exampleReplaceAll():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.replaceAll((Go.str("oink oink oink") : GoString), (Go.str("oink") : GoString), (Go.str("moo") : GoString)));
}

function exampleSplit():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.strings.Strings.split((Go.str("a,b,c") : GoString), (Go.str(",") : GoString))));
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.split((Go.str("a man a plan a canal panama") : GoString), (Go.str("a ") : GoString))));
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString), Go.toInterface(stdgo.strings.Strings.split((Go.str(" xyz ") : GoString), (Go.str() : GoString))));
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.split((Go.str() : GoString), (Go.str("Bernardo O\'Higgins") : GoString))));
}

function exampleSplitN():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.splitN((Go.str("a,b,c") : GoString), (Go.str(",") : GoString), (2 : GoInt))));
	var _z = stdgo.strings.Strings.splitN((Go.str("a,b,c") : GoString), (Go.str(",") : GoString), (0 : GoInt));
	stdgo.fmt.Fmt.printf((Go.str("%q (nil = %v)\n") : GoString), Go.toInterface(_z), Go.toInterface(_z == null));
}

function exampleSplitAfter():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.splitAfter((Go.str("a,b,c") : GoString), (Go.str(",") : GoString))));
}

function exampleSplitAfterN():Void {
	stdgo.fmt.Fmt.printf((Go.str("%q\n") : GoString),
		Go.toInterface(stdgo.strings.Strings.splitAfterN((Go.str("a,b,c") : GoString), (Go.str(",") : GoString), (2 : GoInt))));
}

function exampleTitle():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title((Go.str("her royal highness") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title((Go.str("loud noises") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.title((Go.str("хлеб") : GoString)));
}

function exampleToTitle():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle((Go.str("her royal highness") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle((Go.str("loud noises") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitle((Go.str("хлеб") : GoString)));
}

function exampleToTitleSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase,
		(Go.str("dünyanın ilk borsa yapısı Aizonai kabul edilir") : GoString)));
}

function exampleMap():Void {
	var _rot13:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if ((_r >= ("A".code : GoInt32)) && (_r <= ("Z".code : GoInt32))) {
			return ("A".code : GoInt32) + ((_r - ("A".code : GoInt32)) + (13 : GoInt32) % (26 : GoInt32));
		} else if ((_r >= ("a".code : GoInt32)) && (_r <= ("z".code : GoInt32))) {
			return ("a".code : GoInt32) + ((_r - ("a".code : GoInt32)) + (13 : GoInt32) % (26 : GoInt32));
		};
		return _r;
	};
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.map(_rot13, (Go.str("\'Twas brillig and the slithy gopher...") : GoString)));
}

function exampleNewReplacer():Void {
	var _r = stdgo.strings.Strings.newReplacer((Go.str("<") : GoString), (Go.str("&lt;") : GoString), (Go.str(">") : GoString), (Go.str("&gt;") : GoString));
	stdgo.fmt.Fmt.println(_r.replace((Go.str("This is <b>HTML</b>!") : GoString)));
}

function exampleToUpper():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpper((Go.str("Gopher") : GoString)));
}

function exampleToUpperSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, (Go.str("örnek iş") : GoString)));
}

function exampleToLower():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLower((Go.str("Gopher") : GoString)));
}

function exampleToLowerSpecial():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, (Go.str("Önnek İş") : GoString)));
}

function exampleTrim():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trim((Go.str("¡¡¡Hello, Gophers!!!") : GoString), (Go.str("!¡") : GoString)));
}

function exampleTrimSpace():Void {
	stdgo.fmt.Fmt.println(stdgo.strings.Strings.trimSpace((Go.str(" \t\n Hello, Gophers \n\t\r\n") : GoString)));
}

function exampleTrimPrefix():Void {
	var _s:GoString = (Go.str("¡¡¡Hello, Gophers!!!") : GoString);
	_s = stdgo.strings.Strings.trimPrefix(_s, (Go.str("¡¡¡Hello, ") : GoString));
	_s = stdgo.strings.Strings.trimPrefix(_s, (Go.str("¡¡¡Howdy, ") : GoString));
	stdgo.fmt.Fmt.print(_s);
}

function exampleTrimSuffix():Void {
	var _s:GoString = (Go.str("¡¡¡Hello, Gophers!!!") : GoString);
	_s = stdgo.strings.Strings.trimSuffix(_s, (Go.str(", Gophers!!!") : GoString));
	_s = stdgo.strings.Strings.trimSuffix(_s, (Go.str(", Marmots!!!") : GoString));
	stdgo.fmt.Fmt.print(_s);
}

function exampleTrimFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimFunc((Go.str("¡¡¡Hello, Gophers!!!") : GoString), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}

function exampleTrimLeft():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeft((Go.str("¡¡¡Hello, Gophers!!!") : GoString), (Go.str("!¡") : GoString)));
}

function exampleTrimLeftFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimLeftFunc((Go.str("¡¡¡Hello, Gophers!!!") : GoString), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}

function exampleTrimRight():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRight((Go.str("¡¡¡Hello, Gophers!!!") : GoString), (Go.str("!¡") : GoString)));
}

function exampleTrimRightFunc():Void {
	stdgo.fmt.Fmt.print(stdgo.strings.Strings.trimRightFunc((Go.str("¡¡¡Hello, Gophers!!!") : GoString), function(_r:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
	}));
}

function testReader(_t:stdgo.testing.Testing.T):Void {
	var _r = stdgo.strings.Strings.newReader((Go.str("0123456789") : GoString));
	var _tests = (new Slice<T__struct_3>(0, 0, ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
	} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3), ({
		_off: (0 : GoInt64),
		_seek: (0 : GoInt),
		_n: (0 : GoInt),
		_want: ("" : GoString),
		_wantpos: (0 : GoInt64),
		_readerr: (null : stdgo.Error),
		_seekerr: ("" : GoString)
		} : T__struct_3)) : Slice<T__struct_3>);
	for (_i => _tt in _tests) {
		var __tmp__ = _r.seek(_tt._off, _tt._seek),
			_pos:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
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
		var _buf = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _r.read(_buf),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
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
	var _r = stdgo.strings.Strings.newReader((Go.str("0123456789") : GoString));
	{
		var __tmp__ = _r.seek(("2147483653" : GoInt64), (0 : GoInt)),
			_0:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _r.read(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoUInt8)])),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_n != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
			_t.errorf((Go.str("Read = %d, %v; want 0, EOF") : GoString), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

function testReaderAt(_t:stdgo.testing.Testing.T):Void {
	var _r = stdgo.strings.Strings.newReader((Go.str("0123456789") : GoString));
	var _tests = (new Slice<T__struct_4>(0, 0, ({
		_off: (0 : GoInt64),
		_n: (10 : GoInt),
		_want: (Go.str("0123456789") : GoString),
		_wanterr: (null : AnyInterface)
	} : T__struct_4), ({
		_off: (1 : GoInt64),
		_n: (10 : GoInt),
		_want: (Go.str("123456789") : GoString),
		_wanterr: Go.toInterface(stdgo.io.Io.eof)
		} : T__struct_4), ({
		_off: (1 : GoInt64),
		_n: (9 : GoInt),
		_want: (Go.str("123456789") : GoString),
		_wanterr: (null : AnyInterface)
		} : T__struct_4), ({
		_off: (11 : GoInt64),
		_n: (10 : GoInt),
		_want: (Go.str() : GoString),
		_wanterr: Go.toInterface(stdgo.io.Io.eof)
		} : T__struct_4), ({
		_off: (0 : GoInt64),
		_n: (0 : GoInt),
		_want: (Go.str() : GoString),
		_wanterr: (null : AnyInterface)
		} : T__struct_4), ({
		_off: (-1 : GoInt64),
		_n: (0 : GoInt),
		_want: (Go.str() : GoString),
		_wanterr: Go.toInterface((Go.str("strings.Reader.ReadAt: negative offset") : GoString))
		} : T__struct_4)) : Slice<T__struct_4>);
	for (_i => _tt in _tests) {
		var _b = new Slice<GoUInt8>((_tt._n : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._n : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _r.readAt(_b, _tt._off),
			_rn:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		var _got:GoString = ((_b.__slice__(0, _rn) : Slice<GoUInt8>) : GoString);
		if (_got != _tt._want) {
			_t.errorf((Go.str("%d. got %q; want %q") : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tt._want));
		};
		if (stdgo.fmt.Fmt.sprintf((Go.str("%v") : GoString),
			Go.toInterface(_err)) != stdgo.fmt.Fmt.sprintf((Go.str("%v") : GoString), Go.toInterface(_tt._wanterr))) {
			_t.errorf((Go.str("%d. got error = %v; want %v") : GoString), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_tt._wanterr));
		};
	};
}

function testReaderAtConcurrent(_t:stdgo.testing.Testing.T):Void {
	var _r = stdgo.strings.Strings.newReader((Go.str("0123456789") : GoString));
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (5:GoInt), _i++, {
			_wg.add((1 : GoInt));
			Go.routine(() -> {
				var a = function(_i:GoInt):Void {
					var __recover_exception__:AnyInterface = null;
					var __deferstack__:Array<Void->Void> = [];
					try {
						__deferstack__.unshift(() -> _wg.done());
						var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1) (0 : GoUInt8)]);
						_r.readAt((_buf.__slice__(0) : Slice<GoUInt8>), (_i : GoInt64));
						for (defer in __deferstack__) {
							defer();
						};
						{
							for (defer in __deferstack__) {
								defer();
							};
							if (__recover_exception__ != null)
								throw __recover_exception__;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						__recover_exception__ = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (__recover_exception__ != null)
							throw __recover_exception__;
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
	var _r = stdgo.strings.Strings.newReader((Go.str() : GoString));
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (5:GoInt), _i++, {
			_wg.add((2 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					var __recover_exception__:AnyInterface = null;
					var __deferstack__:Array<Void->Void> = [];
					try {
						__deferstack__.unshift(() -> _wg.done());
						var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1) (0 : GoUInt8)]);
						_r.read((_buf.__slice__(0) : Slice<GoUInt8>));
						for (defer in __deferstack__) {
							defer();
						};
						{
							for (defer in __deferstack__) {
								defer();
							};
							if (__recover_exception__ != null)
								throw __recover_exception__;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						__recover_exception__ = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (__recover_exception__ != null)
							throw __recover_exception__;
						return;
					};
				};
				a();
			});
			Go.routine(() -> {
				var a = function():Void {
					var __recover_exception__:AnyInterface = null;
					var __deferstack__:Array<Void->Void> = [];
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
							if (__recover_exception__ != null)
								throw __recover_exception__;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						__recover_exception__ = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (__recover_exception__ != null)
							throw __recover_exception__;
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
	var _str:GoString = (Go.str("0123456789") : GoString);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i <= ((Go.str("0123456789") : GoString).length), _i++, {
			var _s:GoString = ((Go.str("0123456789") : GoString).__slice__(_i) : GoString);
			var _r = stdgo.strings.Strings.newReader(_s);
			var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
			var __tmp__ = _r.writeTo({
				final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
				__self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
				__self__.cap = #if !macro function():GoInt return _b.cap() #else null #end;
				__self__.grow = #if !macro function(__0:GoInt):Void _b.grow(__0) #else null #end;
				__self__.len = #if !macro function():GoInt return _b.len() #else null #end;
				__self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _b.next(__0) #else null #end;
				__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
					return _b.read(_p) #else null #end;
				__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
					return _b.readByte() #else null #end;
				__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
					return _b.readBytes(_c) #else null #end;
				__self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
					return _b.readFrom(_r_) #else null #end;
				__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
					return _b.readRune() #else null #end;
				__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
					return _b.readString(_c) #else null #end;
				__self__.reset = #if !macro function():Void _b.reset() #else null #end;
				__self__.string = #if !macro function():GoString return _b.string() #else null #end;
				__self__.truncate = #if !macro function(__0:GoInt):Void _b.truncate(__0) #else null #end;
				__self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
				__self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
				__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
					return _b.write(_p) #else null #end;
				__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
				__self__.writeRune = #if !macro function(_r__:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
					return _b.writeRune(_r__) #else null #end;
				__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
					return _b.writeString(__0) #else null #end;
				__self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
					return _b.writeTo(_w) #else null #end;
				__self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
				__self__._grow = #if !macro function(__0:GoInt):GoInt return _b._grow(__0) #else null #end;
				__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
					return _b._readSlice(_c) #else null #end;
				__self__._tryGrowByReslice = #if !macro function(__0:GoInt):{var _0:GoInt; var _1:Bool;}
					return _b._tryGrowByReslice(__0) #else null #end;
				__self__;
			}), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
			{
				var _expect:GoInt64 = (_s.length : GoInt64);
				if (_n != _expect) {
					_t.errorf((Go.str("got %v; want %v") : GoString), Go.toInterface(_n), Go.toInterface(_expect));
				};
			};
			if (_err != null) {
				_t.errorf((Go.str("for length %d: got error = %v; want nil") : GoString), Go.toInterface((_s.length)), Go.toInterface(_err));
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

/**
	// tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:stdgo.testing.Testing.T):Void {
	var _r = stdgo.strings.Strings.newReader((Go.str("abc") : GoString));
	stdgo.io.Io.copyN(stdgo.io.Io.discard, {
		final __self__ = new Reader_wrapper(_r);
		__self__.len = #if !macro function():GoInt return _r.len() #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return _r.read(_p) #else null #end;
		__self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return _r.readAt(_b, _off) #else null #end;
		__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
			return _r.readByte() #else null #end;
		__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
			return _r.readRune() #else null #end;
		__self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
		__self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return _r.seek(_offset, _whence) #else null #end;
		__self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
		__self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
		__self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
		__self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
			return _r.writeTo(_w) #else null #end;
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
	var _r = stdgo.strings.Strings.newReader((Go.str("世界") : GoString));
	{
		var __tmp__ = _r.readRune(),
			_0:GoInt32 = __tmp__._0,
			_1:GoInt = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			_t.errorf((Go.str("ReadRune: unexpected error: %v") : GoString), Go.toInterface(_err));
		};
	};
	var _want:GoString = (Go.str("abcdef") : GoString);
	_r.reset((Go.str("abcdef") : GoString));
	{
		var _err:stdgo.Error = _r.unreadRune();
		if (_err == null) {
			_t.errorf((Go.str("UnreadRune: expected error, got nil") : GoString));
		};
	};
	var __tmp__ = stdgo.io.Io.readAll({
		final __self__ = new Reader_wrapper(_r);
		__self__.len = #if !macro function():GoInt return _r.len() #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return _r.read(_p) #else null #end;
		__self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return _r.readAt(_b, _off) #else null #end;
		__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
			return _r.readByte() #else null #end;
		__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
			return _r.readRune() #else null #end;
		__self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
		__self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return _r.seek(_offset, _whence) #else null #end;
		__self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
		__self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
		__self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
		__self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
			return _r.writeTo(_w) #else null #end;
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
		var __tmp__ = ((new Reader() : Reader)).read((null : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_n != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
			_t.errorf((Go.str("Read: got %d, %v; want 0, io.EOF") : GoString), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = ((new Reader() : Reader)).readAt((null : Slice<GoUInt8>), (11 : GoInt64)),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_n != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
			_t.errorf((Go.str("ReadAt: got %d, %v; want 0, io.EOF") : GoString), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = ((new Reader() : Reader)).readByte(),
			_b:GoUInt8 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_b != (0 : GoUInt8)) || (_err != stdgo.io.Io.eof)) {
			_t.errorf((Go.str("ReadByte: got %d, %v; want 0, io.EOF") : GoString), Go.toInterface(_b), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = ((new Reader() : Reader)).readRune(),
			_ch:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if ((_ch != (0 : GoInt32) || _size != (0 : GoInt)) || (_err != stdgo.io.Io.eof)) {
			_t.errorf((Go.str("ReadRune: got %d, %d, %v; want 0, 0, io.EOF") : GoString), Go.toInterface(_ch), Go.toInterface(_size), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = ((new Reader() : Reader)).seek((11 : GoInt64), (0 : GoInt)),
			_offset:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
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
		var __tmp__ = ((new Reader() : Reader)).writeTo(stdgo.io.Io.discard),
			_n:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_n != (0 : GoInt64)) || (_err != null)) {
			_t.errorf((Go.str("WriteTo: got %d, %v; want 0, nil") : GoString), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

/**
	// The http package's old HTML escaping function.
**/
function _oldHTMLEscape(_s:GoString):GoString {
	_s = replace(_s, (Go.str("&") : GoString), (Go.str("&amp;") : GoString), (-1 : GoInt));
	_s = replace(_s, (Go.str("<") : GoString), (Go.str("&lt;") : GoString), (-1 : GoInt));
	_s = replace(_s, (Go.str(">") : GoString), (Go.str("&gt;") : GoString), (-1 : GoInt));
	_s = replace(_s, ("\"" : GoString), (Go.str("&quot;") : GoString), (-1 : GoInt));
	_s = replace(_s, (Go.str("\'") : GoString), (Go.str("&apos;") : GoString), (-1 : GoInt));
	return _s;
}

@:structInit private class T_testCase_testReplacer_0 {
	public var _r:Ref<Replacer> = (null : Replacer);
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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_testCase_testReplacer_0(_r, _in, _out);
	}
}

/**
	// TestReplacer tests the replacer implementations.
**/
function testReplacer(_t:stdgo.testing.Testing.T):Void {
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
			_s = (_s.__append__(_str((_i : GoByte)), _str((_i + (1 : GoInt) : GoByte))));
		});
	};
	var _inc = newReplacer(..._s.__toArray__());
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, (Go.str("brad") : GoString),
		(Go.str("BrAd") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, repeat((Go.str("a") : GoString), (32891 : GoInt)),
			repeat((Go.str("A") : GoString), (32891 : GoInt))) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_capitalLetters, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, (Go.str("brad") : GoString),
			(Go.str("csbe") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, (Go.str(0, 255) : GoString),
			(Go.str(1, 0) : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_inc, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer((Go.str("a") : GoString), (Go.str("1") : GoString),
			(Go.str("a") : GoString), (Go.str("2") : GoString)), (Go.str("brad") : GoString),
			(Go.str("br1d") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	_s = (null : Slice<GoString>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (256:GoInt), _i++, {
			var _n:GoInt = (_i + (1 : GoInt)) - ("a".code : GoInt);
			if (_n < (1:GoInt)) {
				_n = (1 : GoInt);
			};
			_s = (_s.__append__(_str((_i : GoByte)), repeat(_str((_i : GoByte)), _n)));
		});
	};
	var _repeat = newReplacer(..._s.__toArray__());
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, (Go.str("No changes") : GoString),
		(Go.str("No changes") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, (Go.str("I <3 escaping & stuff") : GoString),
			(Go.str("I &lt;3 escaping &amp; stuff") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, (Go.str("&&&") : GoString),
			(Go.str("&amp;&amp;&amp;") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlEscaper, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, (Go.str("brad") : GoString),
			(Go.str("bbrrrrrrrrrrrrrrrrrradddd") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, (Go.str("abba") : GoString),
			(Go.str("abbbba") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_repeat, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer((Go.str("a") : GoString), (Go.str("11") : GoString),
			(Go.str("a") : GoString), (Go.str("22") : GoString)),
			(Go.str("brad") : GoString), (Go.str("br11d") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, (Go.str("&amp;amp;") : GoString),
		(Go.str("&amp;") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, (Go.str("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;") : GoString),
			(Go.str("<b>HTML\'s neat</b>") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_htmlUnescaper, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer((Go.str("a") : GoString), (Go.str("1") : GoString),
			(Go.str("a") : GoString), (Go.str("2") : GoString), (Go.str("xxx") : GoString), (Go.str("xxx") : GoString)),
			(Go.str("brad") : GoString), (Go.str("br1d") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer((Go.str("a") : GoString), (Go.str("1") : GoString),
			(Go.str("aa") : GoString), (Go.str("2") : GoString), (Go.str("aaa") : GoString), (Go.str("3") : GoString)),
			(Go.str("aaaa") : GoString), (Go.str("1111") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(newReplacer((Go.str("aaa") : GoString), (Go.str("3") : GoString),
			(Go.str("aa") : GoString), (Go.str("2") : GoString), (Go.str("a") : GoString), (Go.str("1") : GoString)),
			(Go.str("aaaa") : GoString), (Go.str("31") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _gen1 = newReplacer((Go.str("aaa") : GoString), (Go.str("3[aaa]") : GoString), (Go.str("aa") : GoString), (Go.str("2[aa]") : GoString),
		(Go.str("a") : GoString), (Go.str("1[a]") : GoString), (Go.str("i") : GoString), (Go.str("i") : GoString), (Go.str("longerst") : GoString),
		(Go.str("most long") : GoString), (Go.str("longer") : GoString), (Go.str("medium") : GoString), (Go.str("long") : GoString),
		(Go.str("short") : GoString), (Go.str("xx") : GoString), (Go.str("xx") : GoString), (Go.str("x") : GoString), (Go.str("X") : GoString),
		(Go.str("X") : GoString), (Go.str("Y") : GoString), (Go.str("Y") : GoString), (Go.str("Z") : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, (Go.str("fooaaabar") : GoString),
		(Go.str("foo3[aaa]b1[a]r") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, (Go.str("long, longerst, longer") : GoString),
			(Go.str("short, most long, medium") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, (Go.str("xxxxx") : GoString),
			(Go.str("xxxxX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, (Go.str("XiX") : GoString),
			(Go.str("YiY") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen1, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _gen2 = newReplacer((Go.str("roses") : GoString), (Go.str("red") : GoString), (Go.str("violets") : GoString), (Go.str("blue") : GoString),
		(Go.str("sugar") : GoString), (Go.str("sweet") : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2,
		(Go.str("roses are red, violets are blue...") : GoString),
		(Go.str("red are red, blue are blue...") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen2, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _gen3 = newReplacer((Go.str("abracadabra") : GoString), (Go.str("poof") : GoString), (Go.str("abracadabrakazam") : GoString),
		(Go.str("splat") : GoString), (Go.str("abraham") : GoString), (Go.str("lincoln") : GoString), (Go.str("abrasion") : GoString),
		(Go.str("scrape") : GoString), (Go.str("abraham") : GoString), (Go.str("isaac") : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, (Go.str("abracadabrakazam abraham") : GoString),
		(Go.str("poofkazam lincoln") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, (Go.str("abrasion abracad") : GoString),
			(Go.str("scrape abracad") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, (Go.str("abba abram abrasive") : GoString),
			(Go.str("abba abram abrasive") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_gen3, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _foo1 = newReplacer((Go.str("foo1") : GoString), (Go.str("A") : GoString), (Go.str("foo2") : GoString), (Go.str("B") : GoString),
		(Go.str("foo3") : GoString), (Go.str("C") : GoString));
	var _foo2 = newReplacer((Go.str("foo1") : GoString), (Go.str("A") : GoString), (Go.str("foo2") : GoString), (Go.str("B") : GoString),
		(Go.str("foo31") : GoString), (Go.str("C") : GoString), (Go.str("foo32") : GoString), (Go.str("D") : GoString));
	var _foo3 = newReplacer((Go.str("foo11") : GoString), (Go.str("A") : GoString), (Go.str("foo12") : GoString), (Go.str("B") : GoString),
		(Go.str("foo31") : GoString), (Go.str("C") : GoString), (Go.str("foo32") : GoString), (Go.str("D") : GoString));
	var _foo4 = newReplacer((Go.str("foo12") : GoString), (Go.str("B") : GoString), (Go.str("foo32") : GoString), (Go.str("D") : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, (Go.str("fofoofoo12foo32oo") : GoString),
		(Go.str("fofooA2C2oo") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo1, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, (Go.str("fofoofoo12foo32oo") : GoString),
			(Go.str("fofooA2Doo") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo2, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, (Go.str("fofoofoo12foo32oo") : GoString),
			(Go.str("fofooBDoo") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo3, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, (Go.str("fofoofoo12foo32oo") : GoString),
			(Go.str("fofooBDoo") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_foo4, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _allBytes = new Slice<GoUInt8>((256 : GoInt).toBasic(), 0, ...[for (i in 0...(256 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i => _ in _allBytes) {
		_allBytes[_i] = (_i : GoByte);
	};
	var _allString:GoString = (_allBytes : GoString);
	var _genAll = newReplacer(_allString, (Go.str("[all]") : GoString), (Go.str(255) : GoString), (Go.str("[ff]") : GoString), (Go.str(0) : GoString),
		(Go.str("[00]") : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, _allString,
		(Go.str("[all]") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, ((Go.str("a", 255) : GoString) + _allString) + (Go.str(0) : GoString),
			(Go.str("a[ff][all][00]") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_genAll, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _blankToX1 = newReplacer((Go.str() : GoString), (Go.str("X") : GoString));
	var _blankToX2 = newReplacer((Go.str() : GoString), (Go.str("X") : GoString), (Go.str() : GoString), (Go.str() : GoString));
	var _blankHighPriority = newReplacer((Go.str() : GoString), (Go.str("X") : GoString), (Go.str("o") : GoString), (Go.str("O") : GoString));
	var _blankLowPriority = newReplacer((Go.str("o") : GoString), (Go.str("O") : GoString), (Go.str() : GoString), (Go.str("X") : GoString));
	var _blankNoOp1 = newReplacer((Go.str() : GoString), (Go.str() : GoString));
	var _blankNoOp2 = newReplacer((Go.str() : GoString), (Go.str() : GoString), (Go.str() : GoString), (Go.str("A") : GoString));
	var _blankFoo = newReplacer((Go.str() : GoString), (Go.str("X") : GoString), (Go.str("foobar") : GoString), (Go.str("R") : GoString),
		(Go.str("foobaz") : GoString), (Go.str("Z") : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, (Go.str("foo") : GoString),
		(Go.str("XfXoXoX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX1, (Go.str() : GoString),
			(Go.str("X") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, (Go.str("foo") : GoString),
			(Go.str("XfXoXoX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankToX2, (Go.str() : GoString),
			(Go.str("X") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, (Go.str("oo") : GoString),
			(Go.str("XOXOX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, (Go.str("ii") : GoString),
			(Go.str("XiXiX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, (Go.str("oiio") : GoString),
			(Go.str("XOXiXiXOX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, (Go.str("iooi") : GoString),
			(Go.str("XiXOXOXiX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankHighPriority, (Go.str() : GoString),
			(Go.str("X") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, (Go.str("oo") : GoString),
			(Go.str("OOX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, (Go.str("ii") : GoString),
			(Go.str("XiXiX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, (Go.str("oiio") : GoString),
			(Go.str("OXiXiOX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, (Go.str("iooi") : GoString),
			(Go.str("XiOOXiX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankLowPriority, (Go.str() : GoString),
			(Go.str("X") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, (Go.str("foo") : GoString),
			(Go.str("foo") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp1, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, (Go.str("foo") : GoString),
			(Go.str("foo") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankNoOp2, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, (Go.str("foobarfoobaz") : GoString),
			(Go.str("XRXZX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, (Go.str("foobar-foobaz") : GoString),
			(Go.str("XRX-XZX") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_blankFoo, (Go.str() : GoString),
			(Go.str("X") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _abcMatcher = newReplacer((Go.str("abc") : GoString), (Go.str("[match]") : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, (Go.str() : GoString),
		(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, (Go.str("ab") : GoString),
			(Go.str("ab") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, (Go.str("abc") : GoString),
			(Go.str("[match]") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, (Go.str("abcd") : GoString),
			(Go.str("[match]d") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_abcMatcher, (Go.str("cabcabcdabca") : GoString),
			(Go.str("c[match][match]d[match]a") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _noHello = newReplacer((Go.str("Hello") : GoString), (Go.str() : GoString));
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, (Go.str("Hello") : GoString),
		(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, (Go.str("Hellox") : GoString),
			(Go.str("x") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, (Go.str("xHello") : GoString),
			(Go.str("x") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_noHello, (Go.str("xHellox") : GoString),
			(Go.str("xx") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	var _nop = newReplacer();
	_testCases = (_testCases.__append__((new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, (Go.str("abc") : GoString),
		(Go.str("abc") : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0),
		(new stdgo.strings_test.Strings_test.T_testCase_testReplacer_0(_nop, (Go.str() : GoString),
			(Go.str() : GoString)) : stdgo.strings_test.Strings_test.T_testCase_testReplacer_0)));
	for (_i => _tc in _testCases) {
		{
			var _s:GoString = _tc._r.replace(_tc._in);
			if (_s != _tc._out) {
				_t.errorf((Go.str("%d. Replace(%q) = %q, want %q") : GoString), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_s),
					Go.toInterface(_tc._out));
			};
		};
		var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		var __tmp__ = _tc._r.writeString({
			final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
			__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
			__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
			__self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
			__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
			__self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
			__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.read(_p) #else null #end;
			__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
				return _buf.readByte() #else null #end;
			__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf.readBytes(_c) #else null #end;
			__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.readFrom(_r) #else null #end;
			__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
				return _buf.readRune() #else null #end;
			__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
				return _buf.readString(_c) #else null #end;
			__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
			__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
			__self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
			__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
			__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
			__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.write(_p) #else null #end;
			__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
			__self__.writeRune = #if !macro function(_r:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeRune(_r) #else null #end;
			__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeString(__0) #else null #end;
			__self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.writeTo(_w) #else null #end;
			__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
			__self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
			__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf._readSlice(_c) #else null #end;
			__self__._tryGrowByReslice = #if !macro function(__0:GoInt):{var _0:GoInt; var _1:Bool;}
				return _buf._tryGrowByReslice(__0) #else null #end;
			__self__;
		}, _tc._in), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.errorf((Go.str("%d. WriteString: %v") : GoString), Go.toInterface(_i), Go.toInterface(_err));
			continue;
		};
		var _got:GoString = (_buf.string() : GoString);
		if (_got != _tc._out) {
			_t.errorf((Go.str("%d. WriteString(%q) wrote %q, want %q") : GoString), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_got),
				Go.toInterface(_tc._out));
			continue;
		};
		if (_n != (_tc._out.length)) {
			_t.errorf((Go.str("%d. WriteString(%q) wrote correct string but reported %d bytes; want %d (%q)") : GoString), Go.toInterface(_i),
				Go.toInterface(_tc._in), Go.toInterface(_n), Go.toInterface((_tc._out.length)), Go.toInterface(_tc._out));
		};
	};
}

/**
	// TestPickAlgorithm tests that NewReplacer picks the correct algorithm.
**/
function testPickAlgorithm(_t:stdgo.testing.Testing.T):Void {
	for (_i => _tc in _algorithmTestCases) {
		var _got:GoString = stdgo.fmt.Fmt.sprintf((Go.str("%T") : GoString), Go.toInterface(_tc._r.replacer()));
		if (_got != _tc._want) {
			_t.errorf((Go.str("%d. algorithm = %s, want %s") : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tc._want));
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
			final __self__ = new stdgo.strings_test.Strings_test.T_errWriter_wrapper((new stdgo.strings_test.Strings_test.T_errWriter() : stdgo.strings_test.Strings_test.T_errWriter));
			__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return (new stdgo.strings_test.Strings_test.T_errWriter() : stdgo.strings_test.Strings_test.T_errWriter).write(_p) #else null #end;
			__self__;
		},
			(Go.str("abc") : GoString)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
		if ((_n != (0 : GoInt) || _err == null) || (_err.error() != (Go.str("unwritable") : GoString))) {
			_t.errorf((Go.str("%d. WriteStringError = %d, %v, want 0, unwritable") : GoString), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

/**
	// TestGenericTrieBuilding verifies the structure of the generated trie. There
	// is one node per line, and the key ending with the current line is in the
	// trie if it ends with a "+".
**/
function testGenericTrieBuilding(_t:stdgo.testing.Testing.T):Void {
	var _testCases = (new Slice<StringTest>(0, 0,
		(new StringTest((Go.str("abc;abdef;abdefgh;xx;xy;z") : GoString),
			("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t" : GoString)) : StringTest),
		(new StringTest((Go.str("abracadabra;abracadabrakazam;abraham;abrasion") : GoString),
			("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t" : GoString)) : StringTest),
		(new StringTest((Go.str("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y") : GoString),
			("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t" : GoString)) : StringTest),
		(new StringTest((Go.str("foo;;foo;foo1") : GoString), ("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t" : GoString)) : StringTest)) : Slice<StringTest>);
	for (_0 => _tc in _testCases) {
		var _keys = split(_tc._in, (Go.str(";") : GoString));
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
				if (_tc._out[_i] != ("\t".code : GoUInt8)) {
					_wantbuf = (_wantbuf.__append__(_tc._out[_i]));
				};
			});
		};
		var _want:GoString = (_wantbuf : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("PrintTrie(%q)\ngot\n%swant\n%s") : GoString), Go.toInterface(_tc._in), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function benchmarkGenericNoMatch(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("A") : GoString), (100 : GoInt)) + repeat((Go.str("B") : GoString), (100 : GoInt));
	var _generic = newReplacer((Go.str("a") : GoString), (Go.str("A") : GoString), (Go.str("b") : GoString), (Go.str("B") : GoString),
		(Go.str("12") : GoString), (Go.str("123") : GoString));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_generic.replace(_str);
		});
	};
}

function benchmarkGenericMatch1(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("a") : GoString), (100 : GoInt)) + repeat((Go.str("b") : GoString), (100 : GoInt));
	var _generic = newReplacer((Go.str("a") : GoString), (Go.str("A") : GoString), (Go.str("b") : GoString), (Go.str("B") : GoString),
		(Go.str("12") : GoString), (Go.str("123") : GoString));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_generic.replace(_str);
		});
	};
}

function benchmarkGenericMatch2(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("It&apos;s &lt;b&gt;HTML&lt;/b&gt;!") : GoString), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlUnescaper.replace(_str);
		});
	};
}

function _benchmarkSingleString(_b:stdgo.testing.Testing.B, _pattern:GoString, _text:GoString):Void {
	var _r = newReplacer(_pattern, (Go.str("[match]") : GoString));
	_b.setBytes((_text.length : GoInt64));
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_r.replace(_text);
		});
	};
}

function benchmarkSingleMaxSkipping(_b:stdgo.testing.Testing.B):Void {
	_benchmarkSingleString(_b, repeat((Go.str("b") : GoString), (25 : GoInt)), repeat((Go.str("a") : GoString), (10000 : GoInt)));
}

function benchmarkSingleLongSuffixFail(_b:stdgo.testing.Testing.B):Void {
	_benchmarkSingleString(_b, (Go.str("b") : GoString) + repeat((Go.str("a") : GoString), (500 : GoInt)), repeat((Go.str("a") : GoString), (1002 : GoInt)));
}

function benchmarkSingleMatch(_b:stdgo.testing.Testing.B):Void {
	_benchmarkSingleString(_b, (Go.str("abcdef") : GoString), repeat((Go.str("abcdefghijklmno") : GoString), (1000 : GoInt)));
}

function benchmarkByteByteNoMatch(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("A") : GoString), (100 : GoInt)) + repeat((Go.str("B") : GoString), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_capitalLetters.replace(_str);
		});
	};
}

function benchmarkByteByteMatch(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("a") : GoString), (100 : GoInt)) + repeat((Go.str("b") : GoString), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_capitalLetters.replace(_str);
		});
	};
}

function benchmarkByteStringMatch(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = ((Go.str("<") : GoString) + repeat((Go.str("a") : GoString), (99 : GoInt)) + repeat((Go.str("b") : GoString), (99 : GoInt)))
		+ (Go.str(">") : GoString);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlEscaper.replace(_str);
		});
	};
}

function benchmarkHTMLEscapeNew(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = (Go.str("I <3 to escape HTML & other text too.") : GoString);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlEscaper.replace(_str);
		});
	};
}

function benchmarkHTMLEscapeOld(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = (Go.str("I <3 to escape HTML & other text too.") : GoString);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_oldHTMLEscape(_str);
		});
	};
}

function benchmarkByteStringReplacerWriteString(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("I <3 to escape HTML & other text too.") : GoString), (100 : GoInt));
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_htmlEscaper.writeString({
				final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
				__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
				__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
				__self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
				__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
				__self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
				__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.read(_p) #else null #end;
				__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
					return _buf.readByte() #else null #end;
				__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
					return _buf.readBytes(_c) #else null #end;
				__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
					return _buf.readFrom(_r) #else null #end;
				__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
					return _buf.readRune() #else null #end;
				__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
					return _buf.readString(_c) #else null #end;
				__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
				__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
				__self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
				__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
				__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
				__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.write(_p) #else null #end;
				__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
				__self__.writeRune = #if !macro function(_r:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.writeRune(_r) #else null #end;
				__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.writeString(__0) #else null #end;
				__self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
					return _buf.writeTo(_w) #else null #end;
				__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
				__self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
				__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
					return _buf._readSlice(_c) #else null #end;
				__self__._tryGrowByReslice = #if !macro function(__0:GoInt):{var _0:GoInt; var _1:Bool;}
					return _buf._tryGrowByReslice(__0) #else null #end;
				__self__;
			}, _str);
			_buf.reset();
		});
	};
}

function benchmarkByteReplacerWriteString(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("abcdefghijklmnopqrstuvwxyz") : GoString), (100 : GoInt));
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_capitalLetters.writeString({
				final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
				__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
				__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
				__self__.grow = #if !macro function(__0:GoInt):Void _buf.grow(__0) #else null #end;
				__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
				__self__.next = #if !macro function(__0:GoInt):Slice<GoUInt8> return _buf.next(__0) #else null #end;
				__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.read(_p) #else null #end;
				__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
					return _buf.readByte() #else null #end;
				__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
					return _buf.readBytes(_c) #else null #end;
				__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
					return _buf.readFrom(_r) #else null #end;
				__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
					return _buf.readRune() #else null #end;
				__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
					return _buf.readString(_c) #else null #end;
				__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
				__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
				__self__.truncate = #if !macro function(__0:GoInt):Void _buf.truncate(__0) #else null #end;
				__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
				__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
				__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.write(_p) #else null #end;
				__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
				__self__.writeRune = #if !macro function(_r:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.writeRune(_r) #else null #end;
				__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
					return _buf.writeString(__0) #else null #end;
				__self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
					return _buf.writeTo(_w) #else null #end;
				__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
				__self__._grow = #if !macro function(__0:GoInt):GoInt return _buf._grow(__0) #else null #end;
				__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
					return _buf._readSlice(_c) #else null #end;
				__self__._tryGrowByReslice = #if !macro function(__0:GoInt):{var _0:GoInt; var _1:Bool;}
					return _buf._tryGrowByReslice(__0) #else null #end;
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
	var _str:GoString = repeat((Go.str("a") : GoString), (100 : GoInt)) + repeat((Go.str("b") : GoString), (100 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			replace(replace(_str, (Go.str("a") : GoString), (Go.str("A") : GoString), (-1 : GoInt)), (Go.str("b") : GoString), (Go.str("B") : GoString),
				(-1 : GoInt));
		});
	};
}

/**
	// BenchmarkByteByteMap compares byteByteImpl against Map.
**/
function benchmarkByteByteMap(_b:stdgo.testing.Testing.B):Void {
	var _str:GoString = repeat((Go.str("a") : GoString), (100 : GoInt)) + repeat((Go.str("b") : GoString), (100 : GoInt));
	var _fn:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (_r == ("a".code : GoInt32)) {
			return ("A".code : GoInt32);
		} else if (_r == ("b".code : GoInt32)) {
			return ("B".code : GoInt32);
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

function benchmarkMap(_b:stdgo.testing.Testing.B):Void {
	var _mapidentity:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		return _r;
	};
	_b.run((Go.str("identity") : GoString), function(_b:stdgo.testing.Testing.B):Void {
		for (_0 => _md in _mapdata) {
			_b.run(_md._name, function(_b:stdgo.testing.Testing.B):Void {
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
		if ((("a".code : GoInt32) <= _r) && (_r <= ("z".code : GoInt32))) {
			return (_r + ("A".code : GoInt32)) - ("a".code : GoInt32);
		};
		if ((("α".code : GoInt32) <= _r) && (_r <= ("ω".code : GoInt32))) {
			return (_r + ("Α".code : GoInt32)) - ("α".code : GoInt32);
		};
		return _r;
	};
	_b.run((Go.str("change") : GoString), function(_b:stdgo.testing.Testing.B):Void {
		for (_0 => _md in _mapdata) {
			_b.run(_md._name, function(_b:stdgo.testing.Testing.B):Void {
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

function testFinderNext(_t:stdgo.testing.Testing.T):Void {
	var _testCases = (new Slice<T__struct_8>(0, 0, ({_pat: (Go.str() : GoString), _text: (Go.str() : GoString), _index: (0 : GoInt)} : T__struct_8),
		({_pat: (Go.str() : GoString), _text: (Go.str("abc") : GoString), _index: (0 : GoInt)} : T__struct_8),
		({_pat: (Go.str("abc") : GoString), _text: (Go.str() : GoString), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: (Go.str("abc") : GoString), _text: (Go.str("abc") : GoString), _index: (0 : GoInt)} : T__struct_8),
		({_pat: (Go.str("d") : GoString), _text: (Go.str("abcdefg") : GoString), _index: (3 : GoInt)} : T__struct_8),
		({_pat: (Go.str("nan") : GoString), _text: (Go.str("banana") : GoString), _index: (2 : GoInt)} : T__struct_8),
		({_pat: (Go.str("pan") : GoString), _text: (Go.str("anpanman") : GoString), _index: (2 : GoInt)} : T__struct_8),
		({_pat: (Go.str("nnaaman") : GoString), _text: (Go.str("anpanmanam") : GoString), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: (Go.str("abcd") : GoString), _text: (Go.str("abc") : GoString), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: (Go.str("abcd") : GoString), _text: (Go.str("bcd") : GoString), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: (Go.str("bcd") : GoString), _text: (Go.str("abcd") : GoString), _index: (1 : GoInt)} : T__struct_8),
		({_pat: (Go.str("abc") : GoString), _text: (Go.str("acca") : GoString), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: (Go.str("aa") : GoString), _text: (Go.str("aaa") : GoString), _index: (0 : GoInt)} : T__struct_8),
		({_pat: (Go.str("baa") : GoString), _text: (Go.str("aaaaa") : GoString), _index: (-1 : GoInt)} : T__struct_8),
		({_pat: (Go.str("at that") : GoString), _text: (Go.str("which finally halts.  at that point") : GoString),
			_index: (22 : GoInt)} : T__struct_8)) : Slice<T__struct_8>);
	for (_0 => _tc in _testCases) {
		var _got:GoInt = stringFind(_tc._pat, _tc._text);
		var _want:GoInt = _tc._index;
		if (_got != _want) {
			_t.errorf((Go.str("stringFind(%q, %q) got %d, want %d\n") : GoString), Go.toInterface(_tc._pat), Go.toInterface(_tc._text), Go.toInterface(_got),
				Go.toInterface(_want));
		};
	};
}

function testFinderCreation(_t:stdgo.testing.Testing.T):Void {
	var _testCases = (new Slice<T__struct_9>(0, 0, ({
		_pattern: (Go.str("abc") : GoString),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[0] = (2 : GoInt);
			s[1] = (1 : GoInt);
			s[2] = (3 : GoInt);
			s;
		},
		_suf: (new Slice<GoInt>(0, 0, (5 : GoInt), (4 : GoInt), (1 : GoInt)) : Slice<GoInt>)
	} : T__struct_9), ({
		_pattern: (Go.str("mississi") : GoString),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[0] = (3 : GoInt);
			s[1] = (7 : GoInt);
			s[2] = (1 : GoInt);
			s;
		},
		_suf: (new Slice<GoInt>(0, 0, (15 : GoInt), (14 : GoInt), (13 : GoInt), (7 : GoInt), (11 : GoInt), (10 : GoInt), (7 : GoInt),
			(1 : GoInt)) : Slice<GoInt>)
		} : T__struct_9), ({
		_pattern: (Go.str("abcxxxabc") : GoString),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[0] = (2 : GoInt);
			s[1] = (1 : GoInt);
			s[2] = (6 : GoInt);
			s[3] = (3 : GoInt);
			s;
		},
		_suf: (new Slice<GoInt>(0, 0, (14 : GoInt), (13 : GoInt), (12 : GoInt), (11 : GoInt), (10 : GoInt), (9 : GoInt), (11 : GoInt), (10 : GoInt),
			(1 : GoInt)) : Slice<GoInt>)
		} : T__struct_9), ({
		_pattern: (Go.str("abyxcdeyx") : GoString),
		_bad: {
			var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) 0]);
			s[0] = (8 : GoInt);
			s[1] = (7 : GoInt);
			s[2] = (4 : GoInt);
			s[3] = (3 : GoInt);
			s[4] = (2 : GoInt);
			s[5] = (1 : GoInt);
			s[6] = (5 : GoInt);
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
			if (_want == (0 : GoInt)) {
				_want = (_tc._pattern.length);
			};
			if (_got != _want) {
				_t.errorf((Go.str("boyerMoore(%q) bad[\'%c\']: got %d want %d") : GoString), Go.toInterface(_tc._pattern), Go.toInterface(_i),
					Go.toInterface(_got), Go.toInterface(_want));
			};
		};
		if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_good), Go.toInterface(_tc._suf))) {
			_t.errorf((Go.str("boyerMoore(%q) got %v want %v") : GoString), Go.toInterface(_tc._pattern), Go.toInterface(_good), Go.toInterface(_tc._suf));
		};
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

/**
	// Execute f on each test case.  funcName should be the name of f; it's used
	// in failure reports.
**/
function _runIndexTests(_t:stdgo.testing.Testing.T, _f:(_s:GoString, _sep:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<IndexTest>):Void {
	for (_0 => _test in _testCases) {
		var _actual:GoInt = _f(_test._s, _test._sep);
		if (_actual != _test._out) {
			_t.errorf((Go.str("%s(%q,%q) = %v; want %v") : GoString), Go.toInterface(_funcName), Go.toInterface(_test._s), Go.toInterface(_test._sep),
				Go.toInterface(_actual), Go.toInterface(_test._out));
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
	_runIndexTests(_t, indexAny, (Go.str("IndexAny") : GoString), _indexAnyTests);
}

function testLastIndexAny(_t:stdgo.testing.Testing.T):Void {
	_runIndexTests(_t, lastIndexAny, (Go.str("LastIndexAny") : GoString), _lastIndexAnyTests);
}

function testIndexByte(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _indexTests) {
		if ((_tt._sep.length) != (1 : GoInt)) {
			continue;
		};
		var _pos:GoInt = indexByte(_tt._s, _tt._sep[(0 : GoInt)]);
		if (_pos != _tt._out) {
			_t.errorf(("IndexByte(%q, %q) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep[(0 : GoInt)]), Go.toInterface(_pos),
				Go.toInterface(_tt._out));
		};
	};
}

function testLastIndexByte(_t:stdgo.testing.Testing.T):Void {
	var _testCases = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0,
		(new stdgo.strings_test.Strings_test.IndexTest((Go.str() : GoString), (Go.str("q") : GoString),
			(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcdef") : GoString), (Go.str("q") : GoString),
			(-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcdefabcdef") : GoString), (Go.str("a") : GoString),
			((Go.str("abcdef") : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest((Go.str("abcdefabcdef") : GoString), (Go.str("f") : GoString),
			((Go.str("abcdefabcde") : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest((Go.str("zabcdefabcdef") : GoString), (Go.str("z") : GoString),
			(0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
		(new stdgo.strings_test.Strings_test.IndexTest((Go.str("a☺b☻c☹d") : GoString), (Go.str("b") : GoString),
			((Go.str("a☺") : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);
	for (_0 => _test in _testCases) {
		var _actual:GoInt = lastIndexByte(_test._s, _test._sep[(0 : GoInt)]);
		if (_actual != _test._out) {
			_t.errorf((Go.str("LastIndexByte(%q,%c) = %v; want %v") : GoString), Go.toInterface(_test._s), Go.toInterface(_test._sep[(0 : GoInt)]),
				Go.toInterface(_actual), Go.toInterface(_test._out));
		};
	};
}

function _simpleIndex(_s:GoString, _sep:GoString):GoInt {
	var _n:GoInt = (_sep.length);
	{
		var _i:GoInt = _n;
		Go.cfor(_i <= (_s.length), _i++, {
			if ((_s.__slice__(_i - _n, _i) : GoString) == _sep) {
				return _i - _n;
			};
		});
	};
	return (-1 : GoInt);
}

function testIndexRandom(_t:stdgo.testing.Testing.T):Void {
	var _chars:GoString = (Go.str("abcdefghijklmnopqrstuvwxyz0123456789") : GoString);
	{
		var _times:GoInt = (0 : GoInt);
		Go.cfor(_times < (10:GoInt), _times++, {
			{
				var _strLen:GoInt = (5 : GoInt) + stdgo.math.rand.Rand.intn((5 : GoInt));
				Go.cfor(_strLen < (140:GoInt), _strLen = _strLen + ((10 : GoInt)), {
					var _s1 = new Slice<GoUInt8>((_strLen : GoInt).toBasic(), 0, ...[for (i in 0...(_strLen : GoInt).toBasic()) (0 : GoUInt8)]);
					for (_i => _ in _s1) {
						_s1[_i] = (Go.str("abcdefghijklmnopqrstuvwxyz0123456789") : GoString)[
							stdgo.math.rand.Rand.intn(((Go.str("abcdefghijklmnopqrstuvwxyz0123456789") : GoString).length))
						];
					};
					var _s:GoString = (_s1 : GoString);
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < (50:GoInt), _i++, {
							var _begin:GoInt = stdgo.math.rand.Rand.intn((_s.length) + (1 : GoInt));
							var _end:GoInt = _begin + stdgo.math.rand.Rand.intn((_s.length + (1 : GoInt)) - _begin);
							var _sep:GoString = (_s.__slice__(_begin, _end) : GoString);
							if ((_i % (4 : GoInt)) == (0 : GoInt)) {
								var _pos:GoInt = stdgo.math.rand.Rand.intn((_sep.length) + (1 : GoInt));
								_sep = ((_sep.__slice__(0, _pos) : GoString) + (Go.str("A") : GoString)) + (_sep.__slice__(_pos) : GoString);
							};
							var _want:GoInt = _simpleIndex(_s, _sep);
							var _res:GoInt = index(_s, _sep);
							if (_res != _want) {
								_t.errorf((Go.str("Index(%s,%s) = %d; want %d") : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_res),
									Go.toInterface(_want));
							};
						});
					};
				});
			};
		});
	};
}

function testIndexRune(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<T__struct_10>(0, 0, ({_in: (Go.str() : GoString), _rune: ("a".code : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: (Go.str() : GoString), _rune: ("☺".code : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: (Go.str("foo") : GoString), _rune: ("☹".code : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: (Go.str("foo") : GoString), _rune: ("o".code : GoInt32), _want: (1 : GoInt)} : T__struct_10),
		({_in: (Go.str("foo☺bar") : GoString), _rune: ("☺".code : GoInt32), _want: (3 : GoInt)} : T__struct_10),
		({_in: (Go.str("foo☺☻☹bar") : GoString), _rune: ("☹".code : GoInt32), _want: (9 : GoInt)} : T__struct_10),
		({_in: (Go.str("a A x") : GoString), _rune: ("A".code : GoInt32), _want: (2 : GoInt)} : T__struct_10),
		({_in: (Go.str("some_text=some_value") : GoString), _rune: ("=".code : GoInt32), _want: (9 : GoInt)} : T__struct_10),
		({_in: (Go.str("☺a") : GoString), _rune: ("a".code : GoInt32), _want: (3 : GoInt)} : T__struct_10),
		({_in: (Go.str("a☻☺b") : GoString), _rune: ("☺".code : GoInt32), _want: (4 : GoInt)} : T__struct_10),
		({_in: (Go.str("�") : GoString), _rune: ("�".code : GoInt32), _want: (0 : GoInt)} : T__struct_10),
		({_in: (Go.str(255) : GoString), _rune: ("�".code : GoInt32), _want: (0 : GoInt)} : T__struct_10),
		({_in: (Go.str("☻x�") : GoString), _rune: ("�".code : GoInt32), _want: ((Go.str("☻x") : GoString).length)} : T__struct_10),
		({_in: (Go.str("☻x", 226, 152) : GoString), _rune: ("�".code : GoInt32), _want: ((Go.str("☻x") : GoString).length)} : T__struct_10),
		({_in: (Go.str("☻x", 226, 152, "�") : GoString), _rune: ("�".code : GoInt32), _want: ((Go.str("☻x") : GoString).length)} : T__struct_10),
		({_in: (Go.str("☻x", 226, 152, "x") : GoString), _rune: ("�".code : GoInt32), _want: ((Go.str("☻x") : GoString).length)} : T__struct_10),
		({_in: (Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : GoString), _rune: (-1 : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: (Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : GoString), _rune: (55296 : GoInt32), _want: (-1 : GoInt)} : T__struct_10),
		({_in: (Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160,
			128) : GoString), _rune: (1114112 : GoInt32), _want: (-1 : GoInt)} : T__struct_10)) : Slice<T__struct_10>);
	for (_0 => _tt in _tests) {
		{
			var _got:GoInt = indexRune(_tt._in, _tt._rune);
			if (_got != _tt._want) {
				_t.errorf((Go.str("IndexRune(%q, %d) = %v; want %v") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
	var _haystack:GoString = (Go.str("test世界") : GoString);
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
	if ((_allocs != (0 : GoFloat64)) && (stdgo.testing.Testing.coverMode() == (Go.str() : GoString))) {
		_t.errorf((Go.str("expected no allocations, got %f") : GoString), Go.toInterface(_allocs));
	};
}

function benchmarkIndexRune(_b:stdgo.testing.Testing.B):Void {
	{
		var _got:GoInt = indexRune((Go.str("some_text=some☺value") : GoString), ("☺".code : GoInt32));
		if (_got != (14 : GoInt)) {
			_b.fatalf((Go.str("wrong index: expected 14, got=%d") : GoString), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexRune((Go.str("some_text=some☺value") : GoString), ("☺".code : GoInt32));
		});
	};
}

function benchmarkIndexRuneLongString(_b:stdgo.testing.Testing.B):Void {
	{
		var _got:GoInt = indexRune(_benchmarkLongString, ("☺".code : GoInt32));
		if (_got != (114 : GoInt)) {
			_b.fatalf((Go.str("wrong index: expected 114, got=%d") : GoString), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexRune(_benchmarkLongString, ("☺".code : GoInt32));
		});
	};
}

function benchmarkIndexRuneFastPath(_b:stdgo.testing.Testing.B):Void {
	{
		var _got:GoInt = indexRune((Go.str("some_text=some☺value") : GoString), ("v".code : GoInt32));
		if (_got != (17 : GoInt)) {
			_b.fatalf((Go.str("wrong index: expected 17, got=%d") : GoString), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexRune((Go.str("some_text=some☺value") : GoString), ("v".code : GoInt32));
		});
	};
}

function benchmarkIndex(_b:stdgo.testing.Testing.B):Void {
	{
		var _got:GoInt = index((Go.str("some_text=some☺value") : GoString), (Go.str("v") : GoString));
		if (_got != (17 : GoInt)) {
			_b.fatalf((Go.str("wrong index: expected 17, got=%d") : GoString), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			index((Go.str("some_text=some☺value") : GoString), (Go.str("v") : GoString));
		});
	};
}

function benchmarkLastIndex(_b:stdgo.testing.Testing.B):Void {
	{
		var _got:GoInt = index((Go.str("some_text=some☺value") : GoString), (Go.str("v") : GoString));
		if (_got != (17 : GoInt)) {
			_b.fatalf((Go.str("wrong index: expected 17, got=%d") : GoString), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			lastIndex((Go.str("some_text=some☺value") : GoString), (Go.str("v") : GoString));
		});
	};
}

function benchmarkIndexByte(_b:stdgo.testing.Testing.B):Void {
	{
		var _got:GoInt = indexByte((Go.str("some_text=some☺value") : GoString), ("v".code : GoUInt8));
		if (_got != (17 : GoInt)) {
			_b.fatalf((Go.str("wrong index: expected 17, got=%d") : GoString), Go.toInterface(_got));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			indexByte((Go.str("some_text=some☺value") : GoString), ("v".code : GoUInt8));
		});
	};
}

function testSplit(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _splittests) {
		var _a = splitN(_tt._s, _tt._sep, _tt._n);
		if (!_eq(_a, _tt._a)) {
			_t.errorf((Go.str("Split(%q, %q, %d) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n),
				Go.toInterface(_a), Go.toInterface(_tt._a));
			continue;
		};
		if (_tt._n == (0 : GoInt)) {
			continue;
		};
		var _s:GoString = join(_a, _tt._sep);
		if (_s != _tt._s) {
			_t.errorf((Go.str("Join(Split(%q, %q, %d), %q) = %q") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n),
				Go.toInterface(_tt._sep), Go.toInterface(_s));
		};
		if (_tt._n < (0:GoInt)) {
			var _b = split(_tt._s, _tt._sep);
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
				_t.errorf((Go.str("Split disagrees with SplitN(%q, %q, %d) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep),
					Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
			};
		};
	};
}

function testSplitAfter(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _splitaftertests) {
		var _a = splitAfterN(_tt._s, _tt._sep, _tt._n);
		if (!_eq(_a, _tt._a)) {
			_t.errorf(("Split(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n),
				Go.toInterface(_a), Go.toInterface(_tt._a));
			continue;
		};
		var _s:GoString = join(_a, (Go.str() : GoString));
		if (_s != _tt._s) {
			_t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n),
				Go.toInterface(_tt._sep), Go.toInterface(_s));
		};
		if (_tt._n < (0:GoInt)) {
			var _b = splitAfter(_tt._s, _tt._sep);
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
				_t.errorf((Go.str("SplitAfter disagrees with SplitAfterN(%q, %q, %d) = %v; want %v") : GoString), Go.toInterface(_tt._s),
					Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
			};
		};
	};
}

function testFields(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _fieldstests) {
		var _a = fields(_tt._s);
		if (!_eq(_a, _tt._a)) {
			_t.errorf((Go.str("Fields(%q) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
			continue;
		};
	};
}

function testFieldsFunc(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _fieldstests) {
		var _a = fieldsFunc(_tt._s, stdgo.unicode.Unicode.isSpace);
		if (!_eq(_a, _tt._a)) {
			_t.errorf((Go.str("FieldsFunc(%q, unicode.IsSpace) = %v; want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_a),
				Go.toInterface(_tt._a));
			continue;
		};
	};
	var _pred:GoInt32->Bool = function(_c:GoRune):Bool {
		return _c == ("X".code : GoInt32);
	};
	for (_1 => _tt in fieldsFuncTests) {
		var _a = fieldsFunc(_tt._s, _pred);
		if (!_eq(_a, _tt._a)) {
			_t.errorf((Go.str("FieldsFunc(%q) = %v, want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
		};
	};
}

/**
	// Execute f on each test case.  funcName should be the name of f; it's used
	// in failure reports.
**/
function _runStringTests(_t:stdgo.testing.Testing.T, _f:GoString->GoString, _funcName:GoString, _testCases:Slice<StringTest>):Void {
	for (_0 => _tc in _testCases) {
		var _actual:GoString = _f(_tc._in);
		if (_actual != _tc._out) {
			_t.errorf((Go.str("%s(%q) = %q; want %q") : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual),
				Go.toInterface(_tc._out));
		};
	};
}

function _tenRunes(_ch:GoRune):GoString {
	var _r = new Slice<GoInt32>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoInt32)]);
	for (_i => _ in _r) {
		_r[_i] = _ch;
	};
	return (_r : GoString);
}

/**
	// User-defined self-inverse mapping function
**/
function _rot13(_r:GoRune):GoRune {
	var _step:GoInt32 = ((13 : GoInt32) : GoRune);
	if ((_r >= ("a".code : GoInt32)) && (_r <= ("z".code : GoInt32))) {
		return ((_r - ("a".code : GoInt32)) + _step % (26 : GoInt32)) + ("a".code : GoInt32);
	};
	if ((_r >= ("A".code : GoInt32)) && (_r <= ("Z".code : GoInt32))) {
		return ((_r - ("A".code : GoInt32)) + _step % (26 : GoInt32)) + ("A".code : GoInt32);
	};
	return _r;
}

function testMap(_t:stdgo.testing.Testing.T):Void {
	var _a:GoString = _tenRunes(("a".code : GoInt32));
	var _maxRune:GoInt32->GoInt32 = function(_0:GoRune):GoRune {
		return (1114111 : GoInt32);
	};
	var _m:GoString = map(_maxRune, _a);
	var _expect:GoString = _tenRunes((1114111 : GoInt32));
	if (_m != _expect) {
		_t.errorf((Go.str("growing: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _minRune:GoInt32->GoInt32 = function(_0:GoRune):GoRune {
		return ("a".code : GoInt32);
	};
	_m = map(_minRune, _tenRunes((1114111 : GoInt32)));
	_expect = _a;
	if (_m != _expect) {
		_t.errorf((Go.str("shrinking: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
	};
	_m = map(_rot13, (Go.str("a to zed") : GoString));
	_expect = (Go.str("n gb mrq") : GoString);
	if (_m != _expect) {
		_t.errorf((Go.str("rot13: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
	};
	_m = map(_rot13, map(_rot13, (Go.str("a to zed") : GoString)));
	_expect = (Go.str("a to zed") : GoString);
	if (_m != _expect) {
		_t.errorf((Go.str("rot13: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _dropNotLatin:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
			return _r;
		};
		return (-1 : GoInt32);
	};
	_m = map(_dropNotLatin, (Go.str("Hello, 세계") : GoString));
	_expect = (Go.str("Hello") : GoString);
	if (_m != _expect) {
		_t.errorf((Go.str("drop: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _identity:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		return _r;
	};
	var _orig:GoString = (Go.str("Input string that we expect not to be copied.") : GoString);
	_m = map(_identity, _orig);
	if (((Go.toInterface(Go.pointer(_orig)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
		stdgo.reflect.Reflect.GoType.structType([
			{
				name: "data",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
			},
			{
				name: "len",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))) : stdgo.reflect.Reflect.StringHeader).data != ((Go.toInterface(Go.pointer(_m)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.StringHeader", [],
			stdgo.reflect.Reflect.GoType.structType([
		{
			name: "data",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
		},
		{
			name: "len",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int_kind)
		}
		])))) : stdgo.reflect.Reflect.StringHeader).data) {
			_t.error(Go.toInterface((Go.str("unexpected copy during identity map") : GoString)));
		};
	var _replaceNotLatin:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
			return _r;
		};
		return (65533 : GoInt32);
	};
	_m = map(_replaceNotLatin, (Go.str("Hello", 173, "orld") : GoString));
	_expect = (Go.str("Hello\uFFFDWorld") : GoString);
	if (_m != _expect) {
		_t.errorf((Go.str("replace invalid sequence: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
	};
	var _encode:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (_r == (128 : GoInt32)) {
			return (1114111 : GoInt32);
		} else if (_r == (1114111 : GoInt32)) {
			return (128 : GoInt32);
		};
		return _r;
	};
	var _s:GoString = (Go.str("\u0080\u{0010ffff}") : GoString);
	var _r:GoString = (Go.str("\u{0010ffff}\u0080") : GoString);
	_m = map(_encode, _s);
	if (_m != _r) {
		_t.errorf((Go.str("encoding not handled correctly: expected %q got %q") : GoString), Go.toInterface(_r), Go.toInterface(_m));
	};
	_m = map(_encode, _r);
	if (_m != _s) {
		_t.errorf((Go.str("encoding not handled correctly: expected %q got %q") : GoString), Go.toInterface(_s), Go.toInterface(_m));
	};
	var _trimSpaces:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if (stdgo.unicode.Unicode.isSpace(_r)) {
			return (-1 : GoInt32);
		};
		return _r;
	};
	_m = map(_trimSpaces, (Go.str("   abc    123   ") : GoString));
	_expect = (Go.str("abc123") : GoString);
	if (_m != _expect) {
		_t.errorf((Go.str("trimSpaces: expected %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_m));
	};
}

function testToUpper(_t:stdgo.testing.Testing.T):Void {
	_runStringTests(_t, toUpper, (Go.str("ToUpper") : GoString), _upperTests);
}

function testToLower(_t:stdgo.testing.Testing.T):Void {
	_runStringTests(_t, toLower, (Go.str("ToLower") : GoString), _lowerTests);
}

function testToValidUTF8(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tc in _toValidUTF8Tests) {
		var _got:GoString = toValidUTF8(_tc._in, _tc._repl);
		if (_got != _tc._out) {
			_t.errorf((Go.str("ToValidUTF8(%q, %q) = %q; want %q") : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got),
				Go.toInterface(_tc._out));
		};
	};
}

function benchmarkToUpper(_b:stdgo.testing.Testing.B):Void {
	for (_0 => _tc in _upperTests) {
		_b.run(_tc._in, function(_b:stdgo.testing.Testing.B):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					var _actual:GoString = toUpper(_tc._in);
					if (_actual != _tc._out) {
						_b.errorf((Go.str("ToUpper(%q) = %q; want %q") : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual),
							Go.toInterface(_tc._out));
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
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					var _actual:GoString = toLower(_tc._in);
					if (_actual != _tc._out) {
						_b.errorf((Go.str("ToLower(%q) = %q; want %q") : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual),
							Go.toInterface(_tc._out));
					};
				});
			};
		});
	};
}

function benchmarkMapNoChanges(_b:stdgo.testing.Testing.B):Void {
	var _identity:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		return _r;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			map(_identity, (Go.str("Some string that won\'t be modified.") : GoString));
		});
	};
}

function testSpecialCase(_t:stdgo.testing.Testing.T):Void {
	var _lower:GoString = (Go.str("abcçdefgğhıijklmnoöprsştuüvyz") : GoString);
	var _upper:GoString = (Go.str("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ") : GoString);
	var _u:GoString = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
	if (_u != _upper) {
		_t.errorf((Go.str("Upper(upper) is %s not %s") : GoString), Go.toInterface(_u), Go.toInterface(_upper));
	};
	_u = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
	if (_u != _upper) {
		_t.errorf((Go.str("Upper(lower) is %s not %s") : GoString), Go.toInterface(_u), Go.toInterface(_upper));
	};
	var _l:GoString = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
	if (_l != _lower) {
		_t.errorf((Go.str("Lower(lower) is %s not %s") : GoString), Go.toInterface(_l), Go.toInterface(_lower));
	};
	_l = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
	if (_l != _lower) {
		_t.errorf((Go.str("Lower(upper) is %s not %s") : GoString), Go.toInterface(_l), Go.toInterface(_lower));
	};
}

function testTrimSpace(_t:stdgo.testing.Testing.T):Void {
	_runStringTests(_t, trimSpace, (Go.str("TrimSpace") : GoString), _trimSpaceTests);
}

function testTrim(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tc in _trimTests) {
		var _name:GoString = _tc._f;
		var _f:(GoString, GoString) -> GoString = null;
		if (_name == (Go.str("Trim") : GoString)) {
			_f = trim;
		} else if (_name == (Go.str("TrimLeft") : GoString)) {
			_f = trimLeft;
		} else if (_name == (Go.str("TrimRight") : GoString)) {
			_f = trimRight;
		} else if (_name == (Go.str("TrimPrefix") : GoString)) {
			_f = trimPrefix;
		} else if (_name == (Go.str("TrimSuffix") : GoString)) {
			_f = trimSuffix;
		} else {
			_t.errorf((Go.str("Undefined trim function %s") : GoString), Go.toInterface(_name));
		};
		var _actual:GoString = _f(_tc._in, _tc._arg);
		if (_actual != _tc._out) {
			_t.errorf((Go.str("%s(%q, %q) = %q; want %q") : GoString), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg),
				Go.toInterface(_actual), Go.toInterface(_tc._out));
		};
	};
}

function benchmarkTrim(_b:stdgo.testing.Testing.B):Void {
	_b.reportAllocs();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _tc in _trimTests) {
				var _name:GoString = _tc._f;
				var _f:(GoString, GoString) -> GoString = null;
				if (_name == (Go.str("Trim") : GoString)) {
					_f = trim;
				} else if (_name == (Go.str("TrimLeft") : GoString)) {
					_f = trimLeft;
				} else if (_name == (Go.str("TrimRight") : GoString)) {
					_f = trimRight;
				} else if (_name == (Go.str("TrimPrefix") : GoString)) {
					_f = trimPrefix;
				} else if (_name == (Go.str("TrimSuffix") : GoString)) {
					_f = trimSuffix;
				} else {
					_b.errorf((Go.str("Undefined trim function %s") : GoString), Go.toInterface(_name));
				};
				var _actual:GoString = _f(_tc._in, _tc._arg);
				if (_actual != _tc._out) {
					_b.errorf((Go.str("%s(%q, %q) = %q; want %q") : GoString), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg),
						Go.toInterface(_actual), Go.toInterface(_tc._out));
				};
			};
		});
	};
}

function benchmarkToValidUTF8(_b:stdgo.testing.Testing.B):Void {
	var _tests = (new Slice<T__struct_13>(0, 0, ({_name: (Go.str("Valid") : GoString), _input: (Go.str("typical") : GoString)} : T__struct_13),
		({_name: (Go.str("InvalidASCII") : GoString), _input: (Go.str("foo", 255, "bar") : GoString)} : T__struct_13),
		({_name: (Go.str("InvalidNonASCII") : GoString), _input: (Go.str("日本語", 255, "日本語") : GoString)} : T__struct_13)) : Slice<T__struct_13>);
	var _replacement:GoString = (Go.str("\uFFFD") : GoString);
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

function _not(_p:T_predicate):T_predicate {
	return (new stdgo.strings_test.Strings_test.T_predicate(function(_r:GoRune):Bool {
		return !_p._f(_r);
	},
		(Go.str("not ") : GoString) + _p._name) : stdgo.strings_test.Strings_test.T_predicate);
}

function testTrimFunc(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tc in _trimFuncTests) {
		var _trimmers = (new Slice<T__struct_15>(0, 0, ({_name: (Go.str("TrimFunc") : GoString), _trim: trimFunc, _out: _tc._trimOut} : T__struct_15),
			({_name: (Go.str("TrimLeftFunc") : GoString), _trim: trimLeftFunc, _out: _tc._leftOut} : T__struct_15),
			({_name: (Go.str("TrimRightFunc") : GoString), _trim: trimRightFunc, _out: _tc._rightOut} : T__struct_15)) : Slice<T__struct_15>);
		for (_1 => _trimmer in _trimmers) {
			var _actual:GoString = _trimmer._trim(_tc._in, _tc._f._f);
			if (_actual != _trimmer._out) {
				_t.errorf((Go.str("%s(%q, %q) = %q; want %q") : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in),
					Go.toInterface(_tc._f._name), Go.toInterface(_actual), Go.toInterface(_trimmer._out));
			};
		};
	};
}

function testIndexFunc(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tc in _indexFuncTests) {
		var _first:GoInt = indexFunc(_tc._in, _tc._f._f);
		if (_first != _tc._first) {
			_t.errorf((Go.str("IndexFunc(%q, %s) = %d; want %d") : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first),
				Go.toInterface(_tc._first));
		};
		var _last:GoInt = lastIndexFunc(_tc._in, _tc._f._f);
		if (_last != _tc._last) {
			_t.errorf((Go.str("LastIndexFunc(%q, %s) = %d; want %d") : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name),
				Go.toInterface(_last), Go.toInterface(_tc._last));
		};
	};
}

function _equal(_m:GoString, _s1:GoString, _s2:GoString, _t:stdgo.testing.Testing.T):Bool {
	if (_s1 == _s2) {
		return true;
	};
	var _e1 = split(_s1, (Go.str() : GoString));
	var _e2 = split(_s2, (Go.str() : GoString));
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
		if (_r1 != _r2) {
			_t.errorf((Go.str("%s diff at %d: U+%04X U+%04X") : GoString), Go.toInterface(_m), Go.toInterface(_i), Go.toInterface(_r1), Go.toInterface(_r2));
		};
	};
	return false;
}

function testCaseConsistency(_t:stdgo.testing.Testing.T):Void {
	var _numRunes:GoInt = (1114112 : GoInt);
	if (stdgo.testing.Testing.short()) {
		_numRunes = (1000 : GoInt);
	};
	var _a = new Slice<GoInt32>((_numRunes : GoInt).toBasic(), 0, ...[for (i in 0...(_numRunes : GoInt).toBasic()) (0 : GoInt32)]);
	for (_i => _ in _a) {
		_a[_i] = (_i : GoRune);
	};
	var _s:GoString = (_a : GoString);
	var _upper:GoString = toUpper(_s);
	var _lower:GoString = toLower(_s);
	{
		var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_upper);
		if (_n != _numRunes) {
			_t.error(Go.toInterface((Go.str("rune count wrong in upper:") : GoString)), Go.toInterface(_n));
		};
	};
	{
		var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_lower);
		if (_n != _numRunes) {
			_t.error(Go.toInterface((Go.str("rune count wrong in lower:") : GoString)), Go.toInterface(_n));
		};
	};
	if (!_equal((Go.str("ToUpper(upper)") : GoString), toUpper(_upper), _upper, _t)) {
		_t.error(Go.toInterface((Go.str("ToUpper(upper) consistency fail") : GoString)));
	};
	if (!_equal((Go.str("ToLower(lower)") : GoString), toLower(_lower), _lower, _t)) {
		_t.error(Go.toInterface((Go.str("ToLower(lower) consistency fail") : GoString)));
	};
}

function testRepeat(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in repeatTests) {
		var _a:GoString = repeat(_tt._in, _tt._count);
		if (!_equal((Go.str("Repeat(s)") : GoString), _a, _tt._out, _t)) {
			_t.errorf((Go.str("Repeat(%v, %d) = %v; want %v") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._count), Go.toInterface(_a),
				Go.toInterface(_tt._out));
			continue;
		};
	};
}

function _repeat(_s:GoString, _count:GoInt):Error {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
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
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return _err;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return _err;
	};
}

/**
	// See Issue golang.org/issue/16237
**/
function testRepeatCatchesOverflow(_t:stdgo.testing.Testing.T):Void {
	var _tests = {
		var s:GoArray<T__struct_18> = new GoArray<T__struct_18>(...[
			for (i in 0...7) ({
				_s:("" : GoString), _count:(0 : GoInt), _errStr:("" : GoString)
			} : T__struct_18)
		]);
		s[0] = ({_s: (Go.str("--") : GoString), _count: (-2147483647 : GoInt), _errStr: (Go.str("negative") : GoString)} : T__struct_18);
		s[1] = ({_s: (Go.str() : GoString), _count: ((2147483647 : GoUInt) : GoInt), _errStr: (Go.str() : GoString)} : T__struct_18);
		s[2] = ({_s: (Go.str("-") : GoString), _count: (10 : GoInt), _errStr: (Go.str() : GoString)} : T__struct_18);
		s[3] = ({_s: (Go.str("gopher") : GoString), _count: (0 : GoInt), _errStr: (Go.str() : GoString)} : T__struct_18);
		s[4] = ({_s: (Go.str("-") : GoString), _count: (-1 : GoInt), _errStr: (Go.str("negative") : GoString)} : T__struct_18);
		s[5] = ({_s: (Go.str("--") : GoString), _count: (-102 : GoInt), _errStr: (Go.str("negative") : GoString)} : T__struct_18);
		s[6] = ({_s: (new Slice<GoUInt8>((255 : GoInt).toBasic(), 0,
			...[for (i in 0...(255 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString), _count: ((16843010 : GoUInt) : GoInt),
			_errStr: (Go.str("overflow") : GoString)} : T__struct_18);
		s;
	};
	for (_i => _tt in _tests) {
		var _err:stdgo.Error = _repeat(_tt._s, _tt._count);
		if (_tt._errStr == (Go.str() : GoString)) {
			if (_err != null) {
				_t.errorf((Go.str("#%d panicked %v") : GoString), Go.toInterface(_i), Go.toInterface(_err));
			};
			continue;
		};
		if ((_err == null) || !contains(_err.error(), _tt._errStr)) {
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
		var _a = (_tt._in : Slice<GoRune>);
		if (!_runesEqual(_a, _tt._out)) {
			_t.errorf((Go.str("[]rune(%q) = %v; want %v") : GoString), Go.toInterface(_tt._in), Go.toInterface(_a), Go.toInterface(_tt._out));
			continue;
		};
		if (!_tt._lossy) {
			var _s:GoString = (_a : GoString);
			if (_s != _tt._in) {
				_t.errorf((Go.str("string([]rune(%q)) = %x; want %x") : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._in));
			};
		};
	};
}

function testReadByte(_t:stdgo.testing.Testing.T):Void {
	var _testStrings = (new Slice<GoString>(0, 0, (Go.str() : GoString), _abcd, _faces, _commas) : Slice<GoString>);
	for (_0 => _s in _testStrings) {
		var _reader = newReader(_s);
		{
			var _e:stdgo.Error = _reader.unreadByte();
			if (_e == null) {
				_t.errorf((Go.str("Unreading %q at beginning: expected error") : GoString), Go.toInterface(_s));
			};
		};
		var _res:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		while (true) {
			var __tmp__ = _reader.readByte(),
				_b:GoUInt8 = __tmp__._0,
				_e:stdgo.Error = __tmp__._1;
			if (_e == stdgo.io.Io.eof) {
				break;
			};
			if (_e != null) {
				_t.errorf((Go.str("Reading %q: %s") : GoString), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			_res.writeByte(_b);
			_e = _reader.unreadByte();
			if (_e != null) {
				_t.errorf((Go.str("Unreading %q: %s") : GoString), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			var __tmp__ = _reader.readByte(),
				_b1:GoUInt8 = __tmp__._0,
				_e:stdgo.Error = __tmp__._1;
			if (_e != null) {
				_t.errorf((Go.str("Reading %q after unreading: %s") : GoString), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			if (_b1 != _b) {
				_t.errorf((Go.str("Reading %q after unreading: want byte %q, got %q") : GoString), Go.toInterface(_s), Go.toInterface(_b),
					Go.toInterface(_b1));
				break;
			};
		};
		if ((_res.string() : GoString) != _s) {
			_t.errorf((Go.str("Reader(%q).ReadByte() produced %q") : GoString), Go.toInterface(_s), Go.toInterface((_res.string() : GoString)));
		};
	};
}

function testReadRune(_t:stdgo.testing.Testing.T):Void {
	var _testStrings = (new Slice<GoString>(0, 0, (Go.str() : GoString), _abcd, _faces, _commas) : Slice<GoString>);
	for (_0 => _s in _testStrings) {
		var _reader = newReader(_s);
		{
			var _e:stdgo.Error = _reader.unreadRune();
			if (_e == null) {
				_t.errorf((Go.str("Unreading %q at beginning: expected error") : GoString), Go.toInterface(_s));
			};
		};
		var _res:GoString = (Go.str() : GoString);
		while (true) {
			var __tmp__ = _reader.readRune(),
				_r:GoInt32 = __tmp__._0,
				_z:GoInt = __tmp__._1,
				_e:stdgo.Error = __tmp__._2;
			if (_e == stdgo.io.Io.eof) {
				break;
			};
			if (_e != null) {
				_t.errorf((Go.str("Reading %q: %s") : GoString), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			_res = _res + ((_r : GoString));
			_e = _reader.unreadRune();
			if (_e != null) {
				_t.errorf((Go.str("Unreading %q: %s") : GoString), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			var __tmp__ = _reader.readRune(),
				_r1:GoInt32 = __tmp__._0,
				_z1:GoInt = __tmp__._1,
				_e:stdgo.Error = __tmp__._2;
			if (_e != null) {
				_t.errorf((Go.str("Reading %q after unreading: %s") : GoString), Go.toInterface(_s), Go.toInterface(_e));
				break;
			};
			if (_r1 != _r) {
				_t.errorf((Go.str("Reading %q after unreading: want rune %q, got %q") : GoString), Go.toInterface(_s), Go.toInterface(_r),
					Go.toInterface(_r1));
				break;
			};
			if (_z1 != _z) {
				_t.errorf((Go.str("Reading %q after unreading: want size %d, got %d") : GoString), Go.toInterface(_s), Go.toInterface(_z),
					Go.toInterface(_z1));
				break;
			};
		};
		if (_res != _s) {
			_t.errorf((Go.str("Reader(%q).ReadRune() produced %q") : GoString), Go.toInterface(_s), Go.toInterface(_res));
		};
	};
}

function testUnreadRuneError(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in unreadRuneErrorTests) {
		var _reader = newReader((Go.str("0123456789") : GoString));
		{
			var __tmp__ = _reader.readRune(),
				_1:GoInt32 = __tmp__._0,
				_2:GoInt = __tmp__._1,
				_err:stdgo.Error = __tmp__._2;
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

function testReplace(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in replaceTests) {
		{
			var _s:GoString = replace(_tt._in, _tt._old, _tt._new, _tt._n);
			if (_s != _tt._out) {
				_t.errorf((Go.str("Replace(%q, %q, %q, %d) = %q, want %q") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old),
					Go.toInterface(_tt._new), Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
			};
		};
		if (_tt._n == (-1 : GoInt)) {
			var _s:GoString = replaceAll(_tt._in, _tt._old, _tt._new);
			if (_s != _tt._out) {
				_t.errorf((Go.str("ReplaceAll(%q, %q, %q) = %q, want %q") : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old),
					Go.toInterface(_tt._new), Go.toInterface(_s), Go.toInterface(_tt._out));
			};
		};
	};
}

function testTitle(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in titleTests) {
		{
			var _s:GoString = title(_tt._in);
			if (_s != _tt._out) {
				_t.errorf((Go.str("Title(%q) = %q, want %q") : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
			};
		};
	};
}

function testContains(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _ct in containsTests) {
		if (contains(_ct._str, _ct._substr) != _ct._expected) {
			_t.errorf((Go.str("Contains(%s, %s) = %v, want %v") : GoString), Go.toInterface(_ct._str), Go.toInterface(_ct._substr),
				Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
		};
	};
}

function testContainsAny(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _ct in containsAnyTests) {
		if (containsAny(_ct._str, _ct._substr) != _ct._expected) {
			_t.errorf((Go.str("ContainsAny(%s, %s) = %v, want %v") : GoString), Go.toInterface(_ct._str), Go.toInterface(_ct._substr),
				Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
		};
	};
}

function testContainsRune(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _ct in containsRuneTests) {
		if (containsRune(_ct._str, _ct._r) != _ct._expected) {
			_t.errorf((Go.str("ContainsRune(%q, %q) = %v, want %v") : GoString), Go.toInterface(_ct._str), Go.toInterface(_ct._r),
				Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
		};
	};
}

function testEqualFold(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in equalFoldTests) {
		{
			var _out:Bool = equalFold(_tt._s, _tt._t);
			if (_out != _tt._out) {
				_t.errorf((Go.str("EqualFold(%#q, %#q) = %v, want %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out),
					Go.toInterface(_tt._out));
			};
		};
		{
			var _out:Bool = equalFold(_tt._t, _tt._s);
			if (_out != _tt._out) {
				_t.errorf((Go.str("EqualFold(%#q, %#q) = %v, want %v") : GoString), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out),
					Go.toInterface(_tt._out));
			};
		};
	};
}

function benchmarkEqualFold(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _tt in equalFoldTests) {
				{
					var _out:Bool = equalFold(_tt._s, _tt._t);
					if (_out != _tt._out) {
						_b.fatal(Go.toInterface((Go.str("wrong result") : GoString)));
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
				_t.errorf((Go.str("Count(%q, %q) = %d, want %d") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_num),
					Go.toInterface(_tt._num));
			};
		};
	};
}

function testCut(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _cutTests) {
		{
			var __tmp__ = cut(_tt._s, _tt._sep),
				_before:GoString = __tmp__._0,
				_after:GoString = __tmp__._1,
				_found:Bool = __tmp__._2;
			if ((_before != _tt._before || _after != _tt._after) || (_found != _tt._found)) {
				_t.errorf((Go.str("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v") : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep),
					Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after),
					Go.toInterface(_tt._found));
			};
		};
	};
}

function _makeBenchInputHard():GoString {
	var _tokens = (new GoArray<GoString>((Go.str("<a>") : GoString), (Go.str("<p>") : GoString), (Go.str("<b>") : GoString), (Go.str("<strong>") : GoString),
		(Go.str("</a>") : GoString), (Go.str("</p>") : GoString), (Go.str("</b>") : GoString), (Go.str("</strong>") : GoString), (Go.str("hello") : GoString),
		(Go.str("world") : GoString)) : GoArray<GoString>);
	var _x = new Slice<GoUInt8>((0 : GoInt).toBasic(), (1048576 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
	while (true) {
		var _i:GoInt = stdgo.math.rand.Rand.intn((_tokens.length));
		if ((_x.length + _tokens[_i].length) >= (1048576 : GoInt)) {
			break;
		};
		_x = (_x.__append__(..._tokens[_i].__toArray__()));
	};
	return (_x : GoString);
}

function _benchmarkIndexHard(_b:stdgo.testing.Testing.B, _sep:GoString):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			index(_benchInputHard, _sep);
		});
	};
}

function _benchmarkLastIndexHard(_b:stdgo.testing.Testing.B, _sep:GoString):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			lastIndex(_benchInputHard, _sep);
		});
	};
}

function _benchmarkCountHard(_b:stdgo.testing.Testing.B, _sep:GoString):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			count(_benchInputHard, _sep);
		});
	};
}

function benchmarkIndexHard1(_b:stdgo.testing.Testing.B):Void {
	_benchmarkIndexHard(_b, (Go.str("<>") : GoString));
}

function benchmarkIndexHard2(_b:stdgo.testing.Testing.B):Void {
	_benchmarkIndexHard(_b, (Go.str("</pre>") : GoString));
}

function benchmarkIndexHard3(_b:stdgo.testing.Testing.B):Void {
	_benchmarkIndexHard(_b, (Go.str("<b>hello world</b>") : GoString));
}

function benchmarkIndexHard4(_b:stdgo.testing.Testing.B):Void {
	_benchmarkIndexHard(_b, (Go.str("<pre><b>hello</b><strong>world</strong></pre>") : GoString));
}

function benchmarkLastIndexHard1(_b:stdgo.testing.Testing.B):Void {
	_benchmarkLastIndexHard(_b, (Go.str("<>") : GoString));
}

function benchmarkLastIndexHard2(_b:stdgo.testing.Testing.B):Void {
	_benchmarkLastIndexHard(_b, (Go.str("</pre>") : GoString));
}

function benchmarkLastIndexHard3(_b:stdgo.testing.Testing.B):Void {
	_benchmarkLastIndexHard(_b, (Go.str("<b>hello world</b>") : GoString));
}

function benchmarkCountHard1(_b:stdgo.testing.Testing.B):Void {
	_benchmarkCountHard(_b, (Go.str("<>") : GoString));
}

function benchmarkCountHard2(_b:stdgo.testing.Testing.B):Void {
	_benchmarkCountHard(_b, (Go.str("</pre>") : GoString));
}

function benchmarkCountHard3(_b:stdgo.testing.Testing.B):Void {
	_benchmarkCountHard(_b, (Go.str("<b>hello world</b>") : GoString));
}

function benchmarkIndexTorture(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			index(_benchInputTorture, _benchNeedleTorture);
		});
	};
}

function benchmarkCountTorture(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			count(_benchInputTorture, _benchNeedleTorture);
		});
	};
}

function benchmarkCountTortureOverlapping(_b:stdgo.testing.Testing.B):Void {
	var a:GoString = repeat((Go.str("ABC") : GoString), (1048576 : GoInt));
	var b:GoString = repeat((Go.str("ABC") : GoString), (1024 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			count(a, b);
		});
	};
}

function benchmarkCountByte(_b:stdgo.testing.Testing.B):Void {
	var _indexSizes = (new Slice<GoInt>(0, 0, (10 : GoInt), (32 : GoInt), (4096 : GoInt), (4194304 : GoInt), (67108864 : GoInt)) : Slice<GoInt>);
	var _benchStr:GoString = repeat((Go.str("some_text=some☺value") : GoString),
		(_indexSizes[(_indexSizes.length) - (1 : GoInt)] + ((Go.str("some_text=some☺value") : GoString)
			.length) - (1 : GoInt)) / ((Go.str("some_text=some☺value") : GoString).length));
	var _benchFunc = function(_b:stdgo.testing.Testing.B, _benchStr:GoString):Void {
		_b.setBytes((_benchStr.length : GoInt64));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				count(_benchStr, (Go.str("=") : GoString));
			});
		};
	};
	for (_0 => _size in _indexSizes) {
		_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d") : GoString), Go.toInterface(_size)), function(_b:stdgo.testing.Testing.B):Void {
			_benchFunc(_b, (_benchStr.__slice__(0, _size) : GoString));
		});
	};
}

function benchmarkFields(_b:stdgo.testing.Testing.B):Void {
	for (_0 => _sd in _stringdata) {
		_b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
			{
				var _j:GoInt = (16 : GoInt);
				Go.cfor(_j <= (1048576 : GoInt), _j = _j << ((4 : GoUnTypedInt)), {
					_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d") : GoString), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkFieldsFunc(_b:stdgo.testing.Testing.B):Void {
	for (_0 => _sd in _stringdata) {
		_b.run(_sd._name, function(_b:stdgo.testing.Testing.B):Void {
			{
				var _j:GoInt = (16 : GoInt);
				Go.cfor(_j <= (1048576 : GoInt), _j = _j << ((4 : GoUnTypedInt)), {
					_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d") : GoString), Go.toInterface(_j)), function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkSplitEmptySeparator(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			split(_benchInputHard, (Go.str() : GoString));
		});
	};
}

function benchmarkSplitSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			split(_benchInputHard, (Go.str("/") : GoString));
		});
	};
}

function benchmarkSplitMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			split(_benchInputHard, (Go.str("hello") : GoString));
		});
	};
}

function benchmarkSplitNSingleByteSeparator(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			splitN(_benchInputHard, (Go.str("/") : GoString), (10 : GoInt));
		});
	};
}

function benchmarkSplitNMultiByteSeparator(_b:stdgo.testing.Testing.B):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			splitN(_benchInputHard, (Go.str("hello") : GoString), (10 : GoInt));
		});
	};
}

function benchmarkRepeat(_b:stdgo.testing.Testing.B):Void {
	var _s:GoString = (Go.str("0123456789") : GoString);
	for (_0 => _n in (new Slice<GoInt>(0, 0, (5 : GoInt), (10 : GoInt)) : Slice<GoInt>)) {
		for (_1 => _c in (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (6 : GoInt)) : Slice<GoInt>)) {
			_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%dx%d") : GoString), Go.toInterface(_n), Go.toInterface(_c)), function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
	var _x:GoString = repeat((Go.str("#") : GoString), (2048 : GoInt));
	var _cs:GoString = (Go.str("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz") : GoString);
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
					_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)),
						function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
	var _x:GoString = repeat((Go.str("#") : GoString), (2048 : GoInt));
	var _cs:GoString = (Go.str("你好世界, hello world. 你好世界, hello world. 你好世界, hello world.") : GoString);
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
					_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)),
						function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkLastIndexAnyASCII(_b:stdgo.testing.Testing.B):Void {
	var _x:GoString = repeat((Go.str("#") : GoString), (2048 : GoInt));
	var _cs:GoString = (Go.str("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz") : GoString);
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
					_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)),
						function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkLastIndexAnyUTF8(_b:stdgo.testing.Testing.B):Void {
	var _x:GoString = repeat((Go.str("#") : GoString), (2048 : GoInt));
	var _cs:GoString = (Go.str("你好世界, hello world. 你好世界, hello world. 你好世界, hello world.") : GoString);
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (2048 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (64 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
					_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)),
						function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkTrimASCII(_b:stdgo.testing.Testing.B):Void {
	var _cs:GoString = (Go.str("0123456789abcdef") : GoString);
	{
		var _k:GoInt = (1 : GoInt);
		Go.cfor(_k <= (4096 : GoInt), _k = _k << ((4 : GoUnTypedInt)), {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j <= (16 : GoInt), _j = _j << ((1 : GoUnTypedInt)), {
					_b.run(stdgo.fmt.Fmt.sprintf((Go.str("%d:%d") : GoString), Go.toInterface(_k), Go.toInterface(_j)),
						function(_b:stdgo.testing.Testing.B):Void {
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

function benchmarkTrimByte(_b:stdgo.testing.Testing.B):Void {
	var _x:GoString = (Go.str("  the quick brown fox   ") : GoString);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			trim(_x, (Go.str(" ") : GoString));
		});
	};
}

function benchmarkIndexPeriodic(_b:stdgo.testing.Testing.B):Void {
	var _key:GoString = (Go.str("aa") : GoString);
	for (_0 => _skip in (new GoArray<GoInt>((2 : GoInt), (4 : GoInt), (8 : GoInt), (16 : GoInt), (32 : GoInt), (64 : GoInt)) : GoArray<GoInt>)) {
		_b.run(stdgo.fmt.Fmt.sprintf((Go.str("IndexPeriodic%d") : GoString), Go.toInterface(_skip)), function(_b:stdgo.testing.Testing.B):Void {
			var _s:GoString = repeat((Go.str("a") : GoString) + repeat((Go.str(" ") : GoString), _skip - (1 : GoInt)), (65536 : GoInt) / _skip);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					index(_s, _key);
				});
			};
		});
	};
}

function benchmarkJoin(_b:stdgo.testing.Testing.B):Void {
	var _vals = (new Slice<GoString>(0, 0, (Go.str("red") : GoString), (Go.str("yellow") : GoString), (Go.str("pink") : GoString),
		(Go.str("green") : GoString), (Go.str("purple") : GoString), (Go.str("orange") : GoString), (Go.str("blue") : GoString)) : Slice<GoString>);
	{
		var _l:GoInt = (0 : GoInt);
		Go.cfor(_l <= (_vals.length), _l++, {
			_b.run(stdgo.strconv.Strconv.itoa(_l), function(_b:stdgo.testing.Testing.B):Void {
				_b.reportAllocs();
				var _vals = (_vals.__slice__(0, _l) : Slice<GoString>);
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < _b.n, _i++, {
						join(_vals, (Go.str(" and ") : GoString));
					});
				};
			});
		});
	};
}

function benchmarkTrimSpace(_b:stdgo.testing.Testing.B):Void {
	var _tests = (new Slice<T__struct_13>(0, 0, ({_name: (Go.str("NoTrim") : GoString), _input: (Go.str("typical") : GoString)} : T__struct_13),
		({_name: (Go.str("ASCII") : GoString), _input: (Go.str("  foo bar  ") : GoString)} : T__struct_13),
		({_name: (Go.str("SomeNonASCII") : GoString), _input: (Go.str("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    ") : GoString)} : T__struct_13),
		({_name: (Go.str("JustNonASCII") : GoString),
			_input: (Go.str("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000") : GoString)} : T__struct_13)) : Slice<T__struct_13>);
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

function benchmarkReplaceAll(_b:stdgo.testing.Testing.B):Void {
	_b.reportAllocs();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_stringSink = replaceAll((Go.str("banana") : GoString), (Go.str("a") : GoString), (Go.str("<>") : GoString));
		});
	};
}

@:keep private class T_errWriter_static_extension {
	@:keep
	static public function write(_:T_errWriter, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		return {_0: (0 : GoInt), _1: stdgo.fmt.Fmt.errorf((Go.str("unwritable") : GoString))};
	}
}

class T_errWriter_wrapper {
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_errWriter;
}
