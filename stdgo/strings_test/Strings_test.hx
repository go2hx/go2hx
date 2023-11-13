package stdgo.strings_test;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
import stdgo.strings.Strings;
/**
    
    
    
**/
var _someBytes : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (("some bytes sdljlk jsklj3lkjlk djlkjw" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
/**
    
    
    
**/
var _compareTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(
13,
13,
({ _a : stdgo.Go.str()?.__copy__(), _b : stdgo.Go.str()?.__copy__(), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("a" : stdgo.GoString)?.__copy__(), _b : stdgo.Go.str()?.__copy__(), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : stdgo.Go.str()?.__copy__(), _b : ("a" : stdgo.GoString)?.__copy__(), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("abc" : stdgo.GoString)?.__copy__(), _b : ("abc" : stdgo.GoString)?.__copy__(), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("ab" : stdgo.GoString)?.__copy__(), _b : ("abc" : stdgo.GoString)?.__copy__(), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("abc" : stdgo.GoString)?.__copy__(), _b : ("ab" : stdgo.GoString)?.__copy__(), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("x" : stdgo.GoString)?.__copy__(), _b : ("ab" : stdgo.GoString)?.__copy__(), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("ab" : stdgo.GoString)?.__copy__(), _b : ("x" : stdgo.GoString)?.__copy__(), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("x" : stdgo.GoString)?.__copy__(), _b : ("a" : stdgo.GoString)?.__copy__(), _i : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("b" : stdgo.GoString)?.__copy__(), _b : ("x" : stdgo.GoString)?.__copy__(), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("abcdefgh" : stdgo.GoString)?.__copy__(), _b : ("abcdefgh" : stdgo.GoString)?.__copy__(), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("abcdefghi" : stdgo.GoString)?.__copy__(), _b : ("abcdefghi" : stdgo.GoString)?.__copy__(), _i : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _a : ("abcdefghi" : stdgo.GoString)?.__copy__(), _b : ("abcdefghj" : stdgo.GoString)?.__copy__(), _i : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
/**
    
    
    
**/
var _htmlEscaper : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Replacer> = newReplacer(("&" : stdgo.GoString)?.__copy__(), ("&amp;" : stdgo.GoString)?.__copy__(), ("<" : stdgo.GoString)?.__copy__(), ("&lt;" : stdgo.GoString)?.__copy__(), (">" : stdgo.GoString)?.__copy__(), ("&gt;" : stdgo.GoString)?.__copy__(), ("\"" : stdgo.GoString)?.__copy__(), ("&quot;" : stdgo.GoString)?.__copy__(), ("\'" : stdgo.GoString)?.__copy__(), ("&apos;" : stdgo.GoString)?.__copy__());
/**
    
    
    
**/
var _htmlUnescaper : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Replacer> = newReplacer(("&amp;" : stdgo.GoString)?.__copy__(), ("&" : stdgo.GoString)?.__copy__(), ("&lt;" : stdgo.GoString)?.__copy__(), ("<" : stdgo.GoString)?.__copy__(), ("&gt;" : stdgo.GoString)?.__copy__(), (">" : stdgo.GoString)?.__copy__(), ("&quot;" : stdgo.GoString)?.__copy__(), ("\"" : stdgo.GoString)?.__copy__(), ("&apos;" : stdgo.GoString)?.__copy__(), ("\'" : stdgo.GoString)?.__copy__());
/**
    
    
    
**/
var _capitalLetters : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Replacer> = newReplacer(("a" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__());
/**
    
    
    
**/
var _algorithmTestCases : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(6, 6, ({ _r : _capitalLetters, _want : ("*strings.byteReplacer" : stdgo.GoString)?.__copy__() } : T__struct_5), ({ _r : _htmlEscaper, _want : ("*strings.byteStringReplacer" : stdgo.GoString)?.__copy__() } : T__struct_5), ({ _r : newReplacer(("12" : stdgo.GoString)?.__copy__(), ("123" : stdgo.GoString)?.__copy__()), _want : ("*strings.singleStringReplacer" : stdgo.GoString)?.__copy__() } : T__struct_5), ({ _r : newReplacer(("1" : stdgo.GoString)?.__copy__(), ("12" : stdgo.GoString)?.__copy__()), _want : ("*strings.byteStringReplacer" : stdgo.GoString)?.__copy__() } : T__struct_5), ({ _r : newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__()), _want : ("*strings.genericReplacer" : stdgo.GoString)?.__copy__() } : T__struct_5), ({ _r : newReplacer(("a" : stdgo.GoString)?.__copy__(), ("1" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("12" : stdgo.GoString)?.__copy__(), ("cde" : stdgo.GoString)?.__copy__(), ("123" : stdgo.GoString)?.__copy__()), _want : ("*strings.genericReplacer" : stdgo.GoString)?.__copy__() } : T__struct_5)) : stdgo.Slice<T__struct_5>);
/**
    
    
    
**/
var _mapdata : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(2, 2, ({ _name : ("ASCII" : stdgo.GoString)?.__copy__(), _data : ("a b c d e f g h i j k l m n o p q r s t u v w x y z" : stdgo.GoString)?.__copy__() } : T__struct_7), ({ _name : ("Greek" : stdgo.GoString)?.__copy__(), _data : ("α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω" : stdgo.GoString)?.__copy__() } : T__struct_7)) : stdgo.Slice<T__struct_7>);
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
var _indexTests : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>(
89,
89,
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("fo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString)?.__copy__(), ("f" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("barfoobarfoo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString)?.__copy__(), ("o" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcABCabc" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("jrzm6jjhorimglljrea4w3rlgosts0w2gia17hno2td4qd1jz" : stdgo.GoString)?.__copy__(), ("jz" : stdgo.GoString)?.__copy__(), (47 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ekkuk5oft4eq0ocpacknhwouic1uua46unx12l37nioq9wbpnocqks6" : stdgo.GoString)?.__copy__(), ("ks6" : stdgo.GoString)?.__copy__(), (52 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("999f2xmimunbuyew5vrkla9cpwhmxan8o98ec" : stdgo.GoString)?.__copy__(), ("98ec" : stdgo.GoString)?.__copy__(), (33 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("9lpt9r98i04k8bz6c6dsrthb96bhi" : stdgo.GoString)?.__copy__(), ("96bhi" : stdgo.GoString)?.__copy__(), (24 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("55u558eqfaod2r2gu42xxsu631xf0zobs5840vl" : stdgo.GoString)?.__copy__(), ("5840vl" : stdgo.GoString)?.__copy__(), (33 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("c" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("bc" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ab" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xab" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xab" : stdgo.GoString).__slice__(0, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xbc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xabc" : stdgo.GoString).__slice__(0, (3 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabxc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abcd" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xbcd" : stdgo.GoString)?.__copy__(), ("abcd" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcd" : stdgo.GoString)?.__copy__(), ("abcd" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabcd" : stdgo.GoString)?.__copy__(), ("abcd" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyabcd" : stdgo.GoString).__slice__(0, (5 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("abcd" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xbcqq" : stdgo.GoString)?.__copy__(), ("abcqq" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcqq" : stdgo.GoString)?.__copy__(), ("abcqq" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabcqq" : stdgo.GoString)?.__copy__(), ("abcqq" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyabcqq" : stdgo.GoString).__slice__(0, (6 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("abcqq" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabxcqq" : stdgo.GoString)?.__copy__(), ("abcqq" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabcqxq" : stdgo.GoString)?.__copy__(), ("abcqq" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("01234567" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("32145678" : stdgo.GoString)?.__copy__(), ("01234567" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("01234567" : stdgo.GoString)?.__copy__(), ("01234567" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567" : stdgo.GoString)?.__copy__(), ("01234567" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456x01234567" : stdgo.GoString)?.__copy__(), ("01234567" : stdgo.GoString)?.__copy__(), (9 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xx01234567" : stdgo.GoString).__slice__(0, (9 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("01234567" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("3214567844" : stdgo.GoString)?.__copy__(), ("0123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456789" : stdgo.GoString)?.__copy__(), ("0123456789" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789" : stdgo.GoString)?.__copy__(), ("0123456789" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x012345678x0123456789" : stdgo.GoString)?.__copy__(), ("0123456789" : stdgo.GoString)?.__copy__(), (11 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz0123456789" : stdgo.GoString).__slice__(0, (12 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("0123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567x89" : stdgo.GoString)?.__copy__(), ("0123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789012345" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("3214567889012345" : stdgo.GoString)?.__copy__(), ("0123456789012345" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456789012345" : stdgo.GoString)?.__copy__(), ("0123456789012345" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345" : stdgo.GoString)?.__copy__(), ("0123456789012345" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x012345678901234x0123456789012345" : stdgo.GoString)?.__copy__(), ("0123456789012345" : stdgo.GoString)?.__copy__(), (17 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("01234567890123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("32145678890123456789" : stdgo.GoString)?.__copy__(), ("01234567890123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("01234567890123456789" : stdgo.GoString)?.__copy__(), ("01234567890123456789" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567890123456789" : stdgo.GoString)?.__copy__(), ("01234567890123456789" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345678x01234567890123456789" : stdgo.GoString)?.__copy__(), ("01234567890123456789" : stdgo.GoString)?.__copy__(), (21 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz01234567890123456789" : stdgo.GoString).__slice__(0, (22 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("01234567890123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("321456788901234567890123456789012345678911" : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x012345678901234567890123456789x0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz0123456789012345678901234567890" : stdgo.GoString).__slice__(0, (33 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("32145678890123456789012345678901234567890211" : stdgo.GoString)?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345678901234567890x01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), (33 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz01234567890123456789012345678901" : stdgo.GoString).__slice__(0, (34 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("01234567890123456789012345678901" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xxxxxx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString)?.__copy__(), ("012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString)?.__copy__(), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("0123456789012345678901234567890123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890123456789" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString).__slice__(0, (41 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890123456789" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xx012345678901234567890123456789012345678901234567890123456789012" : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890123456xxx" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xx0123456789012345678901234567890123456789012345678901234567890120123456789012345678901234567890123456xxx" : stdgo.GoString)?.__copy__(), ("0123456789012345678901234567890123456xxx" : stdgo.GoString)?.__copy__(), (65 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oxoxoxoxoxoxoxoxoxoxoxoy" : stdgo.GoString)?.__copy__(), ("oy" : stdgo.GoString)?.__copy__(), (22 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oxoxoxoxoxoxoxoxoxoxoxox" : stdgo.GoString)?.__copy__(), ("oy" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
var _lastIndexTests : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>(
13,
13,
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("fo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString)?.__copy__(), ("f" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString)?.__copy__(), ("f" : stdgo.GoString)?.__copy__(), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("barfoobarfoo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__(), (9 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : stdgo.GoString)?.__copy__(), ("o" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcABCabc" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcABCabc" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
var _indexAnyTests : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>(
17,
17,
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str(128)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("aaa" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("xyz" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("xcz" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ab☺c" : stdgo.GoString)?.__copy__(), ("x☺yz" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), ("cx" : stdgo.GoString)?.__copy__(), (("a☺b☻" : stdgo.GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), ("uvw☻xyz" : stdgo.GoString)?.__copy__(), (("a☺b" : stdgo.GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("aRegExp*" : stdgo.GoString)?.__copy__(), (".(|)*+?^$[]" : stdgo.GoString)?.__copy__(), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(_dots + _dots?.__copy__() + _dots?.__copy__()?.__copy__(), (" " : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("012abcba210" : stdgo.GoString)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str("012", 128, "bcb", 128, "210")?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456πabc" : stdgo.GoString)?.__copy__(), stdgo.Go.str(207, "b", 128)?.__copy__(), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
var _lastIndexAnyTests : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>(
17,
17,
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str(128)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("aaa" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("xyz" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ab☺c" : stdgo.GoString)?.__copy__(), ("x☺yz" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), ("cx" : stdgo.GoString)?.__copy__(), (("a☺b☻" : stdgo.GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), ("uvw☻xyz" : stdgo.GoString)?.__copy__(), (("a☺b" : stdgo.GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a.RegExp*" : stdgo.GoString)?.__copy__(), (".(|)*+?^$[]" : stdgo.GoString)?.__copy__(), (8 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(_dots + _dots?.__copy__() + _dots?.__copy__()?.__copy__(), (" " : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("012abcba210" : stdgo.GoString)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str("012", 128, "bcb", 128, "210")?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (7 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456πabc" : stdgo.GoString)?.__copy__(), stdgo.Go.str(207, "b", 128)?.__copy__(), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
var _benchmarkLongString : stdgo.GoString = repeat((" " : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt)) + ("some_text=some☺value" : stdgo.GoString)?.__copy__();
/**
    
    
    
**/
var _splittests : stdgo.Slice<stdgo.strings_test.Strings_test.SplitTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.SplitTest>(
20,
20,
(new stdgo.strings_test.Strings_test.SplitTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (2 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString)?.__copy__(), ("bcd" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (4 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("a" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("c" : stdgo.GoString)?.__copy__(), ("d" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("a" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("c" : stdgo.GoString)?.__copy__(), ("d" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("☺" : stdgo.GoString)?.__copy__(), ("☻" : stdgo.GoString)?.__copy__(), ("☹" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("☺" : stdgo.GoString)?.__copy__(), ("☻" : stdgo.GoString)?.__copy__(), ("☹" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (17 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("☺" : stdgo.GoString)?.__copy__(), ("☻" : stdgo.GoString)?.__copy__(), ("☹" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("☺�☹" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("☺" : stdgo.GoString)?.__copy__(), ("�" : stdgo.GoString)?.__copy__(), ("☹" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (null : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str()?.__copy__(), ("bcd" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("z" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ("abcd" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_commas?.__copy__(), ("," : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__(), ("4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_dots?.__copy__(), ("..." : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString)?.__copy__(), (".2" : stdgo.GoString)?.__copy__(), (".3" : stdgo.GoString)?.__copy__(), (".4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("☹" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("☺☻" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("~" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, _faces?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2 3 4" : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("3 4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2" : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(stdgo.Go.str()?.__copy__(), ("T" : stdgo.GoString)?.__copy__(), (536870911 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(stdgo.Go.str(255, "-", 255)?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, stdgo.Go.str(255)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), stdgo.Go.str(255)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(stdgo.Go.str(255, "-", 255)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str(255)?.__copy__(), stdgo.Go.str(255)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.SplitTest>);
/**
    
    
    
**/
var _splitaftertests : stdgo.Slice<stdgo.strings_test.Strings_test.SplitTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.SplitTest>(
13,
13,
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString)?.__copy__(), ("bcd" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), ("z" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, ("abcd" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("a" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("c" : stdgo.GoString)?.__copy__(), ("d" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_commas?.__copy__(), ("," : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1," : stdgo.GoString)?.__copy__(), ("2," : stdgo.GoString)?.__copy__(), ("3," : stdgo.GoString)?.__copy__(), ("4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_dots?.__copy__(), ("..." : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1..." : stdgo.GoString)?.__copy__(), (".2..." : stdgo.GoString)?.__copy__(), (".3..." : stdgo.GoString)?.__copy__(), (".4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("☹" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("☺☻☹" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), ("~" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(1, 1, _faces?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("☺" : stdgo.GoString)?.__copy__(), ("☻" : stdgo.GoString)?.__copy__(), ("☹" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2 3 4" : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1 " : stdgo.GoString)?.__copy__(), ("2 " : stdgo.GoString)?.__copy__(), ("3 4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2 3" : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1 " : stdgo.GoString)?.__copy__(), ("2 " : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2" : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1 " : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("123" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), (2 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1" : stdgo.GoString)?.__copy__(), ("23" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("123" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), (17 : stdgo.StdGoTypes.GoInt), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.SplitTest>);
/**
    
    
    
**/
var _fieldstests : stdgo.Slice<stdgo.strings_test.Strings_test.FieldsTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.FieldsTest>(
15,
15,
(new stdgo.strings_test.Strings_test.FieldsTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest((" " : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest((" \t " : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\u2000" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("  abc  " : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(1, 1, ("abc" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1 2 3 4" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__(), ("4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1  2  3  4" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__(), ("4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1\t\t2\t\t3\t4" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__(), ("4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1\u20002\u20013\u20024" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(4, 4, ("1" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__(), ("4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\u2000\u2001\u2002" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\n™\t™\n" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(2, 2, ("™" : stdgo.GoString)?.__copy__(), ("™" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\n\u20001™2\u2000 \u2001 ™" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(2, 2, ("1™2" : stdgo.GoString)?.__copy__(), ("™" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\n1� �2\u20003�4" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ("1�" : stdgo.GoString)?.__copy__(), ("�2" : stdgo.GoString)?.__copy__(), ("3�4" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(stdgo.Go.str("1", 255, "\u2000", 255, "2", 255, " ", 255)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, stdgo.Go.str("1", 255)?.__copy__(), stdgo.Go.str(255, "2", 255)?.__copy__(), stdgo.Go.str(255)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(_faces?.__copy__(), (new stdgo.Slice<stdgo.GoString>(1, 1, _faces?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.FieldsTest>);
/**
    
    
    
**/
var fieldsFuncTests : stdgo.Slice<stdgo.strings_test.Strings_test.FieldsTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.FieldsTest>(4, 4, (new stdgo.strings_test.Strings_test.FieldsTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest), (new stdgo.strings_test.Strings_test.FieldsTest(("XX" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest), (new stdgo.strings_test.Strings_test.FieldsTest(("XXhiXXX" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(1, 1, ("hi" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest), (new stdgo.strings_test.Strings_test.FieldsTest(("aXXbXXXcX" : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("c" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.FieldsTest>);
/**
    
    
    
**/
var _upperTests : stdgo.Slice<stdgo.strings_test.Strings_test.StringTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.StringTest>(
10,
10,
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("ONLYUPPER" : stdgo.GoString)?.__copy__(), ("ONLYUPPER" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("abc" : stdgo.GoString)?.__copy__(), ("ABC" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("AbC123" : stdgo.GoString)?.__copy__(), ("ABC123" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("azAZ09_" : stdgo.GoString)?.__copy__(), ("AZAZ09_" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString)?.__copy__(), ("LONGSTRINGWITHMIXOFSMALLANDCAPS" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("RENAN BASTOS 93 AOSDAJDJAIDJAIDAJIaidsjjaidijadsjiadjiOOKKO" : stdgo.GoString)?.__copy__(), ("RENAN BASTOS 93 AOSDAJDJAIDJAIDAJIAIDSJJAIDIJADSJIADJIOOKKO" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("longɐstringɐwithɐnonasciiⱯchars" : stdgo.GoString)?.__copy__(), ("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("ɐɐɐɐɐ" : stdgo.GoString)?.__copy__(), ("ⱯⱯⱯⱯⱯ" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("a\u0080\u{0010ffff}" : stdgo.GoString)?.__copy__(), ("A\u0080\u{0010ffff}" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.StringTest>);
/**
    
    
    
**/
var _lowerTests : stdgo.Slice<stdgo.strings_test.Strings_test.StringTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.StringTest>(
9,
9,
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("AbC123" : stdgo.GoString)?.__copy__(), ("abc123" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("azAZ09_" : stdgo.GoString)?.__copy__(), ("azaz09_" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : stdgo.GoString)?.__copy__(), ("longstringwithmixofsmallandcaps" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("renan bastos 93 AOSDAJDJAIDJAIDAJIaidsjjaidijadsjiadjiOOKKO" : stdgo.GoString)?.__copy__(), ("renan bastos 93 aosdajdjaidjaidajiaidsjjaidijadsjiadjiookko" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : stdgo.GoString)?.__copy__(), ("longɐstringɐwithɐnonasciiɐchars" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("ⱭⱭⱭⱭⱭ" : stdgo.GoString)?.__copy__(), ("ɑɑɑɑɑ" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("A\u0080\u{0010ffff}" : stdgo.GoString)?.__copy__(), ("a\u0080\u{0010ffff}" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.StringTest>);
/**
    
    
    
**/
var _trimSpaceTests : stdgo.Slice<stdgo.strings_test.Strings_test.StringTest> = (new stdgo.Slice<stdgo.strings_test.Strings_test.StringTest>(
16,
16,
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" " : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" \t\r\n \t\t\r\r\n\n " : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" \t\r\n x\t\t\r\r\n\n " : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : stdgo.GoString)?.__copy__(), ("x\t\t\r\r\ny" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("1 \t\r\n2" : stdgo.GoString)?.__copy__(), ("1 \t\r\n2" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str(" x", 128)?.__copy__(), stdgo.Go.str("x", 128)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str(" x", 192)?.__copy__(), stdgo.Go.str("x", 192)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ", 192, 192)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192)?.__copy__(), stdgo.Go.str("x ", 192)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192, " ")?.__copy__(), stdgo.Go.str("x ", 192)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ", 192, 192)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(stdgo.Go.str("x ☺", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ☺", 192, 192)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("x ☺ " : stdgo.GoString)?.__copy__(), ("x ☺" : stdgo.GoString)?.__copy__()) : stdgo.strings_test.Strings_test.StringTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.StringTest>);
/**
    
    
    
**/
var _toValidUTF8Tests : stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(
14,
14,
({ _in : stdgo.Go.str()?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_11),
({ _in : ("abc" : stdgo.GoString)?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("abc" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : ("\ufddd" : stdgo.GoString)?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("\ufddd" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str("a", 255, "b")?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("a�b" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str("a", 255, "b�")?.__copy__(), _repl : ("X" : stdgo.GoString)?.__copy__(), _out : ("aXb�" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : stdgo.Go.str()?.__copy__(), _out : ("a☺b☺c☺" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : ("日本語" : stdgo.GoString)?.__copy__(), _out : ("a☺日本語b☺日本語c☺日本語" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str(192, 175)?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("�" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str(224, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("�" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str(237, 160, 128)?.__copy__(), _repl : ("abc" : stdgo.GoString)?.__copy__(), _out : ("abc" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str(237, 191, 191)?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("�" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str(240, 128, 128, 175)?.__copy__(), _repl : ("☺" : stdgo.GoString)?.__copy__(), _out : ("☺" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str(248, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("�" : stdgo.GoString)?.__copy__() } : T__struct_11),
({ _in : stdgo.Go.str(252, 128, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString)?.__copy__(), _out : ("�" : stdgo.GoString)?.__copy__() } : T__struct_11)) : stdgo.Slice<T__struct_11>);
/**
    
    
    
**/
var _trimTests : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(
29,
29,
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("a" : stdgo.GoString)?.__copy__(), _out : ("bb" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("ab" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("ab" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("ab" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("a" : stdgo.GoString)?.__copy__(), _out : ("bba" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("b" : stdgo.GoString)?.__copy__(), _out : ("abba" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("a" : stdgo.GoString)?.__copy__(), _out : ("abb" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : ("b" : stdgo.GoString)?.__copy__(), _out : ("abba" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : ("<tag>" : stdgo.GoString)?.__copy__(), _arg : ("<>" : stdgo.GoString)?.__copy__(), _out : ("tag" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : ("* listitem" : stdgo.GoString)?.__copy__(), _arg : (" *" : stdgo.GoString)?.__copy__(), _out : ("listitem" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : ("\"quote\"" : stdgo.GoString)?.__copy__(), _arg : ("\"" : stdgo.GoString)?.__copy__(), _out : ("quote" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : ("ⱯⱯɐɐⱯⱯ" : stdgo.GoString)?.__copy__(), _arg : ("Ɐ" : stdgo.GoString)?.__copy__(), _out : ("ɐɐ" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str(128, "test", 255)?.__copy__(), _arg : stdgo.Go.str(255)?.__copy__(), _out : ("test" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : (" Ġ " : stdgo.GoString)?.__copy__(), _arg : (" " : stdgo.GoString)?.__copy__(), _out : ("Ġ" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : (" Ġİ0" : stdgo.GoString)?.__copy__(), _arg : ("0 " : stdgo.GoString)?.__copy__(), _out : ("Ġİ" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("Trim" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString)?.__copy__(), _in : ("abba" : stdgo.GoString)?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str("☺", 192)?.__copy__(), _arg : ("☺" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str("☺", 192)?.__copy__() } : T__struct_12),
({ _f : ("TrimPrefix" : stdgo.GoString)?.__copy__(), _in : ("aabb" : stdgo.GoString)?.__copy__(), _arg : ("a" : stdgo.GoString)?.__copy__(), _out : ("abb" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimPrefix" : stdgo.GoString)?.__copy__(), _in : ("aabb" : stdgo.GoString)?.__copy__(), _arg : ("b" : stdgo.GoString)?.__copy__(), _out : ("aabb" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimSuffix" : stdgo.GoString)?.__copy__(), _in : ("aabb" : stdgo.GoString)?.__copy__(), _arg : ("a" : stdgo.GoString)?.__copy__(), _out : ("aabb" : stdgo.GoString)?.__copy__() } : T__struct_12),
({ _f : ("TrimSuffix" : stdgo.GoString)?.__copy__(), _in : ("aabb" : stdgo.GoString)?.__copy__(), _arg : ("b" : stdgo.GoString)?.__copy__(), _out : ("aab" : stdgo.GoString)?.__copy__() } : T__struct_12)) : stdgo.Slice<T__struct_12>);
/**
    
    
    
**/
var _isSpace : stdgo.strings_test.Strings_test.T_predicate = (new T_predicate(stdgo.unicode.Unicode.isSpace, ("IsSpace" : stdgo.GoString)?.__copy__()) : T_predicate);
/**
    
    
    
**/
var _isDigit : stdgo.strings_test.Strings_test.T_predicate = (new T_predicate(stdgo.unicode.Unicode.isDigit, ("IsDigit" : stdgo.GoString)?.__copy__()) : T_predicate);
/**
    
    
    
**/
var _isUpper : stdgo.strings_test.Strings_test.T_predicate = (new T_predicate(stdgo.unicode.Unicode.isUpper, ("IsUpper" : stdgo.GoString)?.__copy__()) : T_predicate);
/**
    
    
    
**/
var _isValidRune : stdgo.strings_test.Strings_test.T_predicate = (new T_predicate(function(_r:stdgo.StdGoTypes.GoRune):Bool {
        return _r != ((65533 : stdgo.StdGoTypes.GoInt32));
    }, ("IsValidRune" : stdgo.GoString)?.__copy__()) : T_predicate);
/**
    
    
    
**/
var _trimFuncTests : stdgo.Slice<T__struct_14> = (new stdgo.Slice<T__struct_14>(
9,
9,
({ _f : _isSpace?.__copy__(), _in : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString)?.__copy__(), _trimOut : ("hello" : stdgo.GoString)?.__copy__(), _leftOut : ("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString)?.__copy__(), _rightOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello" : stdgo.GoString)?.__copy__() } : T__struct_14),
({ _f : _isDigit?.__copy__(), _in : ("๐๒12hello34๐๑" : stdgo.GoString)?.__copy__(), _trimOut : ("hello" : stdgo.GoString)?.__copy__(), _leftOut : ("hello34๐๑" : stdgo.GoString)?.__copy__(), _rightOut : ("๐๒12hello" : stdgo.GoString)?.__copy__() } : T__struct_14),
({ _f : _isUpper?.__copy__(), _in : ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString)?.__copy__(), _trimOut : ("hello" : stdgo.GoString)?.__copy__(), _leftOut : ("helloEFⱯⱯGHⱯⱯ" : stdgo.GoString)?.__copy__(), _rightOut : ("ⱯⱯⱯⱯABCDhello" : stdgo.GoString)?.__copy__() } : T__struct_14),
({ _f : _not(_isSpace?.__copy__())?.__copy__(), _in : ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString)?.__copy__(), _trimOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString)?.__copy__(), _leftOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : stdgo.GoString)?.__copy__(), _rightOut : ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString)?.__copy__() } : T__struct_14),
({ _f : _not(_isDigit?.__copy__())?.__copy__(), _in : ("hello๐๒1234๐๑helo" : stdgo.GoString)?.__copy__(), _trimOut : ("๐๒1234๐๑" : stdgo.GoString)?.__copy__(), _leftOut : ("๐๒1234๐๑helo" : stdgo.GoString)?.__copy__(), _rightOut : ("hello๐๒1234๐๑" : stdgo.GoString)?.__copy__() } : T__struct_14),
({ _f : _isValidRune?.__copy__(), _in : stdgo.Go.str("ab", 192, "a", 192, "cd")?.__copy__(), _trimOut : stdgo.Go.str(192, "a", 192)?.__copy__(), _leftOut : stdgo.Go.str(192, "a", 192, "cd")?.__copy__(), _rightOut : stdgo.Go.str("ab", 192, "a", 192)?.__copy__() } : T__struct_14),
({ _f : _not(_isValidRune?.__copy__())?.__copy__(), _in : stdgo.Go.str(192, "a", 192)?.__copy__(), _trimOut : ("a" : stdgo.GoString)?.__copy__(), _leftOut : stdgo.Go.str("a", 192)?.__copy__(), _rightOut : stdgo.Go.str(192, "a")?.__copy__() } : T__struct_14),
({ _f : _isSpace?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _trimOut : stdgo.Go.str()?.__copy__(), _leftOut : stdgo.Go.str()?.__copy__(), _rightOut : stdgo.Go.str()?.__copy__() } : T__struct_14),
({ _f : _isSpace?.__copy__(), _in : (" " : stdgo.GoString)?.__copy__(), _trimOut : stdgo.Go.str()?.__copy__(), _leftOut : stdgo.Go.str()?.__copy__(), _rightOut : stdgo.Go.str()?.__copy__() } : T__struct_14)) : stdgo.Slice<T__struct_14>);
/**
    
    
    
**/
var _indexFuncTests : stdgo.Slice<T__struct_16> = (new stdgo.Slice<T__struct_16>(
17,
17,
({ _in : stdgo.Go.str()?.__copy__(), _f : _isValidRune?.__copy__(), _first : (-1 : stdgo.StdGoTypes.GoInt), _last : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : ("abc" : stdgo.GoString)?.__copy__(), _f : _isDigit?.__copy__(), _first : (-1 : stdgo.StdGoTypes.GoInt), _last : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : ("0123" : stdgo.GoString)?.__copy__(), _f : _isDigit?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : ("a1b" : stdgo.GoString)?.__copy__(), _f : _isDigit?.__copy__(), _first : (1 : stdgo.StdGoTypes.GoInt), _last : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString)?.__copy__(), _f : _isSpace?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (12 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : ("๐๒12hello34๐๑" : stdgo.GoString)?.__copy__(), _f : _isDigit?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (18 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : stdgo.GoString)?.__copy__(), _f : _isUpper?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (34 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : ("12๐๒hello34๐๑" : stdgo.GoString)?.__copy__(), _f : _not(_isDigit?.__copy__())?.__copy__(), _first : (8 : stdgo.StdGoTypes.GoInt), _last : (12 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(128, "1")?.__copy__(), _f : _isDigit?.__copy__(), _first : (1 : stdgo.StdGoTypes.GoInt), _last : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(128, "abc")?.__copy__(), _f : _isDigit?.__copy__(), _first : (-1 : stdgo.StdGoTypes.GoInt), _last : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "a", 192)?.__copy__(), _f : _isValidRune?.__copy__(), _first : (1 : stdgo.StdGoTypes.GoInt), _last : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "a", 192)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "☺", 192)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (4 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(192, "☺", 192, 192)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (5 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str("ab", 192, "a", 192, "cd")?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (2 : stdgo.StdGoTypes.GoInt), _last : (4 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str("a", 224, 128, "cd")?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (1 : stdgo.StdGoTypes.GoInt), _last : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_16),
({ _in : stdgo.Go.str(128, 128, 128, 128)?.__copy__(), _f : _not(_isValidRune?.__copy__())?.__copy__(), _first : (0 : stdgo.StdGoTypes.GoInt), _last : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_16)) : stdgo.Slice<T__struct_16>);
/**
    
    
    
**/
var _longString : stdgo.GoString = ("a" : stdgo.GoString) + (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((65536 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() : stdgo.GoString)?.__copy__() + ("z" : stdgo.GoString)?.__copy__();
/**
    
    
    
**/
var repeatTests : stdgo.Slice<T__struct_17> = (new stdgo.Slice<T__struct_17>(
9,
9,
({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _count : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _count : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _count : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : ("-" : stdgo.GoString)?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _count : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : ("-" : stdgo.GoString)?.__copy__(), _out : ("-" : stdgo.GoString)?.__copy__(), _count : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : ("-" : stdgo.GoString)?.__copy__(), _out : ("----------" : stdgo.GoString)?.__copy__(), _count : (10 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : ("abc " : stdgo.GoString)?.__copy__(), _out : ("abc abc abc " : stdgo.GoString)?.__copy__(), _count : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : (((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString)?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((65536 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() : stdgo.GoString)?.__copy__(), _count : (65536 : stdgo.StdGoTypes.GoInt) } : T__struct_17),
({ _in : _longString?.__copy__(), _out : _longString + _longString?.__copy__()?.__copy__(), _count : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_17)) : stdgo.Slice<T__struct_17>);
/**
    
    
    
**/
var runesTests : stdgo.Slice<T__struct_19> = (new stdgo.Slice<T__struct_19>(7, 7, ({ _in : stdgo.Go.str()?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _lossy : false } : T__struct_19), ({ _in : (" " : stdgo.GoString)?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(1, 1, (32 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("ABC" : stdgo.GoString)?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(3, 3, (65 : stdgo.StdGoTypes.GoInt32), (66 : stdgo.StdGoTypes.GoInt32), (67 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("abc" : stdgo.GoString)?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(3, 3, (97 : stdgo.StdGoTypes.GoInt32), (98 : stdgo.StdGoTypes.GoInt32), (99 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("日本語" : stdgo.GoString)?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(3, 3, (26085 : stdgo.StdGoTypes.GoInt32), (26412 : stdgo.StdGoTypes.GoInt32), (35486 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _lossy : false } : T__struct_19), ({ _in : stdgo.Go.str("ab", 128, "c")?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (97 : stdgo.StdGoTypes.GoInt32), (98 : stdgo.StdGoTypes.GoInt32), (65533 : stdgo.StdGoTypes.GoInt32), (99 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _lossy : true } : T__struct_19), ({ _in : stdgo.Go.str("ab", 192, "c")?.__copy__(), _out : (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (97 : stdgo.StdGoTypes.GoInt32), (98 : stdgo.StdGoTypes.GoInt32), (65533 : stdgo.StdGoTypes.GoInt32), (99 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _lossy : true } : T__struct_19)) : stdgo.Slice<T__struct_19>);
/**
    
    
    
**/
var unreadRuneErrorTests : stdgo.Slice<T__struct_20> = (new stdgo.Slice<T__struct_20>(5, 5, ({ _name : ("Read" : stdgo.GoString)?.__copy__(), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.read((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
    } } : T__struct_20), ({ _name : ("ReadByte" : stdgo.GoString)?.__copy__(), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.readByte();
    } } : T__struct_20), ({ _name : ("UnreadRune" : stdgo.GoString)?.__copy__(), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.unreadRune();
    } } : T__struct_20), ({ _name : ("Seek" : stdgo.GoString)?.__copy__(), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.seek((0i64 : stdgo.StdGoTypes.GoInt64), (1 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_20), ({ _name : ("WriteTo" : stdgo.GoString)?.__copy__(), _f : function(_r:stdgo.StdGoTypes.Ref<Reader>):Void {
        _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
    } } : T__struct_20)) : stdgo.Slice<T__struct_20>);
/**
    
    
    
**/
var replaceTests : stdgo.Slice<T__struct_21> = (new stdgo.Slice<T__struct_21>(
19,
19,
({ _in : ("hello" : stdgo.GoString)?.__copy__(), _old : ("l" : stdgo.GoString)?.__copy__(), _new : ("L" : stdgo.GoString)?.__copy__(), _n : (0 : stdgo.StdGoTypes.GoInt), _out : ("hello" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("hello" : stdgo.GoString)?.__copy__(), _old : ("l" : stdgo.GoString)?.__copy__(), _new : ("L" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("heLLo" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("hello" : stdgo.GoString)?.__copy__(), _old : ("x" : stdgo.GoString)?.__copy__(), _new : ("X" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("hello" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : stdgo.Go.str()?.__copy__(), _old : ("x" : stdgo.GoString)?.__copy__(), _new : ("X" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : stdgo.Go.str()?.__copy__() } : T__struct_21),
({ _in : ("radar" : stdgo.GoString)?.__copy__(), _old : ("r" : stdgo.GoString)?.__copy__(), _new : ("<r>" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("<r>ada<r>" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : stdgo.Go.str()?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("<>" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : ("a" : stdgo.GoString)?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("b<>n<>n<>" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : ("a" : stdgo.GoString)?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (1 : stdgo.StdGoTypes.GoInt), _out : ("b<>nana" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : ("a" : stdgo.GoString)?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (1000 : stdgo.StdGoTypes.GoInt), _out : ("b<>n<>n<>" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : ("an" : stdgo.GoString)?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("b<><>a" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : ("ana" : stdgo.GoString)?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("b<>na" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (10 : stdgo.StdGoTypes.GoInt), _out : ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (6 : stdgo.StdGoTypes.GoInt), _out : ("<>b<>a<>n<>a<>n<>a" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (5 : stdgo.StdGoTypes.GoInt), _out : ("<>b<>a<>n<>a<>na" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (1 : stdgo.StdGoTypes.GoInt), _out : ("<>banana" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : ("a" : stdgo.GoString)?.__copy__(), _new : ("a" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("banana" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("banana" : stdgo.GoString)?.__copy__(), _old : ("a" : stdgo.GoString)?.__copy__(), _new : ("a" : stdgo.GoString)?.__copy__(), _n : (1 : stdgo.StdGoTypes.GoInt), _out : ("banana" : stdgo.GoString)?.__copy__() } : T__struct_21),
({ _in : ("☺☻☹" : stdgo.GoString)?.__copy__(), _old : stdgo.Go.str()?.__copy__(), _new : ("<>" : stdgo.GoString)?.__copy__(), _n : (-1 : stdgo.StdGoTypes.GoInt), _out : ("<>☺<>☻<>☹<>" : stdgo.GoString)?.__copy__() } : T__struct_21)) : stdgo.Slice<T__struct_21>);
/**
    
    
    
**/
var titleTests : stdgo.Slice<StringTest> = (new stdgo.Slice<StringTest>(
9,
9,
(new StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : StringTest),
(new StringTest(("a" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__()) : StringTest),
(new StringTest((" aaa aaa aaa " : stdgo.GoString)?.__copy__(), (" Aaa Aaa Aaa " : stdgo.GoString)?.__copy__()) : StringTest),
(new StringTest((" Aaa Aaa Aaa " : stdgo.GoString)?.__copy__(), (" Aaa Aaa Aaa " : stdgo.GoString)?.__copy__()) : StringTest),
(new StringTest(("123a456" : stdgo.GoString)?.__copy__(), ("123a456" : stdgo.GoString)?.__copy__()) : StringTest),
(new StringTest(("double-blind" : stdgo.GoString)?.__copy__(), ("Double-Blind" : stdgo.GoString)?.__copy__()) : StringTest),
(new StringTest(("ÿøû" : stdgo.GoString)?.__copy__(), ("Ÿøû" : stdgo.GoString)?.__copy__()) : StringTest),
(new StringTest(("with_underscore" : stdgo.GoString)?.__copy__(), ("With_underscore" : stdgo.GoString)?.__copy__()) : StringTest),
(new StringTest(("unicode \u2028 line separator" : stdgo.GoString)?.__copy__(), ("Unicode \u2028 Line Separator" : stdgo.GoString)?.__copy__()) : StringTest)) : stdgo.Slice<StringTest>);
/**
    
    
    
**/
var containsTests : stdgo.Slice<T__struct_22> = (new stdgo.Slice<T__struct_22>(
56,
56,
({ _str : ("abc" : stdgo.GoString)?.__copy__(), _substr : ("bc" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("abc" : stdgo.GoString)?.__copy__(), _substr : ("bcd" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("abc" : stdgo.GoString)?.__copy__(), _substr : stdgo.Go.str()?.__copy__(), _expected : true } : T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("a" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("01xxxx" : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx01xx" : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx01" : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("01xxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx01" : stdgo.GoString).__slice__(0, (6 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("012xxxx" : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx012xx" : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx012" : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("012xxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx012" : stdgo.GoString).__slice__(0, (7 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("0123xxxx" : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx0123xx" : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx0123" : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("0123xxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123" : stdgo.GoString).__slice__(0, (8 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("01234xxxx" : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx01234xx" : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx01234" : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("01234xxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx01234" : stdgo.GoString).__slice__(0, (9 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("01234567xxxx" : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx01234567xx" : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx01234567" : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("01234567xxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx01234567" : stdgo.GoString).__slice__(0, (12 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("01234567" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("012345678xxxx" : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx012345678xx" : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx012345678" : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("012345678xxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx012345678" : stdgo.GoString).__slice__(0, (13 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxxxxxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("0123456789ABCDEFxxxx" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx0123456789ABCDEFxx" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx0123456789ABCDEF" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("0123456789ABCDEFxxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123456789ABCDEF" : stdgo.GoString).__slice__(0, (20 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEF" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxxxxxxxxxx" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("0123456789ABCDEFGxxxx" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xx0123456789ABCDEFGxx" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("xxxx0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : (("0123456789ABCDEFGxxxxx" : stdgo.GoString).__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123456789ABCDEFG" : stdgo.GoString).__slice__(0, (21 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xx01x" : stdgo.GoString)?.__copy__(), _substr : ("012" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xx0123x" : stdgo.GoString)?.__copy__(), _substr : ("01234" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xx01234567x" : stdgo.GoString)?.__copy__(), _substr : ("012345678" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("xx0123456789ABCDEFx" : stdgo.GoString)?.__copy__(), _substr : ("0123456789ABCDEFG" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22)) : stdgo.Slice<T__struct_22>);
/**
    
    
    
**/
var containsAnyTests : stdgo.Slice<T__struct_22> = (new stdgo.Slice<T__struct_22>(
11,
11,
({ _str : stdgo.Go.str()?.__copy__(), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("a" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("abc" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("a" : stdgo.GoString)?.__copy__(), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("a" : stdgo.GoString)?.__copy__(), _substr : ("a" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("aaa" : stdgo.GoString)?.__copy__(), _substr : ("a" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("abc" : stdgo.GoString)?.__copy__(), _substr : ("xyz" : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22),
({ _str : ("abc" : stdgo.GoString)?.__copy__(), _substr : ("xcz" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), _substr : ("uvw☻xyz" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : ("aRegExp*" : stdgo.GoString)?.__copy__(), _substr : (".(|)*+?^$[]" : stdgo.GoString)?.__copy__(), _expected : true } : T__struct_22),
({ _str : _dots + _dots?.__copy__() + _dots?.__copy__()?.__copy__(), _substr : (" " : stdgo.GoString)?.__copy__(), _expected : false } : T__struct_22)) : stdgo.Slice<T__struct_22>);
/**
    
    
    
**/
var containsRuneTests : stdgo.Slice<T__struct_23> = (new stdgo.Slice<T__struct_23>(8, 8, ({ _str : stdgo.Go.str()?.__copy__(), _r : (97 : stdgo.StdGoTypes.GoInt32), _expected : false } : T__struct_23), ({ _str : ("a" : stdgo.GoString)?.__copy__(), _r : (97 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_23), ({ _str : ("aaa" : stdgo.GoString)?.__copy__(), _r : (97 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_23), ({ _str : ("abc" : stdgo.GoString)?.__copy__(), _r : (121 : stdgo.StdGoTypes.GoInt32), _expected : false } : T__struct_23), ({ _str : ("abc" : stdgo.GoString)?.__copy__(), _r : (99 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_23), ({ _str : ("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), _r : (120 : stdgo.StdGoTypes.GoInt32), _expected : false } : T__struct_23), ({ _str : ("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), _r : (9787 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_23), ({ _str : ("aRegExp*" : stdgo.GoString)?.__copy__(), _r : (42 : stdgo.StdGoTypes.GoInt32), _expected : true } : T__struct_23)) : stdgo.Slice<T__struct_23>);
/**
    
    
    
**/
var equalFoldTests : stdgo.Slice<T__struct_24> = (new stdgo.Slice<T__struct_24>(
13,
13,
({ _s : ("abc" : stdgo.GoString)?.__copy__(), _t : ("abc" : stdgo.GoString)?.__copy__(), _out : true } : T__struct_24),
({ _s : ("ABcd" : stdgo.GoString)?.__copy__(), _t : ("ABcd" : stdgo.GoString)?.__copy__(), _out : true } : T__struct_24),
({ _s : ("123abc" : stdgo.GoString)?.__copy__(), _t : ("123ABC" : stdgo.GoString)?.__copy__(), _out : true } : T__struct_24),
({ _s : ("αβδ" : stdgo.GoString)?.__copy__(), _t : ("ΑΒΔ" : stdgo.GoString)?.__copy__(), _out : true } : T__struct_24),
({ _s : ("abc" : stdgo.GoString)?.__copy__(), _t : ("xyz" : stdgo.GoString)?.__copy__(), _out : false } : T__struct_24),
({ _s : ("abc" : stdgo.GoString)?.__copy__(), _t : ("XYZ" : stdgo.GoString)?.__copy__(), _out : false } : T__struct_24),
({ _s : ("abcdefghijk" : stdgo.GoString)?.__copy__(), _t : ("abcdefghijX" : stdgo.GoString)?.__copy__(), _out : false } : T__struct_24),
({ _s : ("abcdefghijk" : stdgo.GoString)?.__copy__(), _t : ("abcdefghijK" : stdgo.GoString)?.__copy__(), _out : true } : T__struct_24),
({ _s : ("abcdefghijK" : stdgo.GoString)?.__copy__(), _t : ("abcdefghijK" : stdgo.GoString)?.__copy__(), _out : true } : T__struct_24),
({ _s : ("abcdefghijkz" : stdgo.GoString)?.__copy__(), _t : ("abcdefghijKy" : stdgo.GoString)?.__copy__(), _out : false } : T__struct_24),
({ _s : ("abcdefghijKz" : stdgo.GoString)?.__copy__(), _t : ("abcdefghijKy" : stdgo.GoString)?.__copy__(), _out : false } : T__struct_24),
({ _s : ("1" : stdgo.GoString)?.__copy__(), _t : ("2" : stdgo.GoString)?.__copy__(), _out : false } : T__struct_24),
({ _s : ("utf-8" : stdgo.GoString)?.__copy__(), _t : ("US-ASCII" : stdgo.GoString)?.__copy__(), _out : false } : T__struct_24)) : stdgo.Slice<T__struct_24>);
/**
    
    
    
**/
var countTests : stdgo.Slice<T__struct_25> = (new stdgo.Slice<T__struct_25>(
10,
10,
({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _num : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : stdgo.Go.str()?.__copy__(), _sep : ("notempty" : stdgo.GoString)?.__copy__(), _num : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("notempty" : stdgo.GoString)?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _num : (9 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("smaller" : stdgo.GoString)?.__copy__(), _sep : ("not smaller" : stdgo.GoString)?.__copy__(), _num : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("12345678987654321" : stdgo.GoString)?.__copy__(), _sep : ("6" : stdgo.GoString)?.__copy__(), _num : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("611161116" : stdgo.GoString)?.__copy__(), _sep : ("6" : stdgo.GoString)?.__copy__(), _num : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("notequal" : stdgo.GoString)?.__copy__(), _sep : ("NotEqual" : stdgo.GoString)?.__copy__(), _num : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("equal" : stdgo.GoString)?.__copy__(), _sep : ("equal" : stdgo.GoString)?.__copy__(), _num : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("abc1231231123q" : stdgo.GoString)?.__copy__(), _sep : ("123" : stdgo.GoString)?.__copy__(), _num : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_25),
({ _s : ("11111" : stdgo.GoString)?.__copy__(), _sep : ("11" : stdgo.GoString)?.__copy__(), _num : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_25)) : stdgo.Slice<T__struct_25>);
/**
    
    
    
**/
var _cutTests : stdgo.Slice<T__struct_26> = (new stdgo.Slice<T__struct_26>(8, 8, ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("b" : stdgo.GoString)?.__copy__(), _before : ("a" : stdgo.GoString)?.__copy__(), _after : ("c" : stdgo.GoString)?.__copy__(), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("a" : stdgo.GoString)?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : ("bc" : stdgo.GoString)?.__copy__(), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("c" : stdgo.GoString)?.__copy__(), _before : ("ab" : stdgo.GoString)?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("abc" : stdgo.GoString)?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : ("abc" : stdgo.GoString)?.__copy__(), _found : true } : T__struct_26), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("d" : stdgo.GoString)?.__copy__(), _before : ("abc" : stdgo.GoString)?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_26), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString)?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_26), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_26)) : stdgo.Slice<T__struct_26>);
/**
    
    
    
**/
var _cutPrefixTests : stdgo.Slice<T__struct_27> = (new stdgo.Slice<T__struct_27>(6, 6, ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("a" : stdgo.GoString)?.__copy__(), _after : ("bc" : stdgo.GoString)?.__copy__(), _found : true } : T__struct_27), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("abc" : stdgo.GoString)?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_27), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _after : ("abc" : stdgo.GoString)?.__copy__(), _found : true } : T__struct_27), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("d" : stdgo.GoString)?.__copy__(), _after : ("abc" : stdgo.GoString)?.__copy__(), _found : false } : T__struct_27), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString)?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_27), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _after : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_27)) : stdgo.Slice<T__struct_27>);
/**
    
    
    
**/
var _cutSuffixTests : stdgo.Slice<T__struct_28> = (new stdgo.Slice<T__struct_28>(6, 6, ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("bc" : stdgo.GoString)?.__copy__(), _before : ("a" : stdgo.GoString)?.__copy__(), _found : true } : T__struct_28), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("abc" : stdgo.GoString)?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_28), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : ("abc" : stdgo.GoString)?.__copy__(), _found : true } : T__struct_28), ({ _s : ("abc" : stdgo.GoString)?.__copy__(), _sep : ("d" : stdgo.GoString)?.__copy__(), _before : ("abc" : stdgo.GoString)?.__copy__(), _found : false } : T__struct_28), ({ _s : stdgo.Go.str()?.__copy__(), _sep : ("d" : stdgo.GoString)?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _found : false } : T__struct_28), ({ _s : stdgo.Go.str()?.__copy__(), _sep : stdgo.Go.str()?.__copy__(), _before : stdgo.Go.str()?.__copy__(), _found : true } : T__struct_28)) : stdgo.Slice<T__struct_28>);
/**
    
    
    
**/
var _benchInputHard : stdgo.GoString = _makeBenchInputHard();
/**
    
    
    
**/
var _benchInputTorture : stdgo.GoString = repeat(("ABC" : stdgo.GoString)?.__copy__(), (1024 : stdgo.StdGoTypes.GoInt)) + ("123" : stdgo.GoString)?.__copy__() + repeat(("ABC" : stdgo.GoString)?.__copy__(), (1024 : stdgo.StdGoTypes.GoInt))?.__copy__();
/**
    
    
    
**/
var _benchNeedleTorture : stdgo.GoString = repeat(("ABC" : stdgo.GoString)?.__copy__(), (1025 : stdgo.StdGoTypes.GoInt));
/**
    
    
    
**/
var _makeFieldsInput : () -> stdgo.GoString = function():stdgo.GoString {
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
        return (_x : stdgo.GoString)?.__copy__();
    };
/**
    
    
    
**/
var _makeFieldsInputASCII : () -> stdgo.GoString = function():stdgo.GoString {
        var _x = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1048576 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _x.length.toBasic()) {
            if (stdgo.math.rand.Rand.intn((10 : stdgo.StdGoTypes.GoInt)) == ((0 : stdgo.StdGoTypes.GoInt))) {
                _x[(_i : stdgo.StdGoTypes.GoInt)] = (32 : stdgo.StdGoTypes.GoUInt8);
            } else {
                _x[(_i : stdgo.StdGoTypes.GoInt)] = (120 : stdgo.StdGoTypes.GoUInt8);
            };
        };
        return (_x : stdgo.GoString)?.__copy__();
    };
/**
    
    
    
**/
var _stringdata : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(2, 2, ({ _name : ("ASCII" : stdgo.GoString)?.__copy__(), _data : _makeFieldsInputASCII()?.__copy__() } : T__struct_7), ({ _name : ("Mixed" : stdgo.GoString)?.__copy__(), _data : _makeFieldsInput()?.__copy__() } : T__struct_7)) : stdgo.Slice<T__struct_7>);
/**
    
    
    
**/
var _sinkS = ("" : stdgo.GoString);
/**
    
    
    
**/
var _emptyString = ("" : stdgo.GoString);
/**
    
    
    
**/
final _benchmarkString : stdgo.GoString = ("some_text=some☺value" : stdgo.GoString);
/**
    
    
    
**/
final _space : stdgo.GoString = ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString);
/**
    
    
    
**/
var _stringSink = ("" : stdgo.GoString);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.strings_test.Strings_test.T_errWriter_static_extension) class T_errWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter();
    }
}
/**
    
    
    
**/
@:structInit class IndexTest {
    public var _s : stdgo.GoString = "";
    public var _sep : stdgo.GoString = "";
    public var _out : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:stdgo.StdGoTypes.GoInt) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexTest(_s, _sep, _out);
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
    // Test case for any function which accepts and returns a single string.
    
    
**/
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
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _name : stdgo.GoString;
    public var _fn : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder> -> { var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
    public var _n : stdgo.StdGoTypes.GoInt;
    public var _want : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _fn : () -> Void;
    public var _wantPanic : Bool;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _a : stdgo.GoString;
    public var _b : stdgo.GoString;
    public var _i : stdgo.StdGoTypes.GoInt;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _off : stdgo.StdGoTypes.GoInt64;
    public var _seek : stdgo.StdGoTypes.GoInt;
    public var _n : stdgo.StdGoTypes.GoInt;
    public var _want : stdgo.GoString;
    public var _wantpos : stdgo.StdGoTypes.GoInt64;
    public var _readerr : stdgo.Error;
    public var _seekerr : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _off : stdgo.StdGoTypes.GoInt64;
    public var _n : stdgo.StdGoTypes.GoInt;
    public var _want : stdgo.GoString;
    public var _wanterr : stdgo.StdGoTypes.AnyInterface;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _r : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Replacer>;
    public var _want : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _name : stdgo.GoString;
    public var _data : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _pat : stdgo.GoString;
    public var _text : stdgo.GoString;
    public var _index : stdgo.StdGoTypes.GoInt;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _pattern : stdgo.GoString;
    public var _bad : stdgo.GoArray<stdgo.StdGoTypes.GoInt>;
    public var _suf : stdgo.Slice<stdgo.StdGoTypes.GoInt>;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _in : stdgo.GoString;
    public var _rune : stdgo.StdGoTypes.GoInt32;
    public var _want : stdgo.StdGoTypes.GoInt;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _in : stdgo.GoString;
    public var _repl : stdgo.GoString;
    public var _out : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_12_static_extension) typedef T__struct_12 = {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _name : stdgo.GoString;
    public var _input : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _f : stdgo.strings_test.Strings_test.T_predicate;
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _name : stdgo.GoString;
    public var _trim : (stdgo.GoString, stdgo.StdGoTypes.GoInt32 -> Bool) -> stdgo.GoString;
    public var _out : stdgo.GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _in : stdgo.GoString;
    public var _f : stdgo.strings_test.Strings_test.T_predicate;
    public var _first : stdgo.StdGoTypes.GoInt;
    public var _last : stdgo.StdGoTypes.GoInt;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
    public var _count : stdgo.StdGoTypes.GoInt;
};
class T__struct_18_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_18>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_18_asInterface) class T__struct_18_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_18_static_extension) typedef T__struct_18 = {
    public var _s : stdgo.GoString;
    public var _count : stdgo.StdGoTypes.GoInt;
    public var _errStr : stdgo.GoString;
};
class T__struct_19_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_19>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_19_asInterface) class T__struct_19_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_19_static_extension) typedef T__struct_19 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.Slice<stdgo.StdGoTypes.GoInt32>;
    public var _lossy : Bool;
};
class T__struct_20_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_20>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_20_asInterface) class T__struct_20_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_20_static_extension) typedef T__struct_20 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader> -> Void;
};
class T__struct_21_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_21>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_21_asInterface) class T__struct_21_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_21_static_extension) typedef T__struct_21 = {
    public var _in : stdgo.GoString;
    public var _old : stdgo.GoString;
    public var _new : stdgo.GoString;
    public var _n : stdgo.StdGoTypes.GoInt;
    public var _out : stdgo.GoString;
};
class T__struct_22_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_22>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_22_asInterface) class T__struct_22_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_22_static_extension) typedef T__struct_22 = {
    public var _str : stdgo.GoString;
    public var _substr : stdgo.GoString;
    public var _expected : Bool;
};
class T__struct_23_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_23>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_23_asInterface) class T__struct_23_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_23_static_extension) typedef T__struct_23 = {
    public var _str : stdgo.GoString;
    public var _r : stdgo.StdGoTypes.GoInt32;
    public var _expected : Bool;
};
class T__struct_24_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_24>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_24_asInterface) class T__struct_24_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_24_static_extension) typedef T__struct_24 = {
    public var _s : stdgo.GoString;
    public var _t : stdgo.GoString;
    public var _out : Bool;
};
class T__struct_25_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_25>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_25_asInterface) class T__struct_25_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_25_static_extension) typedef T__struct_25 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _num : stdgo.StdGoTypes.GoInt;
};
class T__struct_26_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_26>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_26_asInterface) class T__struct_26_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_26_static_extension) typedef T__struct_26 = {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_27>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_27_asInterface) class T__struct_27_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_27_static_extension) typedef T__struct_27 = {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_28>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_28_asInterface) class T__struct_28_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_28_static_extension) typedef T__struct_28 = {
    public var _s : stdgo.GoString;
    public var _sep : stdgo.GoString;
    public var _before : stdgo.GoString;
    public var _found : Bool;
};
function _check(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _b:stdgo.StdGoTypes.Ref<Builder>, _want:stdgo.GoString):Void {
        _t.helper();
        var _got:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.errorf(("String: got %#q; want %#q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            return;
        };
        {
            var _n:stdgo.StdGoTypes.GoInt = _b.len();
            if (_n != ((_got.length))) {
                _t.errorf(("Len: got %d; but len(String()) is %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)));
            };
        };
        {
            var _n:stdgo.StdGoTypes.GoInt = _b.cap();
            if (_n < (_got.length)) {
                _t.errorf(("Cap: got %d; but len(String()) is %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)));
            };
        };
    }
function testBuilder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), stdgo.Go.str()?.__copy__());
        var __tmp__ = _b.writeString(("hello" : stdgo.GoString)?.__copy__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_n != (5 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("hello" : stdgo.GoString)?.__copy__());
        {
            _err = _b.writeByte((32 : stdgo.StdGoTypes.GoUInt8));
            if (_err != null) {
                _t.errorf(("WriteByte: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("hello " : stdgo.GoString)?.__copy__());
        {
            var __tmp__ = _b.writeString(("world" : stdgo.GoString)?.__copy__());
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_err != null) || (_n != (5 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("hello world" : stdgo.GoString)?.__copy__());
    }
function testBuilderString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        _b.writeString(("alpha" : stdgo.GoString)?.__copy__());
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("alpha" : stdgo.GoString)?.__copy__());
        var _s1:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
        _b.writeString(("beta" : stdgo.GoString)?.__copy__());
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("alphabeta" : stdgo.GoString)?.__copy__());
        var _s2:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
        _b.writeString(("gamma" : stdgo.GoString)?.__copy__());
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("alphabetagamma" : stdgo.GoString)?.__copy__());
        var _s3:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
        {
            var _want:stdgo.GoString = ("alpha" : stdgo.GoString)?.__copy__();
            if (_s1 != (_want)) {
                _t.errorf(("first String result is now %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _want:stdgo.GoString = ("alphabeta" : stdgo.GoString)?.__copy__();
            if (_s2 != (_want)) {
                _t.errorf(("second String result is now %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _want:stdgo.GoString = ("alphabetagamma" : stdgo.GoString)?.__copy__();
            if (_s3 != (_want)) {
                _t.errorf(("third String result is now %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_want));
            };
        };
    }
function testBuilderReset(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), stdgo.Go.str()?.__copy__());
        _b.writeString(("aaa" : stdgo.GoString)?.__copy__());
        var _s:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("aaa" : stdgo.GoString)?.__copy__());
        _b.reset();
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), stdgo.Go.str()?.__copy__());
        _b.writeString(("bbb" : stdgo.GoString)?.__copy__());
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("bbb" : stdgo.GoString)?.__copy__());
        {
            var _want:stdgo.GoString = ("aaa" : stdgo.GoString)?.__copy__();
            if (_s != (_want)) {
                _t.errorf(("previous String result changed after Reset: got %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
            };
        };
    }
function testBuilderGrow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testBuilderGrow" + " skip function");
        return;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (__0 => _growLen in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(5, 5, (0 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt), (1000 : stdgo.StdGoTypes.GoInt), (10000 : stdgo.StdGoTypes.GoInt), (100000 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
                var _p = stdgo.bytes.Bytes.repeat((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (97 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _growLen);
                var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), function():Void {
                    var _b:Builder = ({} : stdgo.strings.Strings.Builder);
                    _b.grow(_growLen);
                    if (_b.cap() < _growLen) {
                        _t.fatalf(("growLen=%d: Cap() is lower than growLen" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_growLen));
                    };
                    _b.write(_p);
                    if ((_b.string() : stdgo.GoString) != ((_p : stdgo.GoString))) {
                        _t.fatalf(("growLen=%d: bad data written after Grow" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_growLen));
                    };
                });
                var _wantAllocs:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                if (_growLen == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _wantAllocs = (0 : stdgo.StdGoTypes.GoInt);
                };
                {
                    var __0:stdgo.StdGoTypes.GoInt = (_allocs : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = _wantAllocs, _w:stdgo.StdGoTypes.GoInt = __1, _g:stdgo.StdGoTypes.GoInt = __0;
                    if (_g != (_w)) {
                        _t.errorf(("growLen=%d: got %d allocs during Write; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_growLen), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            };
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            var _n:stdgo.StdGoTypes.GoInt = (-1 : stdgo.StdGoTypes.GoInt);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r == null) {
                            _t.errorf(("a.Grow(%d) should panic()" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n));
                        };
                    };
                };
                a();
            });
            _a.grow(_n);
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
function testBuilderWrite2(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        for (__0 => _tt in (new stdgo.Slice<T__struct_0>(4, 4, ({ _name : ("Write" : stdgo.GoString)?.__copy__(), _fn : function(_b:stdgo.StdGoTypes.Ref<Builder>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
            return _b.write((("hello 世界" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        }, _n : (("hello 世界" : stdgo.GoString).length), _want : ("hello 世界" : stdgo.GoString)?.__copy__() } : T__struct_0), ({ _name : ("WriteRune" : stdgo.GoString)?.__copy__(), _fn : function(_b:stdgo.StdGoTypes.Ref<Builder>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
            return _b.writeRune((97 : stdgo.StdGoTypes.GoInt32));
        }, _n : (1 : stdgo.StdGoTypes.GoInt), _want : ("a" : stdgo.GoString)?.__copy__() } : T__struct_0), ({ _name : ("WriteRuneWide" : stdgo.GoString)?.__copy__(), _fn : function(_b:stdgo.StdGoTypes.Ref<Builder>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
            return _b.writeRune((19990 : stdgo.StdGoTypes.GoInt32));
        }, _n : (3 : stdgo.StdGoTypes.GoInt), _want : ("世" : stdgo.GoString)?.__copy__() } : T__struct_0), ({ _name : ("WriteString" : stdgo.GoString)?.__copy__(), _fn : function(_b:stdgo.StdGoTypes.Ref<Builder>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
            return _b.writeString(("hello 世界" : stdgo.GoString)?.__copy__());
        }, _n : (("hello 世界" : stdgo.GoString).length), _want : ("hello 世界" : stdgo.GoString)?.__copy__() } : T__struct_0)) : stdgo.Slice<T__struct_0>)) {
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var _b:Builder = ({} : stdgo.strings.Strings.Builder);
                var __tmp__ = _tt._fn((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("first call: got %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("first call: got n=%d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tt._n));
                };
                _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), _tt._want?.__copy__());
                {
                    var __tmp__ = _tt._fn((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("second call: got %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("second call: got n=%d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tt._n));
                };
                _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), _tt._want + _tt._want?.__copy__()?.__copy__());
            });
        };
    }
function testBuilderWriteByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        {
            var _err:stdgo.Error = _b.writeByte((97 : stdgo.StdGoTypes.GoUInt8));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _b.writeByte((0 : stdgo.StdGoTypes.GoUInt8));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), stdgo.Go.str("a", 0)?.__copy__());
    }
function testBuilderAllocs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testBuilderAllocs" + " skip function");
        return;
        var _n:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((10000 : stdgo.StdGoTypes.GoInt), function():Void {
            var _b:Builder = ({} : stdgo.strings.Strings.Builder);
            _b.grow((5 : stdgo.StdGoTypes.GoInt));
            _b.writeString(("abcde" : stdgo.GoString)?.__copy__());
            (_b.string() : stdgo.GoString);
        });
        if (_n != (1 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("Builder allocs = %v; want 1" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n));
        };
    }
function testBuilderCopyPanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testBuilderCopyPanic" + " skip function");
        return;
        var _tests = (new stdgo.Slice<T__struct_1>(
9,
9,
({ _name : ("String" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.StdGoTypes.GoUInt8));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            (_b.string() : stdgo.GoString);
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Len" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.StdGoTypes.GoUInt8));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.len();
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Cap" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.StdGoTypes.GoUInt8));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.cap();
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Reset" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.StdGoTypes.GoUInt8));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.reset();
            _b.writeByte((121 : stdgo.StdGoTypes.GoUInt8));
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Write" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.write((("x" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.write((("y" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        }, _wantPanic : true } : T__struct_1),
({ _name : ("WriteByte" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.writeByte((120 : stdgo.StdGoTypes.GoUInt8));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.writeByte((121 : stdgo.StdGoTypes.GoUInt8));
        }, _wantPanic : true } : T__struct_1),
({ _name : ("WriteString" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.writeString(("x" : stdgo.GoString)?.__copy__());
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.writeString(("y" : stdgo.GoString)?.__copy__());
        }, _wantPanic : true } : T__struct_1),
({ _name : ("WriteRune" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.writeRune((120 : stdgo.StdGoTypes.GoInt32));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.writeRune((121 : stdgo.StdGoTypes.GoInt32));
        }, _wantPanic : true } : T__struct_1),
({ _name : ("Grow" : stdgo.GoString)?.__copy__(), _fn : function():Void {
            var _a:Builder = ({} : stdgo.strings.Strings.Builder);
            _a.grow((1 : stdgo.StdGoTypes.GoInt));
            var _b:stdgo.strings.Strings.Builder = _a?.__copy__();
            _b.grow((2 : stdgo.StdGoTypes.GoInt));
        }, _wantPanic : true } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        for (__0 => _tt in _tests) {
            var _didPanic = new stdgo.Chan<Bool>(0, () -> false);
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
            {
                var _got:Bool = _didPanic.__get__();
                if (_got != (_tt._wantPanic)) {
                    _t.errorf(("%s: panicked = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._wantPanic));
                };
            };
        };
    }
function testBuilderWriteInvalidRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _r in (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (-1 : stdgo.StdGoTypes.GoInt32), (1114112 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)) {
            var _b:Builder = ({} : stdgo.strings.Strings.Builder);
            _b.writeRune(_r);
            _check(_t, (stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), ("�" : stdgo.GoString)?.__copy__());
        };
    }
function _benchmarkBuilder(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _f:(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _numWrite:stdgo.StdGoTypes.GoInt, _grow:Bool) -> Void):Void {
        _b.run(("1Write_NoGrow" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (1 : stdgo.StdGoTypes.GoInt), false);
        });
        _b.run(("3Write_NoGrow" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (3 : stdgo.StdGoTypes.GoInt), false);
        });
        _b.run(("3Write_Grow" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (3 : stdgo.StdGoTypes.GoInt), true);
        });
    }
function benchmarkBuildString_Builder(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkBuilder(_b, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _numWrite:stdgo.StdGoTypes.GoInt, _grow:Bool):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _buf:Builder = ({} : stdgo.strings.Strings.Builder);
                    if (_grow) {
                        _buf.grow((_someBytes.length) * _numWrite);
                    };
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _numWrite, _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = (_buf.string() : stdgo.GoString)?.__copy__();
                });
            };
        });
    }
function benchmarkBuildString_ByteBuffer(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkBuilder(_b, function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _numWrite:stdgo.StdGoTypes.GoInt, _grow:Bool):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                    if (_grow) {
                        _buf.grow((_someBytes.length) * _numWrite);
                    };
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _numWrite, _i++, {
                            _buf.write(_someBytes);
                        });
                    };
                    _sinkS = (_buf.string() : stdgo.GoString)?.__copy__();
                });
            };
        });
    }
function testClone(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testClone" + " skip function");
        return;
        var _cloneTests:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(5, 5, stdgo.Go.str()?.__copy__(), stdgo.strings.Strings.clone(stdgo.Go.str()?.__copy__())?.__copy__(), (stdgo.strings.Strings.repeat(("a" : stdgo.GoString)?.__copy__(), (42 : stdgo.StdGoTypes.GoInt)).__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("short" : stdgo.GoString)?.__copy__(), stdgo.strings.Strings.repeat(("a" : stdgo.GoString)?.__copy__(), (42 : stdgo.StdGoTypes.GoInt))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _input in _cloneTests) {
            var _clone:stdgo.GoString = stdgo.strings.Strings.clone(_input?.__copy__())?.__copy__();
            if (_clone != (_input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_clone), stdgo.Go.toInterface(_input));
            };
            if ((_input.length != (0 : stdgo.StdGoTypes.GoInt)) && (stdgo.unsafe.Unsafe.stringData(_clone?.__copy__()) == stdgo.unsafe.Unsafe.stringData(_input?.__copy__()))) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_input));
            };
            if ((_input.length == (0 : stdgo.StdGoTypes.GoInt)) && (stdgo.unsafe.Unsafe.stringData(_clone?.__copy__()) != stdgo.unsafe.Unsafe.stringData(_emptyString?.__copy__()))) {
                _t.errorf(("Clone(%#v) return value should be equal to empty string." : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.unsafe.Unsafe.stringData(_input?.__copy__())));
            };
        };
    }
function benchmarkClone(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = stdgo.strings.Strings.repeat(("a" : stdgo.GoString)?.__copy__(), (42 : stdgo.StdGoTypes.GoInt));
        _b.reportAllocs();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _stringSink = stdgo.strings.Strings.clone(_str?.__copy__())?.__copy__();
            });
        };
    }
function testCompare(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _compareTests) {
            var _cmp:stdgo.StdGoTypes.GoInt = compare(_tt._a?.__copy__(), _tt._b?.__copy__());
            if (_cmp != (_tt._i)) {
                _t.errorf(("Compare(%q, %q) = %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_cmp));
            };
        };
    }
function testCompareIdenticalString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _s:stdgo.GoString = ("Hello Gophers!" : stdgo.GoString);
        if (compare(_s?.__copy__(), _s?.__copy__()) != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("s != s" : stdgo.GoString)));
        };
        if (compare(_s?.__copy__(), (_s.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__()) != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.error(stdgo.Go.toInterface(("s > s[:1] failed" : stdgo.GoString)));
        };
    }
function testCompareStrings(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testCompareStrings" + " skip function");
        return;
        var _unsafeString = function(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.GoString {
            return (stdgo.unsafe.Unsafe.string(stdgo.unsafe.Unsafe.sliceData(_b), (_b.length)) : stdgo.GoString)?.__copy__();
        };
        var _lengths = new stdgo.Slice<stdgo.StdGoTypes.GoInt>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (128 : stdgo.StdGoTypes.GoInt), _i++, {
                _lengths = (_lengths.__append__(_i));
            });
        };
        _lengths = (_lengths.__append__((256 : stdgo.StdGoTypes.GoInt), (512 : stdgo.StdGoTypes.GoInt), (1024 : stdgo.StdGoTypes.GoInt), (1333 : stdgo.StdGoTypes.GoInt), (4095 : stdgo.StdGoTypes.GoInt), (4096 : stdgo.StdGoTypes.GoInt), (4097 : stdgo.StdGoTypes.GoInt)));
        if (!stdgo.testing.Testing.short() || (stdgo.internal.testenv.Testenv.builder() != stdgo.Go.str())) {
            _lengths = (_lengths.__append__((65535 : stdgo.StdGoTypes.GoInt), (65536 : stdgo.StdGoTypes.GoInt), (65537 : stdgo.StdGoTypes.GoInt), (99999 : stdgo.StdGoTypes.GoInt)));
        };
        var _n:stdgo.StdGoTypes.GoInt = _lengths[((_lengths.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _lastLen:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
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
            var __0:stdgo.GoString = _unsafeString(_a)?.__copy__(), __1:stdgo.GoString = _unsafeString(_b)?.__copy__(), _sb:stdgo.GoString = __1, _sa:stdgo.GoString = __0;
            var _cmp:stdgo.StdGoTypes.GoInt = compare((_sa.__slice__(0, _len) : stdgo.GoString)?.__copy__(), (_sb.__slice__(0, _len) : stdgo.GoString)?.__copy__());
            if (_cmp != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("CompareIdentical(%d) = %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
            };
            if (_len > (0 : stdgo.StdGoTypes.GoInt)) {
                _cmp = compare((_sa.__slice__(0, _len - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), (_sb.__slice__(0, _len) : stdgo.GoString)?.__copy__());
                if (_cmp != ((-1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("CompareAshorter(%d) = %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
                _cmp = compare((_sa.__slice__(0, _len) : stdgo.GoString)?.__copy__(), (_sb.__slice__(0, _len - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__());
                if (_cmp != ((1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("CompareBshorter(%d) = %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
            };
            {
                var _k:stdgo.StdGoTypes.GoInt = _lastLen;
                stdgo.Go.cfor(_k < _len, _k++, {
                    _b[(_k : stdgo.StdGoTypes.GoInt)] = _a[(_k : stdgo.StdGoTypes.GoInt)] - (1 : stdgo.StdGoTypes.GoUInt8);
                    _cmp = compare(_unsafeString((_a.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))?.__copy__(), _unsafeString((_b.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))?.__copy__());
                    if (_cmp != ((1 : stdgo.StdGoTypes.GoInt))) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.StdGoTypes.GoInt)] = _a[(_k : stdgo.StdGoTypes.GoInt)] + (1 : stdgo.StdGoTypes.GoUInt8);
                    _cmp = compare(_unsafeString((_a.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))?.__copy__(), _unsafeString((_b.__slice__(0, _len) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))?.__copy__());
                    if (_cmp != ((-1 : stdgo.StdGoTypes.GoInt))) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.StdGoTypes.GoInt)] = _a[(_k : stdgo.StdGoTypes.GoInt)];
                });
            };
            _lastLen = _len;
        };
    }
function exampleClone():Void {
        var _s:stdgo.GoString = ("abc" : stdgo.GoString)?.__copy__();
        var _clone:stdgo.GoString = stdgo.strings.Strings.clone(_s?.__copy__())?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s == (_clone)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unsafe.Unsafe.stringData(_s?.__copy__()) == (stdgo.unsafe.Unsafe.stringData(_clone?.__copy__()))));
    }
function exampleBuilder():Void {
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        {
            var _i:stdgo.StdGoTypes.GoInt = (3 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i >= (1 : stdgo.StdGoTypes.GoInt), _i--, {
                stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)), ("%d..." : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i));
            });
        };
        _b.writeString(("ignition" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
    }
function exampleCompare():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.compare(("a" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.compare(("a" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.compare(("b" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__())));
    }
function exampleContains():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(("seafood" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(("seafood" : stdgo.GoString)?.__copy__(), ("bar" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(("seafood" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.contains(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("team" : stdgo.GoString)?.__copy__(), ("i" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("fail" : stdgo.GoString)?.__copy__(), ("ui" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("ure" : stdgo.GoString)?.__copy__(), ("ui" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("failure" : stdgo.GoString)?.__copy__(), ("ui" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(("foo" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsAny(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsRune(("aardvark" : stdgo.GoString)?.__copy__(), (97 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.containsRune(("timeout" : stdgo.GoString)?.__copy__(), (97 : stdgo.StdGoTypes.GoInt32))));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.count(("cheese" : stdgo.GoString)?.__copy__(), ("e" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.count(("five" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
function exampleCut():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cut(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("Go" : stdgo.GoString)?.__copy__());
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("ph" : stdgo.GoString)?.__copy__());
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("er" : stdgo.GoString)?.__copy__());
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("Badger" : stdgo.GoString)?.__copy__());
    }
function exampleCutPrefix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cutPrefix(_s?.__copy__(), _sep?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("Go" : stdgo.GoString)?.__copy__());
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("ph" : stdgo.GoString)?.__copy__());
    }
function exampleCutSuffix():Void {
        var _show:(stdgo.GoString, stdgo.GoString) -> Void = function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cutSuffix(_s?.__copy__(), _sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo.fmt.Fmt.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        };
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("Go" : stdgo.GoString)?.__copy__());
        _show(("Gopher" : stdgo.GoString)?.__copy__(), ("er" : stdgo.GoString)?.__copy__());
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.equalFold(("Go" : stdgo.GoString)?.__copy__(), ("go" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.equalFold(("AB" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.equalFold(("ß" : stdgo.GoString)?.__copy__(), ("ss" : stdgo.GoString)?.__copy__())));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.fields(("  foo bar  baz   " : stdgo.GoString)?.__copy__())));
    }
function exampleFieldsFunc():Void {
        var _f:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.fieldsFunc(("  foo1;bar2,baz3..." : stdgo.GoString)?.__copy__(), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString)?.__copy__(), ("Go" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString)?.__copy__(), ("C" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString)?.__copy__(), ("go" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString)?.__copy__(), ("O" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString)?.__copy__(), ("Ami" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.index(("chicken" : stdgo.GoString)?.__copy__(), ("ken" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.index(("chicken" : stdgo.GoString)?.__copy__(), ("dmr" : stdgo.GoString)?.__copy__())));
    }
function exampleIndexFunc():Void {
        var _f:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, 世界" : stdgo.GoString)?.__copy__(), _f)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, world" : stdgo.GoString)?.__copy__(), _f)));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexAny(("chicken" : stdgo.GoString)?.__copy__(), ("aeiouy" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexAny(("crwth" : stdgo.GoString)?.__copy__(), ("aeiouy" : stdgo.GoString)?.__copy__())));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : stdgo.GoString)?.__copy__(), (103 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexByte(("gophers" : stdgo.GoString)?.__copy__(), (104 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : stdgo.GoString)?.__copy__(), (120 : stdgo.StdGoTypes.GoUInt8))));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : stdgo.GoString)?.__copy__(), (107 : stdgo.StdGoTypes.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt32))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.index(("go gopher" : stdgo.GoString)?.__copy__(), ("go" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : stdgo.GoString)?.__copy__(), ("go" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : stdgo.GoString)?.__copy__(), ("rodent" : stdgo.GoString)?.__copy__())));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString)?.__copy__(), ("go" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString)?.__copy__(), ("rodent" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : stdgo.GoString)?.__copy__(), ("fail" : stdgo.GoString)?.__copy__())));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString)?.__copy__(), (108 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString)?.__copy__(), (111 : stdgo.StdGoTypes.GoUInt8))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : stdgo.GoString)?.__copy__(), (120 : stdgo.StdGoTypes.GoUInt8))));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go 123" : stdgo.GoString)?.__copy__(), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("123 go" : stdgo.GoString)?.__copy__(), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go" : stdgo.GoString)?.__copy__(), stdgo.unicode.Unicode.isNumber)));
    }
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(3, 3, ("foo" : stdgo.GoString)?.__copy__(), ("bar" : stdgo.GoString)?.__copy__(), ("baz" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.join(_s, (", " : stdgo.GoString)?.__copy__())));
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("ba" : stdgo.GoString) + stdgo.strings.Strings.repeat(("na" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt))?.__copy__()));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : stdgo.GoString)?.__copy__(), ("k" : stdgo.GoString)?.__copy__(), ("ky" : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : stdgo.GoString)?.__copy__(), ("oink" : stdgo.GoString)?.__copy__(), ("moo" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.replaceAll(("oink oink oink" : stdgo.GoString)?.__copy__(), ("oink" : stdgo.GoString)?.__copy__(), ("moo" : stdgo.GoString)?.__copy__())));
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.split(("a,b,c" : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.split(("a man a plan a canal panama" : stdgo.GoString)?.__copy__(), ("a " : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.split((" xyz " : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.split(stdgo.Go.str()?.__copy__(), ("Bernardo O\'Higgins" : stdgo.GoString)?.__copy__())));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.splitN(("a,b,c" : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt))));
        var _z = stdgo.strings.Strings.splitN(("a,b,c" : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.splitAfter(("a,b,c" : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString)?.__copy__())));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.splitAfterN(("a,b,c" : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString)?.__copy__(), (2 : stdgo.StdGoTypes.GoInt))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.title(("her royal highness" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.title(("loud noises" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.title(("хлеб" : stdgo.GoString)?.__copy__())));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitle(("her royal highness" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitle(("loud noises" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitle(("хлеб" : stdgo.GoString)?.__copy__())));
    }
function exampleToTitleSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase, ("dünyanın ilk borsa yapısı Aizonai kabul edilir" : stdgo.GoString)?.__copy__())));
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
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.map(_rot13, ("\'Twas brillig and the slithy gopher..." : stdgo.GoString)?.__copy__())));
    }
function exampleNewReplacer():Void {
        var _r = stdgo.strings.Strings.newReplacer(("<" : stdgo.GoString)?.__copy__(), ("&lt;" : stdgo.GoString)?.__copy__(), (">" : stdgo.GoString)?.__copy__(), ("&gt;" : stdgo.GoString)?.__copy__());
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_r.replace(("This is <b>HTML</b>!" : stdgo.GoString)?.__copy__())));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toUpper(("Gopher" : stdgo.GoString)?.__copy__())));
    }
function exampleToUpperSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, ("örnek iş" : stdgo.GoString)?.__copy__())));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toLower(("Gopher" : stdgo.GoString)?.__copy__())));
    }
function exampleToLowerSpecial():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, ("Önnek İş" : stdgo.GoString)?.__copy__())));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trim(("¡¡¡Hello, Gophers!!!" : stdgo.GoString)?.__copy__(), ("!¡" : stdgo.GoString)?.__copy__())));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strings.Strings.trimSpace((" \t\n Hello, Gophers \n\t\r\n" : stdgo.GoString)?.__copy__())));
    }
function exampleTrimPrefix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Hello, " : stdgo.GoString)?.__copy__())?.__copy__();
        _s = stdgo.strings.Strings.trimPrefix(_s?.__copy__(), ("¡¡¡Howdy, " : stdgo.GoString)?.__copy__())?.__copy__();
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
function exampleTrimSuffix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo.strings.Strings.trimSuffix(_s?.__copy__(), (", Gophers!!!" : stdgo.GoString)?.__copy__())?.__copy__();
        _s = stdgo.strings.Strings.trimSuffix(_s?.__copy__(), (", Marmots!!!" : stdgo.GoString)?.__copy__())?.__copy__();
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_s));
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString)?.__copy__(), function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimLeft(("¡¡¡Hello, Gophers!!!" : stdgo.GoString)?.__copy__(), ("!¡" : stdgo.GoString)?.__copy__())));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimLeftFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString)?.__copy__(), function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimRight(("¡¡¡Hello, Gophers!!!" : stdgo.GoString)?.__copy__(), ("!¡" : stdgo.GoString)?.__copy__())));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.strings.Strings.trimRightFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString)?.__copy__(), function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
function exampleToValidUTF8():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.toValidUTF8(("abc" : stdgo.GoString)?.__copy__(), ("�" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.toValidUTF8(stdgo.Go.str("a", 255, "b", 192, 175, "c", 255)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.strings.Strings.toValidUTF8(stdgo.Go.str(237, 160, 128)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__())));
    }
function testReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("0123456789" : stdgo.GoString)?.__copy__());
        var _tests = (new stdgo.Slice<T__struct_3>(
9,
9,
({ _off : (0i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (20 : stdgo.StdGoTypes.GoInt), _want : ("0123456789" : stdgo.GoString)?.__copy__(), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3),
({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (1 : stdgo.StdGoTypes.GoInt), _want : ("1" : stdgo.GoString)?.__copy__(), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3),
({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _seek : (1 : stdgo.StdGoTypes.GoInt), _n : (2 : stdgo.StdGoTypes.GoInt), _want : ("34" : stdgo.GoString)?.__copy__(), _wantpos : (3i64 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3),
({ _off : (-1i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (0 : stdgo.StdGoTypes.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("strings.Reader.Seek: negative position" : stdgo.GoString)?.__copy__() } : T__struct_3),
({ _off : (8589934592i64 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (0 : stdgo.StdGoTypes.GoInt), _want : ("" : stdgo.GoString), _wantpos : (8589934592i64 : stdgo.StdGoTypes.GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : stdgo.GoString) } : T__struct_3),
({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _seek : (1 : stdgo.StdGoTypes.GoInt), _n : (0 : stdgo.StdGoTypes.GoInt), _want : ("" : stdgo.GoString), _wantpos : (8589934593i64 : stdgo.StdGoTypes.GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : stdgo.GoString) } : T__struct_3),
({ _off : (0 : stdgo.StdGoTypes.GoInt64), _seek : (0 : stdgo.StdGoTypes.GoInt), _n : (5 : stdgo.StdGoTypes.GoInt), _want : ("01234" : stdgo.GoString)?.__copy__(), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3),
({ _off : (0 : stdgo.StdGoTypes.GoInt64), _seek : (1 : stdgo.StdGoTypes.GoInt), _n : (5 : stdgo.StdGoTypes.GoInt), _want : ("56789" : stdgo.GoString)?.__copy__(), _wantpos : (0 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3),
({ _off : (-1i64 : stdgo.StdGoTypes.GoInt64), _seek : (2 : stdgo.StdGoTypes.GoInt), _n : (1 : stdgo.StdGoTypes.GoInt), _want : ("9" : stdgo.GoString)?.__copy__(), _wantpos : (9i64 : stdgo.StdGoTypes.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : T__struct_3)) : stdgo.Slice<T__struct_3>);
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) && (_tt._seekerr != stdgo.Go.str())) {
                _t.errorf(("%d. want seek error %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_err != null) && (_err.error() != _tt._seekerr)) {
                _t.errorf(("%d. seek error = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if ((_tt._wantpos != (0i64 : stdgo.StdGoTypes.GoInt64)) && (_tt._wantpos != _pos)) {
                _t.errorf(("%d. pos = %d, want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_tt._wantpos));
            };
            var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_tt._n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = _r.read(_buf), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt._readerr))) {
                _t.errorf(("%d. read = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._readerr));
                continue;
            };
            var _got:stdgo.GoString = ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testReadAfterBigSeek(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("0123456789" : stdgo.GoString)?.__copy__());
        {
            var __tmp__ = _r.seek((2147483653i64 : stdgo.StdGoTypes.GoInt64), (0 : stdgo.StdGoTypes.GoInt)), __0:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _r.read(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("Read = %d, %v; want 0, EOF" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function testReaderAt(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("0123456789" : stdgo.GoString)?.__copy__());
        var _tests = (new stdgo.Slice<T__struct_4>(6, 6, ({ _off : (0i64 : stdgo.StdGoTypes.GoInt64), _n : (10 : stdgo.StdGoTypes.GoInt), _want : ("0123456789" : stdgo.GoString)?.__copy__(), _wanterr : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_4), ({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _n : (10 : stdgo.StdGoTypes.GoInt), _want : ("123456789" : stdgo.GoString)?.__copy__(), _wanterr : stdgo.Go.toInterface(stdgo.io.Io.eof) } : T__struct_4), ({ _off : (1i64 : stdgo.StdGoTypes.GoInt64), _n : (9 : stdgo.StdGoTypes.GoInt), _want : ("123456789" : stdgo.GoString)?.__copy__(), _wanterr : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_4), ({ _off : (11i64 : stdgo.StdGoTypes.GoInt64), _n : (10 : stdgo.StdGoTypes.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(stdgo.io.Io.eof) } : T__struct_4), ({ _off : (0i64 : stdgo.StdGoTypes.GoInt64), _n : (0 : stdgo.StdGoTypes.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_4), ({ _off : (-1i64 : stdgo.StdGoTypes.GoInt64), _n : (0 : stdgo.StdGoTypes.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(("strings.Reader.ReadAt: negative offset" : stdgo.GoString)) } : T__struct_4)) : stdgo.Slice<T__struct_4>);
        for (_i => _tt in _tests) {
            var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_tt._n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got:stdgo.GoString = ((_b.__slice__(0, _rn) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
            if (stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err)) != (stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString)?.__copy__(), _tt._wanterr))) {
                _t.errorf(("%d. got error = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), _tt._wanterr);
            };
        };
    }
function testReaderAtConcurrent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("0123456789" : stdgo.GoString)?.__copy__());
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
        var _r = stdgo.strings.Strings.newReader(stdgo.Go.str()?.__copy__());
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
function testWriteTo(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (("0123456789" : stdgo.GoString).length), _i++, {
                var _s:stdgo.GoString = (("0123456789" : stdgo.GoString).__slice__(_i) : stdgo.GoString)?.__copy__();
                var _r = stdgo.strings.Strings.newReader(_s?.__copy__());
                var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))), _n:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _expect:stdgo.StdGoTypes.GoInt64 = (_s.length : stdgo.StdGoTypes.GoInt64);
                    if (_n != (_expect)) {
                        _t.errorf(("got %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(("for length %d: got error = %v; want nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((_s.length)), stdgo.Go.toInterface(_err));
                };
                if ((_b.string() : stdgo.GoString) != (_s)) {
                    _t.errorf(("got string %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(_s));
                };
                if (_r.len() != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("reader contains %v bytes; want 0" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_r.len()));
                };
            });
        };
    }
/**
    // tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testReaderLenSize" + " skip function");
        return;
        var _r = stdgo.strings.Strings.newReader(("abc" : stdgo.GoString)?.__copy__());
        stdgo.io.Io.copyN(stdgo.io.Io.discard, stdgo.Go.asInterface(_r), (1i64 : stdgo.StdGoTypes.GoInt64));
        if (_r.len() != ((2 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("Len = %d; want 2" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_r.len()));
        };
        if (_r.size() != ((3i64 : stdgo.StdGoTypes.GoInt64))) {
            _t.errorf(("Size = %d; want 3" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("世界" : stdgo.GoString)?.__copy__());
        {
            var __tmp__ = _r.readRune(), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __1:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(("ReadRune: unexpected error: %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
        };
        {};
        _r.reset(("abcdef" : stdgo.GoString)?.__copy__());
        {
            var _err:stdgo.Error = _r.unreadRune();
            if (_err == null) {
                _t.errorf(("UnreadRune: expected error, got nil" : stdgo.GoString)?.__copy__());
            };
        };
        var __tmp__ = stdgo.io.Io.readAll(stdgo.Go.asInterface(_r)), _buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadAll: unexpected error: %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
        };
        {
            var _got:stdgo.GoString = (_buf : stdgo.GoString)?.__copy__();
            if (_got != (("abcdef" : stdgo.GoString))) {
                _t.errorf(("ReadAll: got %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("abcdef" : stdgo.GoString)));
            };
        };
    }
function testReaderZero(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _l:stdgo.StdGoTypes.GoInt = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).len();
            if (_l != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("Len: got %d, want 0" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).read((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).readAt((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (11i64 : stdgo.StdGoTypes.GoInt64)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).readByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_b != (0 : stdgo.StdGoTypes.GoUInt8)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).readRune(), _ch:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != (0 : stdgo.StdGoTypes.GoInt32)) || (_size != (0 : stdgo.StdGoTypes.GoInt))) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_ch), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).seek((11i64 : stdgo.StdGoTypes.GoInt64), (0 : stdgo.StdGoTypes.GoInt)), _offset:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_offset != (11i64 : stdgo.StdGoTypes.GoInt64)) || (_err != null)) {
                _t.errorf(("Seek: got %d, %v; want 11, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _s:stdgo.StdGoTypes.GoInt64 = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).size();
            if (_s != ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                _t.errorf(("Size: got %d, want 0" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s));
            };
        };
        if ((stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).unreadByte() == null) {
            _t.errorf(("UnreadByte: got nil, want error" : stdgo.GoString)?.__copy__());
        };
        if ((stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).unreadRune() == null) {
            _t.errorf(("UnreadRune: got nil, want error" : stdgo.GoString)?.__copy__());
        };
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo.strings.Strings.Reader() : stdgo.strings.Strings.Reader)) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Reader>).writeTo(stdgo.io.Io.discard), _n:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0i64 : stdgo.StdGoTypes.GoInt64)) || (_err != null)) {
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // The http package's old HTML escaping function.
**/
function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString {
        _s = replace(_s?.__copy__(), ("&" : stdgo.GoString)?.__copy__(), ("&amp;" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), ("<" : stdgo.GoString)?.__copy__(), ("&lt;" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), (">" : stdgo.GoString)?.__copy__(), ("&gt;" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), ("\"" : stdgo.GoString)?.__copy__(), ("&quot;" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))?.__copy__();
        _s = replace(_s?.__copy__(), ("\'" : stdgo.GoString)?.__copy__(), ("&apos;" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))?.__copy__();
        return _s?.__copy__();
    }
/**
    
    
    
**/
@:structInit class T_testReplacer_0___localname___testCase {
    public var _r : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Replacer> = (null : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Replacer>);
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_r:stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Replacer>, ?_in:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_r != null) this._r = _r;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testReplacer_0___localname___testCase(_r, _in, _out);
    }
}
/**
    // TestReplacer tests the replacer implementations.
**/
function testReplacer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testReplacer" + " skip function");
        return;
        {};
        var _testCases:stdgo.Slice<T_testReplacer_0___localname___testCase> = (null : stdgo.Slice<stdgo.strings_test.Strings_test.T_testReplacer_0___localname___testCase>);
        var _str:stdgo.StdGoTypes.GoUInt8 -> stdgo.GoString = function(_b:stdgo.StdGoTypes.GoByte):stdgo.GoString {
            return ((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, _b) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString);
        };
        var _s:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _s = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                _s = (_s.__append__(_str((_i : stdgo.StdGoTypes.GoByte))?.__copy__(), _str((_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoByte))?.__copy__()));
            });
        };
        var _inc = newReplacer(..._s.__toArray__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_capitalLetters, ("brad" : stdgo.GoString)?.__copy__(), ("BrAd" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_capitalLetters, repeat(("a" : stdgo.GoString)?.__copy__(), (32891 : stdgo.StdGoTypes.GoInt))?.__copy__(), repeat(("A" : stdgo.GoString)?.__copy__(), (32891 : stdgo.StdGoTypes.GoInt))?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_capitalLetters, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_inc, ("brad" : stdgo.GoString)?.__copy__(), ("csbe" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_inc, stdgo.Go.str(0, 255)?.__copy__(), stdgo.Go.str(1, 0)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_inc, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : stdgo.GoString)?.__copy__(), ("1" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__()), ("brad" : stdgo.GoString)?.__copy__(), ("br1d" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase)));
        _s = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                var _n:stdgo.StdGoTypes.GoInt = (_i + (1 : stdgo.StdGoTypes.GoInt)) - (97 : stdgo.StdGoTypes.GoInt);
                if (_n < (1 : stdgo.StdGoTypes.GoInt)) {
                    _n = (1 : stdgo.StdGoTypes.GoInt);
                };
                _s = (_s.__append__(_str((_i : stdgo.StdGoTypes.GoByte))?.__copy__(), repeat(_str((_i : stdgo.StdGoTypes.GoByte))?.__copy__(), _n)?.__copy__()));
            });
        };
        var _repeat = newReplacer(..._s.__toArray__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_htmlEscaper, ("No changes" : stdgo.GoString)?.__copy__(), ("No changes" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlEscaper, ("I <3 escaping & stuff" : stdgo.GoString)?.__copy__(), ("I &lt;3 escaping &amp; stuff" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlEscaper, ("&&&" : stdgo.GoString)?.__copy__(), ("&amp;&amp;&amp;" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlEscaper, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_repeat, ("brad" : stdgo.GoString)?.__copy__(), ("bbrrrrrrrrrrrrrrrrrradddd" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_repeat, ("abba" : stdgo.GoString)?.__copy__(), ("abbbba" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_repeat, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : stdgo.GoString)?.__copy__(), ("11" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("22" : stdgo.GoString)?.__copy__()), ("brad" : stdgo.GoString)?.__copy__(), ("br11d" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase)));
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_htmlUnescaper, ("&amp;amp;" : stdgo.GoString)?.__copy__(), ("&amp;" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlUnescaper, ("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;" : stdgo.GoString)?.__copy__(), ("<b>HTML\'s neat</b>" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlUnescaper, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : stdgo.GoString)?.__copy__(), ("1" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("xxx" : stdgo.GoString)?.__copy__(), ("xxx" : stdgo.GoString)?.__copy__()), ("brad" : stdgo.GoString)?.__copy__(), ("br1d" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : stdgo.GoString)?.__copy__(), ("1" : stdgo.GoString)?.__copy__(), ("aa" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("aaa" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__()), ("aaaa" : stdgo.GoString)?.__copy__(), ("1111" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("aaa" : stdgo.GoString)?.__copy__(), ("3" : stdgo.GoString)?.__copy__(), ("aa" : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("1" : stdgo.GoString)?.__copy__()), ("aaaa" : stdgo.GoString)?.__copy__(), ("31" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _gen1 = newReplacer(("aaa" : stdgo.GoString)?.__copy__(),
("3[aaa]" : stdgo.GoString)?.__copy__(),
("aa" : stdgo.GoString)?.__copy__(),
("2[aa]" : stdgo.GoString)?.__copy__(),
("a" : stdgo.GoString)?.__copy__(),
("1[a]" : stdgo.GoString)?.__copy__(),
("i" : stdgo.GoString)?.__copy__(),
("i" : stdgo.GoString)?.__copy__(),
("longerst" : stdgo.GoString)?.__copy__(),
("most long" : stdgo.GoString)?.__copy__(),
("longer" : stdgo.GoString)?.__copy__(),
("medium" : stdgo.GoString)?.__copy__(),
("long" : stdgo.GoString)?.__copy__(),
("short" : stdgo.GoString)?.__copy__(),
("xx" : stdgo.GoString)?.__copy__(),
("xx" : stdgo.GoString)?.__copy__(),
("x" : stdgo.GoString)?.__copy__(),
("X" : stdgo.GoString)?.__copy__(),
("X" : stdgo.GoString)?.__copy__(),
("Y" : stdgo.GoString)?.__copy__(),
("Y" : stdgo.GoString)?.__copy__(),
("Z" : stdgo.GoString)?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_gen1, ("fooaaabar" : stdgo.GoString)?.__copy__(), ("foo3[aaa]b1[a]r" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, ("long, longerst, longer" : stdgo.GoString)?.__copy__(), ("short, most long, medium" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, ("xxxxx" : stdgo.GoString)?.__copy__(), ("xxxxX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, ("XiX" : stdgo.GoString)?.__copy__(), ("YiY" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _gen2 = newReplacer(("roses" : stdgo.GoString)?.__copy__(), ("red" : stdgo.GoString)?.__copy__(), ("violets" : stdgo.GoString)?.__copy__(), ("blue" : stdgo.GoString)?.__copy__(), ("sugar" : stdgo.GoString)?.__copy__(), ("sweet" : stdgo.GoString)?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_gen2, ("roses are red, violets are blue..." : stdgo.GoString)?.__copy__(), ("red are red, blue are blue..." : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen2, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _gen3 = newReplacer(("abracadabra" : stdgo.GoString)?.__copy__(), ("poof" : stdgo.GoString)?.__copy__(), ("abracadabrakazam" : stdgo.GoString)?.__copy__(), ("splat" : stdgo.GoString)?.__copy__(), ("abraham" : stdgo.GoString)?.__copy__(), ("lincoln" : stdgo.GoString)?.__copy__(), ("abrasion" : stdgo.GoString)?.__copy__(), ("scrape" : stdgo.GoString)?.__copy__(), ("abraham" : stdgo.GoString)?.__copy__(), ("isaac" : stdgo.GoString)?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_gen3, ("abracadabrakazam abraham" : stdgo.GoString)?.__copy__(), ("poofkazam lincoln" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen3, ("abrasion abracad" : stdgo.GoString)?.__copy__(), ("scrape abracad" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen3, ("abba abram abrasive" : stdgo.GoString)?.__copy__(), ("abba abram abrasive" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen3, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _foo1 = newReplacer(("foo1" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), ("foo2" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__(), ("foo3" : stdgo.GoString)?.__copy__(), ("C" : stdgo.GoString)?.__copy__());
        var _foo2 = newReplacer(("foo1" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), ("foo2" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__(), ("foo31" : stdgo.GoString)?.__copy__(), ("C" : stdgo.GoString)?.__copy__(), ("foo32" : stdgo.GoString)?.__copy__(), ("D" : stdgo.GoString)?.__copy__());
        var _foo3 = newReplacer(("foo11" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), ("foo12" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__(), ("foo31" : stdgo.GoString)?.__copy__(), ("C" : stdgo.GoString)?.__copy__(), ("foo32" : stdgo.GoString)?.__copy__(), ("D" : stdgo.GoString)?.__copy__());
        var _foo4 = newReplacer(("foo12" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__(), ("foo32" : stdgo.GoString)?.__copy__(), ("D" : stdgo.GoString)?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_foo1, ("fofoofoo12foo32oo" : stdgo.GoString)?.__copy__(), ("fofooA2C2oo" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo1, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo2, ("fofoofoo12foo32oo" : stdgo.GoString)?.__copy__(), ("fofooA2Doo" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo2, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo3, ("fofoofoo12foo32oo" : stdgo.GoString)?.__copy__(), ("fofooBDoo" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo3, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo4, ("fofoofoo12foo32oo" : stdgo.GoString)?.__copy__(), ("fofooBDoo" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo4, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _allBytes = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((256 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _allBytes.length.toBasic()) {
            _allBytes[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
        };
        var _allString:stdgo.GoString = (_allBytes : stdgo.GoString)?.__copy__();
        var _genAll = newReplacer(_allString?.__copy__(), ("[all]" : stdgo.GoString)?.__copy__(), stdgo.Go.str(255)?.__copy__(), ("[ff]" : stdgo.GoString)?.__copy__(), stdgo.Go.str(0)?.__copy__(), ("[00]" : stdgo.GoString)?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_genAll, _allString?.__copy__(), ("[all]" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_genAll, stdgo.Go.str("a", 255) + _allString?.__copy__() + stdgo.Go.str(0)?.__copy__()?.__copy__(), ("a[ff][all][00]" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_genAll, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _blankToX1 = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__());
        var _blankToX2 = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        var _blankHighPriority = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__(), ("o" : stdgo.GoString)?.__copy__(), ("O" : stdgo.GoString)?.__copy__());
        var _blankLowPriority = newReplacer(("o" : stdgo.GoString)?.__copy__(), ("O" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__());
        var _blankNoOp1 = newReplacer(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
        var _blankNoOp2 = newReplacer(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("A" : stdgo.GoString)?.__copy__());
        var _blankFoo = newReplacer(stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__(), ("foobar" : stdgo.GoString)?.__copy__(), ("R" : stdgo.GoString)?.__copy__(), ("foobaz" : stdgo.GoString)?.__copy__(), ("Z" : stdgo.GoString)?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_blankToX1, ("foo" : stdgo.GoString)?.__copy__(), ("XfXoXoX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankToX1, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankToX2, ("foo" : stdgo.GoString)?.__copy__(), ("XfXoXoX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankToX2, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("oo" : stdgo.GoString)?.__copy__(), ("XOXOX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("ii" : stdgo.GoString)?.__copy__(), ("XiXiX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("oiio" : stdgo.GoString)?.__copy__(), ("XOXiXiXOX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("iooi" : stdgo.GoString)?.__copy__(), ("XiXOXOXiX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("oo" : stdgo.GoString)?.__copy__(), ("OOX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("ii" : stdgo.GoString)?.__copy__(), ("XiXiX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("oiio" : stdgo.GoString)?.__copy__(), ("OXiXiOX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("iooi" : stdgo.GoString)?.__copy__(), ("XiOOXiX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp1, ("foo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp1, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp2, ("foo" : stdgo.GoString)?.__copy__(), ("foo" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp2, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankFoo, ("foobarfoobaz" : stdgo.GoString)?.__copy__(), ("XRXZX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankFoo, ("foobar-foobaz" : stdgo.GoString)?.__copy__(), ("XRX-XZX" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankFoo, stdgo.Go.str()?.__copy__(), ("X" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _abcMatcher = newReplacer(("abc" : stdgo.GoString)?.__copy__(), ("[match]" : stdgo.GoString)?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_abcMatcher, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("ab" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("abc" : stdgo.GoString)?.__copy__(), ("[match]" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("abcd" : stdgo.GoString)?.__copy__(), ("[match]d" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("cabcabcdabca" : stdgo.GoString)?.__copy__(), ("c[match][match]d[match]a" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _noHello = newReplacer(("Hello" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__());
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_noHello, ("Hello" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_noHello, ("Hellox" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_noHello, ("xHello" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_noHello, ("xHellox" : stdgo.GoString)?.__copy__(), ("xx" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase)));
        var _nop = newReplacer();
        _testCases = (_testCases.__append__((new T_testReplacer_0___localname___testCase(_nop, ("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_nop, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : T_testReplacer_0___localname___testCase)));
        for (_i => _tc in _testCases) {
            {
                var _s:stdgo.GoString = _tc._r.replace(_tc._in?.__copy__())?.__copy__();
                if (_s != (_tc._out)) {
                    _t.errorf(("%d. Replace(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tc._out));
                };
            };
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var __tmp__ = _tc._r.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), _tc._in?.__copy__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%d. WriteString: %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (_got != (_tc._out)) {
                _t.errorf(("%d. WriteString(%q) wrote %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
                continue;
            };
            if (_n != ((_tc._out.length))) {
                _t.errorf(("%d. WriteString(%q) wrote correct string but reported %d bytes; want %d (%q)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_tc._out.length)), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
/**
    // TestPickAlgorithm tests that NewReplacer picks the correct algorithm.
**/
function testPickAlgorithm(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testPickAlgorithm" + " skip function");
        return;
        for (_i => _tc in _algorithmTestCases) {
            var _got:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%T" : stdgo.GoString)?.__copy__(), _tc._r.replacer())?.__copy__();
            if (_got != (_tc._want)) {
                _t.errorf(("%d. algorithm = %s, want %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
            };
        };
    }
/**
    // TestWriteStringError tests that WriteString returns an error
    // received from the underlying io.Writer.
**/
function testWriteStringError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _tc in _algorithmTestCases) {
            var __tmp__ = _tc._r.writeString(stdgo.Go.asInterface((new T_errWriter() : T_errWriter)), ("abc" : stdgo.GoString)?.__copy__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.StdGoTypes.GoInt)) || (_err == null)) || (_err.error() != ("unwritable" : stdgo.GoString))) {
                _t.errorf(("%d. WriteStringError = %d, %v, want 0, unwritable" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // TestGenericTrieBuilding verifies the structure of the generated trie. There
    // is one node per line, and the key ending with the current line is in the
    // trie if it ends with a "+".
**/
function testGenericTrieBuilding(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testGenericTrieBuilding" + " skip function");
        return;
        var _testCases = (new stdgo.Slice<StringTest>(4, 4, (new StringTest(("abc;abdef;abdefgh;xx;xy;z" : stdgo.GoString)?.__copy__(), ("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t" : stdgo.GoString)?.__copy__()) : StringTest), (new StringTest(("abracadabra;abracadabrakazam;abraham;abrasion" : stdgo.GoString)?.__copy__(), ("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t" : stdgo.GoString)?.__copy__()) : StringTest), (new StringTest(("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y" : stdgo.GoString)?.__copy__(), ("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t" : stdgo.GoString)?.__copy__()) : StringTest), (new StringTest(("foo;;foo;foo1" : stdgo.GoString)?.__copy__(), ("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t" : stdgo.GoString)?.__copy__()) : StringTest)) : stdgo.Slice<StringTest>);
        for (__0 => _tc in _testCases) {
            var _keys = split(_tc._in?.__copy__(), (";" : stdgo.GoString)?.__copy__());
            var _args = new stdgo.Slice<stdgo.GoString>(((_keys.length) * (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
            for (_i => _key in _keys) {
                _args[(_i * (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _key?.__copy__();
            };
            var _got:stdgo.GoString = newReplacer(..._args.__toArray__()).printTrie()?.__copy__();
            var _wantbuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (_tc._out.length)).__setNumber32__();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (_tc._out.length), _i++, {
                    if (_tc._out[(_i : stdgo.StdGoTypes.GoInt)] != ((9 : stdgo.StdGoTypes.GoUInt8))) {
                        _wantbuf = (_wantbuf.__append__(_tc._out[(_i : stdgo.StdGoTypes.GoInt)]));
                    };
                });
            };
            var _want:stdgo.GoString = (_wantbuf : stdgo.GoString)?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("PrintTrie(%q)\ngot\n%swant\n%s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function benchmarkGenericNoMatch(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("A" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt)) + repeat(("B" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__();
        var _generic = newReplacer(("a" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__(), ("12" : stdgo.GoString)?.__copy__(), ("123" : stdgo.GoString)?.__copy__());
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _generic.replace(_str?.__copy__());
            });
        };
    }
function benchmarkGenericMatch1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("a" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt)) + repeat(("b" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__();
        var _generic = newReplacer(("a" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__(), ("12" : stdgo.GoString)?.__copy__(), ("123" : stdgo.GoString)?.__copy__());
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _generic.replace(_str?.__copy__());
            });
        };
    }
function benchmarkGenericMatch2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("It&apos;s &lt;b&gt;HTML&lt;/b&gt;!" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _htmlUnescaper.replace(_str?.__copy__());
            });
        };
    }
function _benchmarkSingleString(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void {
        var _r = newReplacer(_pattern?.__copy__(), ("[match]" : stdgo.GoString)?.__copy__());
        _b.setBytes((_text.length : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _r.replace(_text?.__copy__());
            });
        };
    }
function benchmarkSingleMaxSkipping(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, repeat(("b" : stdgo.GoString)?.__copy__(), (25 : stdgo.StdGoTypes.GoInt))?.__copy__(), repeat(("a" : stdgo.GoString)?.__copy__(), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__());
    }
function benchmarkSingleLongSuffixFail(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, ("b" : stdgo.GoString) + repeat(("a" : stdgo.GoString)?.__copy__(), (500 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__(), repeat(("a" : stdgo.GoString)?.__copy__(), (1002 : stdgo.StdGoTypes.GoInt))?.__copy__());
    }
function benchmarkSingleMatch(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, ("abcdef" : stdgo.GoString)?.__copy__(), repeat(("abcdefghijklmno" : stdgo.GoString)?.__copy__(), (1000 : stdgo.StdGoTypes.GoInt))?.__copy__());
    }
function benchmarkByteByteNoMatch(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("A" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt)) + repeat(("B" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.replace(_str?.__copy__());
            });
        };
    }
function benchmarkByteByteMatch(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("a" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt)) + repeat(("b" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.replace(_str?.__copy__());
            });
        };
    }
function benchmarkByteStringMatch(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = ("<" : stdgo.GoString) + repeat(("a" : stdgo.GoString)?.__copy__(), (99 : stdgo.StdGoTypes.GoInt))?.__copy__() + repeat(("b" : stdgo.GoString)?.__copy__(), (99 : stdgo.StdGoTypes.GoInt))?.__copy__() + (">" : stdgo.GoString)?.__copy__()?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.replace(_str?.__copy__());
            });
        };
    }
function benchmarkHTMLEscapeNew(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = ("I <3 to escape HTML & other text too." : stdgo.GoString)?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.replace(_str?.__copy__());
            });
        };
    }
function benchmarkHTMLEscapeOld(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = ("I <3 to escape HTML & other text too." : stdgo.GoString)?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _oldHTMLEscape(_str?.__copy__());
            });
        };
    }
function benchmarkByteStringReplacerWriteString(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("I <3 to escape HTML & other text too." : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__();
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.writeString(stdgo.Go.asInterface(_buf), _str?.__copy__());
                _buf.reset();
            });
        };
    }
function benchmarkByteReplacerWriteString(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__();
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.writeString(stdgo.Go.asInterface(_buf), _str?.__copy__());
                _buf.reset();
            });
        };
    }
/**
    // BenchmarkByteByteReplaces compares byteByteImpl against multiple Replaces.
**/
function benchmarkByteByteReplaces(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("a" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt)) + repeat(("b" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                replace(replace(_str?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt))?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("B" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
/**
    // BenchmarkByteByteMap compares byteByteImpl against Map.
**/
function benchmarkByteByteMap(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _str:stdgo.GoString = repeat(("a" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt)) + repeat(("b" : stdgo.GoString)?.__copy__(), (100 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__();
        var _fn:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            {
                final __value__ = _r;
                if (__value__ == ((97 : stdgo.StdGoTypes.GoInt32))) {
                    return (65 : stdgo.StdGoTypes.GoInt32);
                } else if (__value__ == ((98 : stdgo.StdGoTypes.GoInt32))) {
                    return (66 : stdgo.StdGoTypes.GoInt32);
                };
            };
            return _r;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                map(_fn, _str?.__copy__());
            });
        };
    }
function benchmarkMap(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _mapidentity:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return _r;
        };
        _b.run(("identity" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            for (__0 => _md in _mapdata) {
                _b.run(_md._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            map(_mapidentity, _md._data?.__copy__());
                        });
                    };
                });
            };
        });
        var _mapchange:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            if (((97 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r <= (122 : stdgo.StdGoTypes.GoInt32))) {
                return (_r + (65 : stdgo.StdGoTypes.GoInt32)) - (97 : stdgo.StdGoTypes.GoInt32);
            };
            if (((945 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r <= (969 : stdgo.StdGoTypes.GoInt32))) {
                return (_r + (913 : stdgo.StdGoTypes.GoInt32)) - (945 : stdgo.StdGoTypes.GoInt32);
            };
            return _r;
        };
        _b.run(("change" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            for (__0 => _md in _mapdata) {
                _b.run(_md._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            map(_mapchange, _md._data?.__copy__());
                        });
                    };
                });
            };
        });
    }
function testFinderNext(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new stdgo.Slice<T__struct_8>(
15,
15,
({ _pat : stdgo.Go.str()?.__copy__(), _text : stdgo.Go.str()?.__copy__(), _index : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : stdgo.Go.str()?.__copy__(), _text : ("abc" : stdgo.GoString)?.__copy__(), _index : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("abc" : stdgo.GoString)?.__copy__(), _text : stdgo.Go.str()?.__copy__(), _index : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("abc" : stdgo.GoString)?.__copy__(), _text : ("abc" : stdgo.GoString)?.__copy__(), _index : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("d" : stdgo.GoString)?.__copy__(), _text : ("abcdefg" : stdgo.GoString)?.__copy__(), _index : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("nan" : stdgo.GoString)?.__copy__(), _text : ("banana" : stdgo.GoString)?.__copy__(), _index : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("pan" : stdgo.GoString)?.__copy__(), _text : ("anpanman" : stdgo.GoString)?.__copy__(), _index : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("nnaaman" : stdgo.GoString)?.__copy__(), _text : ("anpanmanam" : stdgo.GoString)?.__copy__(), _index : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("abcd" : stdgo.GoString)?.__copy__(), _text : ("abc" : stdgo.GoString)?.__copy__(), _index : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("abcd" : stdgo.GoString)?.__copy__(), _text : ("bcd" : stdgo.GoString)?.__copy__(), _index : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("bcd" : stdgo.GoString)?.__copy__(), _text : ("abcd" : stdgo.GoString)?.__copy__(), _index : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("abc" : stdgo.GoString)?.__copy__(), _text : ("acca" : stdgo.GoString)?.__copy__(), _index : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("aa" : stdgo.GoString)?.__copy__(), _text : ("aaa" : stdgo.GoString)?.__copy__(), _index : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("baa" : stdgo.GoString)?.__copy__(), _text : ("aaaaa" : stdgo.GoString)?.__copy__(), _index : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_8),
({ _pat : ("at that" : stdgo.GoString)?.__copy__(), _text : ("which finally halts.  at that point" : stdgo.GoString)?.__copy__(), _index : (22 : stdgo.StdGoTypes.GoInt) } : T__struct_8)) : stdgo.Slice<T__struct_8>);
        for (__0 => _tc in _testCases) {
            var _got:stdgo.StdGoTypes.GoInt = stringFind(_tc._pat?.__copy__(), _tc._text?.__copy__());
            var _want:stdgo.StdGoTypes.GoInt = _tc._index;
            if (_got != (_want)) {
                _t.errorf(("stringFind(%q, %q) got %d, want %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._pat), stdgo.Go.toInterface(_tc._text), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testFinderCreation(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new stdgo.Slice<T__struct_9>(4, 4, ({ _pattern : ("abc" : stdgo.GoString)?.__copy__(), _bad : {
            var s:stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 256) 0]);
            s[97] = (2 : stdgo.StdGoTypes.GoInt);
            s[98] = (1 : stdgo.StdGoTypes.GoInt);
            s[99] = (3 : stdgo.StdGoTypes.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (5 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_9), ({ _pattern : ("mississi" : stdgo.GoString)?.__copy__(), _bad : {
            var s:stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 256) 0]);
            s[105] = (3 : stdgo.StdGoTypes.GoInt);
            s[109] = (7 : stdgo.StdGoTypes.GoInt);
            s[115] = (1 : stdgo.StdGoTypes.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(8, 8, (15 : stdgo.StdGoTypes.GoInt), (14 : stdgo.StdGoTypes.GoInt), (13 : stdgo.StdGoTypes.GoInt), (7 : stdgo.StdGoTypes.GoInt), (11 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), (7 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_9), ({ _pattern : ("abcxxxabc" : stdgo.GoString)?.__copy__(), _bad : {
            var s:stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 256) 0]);
            s[97] = (2 : stdgo.StdGoTypes.GoInt);
            s[98] = (1 : stdgo.StdGoTypes.GoInt);
            s[99] = (6 : stdgo.StdGoTypes.GoInt);
            s[120] = (3 : stdgo.StdGoTypes.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
9,
9,
(14 : stdgo.StdGoTypes.GoInt),
(13 : stdgo.StdGoTypes.GoInt),
(12 : stdgo.StdGoTypes.GoInt),
(11 : stdgo.StdGoTypes.GoInt),
(10 : stdgo.StdGoTypes.GoInt),
(9 : stdgo.StdGoTypes.GoInt),
(11 : stdgo.StdGoTypes.GoInt),
(10 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_9), ({ _pattern : ("abyxcdeyx" : stdgo.GoString)?.__copy__(), _bad : {
            var s:stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 256) 0]);
            s[97] = (8 : stdgo.StdGoTypes.GoInt);
            s[98] = (7 : stdgo.StdGoTypes.GoInt);
            s[99] = (4 : stdgo.StdGoTypes.GoInt);
            s[100] = (3 : stdgo.StdGoTypes.GoInt);
            s[101] = (2 : stdgo.StdGoTypes.GoInt);
            s[121] = (1 : stdgo.StdGoTypes.GoInt);
            s[120] = (5 : stdgo.StdGoTypes.GoInt);
            s;
        }, _suf : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
9,
9,
(17 : stdgo.StdGoTypes.GoInt),
(16 : stdgo.StdGoTypes.GoInt),
(15 : stdgo.StdGoTypes.GoInt),
(14 : stdgo.StdGoTypes.GoInt),
(13 : stdgo.StdGoTypes.GoInt),
(12 : stdgo.StdGoTypes.GoInt),
(7 : stdgo.StdGoTypes.GoInt),
(10 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_9)) : stdgo.Slice<T__struct_9>);
        for (__0 => _tc in _testCases) {
            var __tmp__ = dumpTables(_tc._pattern?.__copy__()), _bad:stdgo.Slice<stdgo.StdGoTypes.GoInt> = __tmp__._0, _good:stdgo.Slice<stdgo.StdGoTypes.GoInt> = __tmp__._1;
            for (_i => _got in _bad) {
                var _want:stdgo.StdGoTypes.GoInt = _tc._bad[(_i : stdgo.StdGoTypes.GoInt)];
                if (_want == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _want = (_tc._pattern.length);
                };
                if (_got != (_want)) {
                    _t.errorf(("boyerMoore(%q) bad[\'%c\']: got %d want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_tc._suf))) {
                _t.errorf(("boyerMoore(%q) got %v want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_tc._suf));
            };
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
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runIndexTests(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _f:(_s:stdgo.GoString, _sep:stdgo.GoString) -> stdgo.StdGoTypes.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<IndexTest>):Void {
        for (__0 => _test in _testCases) {
            var _actual:stdgo.StdGoTypes.GoInt = _f(_test._s?.__copy__(), _test._sep?.__copy__());
            if (_actual != (_test._out)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._sep), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._out));
            };
        };
    }
function testIndex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, index, ("Index" : stdgo.GoString)?.__copy__(), _indexTests);
    }
function testLastIndex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, lastIndex, ("LastIndex" : stdgo.GoString)?.__copy__(), _lastIndexTests);
    }
function testIndexAny(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, indexAny, ("IndexAny" : stdgo.GoString)?.__copy__(), _indexAnyTests);
    }
function testLastIndexAny(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, lastIndexAny, ("LastIndexAny" : stdgo.GoString)?.__copy__(), _lastIndexAnyTests);
    }
function testIndexByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _indexTests) {
            if ((_tt._sep.length) != ((1 : stdgo.StdGoTypes.GoInt))) {
                continue;
            };
            var _pos:stdgo.StdGoTypes.GoInt = indexByte(_tt._s?.__copy__(), _tt._sep[(0 : stdgo.StdGoTypes.GoInt)]);
            if (_pos != (_tt._out)) {
                _t.errorf(("IndexByte(%q, %q) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testLastIndexByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>(6, 6, (new stdgo.strings_test.Strings_test.IndexTest(stdgo.Go.str()?.__copy__(), ("q" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("abcdef" : stdgo.GoString)?.__copy__(), ("q" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("abcdefabcdef" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), (("abcdef" : stdgo.GoString).length)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("abcdefabcdef" : stdgo.GoString)?.__copy__(), ("f" : stdgo.GoString)?.__copy__(), (("abcdefabcde" : stdgo.GoString).length)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("zabcdefabcdef" : stdgo.GoString)?.__copy__(), ("z" : stdgo.GoString)?.__copy__(), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), (("a☺" : stdgo.GoString).length)) : stdgo.strings_test.Strings_test.IndexTest)) : stdgo.Slice<stdgo.strings_test.Strings_test.IndexTest>);
        for (__0 => _test in _testCases) {
            var _actual:stdgo.StdGoTypes.GoInt = lastIndexByte(_test._s?.__copy__(), _test._sep[(0 : stdgo.StdGoTypes.GoInt)]);
            if (_actual != (_test._out)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._sep[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._out));
            };
        };
    }
function _simpleIndex(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.StdGoTypes.GoInt {
        var _n:stdgo.StdGoTypes.GoInt = (_sep.length);
        {
            var _i:stdgo.StdGoTypes.GoInt = _n;
            stdgo.Go.cfor(_i <= (_s.length), _i++, {
                if ((_s.__slice__(_i - _n, _i) : stdgo.GoString) == (_sep)) {
                    return _i - _n;
                };
            });
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
function testIndexRandom(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {
            var _times:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_times < (10 : stdgo.StdGoTypes.GoInt), _times++, {
                {
                    var _strLen:stdgo.StdGoTypes.GoInt = (5 : stdgo.StdGoTypes.GoInt) + stdgo.math.rand.Rand.intn((5 : stdgo.StdGoTypes.GoInt));
                    stdgo.Go.cfor(_strLen < (140 : stdgo.StdGoTypes.GoInt), _strLen = _strLen + ((10 : stdgo.StdGoTypes.GoInt)), {
                        var _s1 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_strLen : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                        for (_i in 0 ... _s1.length.toBasic()) {
                            _s1[(_i : stdgo.StdGoTypes.GoInt)] = ("abcdefghijklmnopqrstuvwxyz0123456789" : stdgo.GoString)[(stdgo.math.rand.Rand.intn((("abcdefghijklmnopqrstuvwxyz0123456789" : stdgo.GoString).length)) : stdgo.StdGoTypes.GoInt)];
                        };
                        var _s:stdgo.GoString = (_s1 : stdgo.GoString)?.__copy__();
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < (50 : stdgo.StdGoTypes.GoInt), _i++, {
                                var _begin:stdgo.StdGoTypes.GoInt = stdgo.math.rand.Rand.intn((_s.length) + (1 : stdgo.StdGoTypes.GoInt));
                                var _end:stdgo.StdGoTypes.GoInt = _begin + stdgo.math.rand.Rand.intn((_s.length + (1 : stdgo.StdGoTypes.GoInt)) - _begin);
                                var _sep:stdgo.GoString = (_s.__slice__(_begin, _end) : stdgo.GoString)?.__copy__();
                                if (_i % (4 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                                    var _pos:stdgo.StdGoTypes.GoInt = stdgo.math.rand.Rand.intn((_sep.length) + (1 : stdgo.StdGoTypes.GoInt));
                                    _sep = (_sep.__slice__(0, _pos) : stdgo.GoString) + ("A" : stdgo.GoString)?.__copy__() + (_sep.__slice__(_pos) : stdgo.GoString)?.__copy__()?.__copy__();
                                };
                                var _want:stdgo.StdGoTypes.GoInt = _simpleIndex(_s?.__copy__(), _sep?.__copy__());
                                var _res:stdgo.StdGoTypes.GoInt = index(_s?.__copy__(), _sep?.__copy__());
                                if (_res != (_want)) {
                                    _t.errorf(("Index(%s,%s) = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_res), stdgo.Go.toInterface(_want));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testIndexRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_10>(
19,
19,
({ _in : stdgo.Go.str()?.__copy__(), _rune : (97 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str()?.__copy__(), _rune : (9786 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("foo" : stdgo.GoString)?.__copy__(), _rune : (9785 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("foo" : stdgo.GoString)?.__copy__(), _rune : (111 : stdgo.StdGoTypes.GoInt32), _want : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("foo☺bar" : stdgo.GoString)?.__copy__(), _rune : (9786 : stdgo.StdGoTypes.GoInt32), _want : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("foo☺☻☹bar" : stdgo.GoString)?.__copy__(), _rune : (9785 : stdgo.StdGoTypes.GoInt32), _want : (9 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("a A x" : stdgo.GoString)?.__copy__(), _rune : (65 : stdgo.StdGoTypes.GoInt32), _want : (2 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("some_text=some_value" : stdgo.GoString)?.__copy__(), _rune : (61 : stdgo.StdGoTypes.GoInt32), _want : (9 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("☺a" : stdgo.GoString)?.__copy__(), _rune : (97 : stdgo.StdGoTypes.GoInt32), _want : (3 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("a☻☺b" : stdgo.GoString)?.__copy__(), _rune : (9786 : stdgo.StdGoTypes.GoInt32), _want : (4 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("�" : stdgo.GoString)?.__copy__(), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str(255)?.__copy__(), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : ("☻x�" : stdgo.GoString)?.__copy__(), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("☻x", 226, 152)?.__copy__(), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("☻x", 226, 152, "�")?.__copy__(), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("☻x", 226, 152, "x")?.__copy__(), _rune : (65533 : stdgo.StdGoTypes.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : T__struct_10),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (-1 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (55296 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_10),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (1114112 : stdgo.StdGoTypes.GoInt32), _want : (-1 : stdgo.StdGoTypes.GoInt) } : T__struct_10)) : stdgo.Slice<T__struct_10>);
        for (__0 => _tt in _tests) {
            {
                var _got:stdgo.StdGoTypes.GoInt = indexRune(_tt._in?.__copy__(), _tt._rune);
                if (_got != (_tt._want)) {
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._rune), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack:stdgo.GoString = ("test世界" : stdgo.GoString)?.__copy__();
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((1000 : stdgo.StdGoTypes.GoInt), function():Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = indexRune(_haystack?.__copy__(), (115 : stdgo.StdGoTypes.GoInt32));
                if (_i != ((2 : stdgo.StdGoTypes.GoInt))) {
                    _t.fatalf(("\'s\' at %d; want 2" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i));
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = indexRune(_haystack?.__copy__(), (19990 : stdgo.StdGoTypes.GoInt32));
                if (_i != ((4 : stdgo.StdGoTypes.GoInt))) {
                    _t.fatalf(("\'世\' at %d; want 4" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i));
                };
            };
        });
        if ((_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) && (stdgo.testing.Testing.coverMode() == stdgo.Go.str())) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_allocs));
        };
    }
function benchmarkIndexRune(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:stdgo.StdGoTypes.GoInt = indexRune(("some_text=some☺value" : stdgo.GoString)?.__copy__(), (9786 : stdgo.StdGoTypes.GoInt32));
            if (_got != ((14 : stdgo.StdGoTypes.GoInt))) {
                _b.fatalf(("wrong index: expected 14, got=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                indexRune(("some_text=some☺value" : stdgo.GoString)?.__copy__(), (9786 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function benchmarkIndexRuneLongString(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:stdgo.StdGoTypes.GoInt = indexRune(_benchmarkLongString?.__copy__(), (9786 : stdgo.StdGoTypes.GoInt32));
            if (_got != ((114 : stdgo.StdGoTypes.GoInt))) {
                _b.fatalf(("wrong index: expected 114, got=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                indexRune(_benchmarkLongString?.__copy__(), (9786 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function benchmarkIndexRuneFastPath(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:stdgo.StdGoTypes.GoInt = indexRune(("some_text=some☺value" : stdgo.GoString)?.__copy__(), (118 : stdgo.StdGoTypes.GoInt32));
            if (_got != ((17 : stdgo.StdGoTypes.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                indexRune(("some_text=some☺value" : stdgo.GoString)?.__copy__(), (118 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function benchmarkIndex(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:stdgo.StdGoTypes.GoInt = index(("some_text=some☺value" : stdgo.GoString)?.__copy__(), ("v" : stdgo.GoString)?.__copy__());
            if (_got != ((17 : stdgo.StdGoTypes.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                index(("some_text=some☺value" : stdgo.GoString)?.__copy__(), ("v" : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkLastIndex(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:stdgo.StdGoTypes.GoInt = index(("some_text=some☺value" : stdgo.GoString)?.__copy__(), ("v" : stdgo.GoString)?.__copy__());
            if (_got != ((17 : stdgo.StdGoTypes.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                lastIndex(("some_text=some☺value" : stdgo.GoString)?.__copy__(), ("v" : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkIndexByte(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:stdgo.StdGoTypes.GoInt = indexByte(("some_text=some☺value" : stdgo.GoString)?.__copy__(), (118 : stdgo.StdGoTypes.GoUInt8));
            if (_got != ((17 : stdgo.StdGoTypes.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                indexByte(("some_text=some☺value" : stdgo.GoString)?.__copy__(), (118 : stdgo.StdGoTypes.GoUInt8));
            });
        };
    }
function testSplit(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _splittests) {
            var _a = splitN(_tt._s?.__copy__(), _tt._sep?.__copy__(), _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if (_tt._n == ((0 : stdgo.StdGoTypes.GoInt))) {
                continue;
            };
            var _s:stdgo.GoString = join(_a, _tt._sep?.__copy__())?.__copy__();
            if (_s != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if (_tt._n < (0 : stdgo.StdGoTypes.GoInt)) {
                var _b = split(_tt._s?.__copy__(), _tt._sep?.__copy__());
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("Split disagrees with SplitN(%q, %q, %d) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
        };
    }
function testSplitAfter(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _splitaftertests) {
            var _a = splitAfterN(_tt._s?.__copy__(), _tt._sep?.__copy__(), _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            var _s:stdgo.GoString = join(_a, stdgo.Go.str()?.__copy__())?.__copy__();
            if (_s != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if (_tt._n < (0 : stdgo.StdGoTypes.GoInt)) {
                var _b = splitAfter(_tt._s?.__copy__(), _tt._sep?.__copy__());
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("SplitAfter disagrees with SplitAfterN(%q, %q, %d) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _fieldstests) {
            var _a = fields(_tt._s?.__copy__());
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
    }
function testFieldsFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _fieldstests) {
            var _a = fieldsFunc(_tt._s?.__copy__(), stdgo.unicode.Unicode.isSpace);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:stdgo.StdGoTypes.GoInt32 -> Bool = function(_c:stdgo.StdGoTypes.GoRune):Bool {
            return _c == ((88 : stdgo.StdGoTypes.GoInt32));
        };
        for (__1 => _tt in fieldsFuncTests) {
            var _a = fieldsFunc(_tt._s?.__copy__(), _pred);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
            };
        };
    }
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
function _runStringTests(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _f:stdgo.GoString -> stdgo.GoString, _funcName:stdgo.GoString, _testCases:stdgo.Slice<StringTest>):Void {
        for (__0 => _tc in _testCases) {
            var _actual:stdgo.GoString = _f(_tc._in?.__copy__())?.__copy__();
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function _tenRunes(_ch:stdgo.StdGoTypes.GoRune):stdgo.GoString {
        var _r = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _r.length.toBasic()) {
            _r[(_i : stdgo.StdGoTypes.GoInt)] = _ch;
        };
        return (_r : stdgo.GoString)?.__copy__();
    }
/**
    // User-defined self-inverse mapping function
**/
function _rot13(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
        var _step:stdgo.StdGoTypes.GoInt32 = ((13 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
        if ((_r >= (97 : stdgo.StdGoTypes.GoInt32)) && (_r <= (122 : stdgo.StdGoTypes.GoInt32))) {
            return (((_r - (97 : stdgo.StdGoTypes.GoInt32)) + _step) % (26 : stdgo.StdGoTypes.GoInt32)) + (97 : stdgo.StdGoTypes.GoInt32);
        };
        if ((_r >= (65 : stdgo.StdGoTypes.GoInt32)) && (_r <= (90 : stdgo.StdGoTypes.GoInt32))) {
            return (((_r - (65 : stdgo.StdGoTypes.GoInt32)) + _step) % (26 : stdgo.StdGoTypes.GoInt32)) + (65 : stdgo.StdGoTypes.GoInt32);
        };
        return _r;
    }
function testMap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testMap" + " skip function");
        return;
        var _a:stdgo.GoString = _tenRunes((97 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        var _maxRune:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_0:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return (1114111 : stdgo.StdGoTypes.GoInt32);
        };
        var _m:stdgo.GoString = map(_maxRune, _a?.__copy__())?.__copy__();
        var _expect:stdgo.GoString = _tenRunes((1114111 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _minRune:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_0:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return (97 : stdgo.StdGoTypes.GoInt32);
        };
        _m = map(_minRune, _tenRunes((1114111 : stdgo.StdGoTypes.GoInt32))?.__copy__())?.__copy__();
        _expect = _a?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map(_rot13, ("a to zed" : stdgo.GoString)?.__copy__())?.__copy__();
        _expect = ("n gb mrq" : stdgo.GoString)?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, ("a to zed" : stdgo.GoString)?.__copy__())?.__copy__())?.__copy__();
        _expect = ("a to zed" : stdgo.GoString)?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _dropNotLatin:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (-1 : stdgo.StdGoTypes.GoInt32);
        };
        _m = map(_dropNotLatin, ("Hello, 세계" : stdgo.GoString)?.__copy__())?.__copy__();
        _expect = ("Hello" : stdgo.GoString)?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _identity:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return _r;
        };
        var _orig:stdgo.GoString = ("Input string that we expect not to be copied." : stdgo.GoString)?.__copy__();
        _m = map(_identity, _orig?.__copy__())?.__copy__();
        if (stdgo.unsafe.Unsafe.stringData(_orig?.__copy__()) != (stdgo.unsafe.Unsafe.stringData(_m?.__copy__()))) {
            _t.error(stdgo.Go.toInterface(("unexpected copy during identity map" : stdgo.GoString)));
        };
        var _replaceNotLatin:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (65533 : stdgo.StdGoTypes.GoInt32);
        };
        _m = map(_replaceNotLatin, stdgo.Go.str("Hello", 173, "World")?.__copy__())?.__copy__();
        _expect = ("Hello�World" : stdgo.GoString)?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("replace invalid sequence: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
        var _encode:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            {
                final __value__ = _r;
                if (__value__ == ((128 : stdgo.StdGoTypes.GoInt32))) {
                    return (1114111 : stdgo.StdGoTypes.GoInt32);
                } else if (__value__ == ((1114111 : stdgo.StdGoTypes.GoInt32))) {
                    return (128 : stdgo.StdGoTypes.GoInt32);
                };
            };
            return _r;
        };
        var _s:stdgo.GoString = ("\u0080\u{0010ffff}" : stdgo.GoString)?.__copy__();
        var _r:stdgo.GoString = ("\u{0010ffff}\u0080" : stdgo.GoString)?.__copy__();
        _m = map(_encode, _s?.__copy__())?.__copy__();
        if (_m != (_r)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_m));
        };
        _m = map(_encode, _r?.__copy__())?.__copy__();
        if (_m != (_s)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_m));
        };
        var _trimSpaces:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            if (stdgo.unicode.Unicode.isSpace(_r)) {
                return (-1 : stdgo.StdGoTypes.GoInt32);
            };
            return _r;
        };
        _m = map(_trimSpaces, ("   abc    123   " : stdgo.GoString)?.__copy__())?.__copy__();
        _expect = ("abc123" : stdgo.GoString)?.__copy__();
        if (_m != (_expect)) {
            _t.errorf(("trimSpaces: expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_m));
        };
    }
function testToUpper(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toUpper, ("ToUpper" : stdgo.GoString)?.__copy__(), _upperTests);
    }
function testToLower(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toLower, ("ToLower" : stdgo.GoString)?.__copy__(), _lowerTests);
    }
function testToValidUTF8(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tc in _toValidUTF8Tests) {
            var _got:stdgo.GoString = toValidUTF8(_tc._in?.__copy__(), _tc._repl?.__copy__())?.__copy__();
            if (_got != (_tc._out)) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._repl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function benchmarkToUpper(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _tc in _upperTests) {
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var _actual:stdgo.GoString = toUpper(_tc._in?.__copy__())?.__copy__();
                        if (_actual != (_tc._out)) {
                            _b.errorf(("ToUpper(%q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkToLower(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _tc in _lowerTests) {
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var _actual:stdgo.GoString = toLower(_tc._in?.__copy__())?.__copy__();
                        if (_actual != (_tc._out)) {
                            _b.errorf(("ToLower(%q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkMapNoChanges(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _identity:stdgo.StdGoTypes.GoInt32 -> stdgo.StdGoTypes.GoInt32 = function(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
            return _r;
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                map(_identity, ("Some string that won\'t be modified." : stdgo.GoString)?.__copy__());
            });
        };
    }
function testSpecialCase(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _lower:stdgo.GoString = ("abcçdefgğhıijklmnoöprsştuüvyz" : stdgo.GoString)?.__copy__();
        var _upper:stdgo.GoString = ("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : stdgo.GoString)?.__copy__();
        var _u:stdgo.GoString = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _upper?.__copy__())?.__copy__();
        if (_u != (_upper)) {
            _t.errorf(("Upper(upper) is %s not %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_upper));
        };
        _u = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _lower?.__copy__())?.__copy__();
        if (_u != (_upper)) {
            _t.errorf(("Upper(lower) is %s not %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_upper));
        };
        var _l:stdgo.GoString = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _lower?.__copy__())?.__copy__();
        if (_l != (_lower)) {
            _t.errorf(("Lower(lower) is %s not %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_lower));
        };
        _l = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _upper?.__copy__())?.__copy__();
        if (_l != (_lower)) {
            _t.errorf(("Lower(upper) is %s not %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_lower));
        };
    }
function testTrimSpace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, trimSpace, ("TrimSpace" : stdgo.GoString)?.__copy__(), _trimSpaceTests);
    }
function testTrim(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tc in _trimTests) {
            var _name:stdgo.GoString = _tc._f?.__copy__();
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
                    _t.errorf(("Undefined trim function %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_name));
                };
            };
            var _actual:stdgo.GoString = _f(_tc._in?.__copy__(), _tc._arg?.__copy__())?.__copy__();
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
function benchmarkTrim(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                for (__8 => _tc in _trimTests) {
                    var _name:stdgo.GoString = _tc._f?.__copy__();
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
                            _b.errorf(("Undefined trim function %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_name));
                        };
                    };
                    var _actual:stdgo.GoString = _f(_tc._in?.__copy__(), _tc._arg?.__copy__())?.__copy__();
                    if (_actual != (_tc._out)) {
                        _b.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                    };
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_13>(3, 3, ({ _name : ("Valid" : stdgo.GoString)?.__copy__(), _input : ("typical" : stdgo.GoString)?.__copy__() } : T__struct_13), ({ _name : ("InvalidASCII" : stdgo.GoString)?.__copy__(), _input : stdgo.Go.str("foo", 255, "bar")?.__copy__() } : T__struct_13), ({ _name : ("InvalidNonASCII" : stdgo.GoString)?.__copy__(), _input : stdgo.Go.str("日本語", 255, "日本語")?.__copy__() } : T__struct_13)) : stdgo.Slice<T__struct_13>);
        var _replacement:stdgo.GoString = ("�" : stdgo.GoString)?.__copy__();
        _b.resetTimer();
        for (__0 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        toValidUTF8(_test._input?.__copy__(), _replacement?.__copy__());
                    });
                };
            });
        };
    }
function _not(_p:T_predicate):T_predicate {
        return (new T_predicate(function(_r:stdgo.StdGoTypes.GoRune):Bool {
            return !_p._f(_r);
        }, ("not " : stdgo.GoString) + _p._name?.__copy__()?.__copy__()) : T_predicate);
    }
function testTrimFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tc in _trimFuncTests) {
            var _trimmers = (new stdgo.Slice<T__struct_15>(3, 3, ({ _name : ("TrimFunc" : stdgo.GoString)?.__copy__(), _trim : trimFunc, _out : _tc._trimOut?.__copy__() } : T__struct_15), ({ _name : ("TrimLeftFunc" : stdgo.GoString)?.__copy__(), _trim : trimLeftFunc, _out : _tc._leftOut?.__copy__() } : T__struct_15), ({ _name : ("TrimRightFunc" : stdgo.GoString)?.__copy__(), _trim : trimRightFunc, _out : _tc._rightOut?.__copy__() } : T__struct_15)) : stdgo.Slice<T__struct_15>);
            for (__1 => _trimmer in _trimmers) {
                var _actual:stdgo.GoString = _trimmer._trim(_tc._in?.__copy__(), _tc._f._f)?.__copy__();
                if (_actual != (_trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tc in _indexFuncTests) {
            var _first:stdgo.StdGoTypes.GoInt = indexFunc(_tc._in?.__copy__(), _tc._f._f);
            if (_first != (_tc._first)) {
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_first), stdgo.Go.toInterface(_tc._first));
            };
            var _last:stdgo.StdGoTypes.GoInt = lastIndexFunc(_tc._in?.__copy__(), _tc._f._f);
            if (_last != (_tc._last)) {
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_last), stdgo.Go.toInterface(_tc._last));
            };
        };
    }
function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Bool {
        if (_s1 == (_s2)) {
            return true;
        };
        var _e1 = split(_s1?.__copy__(), stdgo.Go.str()?.__copy__());
        var _e2 = split(_s2?.__copy__(), stdgo.Go.str()?.__copy__());
        for (_i => _c1 in _e1) {
            if (_i >= (_e2.length)) {
                break;
            };
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_c1?.__copy__()), _r1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1;
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_e2[(_i : stdgo.StdGoTypes.GoInt)]?.__copy__()), _r2:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __1:stdgo.StdGoTypes.GoInt = __tmp__._1;
            if (_r1 != (_r2)) {
                _t.errorf(("%s diff at %d: U+%04X U+%04X" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2));
            };
        };
        return false;
    }
function testCaseConsistency(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _numRunes:stdgo.StdGoTypes.GoInt = (1114112 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _numRunes = (1000 : stdgo.StdGoTypes.GoInt);
        };
        var _a = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((_numRunes : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoRune);
        };
        var _s:stdgo.GoString = (_a : stdgo.GoString)?.__copy__();
        var _upper:stdgo.GoString = toUpper(_s?.__copy__())?.__copy__();
        var _lower:stdgo.GoString = toLower(_s?.__copy__())?.__copy__();
        {
            var _n:stdgo.StdGoTypes.GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_upper?.__copy__());
            if (_n != (_numRunes)) {
                _t.error(stdgo.Go.toInterface(("rune count wrong in upper:" : stdgo.GoString)), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n:stdgo.StdGoTypes.GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_lower?.__copy__());
            if (_n != (_numRunes)) {
                _t.error(stdgo.Go.toInterface(("rune count wrong in lower:" : stdgo.GoString)), stdgo.Go.toInterface(_n));
            };
        };
        if (!_equal(("ToUpper(upper)" : stdgo.GoString)?.__copy__(), toUpper(_upper?.__copy__())?.__copy__(), _upper?.__copy__(), _t)) {
            _t.error(stdgo.Go.toInterface(("ToUpper(upper) consistency fail" : stdgo.GoString)));
        };
        if (!_equal(("ToLower(lower)" : stdgo.GoString)?.__copy__(), toLower(_lower?.__copy__())?.__copy__(), _lower?.__copy__(), _t)) {
            _t.error(stdgo.Go.toInterface(("ToLower(lower) consistency fail" : stdgo.GoString)));
        };
    }
function testRepeat(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in repeatTests) {
            var _a:stdgo.GoString = repeat(_tt._in?.__copy__(), _tt._count)?.__copy__();
            if (!_equal(("Repeat(s)" : stdgo.GoString)?.__copy__(), _a?.__copy__(), _tt._out?.__copy__(), _t)) {
                _t.errorf(("Repeat(%v, %d) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._count), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
        };
    }
function _repeat(_s:stdgo.GoString, _count:stdgo.StdGoTypes.GoInt):stdgo.Error {
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
                                    _err = stdgo.fmt.Fmt.errorf(("%s" : stdgo.GoString)?.__copy__(), _v);
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
            var s:stdgo.GoArray<T__struct_18> = new stdgo.GoArray<T__struct_18>(...[for (i in 0 ... 7) ({ _s : ("" : stdgo.GoString), _count : (0 : stdgo.StdGoTypes.GoInt), _errStr : ("" : stdgo.GoString) } : T__struct_18)]);
            s[0] = ({ _s : ("--" : stdgo.GoString)?.__copy__(), _count : (-2147483647 : stdgo.StdGoTypes.GoInt), _errStr : ("negative" : stdgo.GoString)?.__copy__() } : T__struct_18);
            s[1] = ({ _s : stdgo.Go.str()?.__copy__(), _count : ((2147483647u32 : stdgo.StdGoTypes.GoUInt) : stdgo.StdGoTypes.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_18);
            s[2] = ({ _s : ("-" : stdgo.GoString)?.__copy__(), _count : (10 : stdgo.StdGoTypes.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_18);
            s[3] = ({ _s : ("gopher" : stdgo.GoString)?.__copy__(), _count : (0 : stdgo.StdGoTypes.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : T__struct_18);
            s[4] = ({ _s : ("-" : stdgo.GoString)?.__copy__(), _count : (-1 : stdgo.StdGoTypes.GoInt), _errStr : ("negative" : stdgo.GoString)?.__copy__() } : T__struct_18);
            s[5] = ({ _s : ("--" : stdgo.GoString)?.__copy__(), _count : (-102 : stdgo.StdGoTypes.GoInt), _errStr : ("negative" : stdgo.GoString)?.__copy__() } : T__struct_18);
            s[6] = ({ _s : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((255 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() : stdgo.GoString)?.__copy__(), _count : ((16843010u32 : stdgo.StdGoTypes.GoUInt) : stdgo.StdGoTypes.GoInt), _errStr : ("overflow" : stdgo.GoString)?.__copy__() } : T__struct_18);
            s;
        };
        for (_i => _tt in _tests) {
            var _err:stdgo.Error = _repeat(_tt._s?.__copy__(), _tt._count);
            if (_tt._errStr == (stdgo.Go.str())) {
                if (_err != null) {
                    _t.errorf(("#%d panicked %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !contains(_err.error()?.__copy__(), _tt._errStr?.__copy__())) {
                _t.errorf(("#%d expected %q got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._errStr), stdgo.Go.toInterface(_err));
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
            var _a = (_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoRune>);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(("[]rune(%q) = %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:stdgo.GoString = (_a : stdgo.GoString)?.__copy__();
                if (_s != (_tt._in)) {
                    _t.errorf(("string([]rune(%q)) = %x; want %x" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._in));
                };
            };
        };
    }
function testReadByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testStrings = (new stdgo.Slice<stdgo.GoString>(4, 4, stdgo.Go.str()?.__copy__(), _abcd?.__copy__(), _faces?.__copy__(), _commas?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _s in _testStrings) {
            var _reader = newReader(_s?.__copy__());
            {
                var _e:stdgo.Error = _reader.unreadByte();
                if (_e == null) {
                    _t.errorf(("Unreading %q at beginning: expected error" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s));
                };
            };
            var _res:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            while (true) {
                var __tmp__ = _reader.readByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                _res.writeByte(_b);
                _e = _reader.unreadByte();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readByte(), _b1:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                if (_b1 != (_b)) {
                    _t.errorf(("Reading %q after unreading: want byte %q, got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_b1));
                    break;
                };
            };
            if ((_res.string() : stdgo.GoString) != (_s)) {
                _t.errorf(("Reader(%q).ReadByte() produced %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_res.string() : stdgo.GoString)));
            };
        };
    }
function testReadRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testStrings = (new stdgo.Slice<stdgo.GoString>(4, 4, stdgo.Go.str()?.__copy__(), _abcd?.__copy__(), _faces?.__copy__(), _commas?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _s in _testStrings) {
            var _reader = newReader(_s?.__copy__());
            {
                var _e:stdgo.Error = _reader.unreadRune();
                if (_e == null) {
                    _t.errorf(("Unreading %q at beginning: expected error" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s));
                };
            };
            var _res:stdgo.GoString = stdgo.Go.str()?.__copy__();
            while (true) {
                var __tmp__ = _reader.readRune(), _r:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _z:stdgo.StdGoTypes.GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                _res = _res + ((_r : stdgo.GoString))?.__copy__();
                _e = _reader.unreadRune();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readRune(), _r1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _z1:stdgo.StdGoTypes.GoInt = __tmp__._1, _e:stdgo.Error = __tmp__._2;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e));
                    break;
                };
                if (_r1 != (_r)) {
                    _t.errorf(("Reading %q after unreading: want rune %q, got %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r1));
                    break;
                };
                if (_z1 != (_z)) {
                    _t.errorf(("Reading %q after unreading: want size %d, got %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z1));
                    break;
                };
            };
            if (_res != (_s)) {
                _t.errorf(("Reader(%q).ReadRune() produced %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_res));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader(("0123456789" : stdgo.GoString)?.__copy__());
            {
                var __tmp__ = _reader.readRune(), __1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __2:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err:stdgo.Error = _reader.unreadRune();
            if (_err == null) {
                _t.errorf(("Unreading after %s: expected error" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._name));
            };
        };
    }
function testReplace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in replaceTests) {
            {
                var _s:stdgo.GoString = replace(_tt._in?.__copy__(), _tt._old?.__copy__(), _tt._new?.__copy__(), _tt._n)?.__copy__();
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
            if (_tt._n == ((-1 : stdgo.StdGoTypes.GoInt))) {
                var _s:stdgo.GoString = replaceAll(_tt._in?.__copy__(), _tt._old?.__copy__(), _tt._new?.__copy__())?.__copy__();
                if (_s != (_tt._out)) {
                    _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testTitle(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in titleTests) {
            {
                var _s:stdgo.GoString = title(_tt._in?.__copy__())?.__copy__();
                if (_s != (_tt._out)) {
                    _t.errorf(("Title(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testContains(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _ct in containsTests) {
            if (contains(_ct._str?.__copy__(), _ct._substr?.__copy__()) != (_ct._expected)) {
                _t.errorf(("Contains(%s, %s) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsAny(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _ct in containsAnyTests) {
            if (containsAny(_ct._str?.__copy__(), _ct._substr?.__copy__()) != (_ct._expected)) {
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsRune(_ct._str?.__copy__(), _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _ct in containsRuneTests) {
            if (containsFunc(_ct._str?.__copy__(), function(_r:stdgo.StdGoTypes.GoRune):Bool {
                return _ct._r == (_r);
            }) != (_ct._expected)) {
                _t.errorf(("ContainsFunc(%q, func(%q)) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
function testEqualFold(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold(_tt._s?.__copy__(), _tt._t?.__copy__());
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold(_tt._t?.__copy__(), _tt._s?.__copy__());
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function benchmarkEqualFold(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("Tests" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    for (__8 => _tt in equalFoldTests) {
                        {
                            var _out:Bool = equalFold(_tt._s?.__copy__(), _tt._t?.__copy__());
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
        _b.run(("ASCII" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    equalFold(("abcdefghijKz" : stdgo.GoString)?.__copy__(), ("abcDefGhijKz" : stdgo.GoString)?.__copy__());
                });
            };
        });
        _b.run(("UnicodePrefix" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    equalFold(("αβδabcdefghijKz" : stdgo.GoString)?.__copy__(), ("ΑΒΔabcDefGhijKz" : stdgo.GoString)?.__copy__());
                });
            };
        });
        _b.run(("UnicodeSuffix" : stdgo.GoString)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    equalFold(("abcdefghijKzαβδ" : stdgo.GoString)?.__copy__(), ("abcDefGhijKzΑΒΔ" : stdgo.GoString)?.__copy__());
                });
            };
        });
    }
function testCount(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in countTests) {
            {
                var _num:stdgo.StdGoTypes.GoInt = count(_tt._s?.__copy__(), _tt._sep?.__copy__());
                if (_num != (_tt._num)) {
                    _t.errorf(("Count(%q, %q) = %d, want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_num), stdgo.Go.toInterface(_tt._num));
                };
            };
        };
    }
function testCut(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _cutTests) {
            {
                var __tmp__ = cut(_tt._s?.__copy__(), _tt._sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
                if (((_before != _tt._before) || (_after != _tt._after)) || (_found != _tt._found)) {
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutPrefix(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _cutPrefixTests) {
            {
                var __tmp__ = cutPrefix(_tt._s?.__copy__(), _tt._sep?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if ((_after != _tt._after) || (_found != _tt._found)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutSuffix(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _cutSuffixTests) {
            {
                var __tmp__ = cutSuffix(_tt._s?.__copy__(), _tt._sep?.__copy__()), _before:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if ((_before != _tt._before) || (_found != _tt._found)) {
                    _t.errorf(("CutSuffix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._before), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
function _makeBenchInputHard():stdgo.GoString return "";
function _benchmarkIndexHard(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _sep:stdgo.GoString):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                index(_benchInputHard?.__copy__(), _sep?.__copy__());
            });
        };
    }
function _benchmarkLastIndexHard(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _sep:stdgo.GoString):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                lastIndex(_benchInputHard?.__copy__(), _sep?.__copy__());
            });
        };
    }
function _benchmarkCountHard(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _sep:stdgo.GoString):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                count(_benchInputHard?.__copy__(), _sep?.__copy__());
            });
        };
    }
function benchmarkIndexHard1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<>" : stdgo.GoString)?.__copy__());
    }
function benchmarkIndexHard2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("</pre>" : stdgo.GoString)?.__copy__());
    }
function benchmarkIndexHard3(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<b>hello world</b>" : stdgo.GoString)?.__copy__());
    }
function benchmarkIndexHard4(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<pre><b>hello</b><strong>world</strong></pre>" : stdgo.GoString)?.__copy__());
    }
function benchmarkLastIndexHard1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("<>" : stdgo.GoString)?.__copy__());
    }
function benchmarkLastIndexHard2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("</pre>" : stdgo.GoString)?.__copy__());
    }
function benchmarkLastIndexHard3(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("<b>hello world</b>" : stdgo.GoString)?.__copy__());
    }
function benchmarkCountHard1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("<>" : stdgo.GoString)?.__copy__());
    }
function benchmarkCountHard2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("</pre>" : stdgo.GoString)?.__copy__());
    }
function benchmarkCountHard3(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("<b>hello world</b>" : stdgo.GoString)?.__copy__());
    }
function benchmarkIndexTorture(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                index(_benchInputTorture?.__copy__(), _benchNeedleTorture?.__copy__());
            });
        };
    }
function benchmarkCountTorture(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                count(_benchInputTorture?.__copy__(), _benchNeedleTorture?.__copy__());
            });
        };
    }
function benchmarkCountTortureOverlapping(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var a:stdgo.GoString = repeat(("ABC" : stdgo.GoString)?.__copy__(), (1048576 : stdgo.StdGoTypes.GoInt))?.__copy__();
        var b:stdgo.GoString = repeat(("ABC" : stdgo.GoString)?.__copy__(), (1024 : stdgo.StdGoTypes.GoInt))?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                count(a?.__copy__(), b?.__copy__());
            });
        };
    }
function benchmarkCountByte(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _indexSizes = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(5, 5, (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt), (4096 : stdgo.StdGoTypes.GoInt), (4194304 : stdgo.StdGoTypes.GoInt), (67108864 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        var _benchStr:stdgo.GoString = repeat(("some_text=some☺value" : stdgo.GoString)?.__copy__(), ((_indexSizes[((_indexSizes.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + ("some_text=some☺value" : stdgo.GoString).length) - (1 : stdgo.StdGoTypes.GoInt)) / (("some_text=some☺value" : stdgo.GoString).length))?.__copy__();
        var _benchFunc = function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _benchStr:stdgo.GoString):Void {
            _b.setBytes((_benchStr.length : stdgo.StdGoTypes.GoInt64));
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    count(_benchStr?.__copy__(), ("=" : stdgo.GoString)?.__copy__());
                });
            };
        };
        for (__0 => _size in _indexSizes) {
            _b.run(stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                _benchFunc(_b, (_benchStr.__slice__(0, _size) : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkFields(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _sd in _stringdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (16 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (1048576 : stdgo.StdGoTypes.GoInt), _j = _j << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.StdGoTypes.GoInt64));
                            var _data:stdgo.GoString = (_sd._data.__slice__(0, _j) : stdgo.GoString)?.__copy__();
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    fields(_data?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkFieldsFunc(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _sd in _stringdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (16 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (1048576 : stdgo.StdGoTypes.GoInt), _j = _j << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.StdGoTypes.GoInt64));
                            var _data:stdgo.GoString = (_sd._data.__slice__(0, _j) : stdgo.GoString)?.__copy__();
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    fieldsFunc(_data?.__copy__(), stdgo.unicode.Unicode.isSpace);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkSplitEmptySeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard?.__copy__(), stdgo.Go.str()?.__copy__());
            });
        };
    }
function benchmarkSplitSingleByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard?.__copy__(), ("/" : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard?.__copy__(), ("hello" : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard?.__copy__(), ("/" : stdgo.GoString)?.__copy__(), (10 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard?.__copy__(), ("hello" : stdgo.GoString)?.__copy__(), (10 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkRepeat(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _s:stdgo.GoString = ("0123456789" : stdgo.GoString)?.__copy__();
        for (__0 => _n in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(2, 2, (5 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
            for (__1 => _c in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(4, 4, (0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
                _b.run(stdgo.fmt.Fmt.sprintf(("%dx%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_c))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            repeat((_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), _c);
                        });
                    };
                });
            };
        };
    }
function benchmarkRepeatLarge(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _s:stdgo.GoString = repeat(("@" : stdgo.GoString)?.__copy__(), (8192 : stdgo.StdGoTypes.GoInt))?.__copy__();
        {
            var _j:stdgo.StdGoTypes.GoInt = (8 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_j <= (30 : stdgo.StdGoTypes.GoInt), _j++, {
                for (__0 => _k in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (1 : stdgo.StdGoTypes.GoInt), (16 : stdgo.StdGoTypes.GoInt), (4097 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
                    var _s:stdgo.GoString = (_s.__slice__(0, _k) : stdgo.GoString)?.__copy__();
                    var _n:stdgo.StdGoTypes.GoInt = ((1 : stdgo.StdGoTypes.GoInt) << _j) / _k;
                    if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
                        continue;
                    };
                    _b.run(stdgo.fmt.Fmt.sprintf(("%d/%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt) << _j), stdgo.Go.toInterface(_k))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < _b.n, _i++, {
                                repeat(_s?.__copy__(), _n);
                            });
                        };
                        _b.setBytes((_n * (_s.length) : stdgo.StdGoTypes.GoInt64));
                    });
                };
            });
        };
    }
function benchmarkIndexAnyASCII(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x:stdgo.GoString = repeat(("#" : stdgo.GoString)?.__copy__(), (2048 : stdgo.StdGoTypes.GoInt))?.__copy__();
        var _cs:stdgo.GoString = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)?.__copy__();
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    indexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkIndexAnyUTF8(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x:stdgo.GoString = repeat(("#" : stdgo.GoString)?.__copy__(), (2048 : stdgo.StdGoTypes.GoInt))?.__copy__();
        var _cs:stdgo.GoString = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : stdgo.GoString)?.__copy__();
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    indexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyASCII(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x:stdgo.GoString = repeat(("#" : stdgo.GoString)?.__copy__(), (2048 : stdgo.StdGoTypes.GoInt))?.__copy__();
        var _cs:stdgo.GoString = ("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)?.__copy__();
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkLastIndexAnyUTF8(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x:stdgo.GoString = repeat(("#" : stdgo.GoString)?.__copy__(), (2048 : stdgo.StdGoTypes.GoInt))?.__copy__();
        var _cs:stdgo.GoString = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : stdgo.GoString)?.__copy__();
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (2048 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (64 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    lastIndexAny((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimASCII(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _cs:stdgo.GoString = ("0123456789abcdef" : stdgo.GoString)?.__copy__();
        {
            var _k:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_k <= (4096 : stdgo.StdGoTypes.GoInt), _k = _k << ((4i64 : stdgo.StdGoTypes.GoUInt64)), {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j <= (16 : stdgo.StdGoTypes.GoInt), _j = _j << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                            var _x:stdgo.GoString = repeat((_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__(), _k)?.__copy__();
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _b.n, _i++, {
                                    trim((_x.__slice__(0, _k) : stdgo.GoString)?.__copy__(), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
function benchmarkTrimByte(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _x:stdgo.GoString = ("  the quick brown fox   " : stdgo.GoString)?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                trim(_x?.__copy__(), (" " : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkIndexPeriodic(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _key:stdgo.GoString = ("aa" : stdgo.GoString)?.__copy__();
        for (__0 => _skip in (new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((2 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt), (8 : stdgo.StdGoTypes.GoInt), (16 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("IndexPeriodic%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_skip))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                var _s:stdgo.GoString = repeat(("a" : stdgo.GoString) + repeat((" " : stdgo.GoString)?.__copy__(), _skip - (1 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__(), (65536 : stdgo.StdGoTypes.GoInt) / _skip)?.__copy__();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        index(_s?.__copy__(), _key?.__copy__());
                    });
                };
            });
        };
    }
function benchmarkJoin(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _vals = (new stdgo.Slice<stdgo.GoString>(7, 7, ("red" : stdgo.GoString)?.__copy__(), ("yellow" : stdgo.GoString)?.__copy__(), ("pink" : stdgo.GoString)?.__copy__(), ("green" : stdgo.GoString)?.__copy__(), ("purple" : stdgo.GoString)?.__copy__(), ("orange" : stdgo.GoString)?.__copy__(), ("blue" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        {
            var _l:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_l <= (_vals.length), _l++, {
                _b.run(stdgo.strconv.Strconv.itoa(_l)?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    _b.reportAllocs();
                    var _vals = (_vals.__slice__(0, _l) : stdgo.Slice<stdgo.GoString>);
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            join(_vals, (" and " : stdgo.GoString)?.__copy__());
                        });
                    };
                });
            });
        };
    }
function benchmarkTrimSpace(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new stdgo.Slice<T__struct_13>(4, 4, ({ _name : ("NoTrim" : stdgo.GoString)?.__copy__(), _input : ("typical" : stdgo.GoString)?.__copy__() } : T__struct_13), ({ _name : ("ASCII" : stdgo.GoString)?.__copy__(), _input : ("  foo bar  " : stdgo.GoString)?.__copy__() } : T__struct_13), ({ _name : ("SomeNonASCII" : stdgo.GoString)?.__copy__(), _input : ("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : stdgo.GoString)?.__copy__() } : T__struct_13), ({ _name : ("JustNonASCII" : stdgo.GoString)?.__copy__(), _input : ("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : stdgo.GoString)?.__copy__() } : T__struct_13)) : stdgo.Slice<T__struct_13>);
        for (__0 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        trimSpace(_test._input?.__copy__());
                    });
                };
            });
        };
    }
function benchmarkReplaceAll(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _stringSink = replaceAll(("banana" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), ("<>" : stdgo.GoString)?.__copy__())?.__copy__();
            });
        };
    }
class T_errWriter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _:T_errWriter, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_errWriter = _?.__copy__();
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.fmt.Fmt.errorf(("unwritable" : stdgo.GoString)?.__copy__()) };
    }
}
