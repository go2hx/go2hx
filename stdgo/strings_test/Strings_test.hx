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
/**
    
    
    
**/
private var _someBytes = (("some bytes sdljlk jsklj3lkjlk djlkjw" : GoString) : Slice<GoByte>);
/**
    
    
    
**/
private var _compareTests = (new Slice<T__struct_2>(
0,
0,
({ _a : Go.str(), _b : Go.str(), _i : (0 : GoInt) } : T__struct_2),
({ _a : ("a" : GoString), _b : Go.str(), _i : (1 : GoInt) } : T__struct_2),
({ _a : Go.str(), _b : ("a" : GoString), _i : (-1 : GoInt) } : T__struct_2),
({ _a : ("abc" : GoString), _b : ("abc" : GoString), _i : (0 : GoInt) } : T__struct_2),
({ _a : ("ab" : GoString), _b : ("abc" : GoString), _i : (-1 : GoInt) } : T__struct_2),
({ _a : ("abc" : GoString), _b : ("ab" : GoString), _i : (1 : GoInt) } : T__struct_2),
({ _a : ("x" : GoString), _b : ("ab" : GoString), _i : (1 : GoInt) } : T__struct_2),
({ _a : ("ab" : GoString), _b : ("x" : GoString), _i : (-1 : GoInt) } : T__struct_2),
({ _a : ("x" : GoString), _b : ("a" : GoString), _i : (1 : GoInt) } : T__struct_2),
({ _a : ("b" : GoString), _b : ("x" : GoString), _i : (-1 : GoInt) } : T__struct_2),
({ _a : ("abcdefgh" : GoString), _b : ("abcdefgh" : GoString), _i : (0 : GoInt) } : T__struct_2),
({ _a : ("abcdefghi" : GoString), _b : ("abcdefghi" : GoString), _i : (0 : GoInt) } : T__struct_2),
({ _a : ("abcdefghi" : GoString), _b : ("abcdefghj" : GoString), _i : (-1 : GoInt) } : T__struct_2)) : Slice<T__struct_2>);
/**
    
    
    
**/
private var _htmlEscaper = newReplacer(("&" : GoString), ("&amp;" : GoString), ("<" : GoString), ("&lt;" : GoString), (">" : GoString), ("&gt;" : GoString), ("\"" : GoString), ("&quot;" : GoString), ("\'" : GoString), ("&apos;" : GoString));
/**
    
    
    
**/
private var _htmlUnescaper = newReplacer(("&amp;" : GoString), ("&" : GoString), ("&lt;" : GoString), ("<" : GoString), ("&gt;" : GoString), (">" : GoString), ("&quot;" : GoString), ("\"" : GoString), ("&apos;" : GoString), ("\'" : GoString));
/**
    
    
    
**/
private var _capitalLetters = newReplacer(("a" : GoString), ("A" : GoString), ("b" : GoString), ("B" : GoString));
/**
    
    
    
**/
private var _algorithmTestCases = (new Slice<T__struct_5>(0, 0, ({ _r : _capitalLetters, _want : ("*strings.byteReplacer" : GoString) } : T__struct_5), ({ _r : _htmlEscaper, _want : ("*strings.byteStringReplacer" : GoString) } : T__struct_5), ({ _r : newReplacer(("12" : GoString), ("123" : GoString)), _want : ("*strings.singleStringReplacer" : GoString) } : T__struct_5), ({ _r : newReplacer(("1" : GoString), ("12" : GoString)), _want : ("*strings.byteStringReplacer" : GoString) } : T__struct_5), ({ _r : newReplacer(Go.str(), ("X" : GoString)), _want : ("*strings.genericReplacer" : GoString) } : T__struct_5), ({ _r : newReplacer(("a" : GoString), ("1" : GoString), ("b" : GoString), ("12" : GoString), ("cde" : GoString), ("123" : GoString)), _want : ("*strings.genericReplacer" : GoString) } : T__struct_5)) : Slice<T__struct_5>);
/**
    
    
    
**/
private var _mapdata = (new Slice<T__struct_7>(0, 0, ({ _name : ("ASCII" : GoString), _data : ("a b c d e f g h i j k l m n o p q r s t u v w x y z" : GoString) } : T__struct_7), ({ _name : ("Greek" : GoString), _data : ("α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω" : GoString) } : T__struct_7)) : Slice<T__struct_7>);
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
private var _indexTests = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(
0,
0,
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("foo" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("fo" : GoString), ("foo" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : GoString), ("foo" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : GoString), ("f" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : GoString), ("foo" : GoString), (4 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("barfoobarfoo" : GoString), ("foo" : GoString), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : GoString), Go.str(), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : GoString), ("o" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcABCabc" : GoString), ("A" : GoString), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("jrzm6jjhorimglljrea4w3rlgosts0w2gia17hno2td4qd1jz" : GoString), ("jz" : GoString), (47 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ekkuk5oft4eq0ocpacknhwouic1uua46unx12l37nioq9wbpnocqks6" : GoString), ("ks6" : GoString), (52 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("999f2xmimunbuyew5vrkla9cpwhmxan8o98ec" : GoString), ("98ec" : GoString), (33 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("9lpt9r98i04k8bz6c6dsrthb96bhi" : GoString), ("96bhi" : GoString), (24 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("55u558eqfaod2r2gu42xxsu631xf0zobs5840vl" : GoString), ("5840vl" : GoString), (33 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x" : GoString), ("a" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x" : GoString), ("x" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("b" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("c" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("x" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("ab" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("bc" : GoString), ("ab" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ab" : GoString), ("ab" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xab" : GoString), ("ab" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xab" : GoString).__slice__(0, (2 : GoInt)) : GoString), ("ab" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("abc" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xbc" : GoString), ("abc" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("abc" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabc" : GoString), ("abc" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xabc" : GoString).__slice__(0, (3 : GoInt)) : GoString), ("abc" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabxc" : GoString), ("abc" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("abcd" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xbcd" : GoString), ("abcd" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcd" : GoString), ("abcd" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabcd" : GoString), ("abcd" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyabcd" : GoString).__slice__(0, (5 : GoInt)) : GoString), ("abcd" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xbcqq" : GoString), ("abcqq" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcqq" : GoString), ("abcqq" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabcqq" : GoString), ("abcqq" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyabcqq" : GoString).__slice__(0, (6 : GoInt)) : GoString), ("abcqq" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabxcqq" : GoString), ("abcqq" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xabcqxq" : GoString), ("abcqq" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("01234567" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("32145678" : GoString), ("01234567" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("01234567" : GoString), ("01234567" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567" : GoString), ("01234567" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456x01234567" : GoString), ("01234567" : GoString), (9 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xx01234567" : GoString).__slice__(0, (9 : GoInt)) : GoString), ("01234567" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("0123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("3214567844" : GoString), ("0123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456789" : GoString), ("0123456789" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789" : GoString), ("0123456789" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x012345678x0123456789" : GoString), ("0123456789" : GoString), (11 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz0123456789" : GoString).__slice__(0, (12 : GoInt)) : GoString), ("0123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567x89" : GoString), ("0123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("0123456789012345" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("3214567889012345" : GoString), ("0123456789012345" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456789012345" : GoString), ("0123456789012345" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345" : GoString), ("0123456789012345" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x012345678901234x0123456789012345" : GoString), ("0123456789012345" : GoString), (17 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("01234567890123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("32145678890123456789" : GoString), ("01234567890123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("01234567890123456789" : GoString), ("01234567890123456789" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567890123456789" : GoString), ("01234567890123456789" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345678x01234567890123456789" : GoString), ("01234567890123456789" : GoString), (21 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz01234567890123456789" : GoString).__slice__(0, (22 : GoInt)) : GoString), ("01234567890123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("0123456789012345678901234567890" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("321456788901234567890123456789012345678911" : GoString), ("0123456789012345678901234567890" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456789012345678901234567890" : GoString), ("0123456789012345678901234567890" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345678901234567890" : GoString), ("0123456789012345678901234567890" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x012345678901234567890123456789x0123456789012345678901234567890" : GoString), ("0123456789012345678901234567890" : GoString), (32 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz0123456789012345678901234567890" : GoString).__slice__(0, (33 : GoInt)) : GoString), ("0123456789012345678901234567890" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("01234567890123456789012345678901" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("32145678890123456789012345678901234567890211" : GoString), ("01234567890123456789012345678901" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("01234567890123456789012345678901" : GoString), ("01234567890123456789012345678901" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x01234567890123456789012345678901" : GoString), ("01234567890123456789012345678901" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("x0123456789012345678901234567890x01234567890123456789012345678901" : GoString), ("01234567890123456789012345678901" : GoString), (33 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xyz01234567890123456789012345678901" : GoString).__slice__(0, (34 : GoInt)) : GoString), ("01234567890123456789012345678901" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xxxxxx012345678901234567890123456789012345678901234567890123456789012" : GoString), ("012345678901234567890123456789012345678901234567890123456789012" : GoString), (6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("0123456789012345678901234567890123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xx012345678901234567890123456789012345678901234567890123456789012" : GoString), ("0123456789012345678901234567890123456789" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((("xx012345678901234567890123456789012345678901234567890123456789012" : GoString).__slice__(0, (41 : GoInt)) : GoString), ("0123456789012345678901234567890123456789" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xx012345678901234567890123456789012345678901234567890123456789012" : GoString), ("0123456789012345678901234567890123456xxx" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("xx0123456789012345678901234567890123456789012345678901234567890120123456789012345678901234567890123456xxx" : GoString), ("0123456789012345678901234567890123456xxx" : GoString), (65 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oxoxoxoxoxoxoxoxoxoxoxoy" : GoString), ("oy" : GoString), (22 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oxoxoxoxoxoxoxoxoxoxoxox" : GoString), ("oy" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
private var _lastIndexTests = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(
0,
0,
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("foo" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("fo" : GoString), ("foo" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : GoString), ("foo" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : GoString), ("f" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : GoString), ("f" : GoString), (7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("oofofoofooo" : GoString), ("foo" : GoString), (7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("barfoobarfoo" : GoString), ("foo" : GoString), (9 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : GoString), Go.str(), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("foo" : GoString), ("o" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcABCabc" : GoString), ("A" : GoString), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abcABCabc" : GoString), ("a" : GoString), (6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
private var _indexAnyTests = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(
0,
0,
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("abc" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : GoString), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(128), Go.str(255, "b"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("aaa" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("xyz" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("xcz" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ab☺c" : GoString), ("x☺yz" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : GoString), ("cx" : GoString), (("a☺b☻" : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : GoString), ("uvw☻xyz" : GoString), (("a☺b" : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("aRegExp*" : GoString), (".(|)*+?^$$[]" : GoString), (7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, (" " : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("012abcba210" : GoString), Go.str(255, "b"), (4 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str("012", 128, "bcb", 128, "210"), Go.str(255, "b"), (3 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456πabc" : GoString), Go.str(207, "b", 128), (10 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
private var _lastIndexAnyTests = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(
0,
0,
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("a" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("abc" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : GoString), Go.str(), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a" : GoString), ("a" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str(128), Go.str(255, "b"), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("aaa" : GoString), ("a" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("xyz" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("abc" : GoString), ("ab" : GoString), (1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("ab☺c" : GoString), ("x☺yz" : GoString), (2 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : GoString), ("cx" : GoString), (("a☺b☻" : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : GoString), ("uvw☻xyz" : GoString), (("a☺b" : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("a.RegExp*" : GoString), (".(|)*+?^$$[]" : GoString), (8 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest((_dots + _dots) + _dots, (" " : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("012abcba210" : GoString), Go.str(255, "b"), (6 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(Go.str("012", 128, "bcb", 128, "210"), Go.str(255, "b"), (7 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest),
(new stdgo.strings_test.Strings_test.IndexTest(("0123456πabc" : GoString), Go.str(207, "b", 128), (10 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);
/**
    
    
    
**/
private var _benchmarkLongString = repeat((" " : GoString), (100 : GoInt)) + ("some_text=some☺value" : GoString);
/**
    
    
    
**/
private var _splittests = (new Slice<stdgo.strings_test.Strings_test.SplitTest>(
0,
0,
(new stdgo.strings_test.Strings_test.SplitTest(Go.str(), Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (2 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("bcd" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (4 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString), ("c" : GoString), ("d" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString), ("c" : GoString), ("d" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺" : GoString), ("☻" : GoString), ("☹" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (3 : GoInt), (new Slice<GoString>(0, 0, ("☺" : GoString), ("☻" : GoString), ("☹" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (17 : GoInt), (new Slice<GoString>(0, 0, ("☺" : GoString), ("☻" : GoString), ("☹" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("☺�☹" : GoString), Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺" : GoString), ("�" : GoString), ("☹" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, ("a" : GoString), (0 : GoInt), (null : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, ("a" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, Go.str(), ("bcd" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, ("z" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("abcd" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_commas, ("," : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_dots, ("..." : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), (".2" : GoString), (".3" : GoString), (".4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, ("☹" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺☻" : GoString), Go.str()) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, ("~" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2 3 4" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3 4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(Go.str(), ("T" : GoString), (536870911 : GoInt), (new Slice<GoString>(0, 0, Go.str()) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(Go.str(255, "-", 255), Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, Go.str(255), ("-" : GoString), Go.str(255)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(Go.str(255, "-", 255), ("-" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, Go.str(255), Go.str(255)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : Slice<stdgo.strings_test.Strings_test.SplitTest>);
/**
    
    
    
**/
private var _splitaftertests = (new Slice<stdgo.strings_test.Strings_test.SplitTest>(
0,
0,
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, ("a" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("bcd" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, ("z" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("abcd" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_abcd, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString), ("c" : GoString), ("d" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_commas, ("," : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1," : GoString), ("2," : GoString), ("3," : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_dots, ("..." : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("1..." : GoString), (".2..." : GoString), (".3..." : GoString), (".4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, ("☹" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺☻☹" : GoString), Go.str()) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, ("~" : GoString), (-1 : GoInt), (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(_faces, Go.str(), (-1 : GoInt), (new Slice<GoString>(0, 0, ("☺" : GoString), ("☻" : GoString), ("☹" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2 3 4" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1 " : GoString), ("2 " : GoString), ("3 4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2 3" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1 " : GoString), ("2 " : GoString), ("3" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("1 2" : GoString), (" " : GoString), (3 : GoInt), (new Slice<GoString>(0, 0, ("1 " : GoString), ("2" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("123" : GoString), Go.str(), (2 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("23" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest),
(new stdgo.strings_test.Strings_test.SplitTest(("123" : GoString), Go.str(), (17 : GoInt), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.SplitTest)) : Slice<stdgo.strings_test.Strings_test.SplitTest>);
/**
    
    
    
**/
private var _fieldstests = (new Slice<stdgo.strings_test.Strings_test.FieldsTest>(
0,
0,
(new stdgo.strings_test.Strings_test.FieldsTest(Go.str(), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest((" " : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest((" \t " : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\u2000" : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("  abc  " : GoString), (new Slice<GoString>(0, 0, ("abc" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1 2 3 4" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1  2  3  4" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1\t\t2\t\t3\t4" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("1\u20002\u20013\u20024" : GoString), (new Slice<GoString>(0, 0, ("1" : GoString), ("2" : GoString), ("3" : GoString), ("4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\u2000\u2001\u2002" : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\n™\t™\n" : GoString), (new Slice<GoString>(0, 0, ("™" : GoString), ("™" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\n\u20001™2\u2000 \u2001 ™" : GoString), (new Slice<GoString>(0, 0, ("1™2" : GoString), ("™" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(("\n1� �2\u20003�4" : GoString), (new Slice<GoString>(0, 0, ("1�" : GoString), ("�2" : GoString), ("3�4" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(Go.str("1", 255, "\u2000", 255, "2", 255, " ", 255), (new Slice<GoString>(0, 0, Go.str("1", 255), Go.str(255, "2", 255), Go.str(255)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest),
(new stdgo.strings_test.Strings_test.FieldsTest(_faces, (new Slice<GoString>(0, 0, _faces) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : Slice<stdgo.strings_test.Strings_test.FieldsTest>);
/**
    
    
    
**/
var fieldsFuncTests = (new Slice<stdgo.strings_test.Strings_test.FieldsTest>(0, 0, (new stdgo.strings_test.Strings_test.FieldsTest(Go.str(), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest), (new stdgo.strings_test.Strings_test.FieldsTest(("XX" : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest), (new stdgo.strings_test.Strings_test.FieldsTest(("XXhiXXX" : GoString), (new Slice<GoString>(0, 0, ("hi" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest), (new stdgo.strings_test.Strings_test.FieldsTest(("aXXbXXXcX" : GoString), (new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString), ("c" : GoString)) : Slice<GoString>)) : stdgo.strings_test.Strings_test.FieldsTest)) : Slice<stdgo.strings_test.Strings_test.FieldsTest>);
/**
    
    
    
**/
private var _upperTests = (new Slice<stdgo.strings_test.Strings_test.StringTest>(
0,
0,
(new stdgo.strings_test.Strings_test.StringTest(Go.str(), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("ONLYUPPER" : GoString), ("ONLYUPPER" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("abc" : GoString), ("ABC" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("AbC123" : GoString), ("ABC123" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("azAZ09_" : GoString), ("AZAZ09_" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : GoString), ("LONGSTRINGWITHMIXOFSMALLANDCAPS" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("RENAN BASTOS 93 AOSDAJDJAIDJAIDAJIaidsjjaidijadsjiadjiOOKKO" : GoString), ("RENAN BASTOS 93 AOSDAJDJAIDJAIDAJIAIDSJJAIDIJADSJIADJIOOKKO" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("longɐstringɐwithɐnonasciiⱯchars" : GoString), ("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("ɐɐɐɐɐ" : GoString), ("ⱯⱯⱯⱯⱯ" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("a\u0080\u{0010ffff}" : GoString), ("A\u0080\u{0010ffff}" : GoString)) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);
/**
    
    
    
**/
private var _lowerTests = (new Slice<stdgo.strings_test.Strings_test.StringTest>(
0,
0,
(new stdgo.strings_test.Strings_test.StringTest(Go.str(), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("abc" : GoString), ("abc" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("AbC123" : GoString), ("abc123" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("azAZ09_" : GoString), ("azaz09_" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("longStrinGwitHmixofsmaLLandcAps" : GoString), ("longstringwithmixofsmallandcaps" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("renan bastos 93 AOSDAJDJAIDJAIDAJIaidsjjaidijadsjiadjiOOKKO" : GoString), ("renan bastos 93 aosdajdjaidjaidajiaidsjjaidijadsjiadjiookko" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("LONGⱯSTRINGⱯWITHⱯNONASCIIⱯCHARS" : GoString), ("longɐstringɐwithɐnonasciiɐchars" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("ⱭⱭⱭⱭⱭ" : GoString), ("ɑɑɑɑɑ" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("A\u0080\u{0010ffff}" : GoString), ("a\u0080\u{0010ffff}" : GoString)) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);
/**
    
    
    
**/
private var _trimSpaceTests = (new Slice<stdgo.strings_test.Strings_test.StringTest>(
0,
0,
(new stdgo.strings_test.Strings_test.StringTest(Go.str(), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("abc" : GoString), ("abc" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), ("abc" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" " : GoString), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" \t\r\n \t\t\r\r\n\n " : GoString), Go.str()) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" \t\r\n x\t\t\r\r\n\n " : GoString), ("x" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : GoString), ("x\t\t\r\r\ny" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("1 \t\r\n2" : GoString), ("1 \t\r\n2" : GoString)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(Go.str(" x", 128), Go.str("x", 128)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(Go.str(" x", 192), Go.str("x", 192)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192, 192, " "), Go.str("x ", 192, 192)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192), Go.str("x ", 192)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192, " "), Go.str("x ", 192)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ", 192, 192, " "), Go.str("x ", 192, 192)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(Go.str("x ☺", 192, 192, " "), Go.str("x ☺", 192, 192)) : stdgo.strings_test.Strings_test.StringTest),
(new stdgo.strings_test.Strings_test.StringTest(("x ☺ " : GoString), ("x ☺" : GoString)) : stdgo.strings_test.Strings_test.StringTest)) : Slice<stdgo.strings_test.Strings_test.StringTest>);
/**
    
    
    
**/
private var _toValidUTF8Tests = (new Slice<T__struct_11>(
0,
0,
({ _in : Go.str(), _repl : ("�" : GoString), _out : Go.str() } : T__struct_11),
({ _in : ("abc" : GoString), _repl : ("�" : GoString), _out : ("abc" : GoString) } : T__struct_11),
({ _in : ("\ufddd" : GoString), _repl : ("�" : GoString), _out : ("\ufddd" : GoString) } : T__struct_11),
({ _in : Go.str("a", 255, "b"), _repl : ("�" : GoString), _out : ("a�b" : GoString) } : T__struct_11),
({ _in : Go.str("a", 255, "b�"), _repl : ("X" : GoString), _out : ("aXb�" : GoString) } : T__struct_11),
({ _in : Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl : Go.str(), _out : ("a☺b☺c☺" : GoString) } : T__struct_11),
({ _in : Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255), _repl : ("日本語" : GoString), _out : ("a☺日本語b☺日本語c☺日本語" : GoString) } : T__struct_11),
({ _in : Go.str(192, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_11),
({ _in : Go.str(224, 128, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_11),
({ _in : Go.str(237, 160, 128), _repl : ("abc" : GoString), _out : ("abc" : GoString) } : T__struct_11),
({ _in : Go.str(237, 191, 191), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_11),
({ _in : Go.str(240, 128, 128, 175), _repl : ("☺" : GoString), _out : ("☺" : GoString) } : T__struct_11),
({ _in : Go.str(248, 128, 128, 128, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_11),
({ _in : Go.str(252, 128, 128, 128, 128, 175), _repl : ("�" : GoString), _out : ("�" : GoString) } : T__struct_11)) : Slice<T__struct_11>);
/**
    
    
    
**/
private var _trimTests = (new Slice<T__struct_12>(
0,
0,
({ _f : ("Trim" : GoString), _in : ("abba" : GoString), _arg : ("a" : GoString), _out : ("bb" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : ("abba" : GoString), _arg : ("ab" : GoString), _out : Go.str() } : T__struct_12),
({ _f : ("TrimLeft" : GoString), _in : ("abba" : GoString), _arg : ("ab" : GoString), _out : Go.str() } : T__struct_12),
({ _f : ("TrimRight" : GoString), _in : ("abba" : GoString), _arg : ("ab" : GoString), _out : Go.str() } : T__struct_12),
({ _f : ("TrimLeft" : GoString), _in : ("abba" : GoString), _arg : ("a" : GoString), _out : ("bba" : GoString) } : T__struct_12),
({ _f : ("TrimLeft" : GoString), _in : ("abba" : GoString), _arg : ("b" : GoString), _out : ("abba" : GoString) } : T__struct_12),
({ _f : ("TrimRight" : GoString), _in : ("abba" : GoString), _arg : ("a" : GoString), _out : ("abb" : GoString) } : T__struct_12),
({ _f : ("TrimRight" : GoString), _in : ("abba" : GoString), _arg : ("b" : GoString), _out : ("abba" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : ("<tag>" : GoString), _arg : ("<>" : GoString), _out : ("tag" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : ("* listitem" : GoString), _arg : (" *" : GoString), _out : ("listitem" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : ("\"quote\"" : GoString), _arg : ("\"" : GoString), _out : ("quote" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : ("ⱯⱯɐɐⱯⱯ" : GoString), _arg : ("Ɐ" : GoString), _out : ("ɐɐ" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : Go.str(128, "test", 255), _arg : Go.str(255), _out : ("test" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : (" Ġ " : GoString), _arg : (" " : GoString), _out : ("Ġ" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : (" Ġİ0" : GoString), _arg : ("0 " : GoString), _out : ("Ġİ" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : ("abba" : GoString), _arg : Go.str(), _out : ("abba" : GoString) } : T__struct_12),
({ _f : ("Trim" : GoString), _in : Go.str(), _arg : ("123" : GoString), _out : Go.str() } : T__struct_12),
({ _f : ("Trim" : GoString), _in : Go.str(), _arg : Go.str(), _out : Go.str() } : T__struct_12),
({ _f : ("TrimLeft" : GoString), _in : ("abba" : GoString), _arg : Go.str(), _out : ("abba" : GoString) } : T__struct_12),
({ _f : ("TrimLeft" : GoString), _in : Go.str(), _arg : ("123" : GoString), _out : Go.str() } : T__struct_12),
({ _f : ("TrimLeft" : GoString), _in : Go.str(), _arg : Go.str(), _out : Go.str() } : T__struct_12),
({ _f : ("TrimRight" : GoString), _in : ("abba" : GoString), _arg : Go.str(), _out : ("abba" : GoString) } : T__struct_12),
({ _f : ("TrimRight" : GoString), _in : Go.str(), _arg : ("123" : GoString), _out : Go.str() } : T__struct_12),
({ _f : ("TrimRight" : GoString), _in : Go.str(), _arg : Go.str(), _out : Go.str() } : T__struct_12),
({ _f : ("TrimRight" : GoString), _in : Go.str("☺", 192), _arg : ("☺" : GoString), _out : Go.str("☺", 192) } : T__struct_12),
({ _f : ("TrimPrefix" : GoString), _in : ("aabb" : GoString), _arg : ("a" : GoString), _out : ("abb" : GoString) } : T__struct_12),
({ _f : ("TrimPrefix" : GoString), _in : ("aabb" : GoString), _arg : ("b" : GoString), _out : ("aabb" : GoString) } : T__struct_12),
({ _f : ("TrimSuffix" : GoString), _in : ("aabb" : GoString), _arg : ("a" : GoString), _out : ("aabb" : GoString) } : T__struct_12),
({ _f : ("TrimSuffix" : GoString), _in : ("aabb" : GoString), _arg : ("b" : GoString), _out : ("aab" : GoString) } : T__struct_12)) : Slice<T__struct_12>);
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
private var _trimFuncTests = (new Slice<T__struct_14>(
0,
0,
({ _f : _isSpace.__copy__(), _in : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), _trimOut : ("hello" : GoString), _leftOut : ("hello \t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), _rightOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000 hello" : GoString) } : T__struct_14),
({ _f : _isDigit.__copy__(), _in : ("๐๒12hello34๐๑" : GoString), _trimOut : ("hello" : GoString), _leftOut : ("hello34๐๑" : GoString), _rightOut : ("๐๒12hello" : GoString) } : T__struct_14),
({ _f : _isUpper.__copy__(), _in : ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : GoString), _trimOut : ("hello" : GoString), _leftOut : ("helloEFⱯⱯGHⱯⱯ" : GoString), _rightOut : ("ⱯⱯⱯⱯABCDhello" : GoString) } : T__struct_14),
({ _f : _not(_isSpace.__copy__()).__copy__(), _in : ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : GoString), _trimOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), _leftOut : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000hello" : GoString), _rightOut : ("hello\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString) } : T__struct_14),
({ _f : _not(_isDigit.__copy__()).__copy__(), _in : ("hello๐๒1234๐๑helo" : GoString), _trimOut : ("๐๒1234๐๑" : GoString), _leftOut : ("๐๒1234๐๑helo" : GoString), _rightOut : ("hello๐๒1234๐๑" : GoString) } : T__struct_14),
({ _f : _isValidRune.__copy__(), _in : Go.str("ab", 192, "a", 192, "cd"), _trimOut : Go.str(192, "a", 192), _leftOut : Go.str(192, "a", 192, "cd"), _rightOut : Go.str("ab", 192, "a", 192) } : T__struct_14),
({ _f : _not(_isValidRune.__copy__()).__copy__(), _in : Go.str(192, "a", 192), _trimOut : ("a" : GoString), _leftOut : Go.str("a", 192), _rightOut : Go.str(192, "a") } : T__struct_14),
({ _f : _isSpace.__copy__(), _in : Go.str(), _trimOut : Go.str(), _leftOut : Go.str(), _rightOut : Go.str() } : T__struct_14),
({ _f : _isSpace.__copy__(), _in : (" " : GoString), _trimOut : Go.str(), _leftOut : Go.str(), _rightOut : Go.str() } : T__struct_14)) : Slice<T__struct_14>);
/**
    
    
    
**/
private var _indexFuncTests = (new Slice<T__struct_16>(
0,
0,
({ _in : Go.str(), _f : _isValidRune.__copy__(), _first : (-1 : GoInt), _last : (-1 : GoInt) } : T__struct_16),
({ _in : ("abc" : GoString), _f : _isDigit.__copy__(), _first : (-1 : GoInt), _last : (-1 : GoInt) } : T__struct_16),
({ _in : ("0123" : GoString), _f : _isDigit.__copy__(), _first : (0 : GoInt), _last : (3 : GoInt) } : T__struct_16),
({ _in : ("a1b" : GoString), _f : _isDigit.__copy__(), _first : (1 : GoInt), _last : (1 : GoInt) } : T__struct_16),
({ _in : ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString), _f : _isSpace.__copy__(), _first : (0 : GoInt), _last : (12 : GoInt) } : T__struct_16),
({ _in : ("๐๒12hello34๐๑" : GoString), _f : _isDigit.__copy__(), _first : (0 : GoInt), _last : (18 : GoInt) } : T__struct_16),
({ _in : ("ⱯⱯⱯⱯABCDhelloEFⱯⱯGHⱯⱯ" : GoString), _f : _isUpper.__copy__(), _first : (0 : GoInt), _last : (34 : GoInt) } : T__struct_16),
({ _in : ("12๐๒hello34๐๑" : GoString), _f : _not(_isDigit.__copy__()).__copy__(), _first : (8 : GoInt), _last : (12 : GoInt) } : T__struct_16),
({ _in : Go.str(128, "1"), _f : _isDigit.__copy__(), _first : (1 : GoInt), _last : (1 : GoInt) } : T__struct_16),
({ _in : Go.str(128, "abc"), _f : _isDigit.__copy__(), _first : (-1 : GoInt), _last : (-1 : GoInt) } : T__struct_16),
({ _in : Go.str(192, "a", 192), _f : _isValidRune.__copy__(), _first : (1 : GoInt), _last : (1 : GoInt) } : T__struct_16),
({ _in : Go.str(192, "a", 192), _f : _not(_isValidRune.__copy__()).__copy__(), _first : (0 : GoInt), _last : (2 : GoInt) } : T__struct_16),
({ _in : Go.str(192, "☺", 192), _f : _not(_isValidRune.__copy__()).__copy__(), _first : (0 : GoInt), _last : (4 : GoInt) } : T__struct_16),
({ _in : Go.str(192, "☺", 192, 192), _f : _not(_isValidRune.__copy__()).__copy__(), _first : (0 : GoInt), _last : (5 : GoInt) } : T__struct_16),
({ _in : Go.str("ab", 192, "a", 192, "cd"), _f : _not(_isValidRune.__copy__()).__copy__(), _first : (2 : GoInt), _last : (4 : GoInt) } : T__struct_16),
({ _in : Go.str("a", 224, 128, "cd"), _f : _not(_isValidRune.__copy__()).__copy__(), _first : (1 : GoInt), _last : (2 : GoInt) } : T__struct_16),
({ _in : Go.str(128, 128, 128, 128), _f : _not(_isValidRune.__copy__()).__copy__(), _first : (0 : GoInt), _last : (3 : GoInt) } : T__struct_16)) : Slice<T__struct_16>);
/**
    
    
    
**/
private var _longString = (("a" : GoString) + (new Slice<GoUInt8>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString)) + ("z" : GoString);
/**
    
    
    
**/
var repeatTests = (new Slice<T__struct_17>(
0,
0,
({ _in : Go.str(), _out : Go.str(), _count : (0 : GoInt) } : T__struct_17),
({ _in : Go.str(), _out : Go.str(), _count : (1 : GoInt) } : T__struct_17),
({ _in : Go.str(), _out : Go.str(), _count : (2 : GoInt) } : T__struct_17),
({ _in : ("-" : GoString), _out : Go.str(), _count : (0 : GoInt) } : T__struct_17),
({ _in : ("-" : GoString), _out : ("-" : GoString), _count : (1 : GoInt) } : T__struct_17),
({ _in : ("-" : GoString), _out : ("----------" : GoString), _count : (10 : GoInt) } : T__struct_17),
({ _in : ("abc " : GoString), _out : ("abc abc abc " : GoString), _count : (3 : GoInt) } : T__struct_17),
({ _in : (((0 : GoInt32) : GoRune) : GoString), _out : (new Slice<GoUInt8>((65536 : GoInt).toBasic(), 0, ...[for (i in 0 ... (65536 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString), _count : (65536 : GoInt) } : T__struct_17),
({ _in : _longString, _out : _longString + _longString, _count : (2 : GoInt) } : T__struct_17)) : Slice<T__struct_17>);
/**
    
    
    
**/
var runesTests = (new Slice<T__struct_19>(0, 0, ({ _in : Go.str(), _out : (new Slice<GoInt32>(0, 0) : Slice<GoInt32>), _lossy : false } : T__struct_19), ({ _in : (" " : GoString), _out : (new Slice<GoInt32>(0, 0, (32 : GoInt32)) : Slice<GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("ABC" : GoString), _out : (new Slice<GoInt32>(0, 0, (65 : GoInt32), (66 : GoInt32), (67 : GoInt32)) : Slice<GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("abc" : GoString), _out : (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), _lossy : false } : T__struct_19), ({ _in : ("日本語" : GoString), _out : (new Slice<GoInt32>(0, 0, (26085 : GoInt32), (26412 : GoInt32), (35486 : GoInt32)) : Slice<GoInt32>), _lossy : false } : T__struct_19), ({ _in : Go.str("ab", 128, "c"), _out : (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), _lossy : true } : T__struct_19), ({ _in : Go.str("ab", 192, "c"), _out : (new Slice<GoInt32>(0, 0, (97 : GoInt32), (98 : GoInt32), (65533 : GoInt32), (99 : GoInt32)) : Slice<GoInt32>), _lossy : true } : T__struct_19)) : Slice<T__struct_19>);
/**
    
    
    
**/
var unreadRuneErrorTests = (new Slice<T__struct_20>(0, 0, ({ _name : ("Read" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.read((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>));
    } } : T__struct_20), ({ _name : ("ReadByte" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.readByte();
    } } : T__struct_20), ({ _name : ("UnreadRune" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.unreadRune();
    } } : T__struct_20), ({ _name : ("Seek" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.seek(("0" : GoInt64), (1 : GoInt));
    } } : T__struct_20), ({ _name : ("WriteTo" : GoString), _f : function(_r:Ref<Reader>):Void {
        _r.writeTo(Go.asInterface((Go.setRef((new stdgo.bytes.Bytes.Buffer() : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>)));
    } } : T__struct_20)) : Slice<T__struct_20>);
/**
    
    
    
**/
var replaceTests = (new Slice<T__struct_21>(
0,
0,
({ _in : ("hello" : GoString), _old : ("l" : GoString), _new : ("L" : GoString), _n : (0 : GoInt), _out : ("hello" : GoString) } : T__struct_21),
({ _in : ("hello" : GoString), _old : ("l" : GoString), _new : ("L" : GoString), _n : (-1 : GoInt), _out : ("heLLo" : GoString) } : T__struct_21),
({ _in : ("hello" : GoString), _old : ("x" : GoString), _new : ("X" : GoString), _n : (-1 : GoInt), _out : ("hello" : GoString) } : T__struct_21),
({ _in : Go.str(), _old : ("x" : GoString), _new : ("X" : GoString), _n : (-1 : GoInt), _out : Go.str() } : T__struct_21),
({ _in : ("radar" : GoString), _old : ("r" : GoString), _new : ("<r>" : GoString), _n : (-1 : GoInt), _out : ("<r>ada<r>" : GoString) } : T__struct_21),
({ _in : Go.str(), _old : Go.str(), _new : ("<>" : GoString), _n : (-1 : GoInt), _out : ("<>" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : ("a" : GoString), _new : ("<>" : GoString), _n : (-1 : GoInt), _out : ("b<>n<>n<>" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : ("a" : GoString), _new : ("<>" : GoString), _n : (1 : GoInt), _out : ("b<>nana" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : ("a" : GoString), _new : ("<>" : GoString), _n : (1000 : GoInt), _out : ("b<>n<>n<>" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : ("an" : GoString), _new : ("<>" : GoString), _n : (-1 : GoInt), _out : ("b<><>a" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : ("ana" : GoString), _new : ("<>" : GoString), _n : (-1 : GoInt), _out : ("b<>na" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : Go.str(), _new : ("<>" : GoString), _n : (-1 : GoInt), _out : ("<>b<>a<>n<>a<>n<>a<>" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : Go.str(), _new : ("<>" : GoString), _n : (10 : GoInt), _out : ("<>b<>a<>n<>a<>n<>a<>" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : Go.str(), _new : ("<>" : GoString), _n : (6 : GoInt), _out : ("<>b<>a<>n<>a<>n<>a" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : Go.str(), _new : ("<>" : GoString), _n : (5 : GoInt), _out : ("<>b<>a<>n<>a<>na" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : Go.str(), _new : ("<>" : GoString), _n : (1 : GoInt), _out : ("<>banana" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : ("a" : GoString), _new : ("a" : GoString), _n : (-1 : GoInt), _out : ("banana" : GoString) } : T__struct_21),
({ _in : ("banana" : GoString), _old : ("a" : GoString), _new : ("a" : GoString), _n : (1 : GoInt), _out : ("banana" : GoString) } : T__struct_21),
({ _in : ("☺☻☹" : GoString), _old : Go.str(), _new : ("<>" : GoString), _n : (-1 : GoInt), _out : ("<>☺<>☻<>☹<>" : GoString) } : T__struct_21)) : Slice<T__struct_21>);
/**
    
    
    
**/
var titleTests = (new Slice<StringTest>(
0,
0,
(new StringTest(Go.str(), Go.str()) : StringTest),
(new StringTest(("a" : GoString), ("A" : GoString)) : StringTest),
(new StringTest((" aaa aaa aaa " : GoString), (" Aaa Aaa Aaa " : GoString)) : StringTest),
(new StringTest((" Aaa Aaa Aaa " : GoString), (" Aaa Aaa Aaa " : GoString)) : StringTest),
(new StringTest(("123a456" : GoString), ("123a456" : GoString)) : StringTest),
(new StringTest(("double-blind" : GoString), ("Double-Blind" : GoString)) : StringTest),
(new StringTest(("ÿøû" : GoString), ("Ÿøû" : GoString)) : StringTest),
(new StringTest(("with_underscore" : GoString), ("With_underscore" : GoString)) : StringTest),
(new StringTest(("unicode \u2028 line separator" : GoString), ("Unicode \u2028 Line Separator" : GoString)) : StringTest)) : Slice<StringTest>);
/**
    
    
    
**/
var containsTests = (new Slice<T__struct_22>(
0,
0,
({ _str : ("abc" : GoString), _substr : ("bc" : GoString), _expected : true } : T__struct_22),
({ _str : ("abc" : GoString), _substr : ("bcd" : GoString), _expected : false } : T__struct_22),
({ _str : ("abc" : GoString), _substr : Go.str(), _expected : true } : T__struct_22),
({ _str : Go.str(), _substr : ("a" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxx" : GoString), _substr : ("01" : GoString), _expected : false } : T__struct_22),
({ _str : ("01xxxx" : GoString), _substr : ("01" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx01xx" : GoString), _substr : ("01" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx01" : GoString), _substr : ("01" : GoString), _expected : true } : T__struct_22),
({ _str : (("01xxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("01" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx01" : GoString).__slice__(0, (6 : GoInt)) : GoString), _substr : ("01" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxx" : GoString), _substr : ("012" : GoString), _expected : false } : T__struct_22),
({ _str : ("012xxxx" : GoString), _substr : ("012" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx012xx" : GoString), _substr : ("012" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx012" : GoString), _substr : ("012" : GoString), _expected : true } : T__struct_22),
({ _str : (("012xxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("012" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx012" : GoString).__slice__(0, (7 : GoInt)) : GoString), _substr : ("012" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxx" : GoString), _substr : ("0123" : GoString), _expected : false } : T__struct_22),
({ _str : ("0123xxxx" : GoString), _substr : ("0123" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx0123xx" : GoString), _substr : ("0123" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx0123" : GoString), _substr : ("0123" : GoString), _expected : true } : T__struct_22),
({ _str : (("0123xxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("0123" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123" : GoString).__slice__(0, (8 : GoInt)) : GoString), _substr : ("0123" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxx" : GoString), _substr : ("01234" : GoString), _expected : false } : T__struct_22),
({ _str : ("01234xxxx" : GoString), _substr : ("01234" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx01234xx" : GoString), _substr : ("01234" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx01234" : GoString), _substr : ("01234" : GoString), _expected : true } : T__struct_22),
({ _str : (("01234xxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("01234" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx01234" : GoString).__slice__(0, (9 : GoInt)) : GoString), _substr : ("01234" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxx" : GoString), _substr : ("01234567" : GoString), _expected : false } : T__struct_22),
({ _str : ("01234567xxxx" : GoString), _substr : ("01234567" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx01234567xx" : GoString), _substr : ("01234567" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx01234567" : GoString), _substr : ("01234567" : GoString), _expected : true } : T__struct_22),
({ _str : (("01234567xxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("01234567" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx01234567" : GoString).__slice__(0, (12 : GoInt)) : GoString), _substr : ("01234567" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxx" : GoString), _substr : ("012345678" : GoString), _expected : false } : T__struct_22),
({ _str : ("012345678xxxx" : GoString), _substr : ("012345678" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx012345678xx" : GoString), _substr : ("012345678" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx012345678" : GoString), _substr : ("012345678" : GoString), _expected : true } : T__struct_22),
({ _str : (("012345678xxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("012345678" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx012345678" : GoString).__slice__(0, (13 : GoInt)) : GoString), _substr : ("012345678" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxxxxxxxxx" : GoString), _substr : ("0123456789ABCDEF" : GoString), _expected : false } : T__struct_22),
({ _str : ("0123456789ABCDEFxxxx" : GoString), _substr : ("0123456789ABCDEF" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx0123456789ABCDEFxx" : GoString), _substr : ("0123456789ABCDEF" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx0123456789ABCDEF" : GoString), _substr : ("0123456789ABCDEF" : GoString), _expected : true } : T__struct_22),
({ _str : (("0123456789ABCDEFxxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("0123456789ABCDEF" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123456789ABCDEF" : GoString).__slice__(0, (20 : GoInt)) : GoString), _substr : ("0123456789ABCDEF" : GoString), _expected : false } : T__struct_22),
({ _str : ("xxxxxxxxxxxxxxxxxxxxx" : GoString), _substr : ("0123456789ABCDEFG" : GoString), _expected : false } : T__struct_22),
({ _str : ("0123456789ABCDEFGxxxx" : GoString), _substr : ("0123456789ABCDEFG" : GoString), _expected : true } : T__struct_22),
({ _str : ("xx0123456789ABCDEFGxx" : GoString), _substr : ("0123456789ABCDEFG" : GoString), _expected : true } : T__struct_22),
({ _str : ("xxxx0123456789ABCDEFG" : GoString), _substr : ("0123456789ABCDEFG" : GoString), _expected : true } : T__struct_22),
({ _str : (("0123456789ABCDEFGxxxxx" : GoString).__slice__((1 : GoInt)) : GoString), _substr : ("0123456789ABCDEFG" : GoString), _expected : false } : T__struct_22),
({ _str : (("xxxxx0123456789ABCDEFG" : GoString).__slice__(0, (21 : GoInt)) : GoString), _substr : ("0123456789ABCDEFG" : GoString), _expected : false } : T__struct_22),
({ _str : ("xx01x" : GoString), _substr : ("012" : GoString), _expected : false } : T__struct_22),
({ _str : ("xx0123x" : GoString), _substr : ("01234" : GoString), _expected : false } : T__struct_22),
({ _str : ("xx01234567x" : GoString), _substr : ("012345678" : GoString), _expected : false } : T__struct_22),
({ _str : ("xx0123456789ABCDEFx" : GoString), _substr : ("0123456789ABCDEFG" : GoString), _expected : false } : T__struct_22)) : Slice<T__struct_22>);
/**
    
    
    
**/
var containsAnyTests = (new Slice<T__struct_22>(
0,
0,
({ _str : Go.str(), _substr : Go.str(), _expected : false } : T__struct_22),
({ _str : Go.str(), _substr : ("a" : GoString), _expected : false } : T__struct_22),
({ _str : Go.str(), _substr : ("abc" : GoString), _expected : false } : T__struct_22),
({ _str : ("a" : GoString), _substr : Go.str(), _expected : false } : T__struct_22),
({ _str : ("a" : GoString), _substr : ("a" : GoString), _expected : true } : T__struct_22),
({ _str : ("aaa" : GoString), _substr : ("a" : GoString), _expected : true } : T__struct_22),
({ _str : ("abc" : GoString), _substr : ("xyz" : GoString), _expected : false } : T__struct_22),
({ _str : ("abc" : GoString), _substr : ("xcz" : GoString), _expected : true } : T__struct_22),
({ _str : ("a☺b☻c☹d" : GoString), _substr : ("uvw☻xyz" : GoString), _expected : true } : T__struct_22),
({ _str : ("aRegExp*" : GoString), _substr : (".(|)*+?^$$[]" : GoString), _expected : true } : T__struct_22),
({ _str : (_dots + _dots) + _dots, _substr : (" " : GoString), _expected : false } : T__struct_22)) : Slice<T__struct_22>);
/**
    
    
    
**/
var containsRuneTests = (new Slice<T__struct_23>(0, 0, ({ _str : Go.str(), _r : (97 : GoInt32), _expected : false } : T__struct_23), ({ _str : ("a" : GoString), _r : (97 : GoInt32), _expected : true } : T__struct_23), ({ _str : ("aaa" : GoString), _r : (97 : GoInt32), _expected : true } : T__struct_23), ({ _str : ("abc" : GoString), _r : (121 : GoInt32), _expected : false } : T__struct_23), ({ _str : ("abc" : GoString), _r : (99 : GoInt32), _expected : true } : T__struct_23), ({ _str : ("a☺b☻c☹d" : GoString), _r : (120 : GoInt32), _expected : false } : T__struct_23), ({ _str : ("a☺b☻c☹d" : GoString), _r : (9787 : GoInt32), _expected : true } : T__struct_23), ({ _str : ("aRegExp*" : GoString), _r : (42 : GoInt32), _expected : true } : T__struct_23)) : Slice<T__struct_23>);
/**
    
    
    
**/
var equalFoldTests = (new Slice<T__struct_24>(
0,
0,
({ _s : ("abc" : GoString), _t : ("abc" : GoString), _out : true } : T__struct_24),
({ _s : ("ABcd" : GoString), _t : ("ABcd" : GoString), _out : true } : T__struct_24),
({ _s : ("123abc" : GoString), _t : ("123ABC" : GoString), _out : true } : T__struct_24),
({ _s : ("αβδ" : GoString), _t : ("ΑΒΔ" : GoString), _out : true } : T__struct_24),
({ _s : ("abc" : GoString), _t : ("xyz" : GoString), _out : false } : T__struct_24),
({ _s : ("abc" : GoString), _t : ("XYZ" : GoString), _out : false } : T__struct_24),
({ _s : ("abcdefghijk" : GoString), _t : ("abcdefghijX" : GoString), _out : false } : T__struct_24),
({ _s : ("abcdefghijk" : GoString), _t : ("abcdefghijK" : GoString), _out : true } : T__struct_24),
({ _s : ("abcdefghijK" : GoString), _t : ("abcdefghijK" : GoString), _out : true } : T__struct_24),
({ _s : ("abcdefghijkz" : GoString), _t : ("abcdefghijKy" : GoString), _out : false } : T__struct_24),
({ _s : ("abcdefghijKz" : GoString), _t : ("abcdefghijKy" : GoString), _out : false } : T__struct_24),
({ _s : ("1" : GoString), _t : ("2" : GoString), _out : false } : T__struct_24),
({ _s : ("utf-8" : GoString), _t : ("US-ASCII" : GoString), _out : false } : T__struct_24)) : Slice<T__struct_24>);
/**
    
    
    
**/
var countTests = (new Slice<T__struct_25>(
0,
0,
({ _s : Go.str(), _sep : Go.str(), _num : (1 : GoInt) } : T__struct_25),
({ _s : Go.str(), _sep : ("notempty" : GoString), _num : (0 : GoInt) } : T__struct_25),
({ _s : ("notempty" : GoString), _sep : Go.str(), _num : (9 : GoInt) } : T__struct_25),
({ _s : ("smaller" : GoString), _sep : ("not smaller" : GoString), _num : (0 : GoInt) } : T__struct_25),
({ _s : ("12345678987654321" : GoString), _sep : ("6" : GoString), _num : (2 : GoInt) } : T__struct_25),
({ _s : ("611161116" : GoString), _sep : ("6" : GoString), _num : (3 : GoInt) } : T__struct_25),
({ _s : ("notequal" : GoString), _sep : ("NotEqual" : GoString), _num : (0 : GoInt) } : T__struct_25),
({ _s : ("equal" : GoString), _sep : ("equal" : GoString), _num : (1 : GoInt) } : T__struct_25),
({ _s : ("abc1231231123q" : GoString), _sep : ("123" : GoString), _num : (3 : GoInt) } : T__struct_25),
({ _s : ("11111" : GoString), _sep : ("11" : GoString), _num : (2 : GoInt) } : T__struct_25)) : Slice<T__struct_25>);
/**
    
    
    
**/
private var _cutTests = (new Slice<T__struct_26>(0, 0, ({ _s : ("abc" : GoString), _sep : ("b" : GoString), _before : ("a" : GoString), _after : ("c" : GoString), _found : true } : T__struct_26), ({ _s : ("abc" : GoString), _sep : ("a" : GoString), _before : Go.str(), _after : ("bc" : GoString), _found : true } : T__struct_26), ({ _s : ("abc" : GoString), _sep : ("c" : GoString), _before : ("ab" : GoString), _after : Go.str(), _found : true } : T__struct_26), ({ _s : ("abc" : GoString), _sep : ("abc" : GoString), _before : Go.str(), _after : Go.str(), _found : true } : T__struct_26), ({ _s : ("abc" : GoString), _sep : Go.str(), _before : Go.str(), _after : ("abc" : GoString), _found : true } : T__struct_26), ({ _s : ("abc" : GoString), _sep : ("d" : GoString), _before : ("abc" : GoString), _after : Go.str(), _found : false } : T__struct_26), ({ _s : Go.str(), _sep : ("d" : GoString), _before : Go.str(), _after : Go.str(), _found : false } : T__struct_26), ({ _s : Go.str(), _sep : Go.str(), _before : Go.str(), _after : Go.str(), _found : true } : T__struct_26)) : Slice<T__struct_26>);
/**
    
    
    
**/
private var _cutPrefixTests = (new Slice<T__struct_27>(0, 0, ({ _s : ("abc" : GoString), _sep : ("a" : GoString), _after : ("bc" : GoString), _found : true } : T__struct_27), ({ _s : ("abc" : GoString), _sep : ("abc" : GoString), _after : Go.str(), _found : true } : T__struct_27), ({ _s : ("abc" : GoString), _sep : Go.str(), _after : ("abc" : GoString), _found : true } : T__struct_27), ({ _s : ("abc" : GoString), _sep : ("d" : GoString), _after : ("abc" : GoString), _found : false } : T__struct_27), ({ _s : Go.str(), _sep : ("d" : GoString), _after : Go.str(), _found : false } : T__struct_27), ({ _s : Go.str(), _sep : Go.str(), _after : Go.str(), _found : true } : T__struct_27)) : Slice<T__struct_27>);
/**
    
    
    
**/
private var _cutSuffixTests = (new Slice<T__struct_27>(0, 0, ({ _s : ("abc" : GoString), _sep : ("bc" : GoString), _after : ("a" : GoString), _found : true } : T__struct_27), ({ _s : ("abc" : GoString), _sep : ("abc" : GoString), _after : Go.str(), _found : true } : T__struct_27), ({ _s : ("abc" : GoString), _sep : Go.str(), _after : ("abc" : GoString), _found : true } : T__struct_27), ({ _s : ("abc" : GoString), _sep : ("d" : GoString), _after : ("abc" : GoString), _found : false } : T__struct_27), ({ _s : Go.str(), _sep : ("d" : GoString), _after : Go.str(), _found : false } : T__struct_27), ({ _s : Go.str(), _sep : Go.str(), _after : Go.str(), _found : true } : T__struct_27)) : Slice<T__struct_27>);
/**
    
    
    
**/
private var _benchInputHard = _makeBenchInputHard();
/**
    
    
    
**/
private var _benchInputTorture = (repeat(("ABC" : GoString), (1024 : GoInt)) + ("123" : GoString)) + repeat(("ABC" : GoString), (1024 : GoInt));
/**
    
    
    
**/
private var _benchNeedleTorture = repeat(("ABC" : GoString), (1025 : GoInt));
/**
    
    
    
**/
private var _makeFieldsInput = function():GoString {
        var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_i in 0 ... _x.length.toBasic()) {
            {
                var __switchIndex__ = -1;
                while (true) {
                    {
                        final __value__ = stdgo.math.rand.Rand.intn((10 : GoInt));
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : GoInt)))) {
                            _x[(_i : GoInt)] = (32 : GoUInt8);
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : GoInt)))) {
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
                    };
                    break;
                };
            };
        };
        return (_x : GoString);
    };
/**
    
    
    
**/
private var _makeFieldsInputASCII = function():GoString {
        var _x = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1048576 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_i in 0 ... _x.length.toBasic()) {
            if (stdgo.math.rand.Rand.intn((10 : GoInt)) == ((0 : GoInt))) {
                _x[(_i : GoInt)] = (32 : GoUInt8);
            } else {
                _x[(_i : GoInt)] = (120 : GoUInt8);
            };
        };
        return (_x : GoString);
    };
/**
    
    
    
**/
private var _stringdata = (new Slice<T__struct_7>(0, 0, ({ _name : ("ASCII" : GoString), _data : _makeFieldsInputASCII() } : T__struct_7), ({ _name : ("Mixed" : GoString), _data : _makeFieldsInput() } : T__struct_7)) : Slice<T__struct_7>);
/**
    
    
    
**/
private var _sinkS : GoString = ("" : GoString);
/**
    
    
    
**/
private var _emptyString : GoString = ("" : GoString);
/**
    
    
    
**/
private final _benchmarkString = ("some_text=some☺value" : GoString);
/**
    
    
    
**/
private final _space = ("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : GoString);
/**
    
    
    
**/
private var _stringSink : GoString = ("" : GoString);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.strings_test.Strings_test.T_errWriter_static_extension) class T_errWriter {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter();
    }
}
/**
    
    
    
**/
@:structInit class IndexTest {
    public var _s : GoString = "";
    public var _sep : GoString = "";
    public var _out : GoInt = 0;
    public function new(?_s:GoString, ?_sep:GoString, ?_out:GoInt) {
        if (_s != null) this._s = _s;
        if (_sep != null) this._sep = _sep;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IndexTest(_s, _sep, _out);
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
    // Test case for any function which accepts and returns a single string.
    
    
**/
@:structInit class StringTest {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public function new(?_in:GoString, ?_out:GoString) {
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
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _name : GoString;
    public var _fn : Ref<Builder> -> { var _0 : GoInt; var _1 : Error; };
    public var _n : GoInt;
    public var _want : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _name : GoString;
    public var _fn : () -> Void;
    public var _wantPanic : Bool;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _a : GoString;
    public var _b : GoString;
    public var _i : GoInt;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_3_static_extension) private typedef T__struct_3 = {
    public var _off : GoInt64;
    public var _seek : GoInt;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wantpos : GoInt64;
    public var _readerr : Error;
    public var _seekerr : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_4_static_extension) private typedef T__struct_4 = {
    public var _off : GoInt64;
    public var _n : GoInt;
    public var _want : GoString;
    public var _wanterr : AnyInterface;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_5_static_extension) private typedef T__struct_5 = {
    public var _r : Ref<Replacer>;
    public var _want : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_6_static_extension) private typedef T__struct_6 = {
    public var _in : GoString;
    public var _out : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_7_static_extension) private typedef T__struct_7 = {
    public var _name : GoString;
    public var _data : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_8_static_extension) private typedef T__struct_8 = {
    public var _pat : GoString;
    public var _text : GoString;
    public var _index : GoInt;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_9_static_extension) private typedef T__struct_9 = {
    public var _pattern : GoString;
    public var _bad : GoArray<GoInt>;
    public var _suf : Slice<GoInt>;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_10_static_extension) private typedef T__struct_10 = {
    public var _in : GoString;
    public var _rune : GoInt32;
    public var _want : GoInt;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_11_static_extension) private typedef T__struct_11 = {
    public var _in : GoString;
    public var _repl : GoString;
    public var _out : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_12_static_extension) private typedef T__struct_12 = {
    public var _f : GoString;
    public var _in : GoString;
    public var _arg : GoString;
    public var _out : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_13_static_extension) private typedef T__struct_13 = {
    public var _name : GoString;
    public var _input : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_14_static_extension) private typedef T__struct_14 = {
    public var _f : stdgo.strings_test.Strings_test.T_predicate;
    public var _in : GoString;
    public var _trimOut : GoString;
    public var _leftOut : GoString;
    public var _rightOut : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_15_static_extension) private typedef T__struct_15 = {
    public var _name : GoString;
    public var _trim : (GoString, GoInt32 -> Bool) -> GoString;
    public var _out : GoString;
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
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_16_static_extension) private typedef T__struct_16 = {
    public var _in : GoString;
    public var _f : stdgo.strings_test.Strings_test.T_predicate;
    public var _first : GoInt;
    public var _last : GoInt;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_17>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_17_static_extension) private typedef T__struct_17 = {
    public var _in : GoString;
    public var _out : GoString;
    public var _count : GoInt;
};
class T__struct_18_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_18>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_18_asInterface) class T__struct_18_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_18_static_extension) private typedef T__struct_18 = {
    public var _s : GoString;
    public var _count : GoInt;
    public var _errStr : GoString;
};
class T__struct_19_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_19>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_19_asInterface) class T__struct_19_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_19_static_extension) private typedef T__struct_19 = {
    public var _in : GoString;
    public var _out : Slice<GoInt32>;
    public var _lossy : Bool;
};
class T__struct_20_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_20>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_20_asInterface) class T__struct_20_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_20_static_extension) private typedef T__struct_20 = {
    public var _name : GoString;
    public var _f : Ref<Reader> -> Void;
};
class T__struct_21_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_21>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_21_asInterface) class T__struct_21_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_21_static_extension) private typedef T__struct_21 = {
    public var _in : GoString;
    public var _old : GoString;
    public var _new : GoString;
    public var _n : GoInt;
    public var _out : GoString;
};
class T__struct_22_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_22>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_22_asInterface) class T__struct_22_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_22_static_extension) private typedef T__struct_22 = {
    public var _str : GoString;
    public var _substr : GoString;
    public var _expected : Bool;
};
class T__struct_23_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_23>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_23_asInterface) class T__struct_23_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_23_static_extension) private typedef T__struct_23 = {
    public var _str : GoString;
    public var _r : GoInt32;
    public var _expected : Bool;
};
class T__struct_24_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_24>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_24_asInterface) class T__struct_24_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_24_static_extension) private typedef T__struct_24 = {
    public var _s : GoString;
    public var _t : GoString;
    public var _out : Bool;
};
class T__struct_25_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_25>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_25_asInterface) class T__struct_25_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_25_static_extension) private typedef T__struct_25 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _num : GoInt;
};
class T__struct_26_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_26>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_26_asInterface) class T__struct_26_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_26_static_extension) private typedef T__struct_26 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _before : GoString;
    public var _after : GoString;
    public var _found : Bool;
};
class T__struct_27_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_27>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T__struct_27_asInterface) class T__struct_27_static_extension {

}
@:local @:using(stdgo.strings_test.Strings_test.T__struct_27_static_extension) private typedef T__struct_27 = {
    public var _s : GoString;
    public var _sep : GoString;
    public var _after : GoString;
    public var _found : Bool;
};
private function _check(_t:Ref<stdgo.testing.Testing.T>, _b:Ref<Builder>, _want:GoString):Void {
        _t.helper();
        var _got:GoString = (_b.string() : GoString);
        if (_got != (_want)) {
            _t.errorf(("String: got %#q; want %#q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            return;
        };
        {
            var _n:GoInt = _b.len();
            if (_n != ((_got.length))) {
                _t.errorf(("Len: got %d; but len(String()) is %d" : GoString), Go.toInterface(_n), Go.toInterface((_got.length)));
            };
        };
        {
            var _n:GoInt = _b.cap();
            if (_n < (_got.length)) {
                _t.errorf(("Cap: got %d; but len(String()) is %d" : GoString), Go.toInterface(_n), Go.toInterface((_got.length)));
            };
        };
    }
function testBuilder(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b:Builder = ({} : Builder);
        _check(_t, (Go.setRef(_b) : Ref<Builder>), Go.str());
        var __tmp__ = _b.writeString(("hello" : GoString)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_err != null) || (_n != (5 : GoInt))) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("hello" : GoString));
        {
            _err = _b.writeByte((32 : GoUInt8));
            if (_err != null) {
                _t.errorf(("WriteByte: %s" : GoString), Go.toInterface(_err));
            };
        };
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("hello " : GoString));
        {
            var __tmp__ = _b.writeString(("world" : GoString));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_err != null) || (_n != (5 : GoInt))) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("hello world" : GoString));
    }
function testBuilderString(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b:Builder = ({} : Builder);
        _b.writeString(("alpha" : GoString));
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("alpha" : GoString));
        var _s1:GoString = (_b.string() : GoString);
        _b.writeString(("beta" : GoString));
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("alphabeta" : GoString));
        var _s2:GoString = (_b.string() : GoString);
        _b.writeString(("gamma" : GoString));
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("alphabetagamma" : GoString));
        var _s3:GoString = (_b.string() : GoString);
        {
            var _want:GoString = ("alpha" : GoString);
            if (_s1 != (_want)) {
                _t.errorf(("first String result is now %q; want %q" : GoString), Go.toInterface(_s1), Go.toInterface(_want));
            };
        };
        {
            var _want:GoString = ("alphabeta" : GoString);
            if (_s2 != (_want)) {
                _t.errorf(("second String result is now %q; want %q" : GoString), Go.toInterface(_s2), Go.toInterface(_want));
            };
        };
        {
            var _want:GoString = ("alphabetagamma" : GoString);
            if (_s3 != (_want)) {
                _t.errorf(("third String result is now %q; want %q" : GoString), Go.toInterface(_s3), Go.toInterface(_want));
            };
        };
    }
function testBuilderReset(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b:Builder = ({} : Builder);
        _check(_t, (Go.setRef(_b) : Ref<Builder>), Go.str());
        _b.writeString(("aaa" : GoString));
        var _s:GoString = (_b.string() : GoString);
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("aaa" : GoString));
        _b.reset();
        _check(_t, (Go.setRef(_b) : Ref<Builder>), Go.str());
        _b.writeString(("bbb" : GoString));
        _check(_t, (Go.setRef(_b) : Ref<Builder>), ("bbb" : GoString));
        {
            var _want:GoString = ("aaa" : GoString);
            if (_s != (_want)) {
                _t.errorf(("previous String result changed after Reset: got %q; want %q" : GoString), Go.toInterface(_s), Go.toInterface(_want));
            };
        };
    }
function testBuilderGrow(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testBuilderGrow" + " skip function");
        return;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (_0 => _growLen in (new Slice<GoInt>(0, 0, (0 : GoInt), (100 : GoInt), (1000 : GoInt), (10000 : GoInt), (100000 : GoInt)) : Slice<GoInt>)) {
                var _p = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(0, 0, (97 : GoUInt8)) : Slice<GoUInt8>), _growLen);
                var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
                    var _b:Builder = ({} : Builder);
                    _b.grow(_growLen);
                    if (_b.cap() < _growLen) {
                        _t.fatalf(("growLen=%d: Cap() is lower than growLen" : GoString), Go.toInterface(_growLen));
                    };
                    _b.write(_p);
                    if ((_b.string() : GoString) != ((_p : GoString))) {
                        _t.fatalf(("growLen=%d: bad data written after Grow" : GoString), Go.toInterface(_growLen));
                    };
                });
                var _wantAllocs:GoInt = (1 : GoInt);
                if (_growLen == ((0 : GoInt))) {
                    _wantAllocs = (0 : GoInt);
                };
                {
                    var _0:GoInt = (_allocs : GoInt), _1:GoInt = _wantAllocs, _w:GoInt = _1, _g:GoInt = _0;
                    if (_g != (_w)) {
                        _t.errorf(("growLen=%d: got %d allocs during Write; want %v" : GoString), Go.toInterface(_growLen), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
            };
            var _a:Builder = ({} : Builder);
            var _n:GoInt = (-1 : GoInt);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_r == null) {
                            _t.errorf(("a.Grow(%d) should panic()" : GoString), Go.toInterface(_n));
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testBuilderWrite2(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        for (_0 => _tt in (new Slice<T__struct_0>(0, 0, ({ _name : ("Write" : GoString), _fn : function(_b:Ref<Builder>):{ var _0 : GoInt; var _1 : Error; } {
            return _b.write((("hello 世界" : GoString) : Slice<GoByte>));
        }, _n : (("hello 世界" : GoString).length), _want : ("hello 世界" : GoString) } : T__struct_0), ({ _name : ("WriteRune" : GoString), _fn : function(_b:Ref<Builder>):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeRune((97 : GoInt32));
        }, _n : (1 : GoInt), _want : ("a" : GoString) } : T__struct_0), ({ _name : ("WriteRuneWide" : GoString), _fn : function(_b:Ref<Builder>):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeRune((19990 : GoInt32));
        }, _n : (3 : GoInt), _want : ("世" : GoString) } : T__struct_0), ({ _name : ("WriteString" : GoString), _fn : function(_b:Ref<Builder>):{ var _0 : GoInt; var _1 : Error; } {
            return _b.writeString(("hello 世界" : GoString));
        }, _n : (("hello 世界" : GoString).length), _want : ("hello 世界" : GoString) } : T__struct_0)) : Slice<T__struct_0>)) {
            _t.run(_tt._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _b:Builder = ({} : Builder);
                var __tmp__ = _tt._fn((Go.setRef(_b) : Ref<Builder>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("first call: got %s" : GoString), Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("first call: got n=%d; want %d" : GoString), Go.toInterface(_n), Go.toInterface(_tt._n));
                };
                _check(_t, (Go.setRef(_b) : Ref<Builder>), _tt._want);
                {
                    var __tmp__ = _tt._fn((Go.setRef(_b) : Ref<Builder>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("second call: got %s" : GoString), Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("second call: got n=%d; want %d" : GoString), Go.toInterface(_n), Go.toInterface(_tt._n));
                };
                _check(_t, (Go.setRef(_b) : Ref<Builder>), _tt._want + _tt._want);
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
        _check(_t, (Go.setRef(_b) : Ref<Builder>), Go.str("a", 0));
    }
function testBuilderAllocs(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testBuilderAllocs" + " skip function");
        return;
        var _n:GoFloat64 = stdgo.testing.Testing.allocsPerRun((10000 : GoInt), function():Void {
            var _b:Builder = ({} : Builder);
            _b.grow((5 : GoInt));
            _b.writeString(("abcde" : GoString));
            (_b.string() : GoString);
        });
        if (_n != (1 : GoFloat64)) {
            _t.errorf(("Builder allocs = %v; want 1" : GoString), Go.toInterface(_n));
        };
    }
function testBuilderCopyPanic(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testBuilderCopyPanic" + " skip function");
        return;
        var _tests = (new Slice<T__struct_1>(
0,
0,
({ _name : ("String" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.writeByte((120 : GoUInt8));
            var _b:Builder = _a.__copy__();
            (_b.string() : GoString);
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Len" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.writeByte((120 : GoUInt8));
            var _b:Builder = _a.__copy__();
            _b.len();
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Cap" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.writeByte((120 : GoUInt8));
            var _b:Builder = _a.__copy__();
            _b.cap();
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Reset" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.writeByte((120 : GoUInt8));
            var _b:Builder = _a.__copy__();
            _b.reset();
            _b.writeByte((121 : GoUInt8));
        }, _wantPanic : false } : T__struct_1),
({ _name : ("Write" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.write((("x" : GoString) : Slice<GoByte>));
            var _b:Builder = _a.__copy__();
            _b.write((("y" : GoString) : Slice<GoByte>));
        }, _wantPanic : true } : T__struct_1),
({ _name : ("WriteByte" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.writeByte((120 : GoUInt8));
            var _b:Builder = _a.__copy__();
            _b.writeByte((121 : GoUInt8));
        }, _wantPanic : true } : T__struct_1),
({ _name : ("WriteString" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.writeString(("x" : GoString));
            var _b:Builder = _a.__copy__();
            _b.writeString(("y" : GoString));
        }, _wantPanic : true } : T__struct_1),
({ _name : ("WriteRune" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.writeRune((120 : GoInt32));
            var _b:Builder = _a.__copy__();
            _b.writeRune((121 : GoInt32));
        }, _wantPanic : true } : T__struct_1),
({ _name : ("Grow" : GoString), _fn : function():Void {
            var _a:Builder = ({} : Builder);
            _a.grow((1 : GoInt));
            var _b:Builder = _a.__copy__();
            _b.grow((2 : GoInt));
        }, _wantPanic : true } : T__struct_1)) : Slice<T__struct_1>);
        for (_0 => _tt in _tests) {
            var _didPanic = new Chan<Bool>(0, () -> false);
            Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
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
                        _tt._fn();
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
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is AnyInterfaceData)) {
                            exe = Go.toInterface(__exception__.message);
                        };
                        Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (Go.recover_exception != null) throw Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            {
                var _got:Bool = _didPanic.__get__();
                if (_got != (_tt._wantPanic)) {
                    _t.errorf(("%s: panicked = %v; want %v" : GoString), Go.toInterface(_tt._name), Go.toInterface(_got), Go.toInterface(_tt._wantPanic));
                };
            };
        };
    }
function testBuilderWriteInvalidRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _r in (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32)) : Slice<GoInt32>)) {
            var _b:Builder = ({} : Builder);
            _b.writeRune(_r);
            _check(_t, (Go.setRef(_b) : Ref<Builder>), ("�" : GoString));
        };
    }
private function _benchmarkBuilder(_b:Ref<stdgo.testing.Testing.B>, _f:(_b:Ref<stdgo.testing.Testing.B>, _numWrite:GoInt, _grow:Bool) -> Void):Void {
        _b.run(("1Write_NoGrow" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (1 : GoInt), false);
        });
        _b.run(("3Write_NoGrow" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            _f(_b, (3 : GoInt), false);
        });
        _b.run(("3Write_Grow" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
        var _cloneTests:Slice<GoString> = (new Slice<GoString>(0, 0, Go.str(), stdgo.strings.Strings.clone(Go.str()), (stdgo.strings.Strings.repeat(("a" : GoString), (42 : GoInt)).__slice__(0, (0 : GoInt)) : GoString), ("short" : GoString), stdgo.strings.Strings.repeat(("a" : GoString), (42 : GoInt))) : Slice<GoString>);
        for (_0 => _input in _cloneTests) {
            var _clone:GoString = stdgo.strings.Strings.clone(_input);
            if (_clone != (_input)) {
                _t.errorf(("Clone(%q) = %q; want %q" : GoString), Go.toInterface(_input), Go.toInterface(_clone), Go.toInterface(_input));
            };
            if ((_input.length != (0 : GoInt)) && (stdgo.unsafe.Unsafe.stringData(_clone) == stdgo.unsafe.Unsafe.stringData(_input))) {
                _t.errorf(("Clone(%q) return value should not reference inputs backing memory." : GoString), Go.toInterface(_input));
            };
            if ((_input.length == (0 : GoInt)) && (stdgo.unsafe.Unsafe.stringData(_clone) != stdgo.unsafe.Unsafe.stringData(_emptyString))) {
                _t.errorf(("Clone(%#v) return value should be equal to empty string." : GoString), Go.toInterface(stdgo.unsafe.Unsafe.stringData(_input)));
            };
        };
    }
function benchmarkClone(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = stdgo.strings.Strings.repeat(("a" : GoString), (42 : GoInt));
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
                _t.errorf(("Compare(%q, %q) = %v" : GoString), Go.toInterface(_tt._a), Go.toInterface(_tt._b), Go.toInterface(_cmp));
            };
        };
    }
function testCompareIdenticalString(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _s:GoString = ("Hello Gophers!" : GoString);
        if (compare(_s, _s) != ((0 : GoInt))) {
            _t.error(Go.toInterface(("s != s" : GoString)));
        };
        if (compare(_s, (_s.__slice__(0, (1 : GoInt)) : GoString)) != ((1 : GoInt))) {
            _t.error(Go.toInterface(("s > s[:1] failed" : GoString)));
        };
    }
function testCompareStrings(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testCompareStrings" + " skip function");
        return;
        var _unsafeString = function(_b:Slice<GoByte>):GoString {
            return (stdgo.unsafe.Unsafe.string(stdgo.unsafe.Unsafe.sliceData(_b), (_b.length)) : GoString);
        };
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
        var _lastLen:GoInt = (0 : GoInt);
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
            var _0:GoString = _unsafeString(_a), _1:GoString = _unsafeString(_b), _sb:GoString = _1, _sa:GoString = _0;
            var _cmp:GoInt = compare((_sa.__slice__(0, _len) : GoString), (_sb.__slice__(0, _len) : GoString));
            if (_cmp != ((0 : GoInt))) {
                _t.errorf(("CompareIdentical(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
            };
            if (_len > (0 : GoInt)) {
                _cmp = compare((_sa.__slice__(0, _len - (1 : GoInt)) : GoString), (_sb.__slice__(0, _len) : GoString));
                if (_cmp != ((-1 : GoInt))) {
                    _t.errorf(("CompareAshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
                };
                _cmp = compare((_sa.__slice__(0, _len) : GoString), (_sb.__slice__(0, _len - (1 : GoInt)) : GoString));
                if (_cmp != ((1 : GoInt))) {
                    _t.errorf(("CompareBshorter(%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_cmp));
                };
            };
            {
                var _k:GoInt = _lastLen;
                Go.cfor(_k < _len, _k++, {
                    _b[(_k : GoInt)] = _a[(_k : GoInt)] - (1 : GoUInt8);
                    _cmp = compare(_unsafeString((_a.__slice__(0, _len) : Slice<GoUInt8>)), _unsafeString((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                    if (_cmp != ((1 : GoInt))) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    _b[(_k : GoInt)] = _a[(_k : GoInt)] + (1 : GoUInt8);
                    _cmp = compare(_unsafeString((_a.__slice__(0, _len) : Slice<GoUInt8>)), _unsafeString((_b.__slice__(0, _len) : Slice<GoUInt8>)));
                    if (_cmp != ((-1 : GoInt))) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : GoString), Go.toInterface(_len), Go.toInterface(_k), Go.toInterface(_cmp));
                    };
                    _b[(_k : GoInt)] = _a[(_k : GoInt)];
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
                stdgo.fmt.Fmt.fprintf(Go.asInterface((Go.setRef(_b) : Ref<Builder>)), ("%d..." : GoString), Go.toInterface(_i));
            });
        };
        _b.writeString(("ignition" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface((_b.string() : GoString)));
    }
function exampleCompare():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.compare(("a" : GoString), ("b" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.compare(("a" : GoString), ("a" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.compare(("b" : GoString), ("a" : GoString))));
    }
function exampleContains():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(("seafood" : GoString), ("foo" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(("seafood" : GoString), ("bar" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(("seafood" : GoString), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.contains(Go.str(), Go.str())));
    }
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("team" : GoString), ("i" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("fail" : GoString), ("ui" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("ure" : GoString), ("ui" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("failure" : GoString), ("ui" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(("foo" : GoString), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsAny(Go.str(), Go.str())));
    }
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsRune(("aardvark" : GoString), (97 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.containsRune(("timeout" : GoString), (97 : GoInt32))));
    }
function exampleCount():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.count(("cheese" : GoString), ("e" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.count(("five" : GoString), Go.str())));
    }
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.strings.Strings.cut(_s, _sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show(("Gopher" : GoString), ("Go" : GoString));
        _show(("Gopher" : GoString), ("ph" : GoString));
        _show(("Gopher" : GoString), ("er" : GoString));
        _show(("Gopher" : GoString), ("Badger" : GoString));
    }
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.equalFold(("Go" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.equalFold(("AB" : GoString), ("ab" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.equalFold(("ß" : GoString), ("ss" : GoString))));
    }
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.strings.Strings.fields(("  foo bar  baz   " : GoString))));
    }
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.strings.Strings.fieldsFunc(("  foo1;bar2,baz3..." : GoString), _f)));
    }
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : GoString), ("Go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : GoString), ("C" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasPrefix(("Gopher" : GoString), Go.str())));
    }
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), ("O" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), ("Ami" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.hasSuffix(("Amigo" : GoString), Go.str())));
    }
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.index(("chicken" : GoString), ("ken" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.index(("chicken" : GoString), ("dmr" : GoString))));
    }
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, 世界" : GoString), _f)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexFunc(("Hello, world" : GoString), _f)));
    }
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexAny(("chicken" : GoString), ("aeiouy" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexAny(("crwth" : GoString), ("aeiouy" : GoString))));
    }
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : GoString), (103 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexByte(("gophers" : GoString), (104 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexByte(("golang" : GoString), (120 : GoUInt8))));
    }
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : GoString), (107 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.indexRune(("chicken" : GoString), (100 : GoInt32))));
    }
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.index(("go gopher" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndex(("go gopher" : GoString), ("rodent" : GoString))));
    }
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : GoString), ("go" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : GoString), ("rodent" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexAny(("go gopher" : GoString), ("fail" : GoString))));
    }
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : GoString), (108 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : GoString), (111 : GoUInt8))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexByte(("Hello, world" : GoString), (120 : GoUInt8))));
    }
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go 123" : GoString), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("123 go" : GoString), stdgo.unicode.Unicode.isNumber)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.lastIndexFunc(("go" : GoString), stdgo.unicode.Unicode.isNumber)));
    }
function exampleJoin():Void {
        var _s = (new Slice<GoString>(0, 0, ("foo" : GoString), ("bar" : GoString), ("baz" : GoString)) : Slice<GoString>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.join(_s, (", " : GoString))));
    }
function exampleRepeat():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("ba" : GoString) + stdgo.strings.Strings.repeat(("na" : GoString), (2 : GoInt))));
    }
function exampleReplace():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : GoString), ("k" : GoString), ("ky" : GoString), (2 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.replace(("oink oink oink" : GoString), ("oink" : GoString), ("moo" : GoString), (-1 : GoInt))));
    }
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.replaceAll(("oink oink oink" : GoString), ("oink" : GoString), ("moo" : GoString))));
    }
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split(("a,b,c" : GoString), ("," : GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split(("a man a plan a canal panama" : GoString), ("a " : GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split((" xyz " : GoString), Go.str())));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.split(Go.str(), ("Bernardo O\'Higgins" : GoString))));
    }
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.splitN(("a,b,c" : GoString), ("," : GoString), (2 : GoInt))));
        var _z = stdgo.strings.Strings.splitN(("a,b,c" : GoString), ("," : GoString), (0 : GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : GoString), Go.toInterface(_z), Go.toInterface(_z == null));
    }
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.splitAfter(("a,b,c" : GoString), ("," : GoString))));
    }
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.strings.Strings.splitAfterN(("a,b,c" : GoString), ("," : GoString), (2 : GoInt))));
    }
function exampleTitle():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.title(("her royal highness" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.title(("loud noises" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.title(("хлеб" : GoString))));
    }
function exampleToTitle():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitle(("her royal highness" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitle(("loud noises" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitle(("хлеб" : GoString))));
    }
function exampleToTitleSpecial():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toTitleSpecial(stdgo.unicode.Unicode.turkishCase, ("dünyanın ilk borsa yapısı Aizonai kabul edilir" : GoString))));
    }
function exampleMap():Void {
        var _rot13:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if ((_r >= (65 : GoInt32)) && (_r <= (90 : GoInt32))) {
                return (65 : GoInt32) + (((_r - (65 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
            } else if ((_r >= (97 : GoInt32)) && (_r <= (122 : GoInt32))) {
                return (97 : GoInt32) + (((_r - (97 : GoInt32)) + (13 : GoInt32)) % (26 : GoInt32));
            };
            return _r;
        };
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.map(_rot13, ("\'Twas brillig and the slithy gopher..." : GoString))));
    }
function exampleNewReplacer():Void {
        var _r = stdgo.strings.Strings.newReplacer(("<" : GoString), ("&lt;" : GoString), (">" : GoString), ("&gt;" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_r.replace(("This is <b>HTML</b>!" : GoString))));
    }
function exampleToUpper():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toUpper(("Gopher" : GoString))));
    }
function exampleToUpperSpecial():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toUpperSpecial(stdgo.unicode.Unicode.turkishCase, ("örnek iş" : GoString))));
    }
function exampleToLower():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toLower(("Gopher" : GoString))));
    }
function exampleToLowerSpecial():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.toLowerSpecial(stdgo.unicode.Unicode.turkishCase, ("Önnek İş" : GoString))));
    }
function exampleTrim():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trim(("¡¡¡Hello, Gophers!!!" : GoString), ("!¡" : GoString))));
    }
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strings.Strings.trimSpace((" \t\n Hello, Gophers \n\t\r\n" : GoString))));
    }
function exampleTrimPrefix():Void {
        var _s:GoString = ("¡¡¡Hello, Gophers!!!" : GoString);
        _s = stdgo.strings.Strings.trimPrefix(_s, ("¡¡¡Hello, " : GoString));
        _s = stdgo.strings.Strings.trimPrefix(_s, ("¡¡¡Howdy, " : GoString));
        stdgo.fmt.Fmt.print(Go.toInterface(_s));
    }
function exampleTrimSuffix():Void {
        var _s:GoString = ("¡¡¡Hello, Gophers!!!" : GoString);
        _s = stdgo.strings.Strings.trimSuffix(_s, (", Gophers!!!" : GoString));
        _s = stdgo.strings.Strings.trimSuffix(_s, (", Marmots!!!" : GoString));
        stdgo.fmt.Fmt.print(Go.toInterface(_s));
    }
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimFunc(("¡¡¡Hello, Gophers!!!" : GoString), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimLeft(("¡¡¡Hello, Gophers!!!" : GoString), ("!¡" : GoString))));
    }
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimLeftFunc(("¡¡¡Hello, Gophers!!!" : GoString), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimRight(("¡¡¡Hello, Gophers!!!" : GoString), ("!¡" : GoString))));
    }
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.print(Go.toInterface(stdgo.strings.Strings.trimRightFunc(("¡¡¡Hello, Gophers!!!" : GoString), function(_r:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_r) && !stdgo.unicode.Unicode.isNumber(_r);
        })));
    }
function testReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("0123456789" : GoString));
        var _tests = (new Slice<T__struct_3>(
0,
0,
({ _off : ("0" : GoInt64), _seek : (0 : GoInt), _n : (20 : GoInt), _want : ("0123456789" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_3),
({ _off : ("1" : GoInt64), _seek : (0 : GoInt), _n : (1 : GoInt), _want : ("1" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_3),
({ _off : ("1" : GoInt64), _seek : (1 : GoInt), _n : (2 : GoInt), _want : ("34" : GoString), _wantpos : ("3" : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_3),
({ _off : ("-1" : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("strings.Reader.Seek: negative position" : GoString) } : T__struct_3),
({ _off : ("8589934592" : GoInt64), _seek : (0 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : ("8589934592" : GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : GoString) } : T__struct_3),
({ _off : ("1" : GoInt64), _seek : (1 : GoInt), _n : (0 : GoInt), _want : ("" : GoString), _wantpos : ("8589934593" : GoInt64), _readerr : stdgo.io.Io.eof, _seekerr : ("" : GoString) } : T__struct_3),
({ _off : (0 : GoInt64), _seek : (0 : GoInt), _n : (5 : GoInt), _want : ("01234" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_3),
({ _off : (0 : GoInt64), _seek : (1 : GoInt), _n : (5 : GoInt), _want : ("56789" : GoString), _wantpos : (0 : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_3),
({ _off : ("-1" : GoInt64), _seek : (2 : GoInt), _n : (1 : GoInt), _want : ("9" : GoString), _wantpos : ("9" : GoInt64), _readerr : (null : Error), _seekerr : ("" : GoString) } : T__struct_3)) : Slice<T__struct_3>);
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
        var _r = stdgo.strings.Strings.newReader(("0123456789" : GoString));
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
        var _r = stdgo.strings.Strings.newReader(("0123456789" : GoString));
        var _tests = (new Slice<T__struct_4>(0, 0, ({ _off : ("0" : GoInt64), _n : (10 : GoInt), _want : ("0123456789" : GoString), _wanterr : (null : AnyInterface) } : T__struct_4), ({ _off : ("1" : GoInt64), _n : (10 : GoInt), _want : ("123456789" : GoString), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_4), ({ _off : ("1" : GoInt64), _n : (9 : GoInt), _want : ("123456789" : GoString), _wanterr : (null : AnyInterface) } : T__struct_4), ({ _off : ("11" : GoInt64), _n : (10 : GoInt), _want : Go.str(), _wanterr : Go.toInterface(stdgo.io.Io.eof) } : T__struct_4), ({ _off : ("0" : GoInt64), _n : (0 : GoInt), _want : Go.str(), _wanterr : (null : AnyInterface) } : T__struct_4), ({ _off : ("-1" : GoInt64), _n : (0 : GoInt), _want : Go.str(), _wanterr : Go.toInterface(("strings.Reader.ReadAt: negative offset" : GoString)) } : T__struct_4)) : Slice<T__struct_4>);
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
        var _r = stdgo.strings.Strings.newReader(("0123456789" : GoString));
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _wg.add((1 : GoInt));
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
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
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is AnyInterfaceData)) {
                                exe = Go.toInterface(__exception__.message);
                            };
                            Go.recover_exception = exe;
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
        var _r = stdgo.strings.Strings.newReader(Go.str());
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                _wg.add((2 : GoInt));
                Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
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
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is AnyInterfaceData)) {
                                exe = Go.toInterface(__exception__.message);
                            };
                            Go.recover_exception = exe;
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
                                if (Go.recover_exception != null) throw Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is AnyInterfaceData)) {
                                exe = Go.toInterface(__exception__.message);
                            };
                            Go.recover_exception = exe;
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
function testWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (("0123456789" : GoString).length), _i++, {
                var _s:GoString = (("0123456789" : GoString).__slice__(_i) : GoString);
                var _r = stdgo.strings.Strings.newReader(_s);
                var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                var __tmp__ = _r.writeTo(Go.asInterface((Go.setRef(_b) : Ref<stdgo.bytes.Bytes.Buffer>))), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                {
                    var _expect:GoInt64 = (_s.length : GoInt64);
                    if (_n != (_expect)) {
                        _t.errorf(("got %v; want %v" : GoString), Go.toInterface(_n), Go.toInterface(_expect));
                    };
                };
                if (_err != null) {
                    _t.errorf(("for length %d: got error = %v; want nil" : GoString), Go.toInterface((_s.length)), Go.toInterface(_err));
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
/**
    // tests that Len is affected by reads, but Size is not.
**/
function testReaderLenSize(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testReaderLenSize" + " skip function");
        return;
        var _r = stdgo.strings.Strings.newReader(("abc" : GoString));
        stdgo.io.Io.copyN(stdgo.io.Io.discard, Go.asInterface(_r), ("1" : GoInt64));
        if (_r.len() != ((2 : GoInt))) {
            _t.errorf(("Len = %d; want 2" : GoString), Go.toInterface(_r.len()));
        };
        if (_r.size() != (("3" : GoInt64))) {
            _t.errorf(("Size = %d; want 3" : GoString), Go.toInterface(_r.size()));
        };
    }
function testReaderReset(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("世界" : GoString));
        {
            var __tmp__ = _r.readRune(), _0:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1, _err:Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(("ReadRune: unexpected error: %v" : GoString), Go.toInterface(_err));
            };
        };
        {};
        _r.reset(("abcdef" : GoString));
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
            var _l:GoInt = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).len();
            if (_l != ((0 : GoInt))) {
                _t.errorf(("Len: got %d, want 0" : GoString), Go.toInterface(_l));
            };
        };
        {
            var __tmp__ = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).readAt((null : Slice<GoUInt8>), ("11" : GoInt64)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).readByte(), _b:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
            if ((_b != (0 : GoUInt8)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : GoString), Go.toInterface(_b), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).readRune(), _ch:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:Error = __tmp__._2;
            if (((_ch != (0 : GoInt32)) || (_size != (0 : GoInt))) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : GoString), Go.toInterface(_ch), Go.toInterface(_size), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).seek(("11" : GoInt64), (0 : GoInt)), _offset:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if ((_offset != ("11" : GoInt64)) || (_err != null)) {
                _t.errorf(("Seek: got %d, %v; want 11, nil" : GoString), Go.toInterface(_offset), Go.toInterface(_err));
            };
        };
        {
            var _s:GoInt64 = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).size();
            if (_s != (("0" : GoInt64))) {
                _t.errorf(("Size: got %d, want 0" : GoString), Go.toInterface(_s));
            };
        };
        if ((Go.setRef((new Reader() : Reader)) : Ref<Reader>).unreadByte() == null) {
            _t.errorf(("UnreadByte: got nil, want error" : GoString));
        };
        if ((Go.setRef((new Reader() : Reader)) : Ref<Reader>).unreadRune() == null) {
            _t.errorf(("UnreadRune: got nil, want error" : GoString));
        };
        {
            var __tmp__ = (Go.setRef((new Reader() : Reader)) : Ref<Reader>).writeTo(stdgo.io.Io.discard), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != ("0" : GoInt64)) || (_err != null)) {
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
/**
    // The http package's old HTML escaping function.
**/
private function _oldHTMLEscape(_s:GoString):GoString {
        _s = replace(_s, ("&" : GoString), ("&amp;" : GoString), (-1 : GoInt));
        _s = replace(_s, ("<" : GoString), ("&lt;" : GoString), (-1 : GoInt));
        _s = replace(_s, (">" : GoString), ("&gt;" : GoString), (-1 : GoInt));
        _s = replace(_s, ("\"" : GoString), ("&quot;" : GoString), (-1 : GoInt));
        _s = replace(_s, ("\'" : GoString), ("&apos;" : GoString), (-1 : GoInt));
        return _s;
    }
/**
    
    
    
**/
@:structInit class T_testReplacer_0___localname___testCase {
    public var _r : Ref<Replacer> = (null : Ref<Replacer>);
    public var _in : GoString = "";
    public var _out : GoString = "";
    public function new(?_r:Ref<Replacer>, ?_in:GoString, ?_out:GoString) {
        if (_r != null) this._r = _r;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testReplacer_0___localname___testCase(_r, _in, _out);
    }
}
/**
    // TestReplacer tests the replacer implementations.
**/
function testReplacer(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testReplacer" + " skip function");
        return;
        {};
        var _testCases:Slice<T_testReplacer_0___localname___testCase> = (null : Slice<stdgo.strings_test.Strings_test.T_testReplacer_0___localname___testCase>);
        var _str:GoUInt8 -> GoString = function(_b:GoByte):GoString {
            return ((new Slice<GoUInt8>(0, 0, _b) : Slice<GoUInt8>) : GoString);
        };
        var _s:Slice<GoString> = (null : Slice<GoString>);
        _s = (null : Slice<GoString>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                _s = _s.__appendref__(_str((_i : GoByte)), _str((_i + (1 : GoInt) : GoByte)));
            });
        };
        var _inc = newReplacer(..._s.__toArray__());
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_capitalLetters, ("brad" : GoString), ("BrAd" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_capitalLetters, repeat(("a" : GoString), (32891 : GoInt)), repeat(("A" : GoString), (32891 : GoInt))) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_capitalLetters, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_inc, ("brad" : GoString), ("csbe" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_inc, Go.str(0, 255), Go.str(1, 0)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_inc, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : GoString), ("1" : GoString), ("a" : GoString), ("2" : GoString)), ("brad" : GoString), ("br1d" : GoString)) : T_testReplacer_0___localname___testCase));
        _s = (null : Slice<GoString>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                var _n:GoInt = (_i + (1 : GoInt)) - (97 : GoInt);
                if (_n < (1 : GoInt)) {
                    _n = (1 : GoInt);
                };
                _s = _s.__appendref__(_str((_i : GoByte)), repeat(_str((_i : GoByte)), _n));
            });
        };
        var _repeat = newReplacer(..._s.__toArray__());
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_htmlEscaper, ("No changes" : GoString), ("No changes" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlEscaper, ("I <3 escaping & stuff" : GoString), ("I &lt;3 escaping &amp; stuff" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlEscaper, ("&&&" : GoString), ("&amp;&amp;&amp;" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlEscaper, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_repeat, ("brad" : GoString), ("bbrrrrrrrrrrrrrrrrrradddd" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_repeat, ("abba" : GoString), ("abbbba" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_repeat, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : GoString), ("11" : GoString), ("a" : GoString), ("22" : GoString)), ("brad" : GoString), ("br11d" : GoString)) : T_testReplacer_0___localname___testCase));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_htmlUnescaper, ("&amp;amp;" : GoString), ("&amp;" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlUnescaper, ("&lt;b&gt;HTML&apos;s neat&lt;/b&gt;" : GoString), ("<b>HTML\'s neat</b>" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_htmlUnescaper, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : GoString), ("1" : GoString), ("a" : GoString), ("2" : GoString), ("xxx" : GoString), ("xxx" : GoString)), ("brad" : GoString), ("br1d" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("a" : GoString), ("1" : GoString), ("aa" : GoString), ("2" : GoString), ("aaa" : GoString), ("3" : GoString)), ("aaaa" : GoString), ("1111" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(newReplacer(("aaa" : GoString), ("3" : GoString), ("aa" : GoString), ("2" : GoString), ("a" : GoString), ("1" : GoString)), ("aaaa" : GoString), ("31" : GoString)) : T_testReplacer_0___localname___testCase));
        var _gen1 = newReplacer(("aaa" : GoString),
("3[aaa]" : GoString),
("aa" : GoString),
("2[aa]" : GoString),
("a" : GoString),
("1[a]" : GoString),
("i" : GoString),
("i" : GoString),
("longerst" : GoString),
("most long" : GoString),
("longer" : GoString),
("medium" : GoString),
("long" : GoString),
("short" : GoString),
("xx" : GoString),
("xx" : GoString),
("x" : GoString),
("X" : GoString),
("X" : GoString),
("Y" : GoString),
("Y" : GoString),
("Z" : GoString));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_gen1, ("fooaaabar" : GoString), ("foo3[aaa]b1[a]r" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, ("long, longerst, longer" : GoString), ("short, most long, medium" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, ("xxxxx" : GoString), ("xxxxX" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, ("XiX" : GoString), ("YiY" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen1, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase));
        var _gen2 = newReplacer(("roses" : GoString), ("red" : GoString), ("violets" : GoString), ("blue" : GoString), ("sugar" : GoString), ("sweet" : GoString));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_gen2, ("roses are red, violets are blue..." : GoString), ("red are red, blue are blue..." : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen2, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase));
        var _gen3 = newReplacer(("abracadabra" : GoString), ("poof" : GoString), ("abracadabrakazam" : GoString), ("splat" : GoString), ("abraham" : GoString), ("lincoln" : GoString), ("abrasion" : GoString), ("scrape" : GoString), ("abraham" : GoString), ("isaac" : GoString));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_gen3, ("abracadabrakazam abraham" : GoString), ("poofkazam lincoln" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen3, ("abrasion abracad" : GoString), ("scrape abracad" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen3, ("abba abram abrasive" : GoString), ("abba abram abrasive" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_gen3, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase));
        var _foo1 = newReplacer(("foo1" : GoString), ("A" : GoString), ("foo2" : GoString), ("B" : GoString), ("foo3" : GoString), ("C" : GoString));
        var _foo2 = newReplacer(("foo1" : GoString), ("A" : GoString), ("foo2" : GoString), ("B" : GoString), ("foo31" : GoString), ("C" : GoString), ("foo32" : GoString), ("D" : GoString));
        var _foo3 = newReplacer(("foo11" : GoString), ("A" : GoString), ("foo12" : GoString), ("B" : GoString), ("foo31" : GoString), ("C" : GoString), ("foo32" : GoString), ("D" : GoString));
        var _foo4 = newReplacer(("foo12" : GoString), ("B" : GoString), ("foo32" : GoString), ("D" : GoString));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_foo1, ("fofoofoo12foo32oo" : GoString), ("fofooA2C2oo" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo1, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo2, ("fofoofoo12foo32oo" : GoString), ("fofooA2Doo" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo2, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo3, ("fofoofoo12foo32oo" : GoString), ("fofooBDoo" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo3, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo4, ("fofoofoo12foo32oo" : GoString), ("fofooBDoo" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_foo4, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase));
        var _allBytes = new Slice<GoUInt8>((256 : GoInt).toBasic(), 0, ...[for (i in 0 ... (256 : GoInt).toBasic()) (0 : GoUInt8)]);
        for (_i in 0 ... _allBytes.length.toBasic()) {
            _allBytes[(_i : GoInt)] = (_i : GoByte);
        };
        var _allString:GoString = (_allBytes : GoString);
        var _genAll = newReplacer(_allString, ("[all]" : GoString), Go.str(255), ("[ff]" : GoString), Go.str(0), ("[00]" : GoString));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_genAll, _allString, ("[all]" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_genAll, (Go.str("a", 255) + _allString) + Go.str(0), ("a[ff][all][00]" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_genAll, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase));
        var _blankToX1 = newReplacer(Go.str(), ("X" : GoString));
        var _blankToX2 = newReplacer(Go.str(), ("X" : GoString), Go.str(), Go.str());
        var _blankHighPriority = newReplacer(Go.str(), ("X" : GoString), ("o" : GoString), ("O" : GoString));
        var _blankLowPriority = newReplacer(("o" : GoString), ("O" : GoString), Go.str(), ("X" : GoString));
        var _blankNoOp1 = newReplacer(Go.str(), Go.str());
        var _blankNoOp2 = newReplacer(Go.str(), Go.str(), Go.str(), ("A" : GoString));
        var _blankFoo = newReplacer(Go.str(), ("X" : GoString), ("foobar" : GoString), ("R" : GoString), ("foobaz" : GoString), ("Z" : GoString));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_blankToX1, ("foo" : GoString), ("XfXoXoX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankToX1, Go.str(), ("X" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankToX2, ("foo" : GoString), ("XfXoXoX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankToX2, Go.str(), ("X" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("oo" : GoString), ("XOXOX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("ii" : GoString), ("XiXiX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("oiio" : GoString), ("XOXiXiXOX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, ("iooi" : GoString), ("XiXOXOXiX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankHighPriority, Go.str(), ("X" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("oo" : GoString), ("OOX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("ii" : GoString), ("XiXiX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("oiio" : GoString), ("OXiXiOX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, ("iooi" : GoString), ("XiOOXiX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankLowPriority, Go.str(), ("X" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp1, ("foo" : GoString), ("foo" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp1, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp2, ("foo" : GoString), ("foo" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankNoOp2, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankFoo, ("foobarfoobaz" : GoString), ("XRXZX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankFoo, ("foobar-foobaz" : GoString), ("XRX-XZX" : GoString)) : T_testReplacer_0___localname___testCase),
(new T_testReplacer_0___localname___testCase(_blankFoo, Go.str(), ("X" : GoString)) : T_testReplacer_0___localname___testCase));
        var _abcMatcher = newReplacer(("abc" : GoString), ("[match]" : GoString));
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_abcMatcher, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("ab" : GoString), ("ab" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("abc" : GoString), ("[match]" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("abcd" : GoString), ("[match]d" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_abcMatcher, ("cabcabcdabca" : GoString), ("c[match][match]d[match]a" : GoString)) : T_testReplacer_0___localname___testCase));
        var _noHello = newReplacer(("Hello" : GoString), Go.str());
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_noHello, ("Hello" : GoString), Go.str()) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_noHello, ("Hellox" : GoString), ("x" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_noHello, ("xHello" : GoString), ("x" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_noHello, ("xHellox" : GoString), ("xx" : GoString)) : T_testReplacer_0___localname___testCase));
        var _nop = newReplacer();
        _testCases = _testCases.__appendref__((new T_testReplacer_0___localname___testCase(_nop, ("abc" : GoString), ("abc" : GoString)) : T_testReplacer_0___localname___testCase), (new T_testReplacer_0___localname___testCase(_nop, Go.str(), Go.str()) : T_testReplacer_0___localname___testCase));
        for (_i => _tc in _testCases) {
            {
                var _s:GoString = _tc._r.replace(_tc._in);
                if (_s != (_tc._out)) {
                    _t.errorf(("%d. Replace(%q) = %q, want %q" : GoString), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_s), Go.toInterface(_tc._out));
                };
            };
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var __tmp__ = _tc._r.writeString(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), _tc._in), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%d. WriteString: %v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                continue;
            };
            var _got:GoString = (_buf.string() : GoString);
            if (_got != (_tc._out)) {
                _t.errorf(("%d. WriteString(%q) wrote %q, want %q" : GoString), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_got), Go.toInterface(_tc._out));
                continue;
            };
            if (_n != ((_tc._out.length))) {
                _t.errorf(("%d. WriteString(%q) wrote correct string but reported %d bytes; want %d (%q)" : GoString), Go.toInterface(_i), Go.toInterface(_tc._in), Go.toInterface(_n), Go.toInterface((_tc._out.length)), Go.toInterface(_tc._out));
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
            var _got:GoString = stdgo.fmt.Fmt.sprintf(("%T" : GoString), _tc._r.replacer());
            if (_got != (_tc._want)) {
                _t.errorf(("%d. algorithm = %s, want %s" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_tc._want));
            };
        };
    }
/**
    // TestWriteStringError tests that WriteString returns an error
    // received from the underlying io.Writer.
**/
function testWriteStringError(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _tc in _algorithmTestCases) {
            var __tmp__ = _tc._r.writeString(Go.asInterface((new T_errWriter() : T_errWriter)), ("abc" : GoString)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (((_n != (0 : GoInt)) || (_err == null)) || (_err.error() != ("unwritable" : GoString))) {
                _t.errorf(("%d. WriteStringError = %d, %v, want 0, unwritable" : GoString), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
/**
    // TestGenericTrieBuilding verifies the structure of the generated trie. There
    // is one node per line, and the key ending with the current line is in the
    // trie if it ends with a "+".
**/
function testGenericTrieBuilding(_t:Ref<stdgo.testing.Testing.T>):Void {
        trace("testGenericTrieBuilding" + " skip function");
        return;
        var _testCases = (new Slice<StringTest>(0, 0, (new StringTest(("abc;abdef;abdefgh;xx;xy;z" : GoString), ("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t" : GoString)) : StringTest), (new StringTest(("abracadabra;abracadabrakazam;abraham;abrasion" : GoString), ("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t" : GoString)) : StringTest), (new StringTest(("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y" : GoString), ("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t" : GoString)) : StringTest), (new StringTest(("foo;;foo;foo1" : GoString), ("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t" : GoString)) : StringTest)) : Slice<StringTest>);
        for (_0 => _tc in _testCases) {
            var _keys = split(_tc._in, (";" : GoString));
            var _args = new Slice<GoString>(((_keys.length) * (2 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_keys.length) * (2 : GoInt) : GoInt).toBasic()) ("" : GoString)]);
            for (_i => _key in _keys) {
                _args[(_i * (2 : GoInt) : GoInt)] = _key;
            };
            var _got:GoString = newReplacer(..._args.__toArray__()).printTrie();
            var _wantbuf = new Slice<GoUInt8>((0 : GoInt).toBasic(), (_tc._out.length), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_tc._out.length), _i++, {
                    if (_tc._out[(_i : GoInt)] != ((9 : GoUInt8))) {
                        _wantbuf = _wantbuf.__appendref__(_tc._out[(_i : GoInt)]);
                    };
                });
            };
            var _want:GoString = (_wantbuf : GoString);
            if (_got != (_want)) {
                _t.errorf(("PrintTrie(%q)\ngot\n%swant\n%s" : GoString), Go.toInterface(_tc._in), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function benchmarkGenericNoMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("A" : GoString), (100 : GoInt)) + repeat(("B" : GoString), (100 : GoInt));
        var _generic = newReplacer(("a" : GoString), ("A" : GoString), ("b" : GoString), ("B" : GoString), ("12" : GoString), ("123" : GoString));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _generic.replace(_str);
            });
        };
    }
function benchmarkGenericMatch1(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("a" : GoString), (100 : GoInt)) + repeat(("b" : GoString), (100 : GoInt));
        var _generic = newReplacer(("a" : GoString), ("A" : GoString), ("b" : GoString), ("B" : GoString), ("12" : GoString), ("123" : GoString));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _generic.replace(_str);
            });
        };
    }
function benchmarkGenericMatch2(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("It&apos;s &lt;b&gt;HTML&lt;/b&gt;!" : GoString), (100 : GoInt));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _htmlUnescaper.replace(_str);
            });
        };
    }
private function _benchmarkSingleString(_b:Ref<stdgo.testing.Testing.B>, _pattern:GoString, _text:GoString):Void {
        var _r = newReplacer(_pattern, ("[match]" : GoString));
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
        _benchmarkSingleString(_b, repeat(("b" : GoString), (25 : GoInt)), repeat(("a" : GoString), (10000 : GoInt)));
    }
function benchmarkSingleLongSuffixFail(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, ("b" : GoString) + repeat(("a" : GoString), (500 : GoInt)), repeat(("a" : GoString), (1002 : GoInt)));
    }
function benchmarkSingleMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSingleString(_b, ("abcdef" : GoString), repeat(("abcdefghijklmno" : GoString), (1000 : GoInt)));
    }
function benchmarkByteByteNoMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("A" : GoString), (100 : GoInt)) + repeat(("B" : GoString), (100 : GoInt));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.replace(_str);
            });
        };
    }
function benchmarkByteByteMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("a" : GoString), (100 : GoInt)) + repeat(("b" : GoString), (100 : GoInt));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _capitalLetters.replace(_str);
            });
        };
    }
function benchmarkByteStringMatch(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = ((("<" : GoString) + repeat(("a" : GoString), (99 : GoInt))) + repeat(("b" : GoString), (99 : GoInt))) + (">" : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.replace(_str);
            });
        };
    }
function benchmarkHTMLEscapeNew(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = ("I <3 to escape HTML & other text too." : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.replace(_str);
            });
        };
    }
function benchmarkHTMLEscapeOld(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = ("I <3 to escape HTML & other text too." : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _oldHTMLEscape(_str);
            });
        };
    }
function benchmarkByteStringReplacerWriteString(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("I <3 to escape HTML & other text too." : GoString), (100 : GoInt));
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _htmlEscaper.writeString(Go.asInterface(_buf), _str);
                _buf.reset();
            });
        };
    }
function benchmarkByteReplacerWriteString(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("abcdefghijklmnopqrstuvwxyz" : GoString), (100 : GoInt));
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
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
        var _str:GoString = repeat(("a" : GoString), (100 : GoInt)) + repeat(("b" : GoString), (100 : GoInt));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                replace(replace(_str, ("a" : GoString), ("A" : GoString), (-1 : GoInt)), ("b" : GoString), ("B" : GoString), (-1 : GoInt));
            });
        };
    }
/**
    // BenchmarkByteByteMap compares byteByteImpl against Map.
**/
function benchmarkByteByteMap(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _str:GoString = repeat(("a" : GoString), (100 : GoInt)) + repeat(("b" : GoString), (100 : GoInt));
        var _fn:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            {
                final __value__ = _r;
                if (__value__ == ((97 : GoInt32))) {
                    return (65 : GoInt32);
                } else if (__value__ == ((98 : GoInt32))) {
                    return (66 : GoInt32);
                };
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
        var _mapidentity:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return _r;
        };
        _b.run(("identity" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
        var _mapchange:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (((97 : GoInt32) <= _r) && (_r <= (122 : GoInt32))) {
                return (_r + (65 : GoInt32)) - (97 : GoInt32);
            };
            if (((945 : GoInt32) <= _r) && (_r <= (969 : GoInt32))) {
                return (_r + (913 : GoInt32)) - (945 : GoInt32);
            };
            return _r;
        };
        _b.run(("change" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
        var _testCases = (new Slice<T__struct_8>(
0,
0,
({ _pat : Go.str(), _text : Go.str(), _index : (0 : GoInt) } : T__struct_8),
({ _pat : Go.str(), _text : ("abc" : GoString), _index : (0 : GoInt) } : T__struct_8),
({ _pat : ("abc" : GoString), _text : Go.str(), _index : (-1 : GoInt) } : T__struct_8),
({ _pat : ("abc" : GoString), _text : ("abc" : GoString), _index : (0 : GoInt) } : T__struct_8),
({ _pat : ("d" : GoString), _text : ("abcdefg" : GoString), _index : (3 : GoInt) } : T__struct_8),
({ _pat : ("nan" : GoString), _text : ("banana" : GoString), _index : (2 : GoInt) } : T__struct_8),
({ _pat : ("pan" : GoString), _text : ("anpanman" : GoString), _index : (2 : GoInt) } : T__struct_8),
({ _pat : ("nnaaman" : GoString), _text : ("anpanmanam" : GoString), _index : (-1 : GoInt) } : T__struct_8),
({ _pat : ("abcd" : GoString), _text : ("abc" : GoString), _index : (-1 : GoInt) } : T__struct_8),
({ _pat : ("abcd" : GoString), _text : ("bcd" : GoString), _index : (-1 : GoInt) } : T__struct_8),
({ _pat : ("bcd" : GoString), _text : ("abcd" : GoString), _index : (1 : GoInt) } : T__struct_8),
({ _pat : ("abc" : GoString), _text : ("acca" : GoString), _index : (-1 : GoInt) } : T__struct_8),
({ _pat : ("aa" : GoString), _text : ("aaa" : GoString), _index : (0 : GoInt) } : T__struct_8),
({ _pat : ("baa" : GoString), _text : ("aaaaa" : GoString), _index : (-1 : GoInt) } : T__struct_8),
({ _pat : ("at that" : GoString), _text : ("which finally halts.  at that point" : GoString), _index : (22 : GoInt) } : T__struct_8)) : Slice<T__struct_8>);
        for (_0 => _tc in _testCases) {
            var _got:GoInt = stringFind(_tc._pat, _tc._text);
            var _want:GoInt = _tc._index;
            if (_got != (_want)) {
                _t.errorf(("stringFind(%q, %q) got %d, want %d\n" : GoString), Go.toInterface(_tc._pat), Go.toInterface(_tc._text), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testFinderCreation(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new Slice<T__struct_9>(0, 0, ({ _pattern : ("abc" : GoString), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[97] = (2 : GoInt);
            s[98] = (1 : GoInt);
            s[99] = (3 : GoInt);
            s;
        }, _suf : (new Slice<GoInt>(0, 0, (5 : GoInt), (4 : GoInt), (1 : GoInt)) : Slice<GoInt>) } : T__struct_9), ({ _pattern : ("mississi" : GoString), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[105] = (3 : GoInt);
            s[109] = (7 : GoInt);
            s[115] = (1 : GoInt);
            s;
        }, _suf : (new Slice<GoInt>(0, 0, (15 : GoInt), (14 : GoInt), (13 : GoInt), (7 : GoInt), (11 : GoInt), (10 : GoInt), (7 : GoInt), (1 : GoInt)) : Slice<GoInt>) } : T__struct_9), ({ _pattern : ("abcxxxabc" : GoString), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[97] = (2 : GoInt);
            s[98] = (1 : GoInt);
            s[99] = (6 : GoInt);
            s[120] = (3 : GoInt);
            s;
        }, _suf : (new Slice<GoInt>(
0,
0,
(14 : GoInt),
(13 : GoInt),
(12 : GoInt),
(11 : GoInt),
(10 : GoInt),
(9 : GoInt),
(11 : GoInt),
(10 : GoInt),
(1 : GoInt)) : Slice<GoInt>) } : T__struct_9), ({ _pattern : ("abyxcdeyx" : GoString), _bad : {
            var s:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 256) 0]);
            s[97] = (8 : GoInt);
            s[98] = (7 : GoInt);
            s[99] = (4 : GoInt);
            s[100] = (3 : GoInt);
            s[101] = (2 : GoInt);
            s[121] = (1 : GoInt);
            s[120] = (5 : GoInt);
            s;
        }, _suf : (new Slice<GoInt>(
0,
0,
(17 : GoInt),
(16 : GoInt),
(15 : GoInt),
(14 : GoInt),
(13 : GoInt),
(12 : GoInt),
(7 : GoInt),
(10 : GoInt),
(1 : GoInt)) : Slice<GoInt>) } : T__struct_9)) : Slice<T__struct_9>);
        for (_0 => _tc in _testCases) {
            var __tmp__ = dumpTables(_tc._pattern), _bad:Slice<GoInt> = __tmp__._0, _good:Slice<GoInt> = __tmp__._1;
            for (_i => _got in _bad) {
                var _want:GoInt = _tc._bad[(_i : GoInt)];
                if (_want == ((0 : GoInt))) {
                    _want = (_tc._pattern.length);
                };
                if (_got != (_want)) {
                    _t.errorf(("boyerMoore(%q) bad[\'%c\']: got %d want %d" : GoString), Go.toInterface(_tc._pattern), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_good), Go.toInterface(_tc._suf))) {
                _t.errorf(("boyerMoore(%q) got %v want %v" : GoString), Go.toInterface(_tc._pattern), Go.toInterface(_good), Go.toInterface(_tc._suf));
            };
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
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
private function _runIndexTests(_t:Ref<stdgo.testing.Testing.T>, _f:(_s:GoString, _sep:GoString) -> GoInt, _funcName:GoString, _testCases:Slice<IndexTest>):Void {
        for (_0 => _test in _testCases) {
            var _actual:GoInt = _f(_test._s, _test._sep);
            if (_actual != (_test._out)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : GoString), Go.toInterface(_funcName), Go.toInterface(_test._s), Go.toInterface(_test._sep), Go.toInterface(_actual), Go.toInterface(_test._out));
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
        _runIndexTests(_t, indexAny, ("IndexAny" : GoString), _indexAnyTests);
    }
function testLastIndexAny(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runIndexTests(_t, lastIndexAny, ("LastIndexAny" : GoString), _lastIndexAnyTests);
    }
function testIndexByte(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _indexTests) {
            if ((_tt._sep.length) != ((1 : GoInt))) {
                continue;
            };
            var _pos:GoInt = indexByte(_tt._s, _tt._sep[(0 : GoInt)]);
            if (_pos != (_tt._out)) {
                _t.errorf(("IndexByte(%q, %q) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep[(0 : GoInt)]), Go.toInterface(_pos), Go.toInterface(_tt._out));
            };
        };
    }
function testLastIndexByte(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new Slice<stdgo.strings_test.Strings_test.IndexTest>(0, 0, (new stdgo.strings_test.Strings_test.IndexTest(Go.str(), ("q" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("abcdef" : GoString), ("q" : GoString), (-1 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("abcdefabcdef" : GoString), ("a" : GoString), (("abcdef" : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("abcdefabcdef" : GoString), ("f" : GoString), (("abcdefabcde" : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("zabcdefabcdef" : GoString), ("z" : GoString), (0 : GoInt)) : stdgo.strings_test.Strings_test.IndexTest), (new stdgo.strings_test.Strings_test.IndexTest(("a☺b☻c☹d" : GoString), ("b" : GoString), (("a☺" : GoString).length)) : stdgo.strings_test.Strings_test.IndexTest)) : Slice<stdgo.strings_test.Strings_test.IndexTest>);
        for (_0 => _test in _testCases) {
            var _actual:GoInt = lastIndexByte(_test._s, _test._sep[(0 : GoInt)]);
            if (_actual != (_test._out)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : GoString), Go.toInterface(_test._s), Go.toInterface(_test._sep[(0 : GoInt)]), Go.toInterface(_actual), Go.toInterface(_test._out));
            };
        };
    }
private function _simpleIndex(_s:GoString, _sep:GoString):GoInt {
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
            Go.cfor(_times < (10 : GoInt), _times++, {
                {
                    var _strLen:GoInt = (5 : GoInt) + stdgo.math.rand.Rand.intn((5 : GoInt));
                    Go.cfor(_strLen < (140 : GoInt), _strLen = _strLen + ((10 : GoInt)), {
                        var _s1 = new Slice<GoUInt8>((_strLen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_strLen : GoInt).toBasic()) (0 : GoUInt8)]);
                        for (_i in 0 ... _s1.length.toBasic()) {
                            _s1[(_i : GoInt)] = ("abcdefghijklmnopqrstuvwxyz0123456789" : GoString)[(stdgo.math.rand.Rand.intn((("abcdefghijklmnopqrstuvwxyz0123456789" : GoString).length)) : GoInt)];
                        };
                        var _s:GoString = (_s1 : GoString);
                        {
                            var _i:GoInt = (0 : GoInt);
                            Go.cfor(_i < (50 : GoInt), _i++, {
                                var _begin:GoInt = stdgo.math.rand.Rand.intn((_s.length) + (1 : GoInt));
                                var _end:GoInt = _begin + stdgo.math.rand.Rand.intn((_s.length + (1 : GoInt)) - _begin);
                                var _sep:GoString = (_s.__slice__(_begin, _end) : GoString);
                                if (_i % (4 : GoInt) == ((0 : GoInt))) {
                                    var _pos:GoInt = stdgo.math.rand.Rand.intn((_sep.length) + (1 : GoInt));
                                    _sep = ((_sep.__slice__(0, _pos) : GoString) + ("A" : GoString)) + (_sep.__slice__(_pos) : GoString);
                                };
                                var _want:GoInt = _simpleIndex(_s, _sep);
                                var _res:GoInt = index(_s, _sep);
                                if (_res != (_want)) {
                                    _t.errorf(("Index(%s,%s) = %d; want %d" : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_res), Go.toInterface(_want));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testIndexRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_10>(
0,
0,
({ _in : Go.str(), _rune : (97 : GoInt32), _want : (-1 : GoInt) } : T__struct_10),
({ _in : Go.str(), _rune : (9786 : GoInt32), _want : (-1 : GoInt) } : T__struct_10),
({ _in : ("foo" : GoString), _rune : (9785 : GoInt32), _want : (-1 : GoInt) } : T__struct_10),
({ _in : ("foo" : GoString), _rune : (111 : GoInt32), _want : (1 : GoInt) } : T__struct_10),
({ _in : ("foo☺bar" : GoString), _rune : (9786 : GoInt32), _want : (3 : GoInt) } : T__struct_10),
({ _in : ("foo☺☻☹bar" : GoString), _rune : (9785 : GoInt32), _want : (9 : GoInt) } : T__struct_10),
({ _in : ("a A x" : GoString), _rune : (65 : GoInt32), _want : (2 : GoInt) } : T__struct_10),
({ _in : ("some_text=some_value" : GoString), _rune : (61 : GoInt32), _want : (9 : GoInt) } : T__struct_10),
({ _in : ("☺a" : GoString), _rune : (97 : GoInt32), _want : (3 : GoInt) } : T__struct_10),
({ _in : ("a☻☺b" : GoString), _rune : (9786 : GoInt32), _want : (4 : GoInt) } : T__struct_10),
({ _in : ("�" : GoString), _rune : (65533 : GoInt32), _want : (0 : GoInt) } : T__struct_10),
({ _in : Go.str(255), _rune : (65533 : GoInt32), _want : (0 : GoInt) } : T__struct_10),
({ _in : ("☻x�" : GoString), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_10),
({ _in : Go.str("☻x", 226, 152), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_10),
({ _in : Go.str("☻x", 226, 152, "�"), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_10),
({ _in : Go.str("☻x", 226, 152, "x"), _rune : (65533 : GoInt32), _want : (("☻x" : GoString).length) } : T__struct_10),
({ _in : Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (-1 : GoInt32), _want : (-1 : GoInt) } : T__struct_10),
({ _in : Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (55296 : GoInt32), _want : (-1 : GoInt) } : T__struct_10),
({ _in : Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128), _rune : (1114112 : GoInt32), _want : (-1 : GoInt) } : T__struct_10)) : Slice<T__struct_10>);
        for (_0 => _tt in _tests) {
            {
                var _got:GoInt = indexRune(_tt._in, _tt._rune);
                if (_got != (_tt._want)) {
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._rune), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack:GoString = ("test世界" : GoString);
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
        if ((_allocs != (0 : GoFloat64)) && (stdgo.testing.Testing.coverMode() == Go.str())) {
            _t.errorf(("expected no allocations, got %f" : GoString), Go.toInterface(_allocs));
        };
    }
function benchmarkIndexRune(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:GoInt = indexRune(("some_text=some☺value" : GoString), (9786 : GoInt32));
            if (_got != ((14 : GoInt))) {
                _b.fatalf(("wrong index: expected 14, got=%d" : GoString), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                indexRune(("some_text=some☺value" : GoString), (9786 : GoInt32));
            });
        };
    }
function benchmarkIndexRuneLongString(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:GoInt = indexRune(_benchmarkLongString, (9786 : GoInt32));
            if (_got != ((114 : GoInt))) {
                _b.fatalf(("wrong index: expected 114, got=%d" : GoString), Go.toInterface(_got));
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
            var _got:GoInt = indexRune(("some_text=some☺value" : GoString), (118 : GoInt32));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : GoString), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                indexRune(("some_text=some☺value" : GoString), (118 : GoInt32));
            });
        };
    }
function benchmarkIndex(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:GoInt = index(("some_text=some☺value" : GoString), ("v" : GoString));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : GoString), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                index(("some_text=some☺value" : GoString), ("v" : GoString));
            });
        };
    }
function benchmarkLastIndex(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:GoInt = index(("some_text=some☺value" : GoString), ("v" : GoString));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : GoString), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                lastIndex(("some_text=some☺value" : GoString), ("v" : GoString));
            });
        };
    }
function benchmarkIndexByte(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _got:GoInt = indexByte(("some_text=some☺value" : GoString), (118 : GoUInt8));
            if (_got != ((17 : GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : GoString), Go.toInterface(_got));
            };
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                indexByte(("some_text=some☺value" : GoString), (118 : GoUInt8));
            });
        };
    }
function testSplit(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _splittests) {
            var _a = splitN(_tt._s, _tt._sep, _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            if (_tt._n == ((0 : GoInt))) {
                continue;
            };
            var _s:GoString = join(_a, _tt._sep);
            if (_s != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < (0 : GoInt)) {
                var _b = split(_tt._s, _tt._sep);
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(("Split disagrees with SplitN(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testSplitAfter(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _splitaftertests) {
            var _a = splitAfterN(_tt._s, _tt._sep, _tt._n);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
            var _s:GoString = join(_a, Go.str());
            if (_s != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_tt._sep), Go.toInterface(_s));
            };
            if (_tt._n < (0 : GoInt)) {
                var _b = splitAfter(_tt._s, _tt._sep);
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_a), Go.toInterface(_b))) {
                    _t.errorf(("SplitAfter disagrees with SplitAfterN(%q, %q, %d) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_tt._n), Go.toInterface(_b), Go.toInterface(_a));
                };
            };
        };
    }
function testFields(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _fieldstests) {
            var _a = fields(_tt._s);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
    }
function testFieldsFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _fieldstests) {
            var _a = fieldsFunc(_tt._s, stdgo.unicode.Unicode.isSpace);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return _c == ((88 : GoInt32));
        };
        for (_1 => _tt in fieldsFuncTests) {
            var _a = fieldsFunc(_tt._s, _pred);
            if (!_eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_a), Go.toInterface(_tt._a));
            };
        };
    }
/**
    // Execute f on each test case.  funcName should be the name of f; it's used
    // in failure reports.
**/
private function _runStringTests(_t:Ref<stdgo.testing.Testing.T>, _f:GoString -> GoString, _funcName:GoString, _testCases:Slice<StringTest>):Void {
        for (_0 => _tc in _testCases) {
            var _actual:GoString = _f(_tc._in);
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : GoString), Go.toInterface(_funcName), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
private function _tenRunes(_ch:GoRune):GoString {
        var _r = new Slice<GoInt32>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoInt32)]);
        for (_i in 0 ... _r.length.toBasic()) {
            _r[(_i : GoInt)] = _ch;
        };
        return (_r : GoString);
    }
/**
    // User-defined self-inverse mapping function
**/
private function _rot13(_r:GoRune):GoRune {
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
        var _maxRune:GoInt32 -> GoInt32 = function(_0:GoRune):GoRune {
            return (1114111 : GoInt32);
        };
        var _m:GoString = map(_maxRune, _a);
        var _expect:GoString = _tenRunes((1114111 : GoInt32));
        if (_m != (_expect)) {
            _t.errorf(("growing: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _minRune:GoInt32 -> GoInt32 = function(_0:GoRune):GoRune {
            return (97 : GoInt32);
        };
        _m = map(_minRune, _tenRunes((1114111 : GoInt32)));
        _expect = _a;
        if (_m != (_expect)) {
            _t.errorf(("shrinking: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, ("a to zed" : GoString));
        _expect = ("n gb mrq" : GoString);
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        _m = map(_rot13, map(_rot13, ("a to zed" : GoString)));
        _expect = ("a to zed" : GoString);
        if (_m != (_expect)) {
            _t.errorf(("rot13: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _dropNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (-1 : GoInt32);
        };
        _m = map(_dropNotLatin, ("Hello, 세계" : GoString));
        _expect = ("Hello" : GoString);
        if (_m != (_expect)) {
            _t.errorf(("drop: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _identity:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return _r;
        };
        var _orig:GoString = ("Input string that we expect not to be copied." : GoString);
        _m = map(_identity, _orig);
        if (stdgo.unsafe.Unsafe.stringData(_orig) != (stdgo.unsafe.Unsafe.stringData(_m))) {
            _t.error(Go.toInterface(("unexpected copy during identity map" : GoString)));
        };
        var _replaceNotLatin:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.latin, _r)) {
                return _r;
            };
            return (65533 : GoInt32);
        };
        _m = map(_replaceNotLatin, Go.str("Hello", 173, "World"));
        _expect = ("Hello�World" : GoString);
        if (_m != (_expect)) {
            _t.errorf(("replace invalid sequence: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
        var _encode:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            {
                final __value__ = _r;
                if (__value__ == ((128 : GoInt32))) {
                    return (1114111 : GoInt32);
                } else if (__value__ == ((1114111 : GoInt32))) {
                    return (128 : GoInt32);
                };
            };
            return _r;
        };
        var _s:GoString = ("\u0080\u{0010ffff}" : GoString);
        var _r:GoString = ("\u{0010ffff}\u0080" : GoString);
        _m = map(_encode, _s);
        if (_m != (_r)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : GoString), Go.toInterface(_r), Go.toInterface(_m));
        };
        _m = map(_encode, _r);
        if (_m != (_s)) {
            _t.errorf(("encoding not handled correctly: expected %q got %q" : GoString), Go.toInterface(_s), Go.toInterface(_m));
        };
        var _trimSpaces:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            if (stdgo.unicode.Unicode.isSpace(_r)) {
                return (-1 : GoInt32);
            };
            return _r;
        };
        _m = map(_trimSpaces, ("   abc    123   " : GoString));
        _expect = ("abc123" : GoString);
        if (_m != (_expect)) {
            _t.errorf(("trimSpaces: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_m));
        };
    }
function testToUpper(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toUpper, ("ToUpper" : GoString), _upperTests);
    }
function testToLower(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, toLower, ("ToLower" : GoString), _lowerTests);
    }
function testToValidUTF8(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in _toValidUTF8Tests) {
            var _got:GoString = toValidUTF8(_tc._in, _tc._repl);
            if (_got != (_tc._out)) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._repl), Go.toInterface(_got), Go.toInterface(_tc._out));
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
                            _b.errorf(("ToUpper(%q) = %q; want %q" : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
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
                            _b.errorf(("ToLower(%q) = %q; want %q" : GoString), Go.toInterface(_tc._in), Go.toInterface(_actual), Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
function benchmarkMapNoChanges(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _identity:GoInt32 -> GoInt32 = function(_r:GoRune):GoRune {
            return _r;
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                map(_identity, ("Some string that won\'t be modified." : GoString));
            });
        };
    }
function testSpecialCase(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _lower:GoString = ("abcçdefgğhıijklmnoöprsştuüvyz" : GoString);
        var _upper:GoString = ("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : GoString);
        var _u:GoString = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
        if (_u != (_upper)) {
            _t.errorf(("Upper(upper) is %s not %s" : GoString), Go.toInterface(_u), Go.toInterface(_upper));
        };
        _u = toUpperSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
        if (_u != (_upper)) {
            _t.errorf(("Upper(lower) is %s not %s" : GoString), Go.toInterface(_u), Go.toInterface(_upper));
        };
        var _l:GoString = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _lower);
        if (_l != (_lower)) {
            _t.errorf(("Lower(lower) is %s not %s" : GoString), Go.toInterface(_l), Go.toInterface(_lower));
        };
        _l = toLowerSpecial(stdgo.unicode.Unicode.turkishCase, _upper);
        if (_l != (_lower)) {
            _t.errorf(("Lower(upper) is %s not %s" : GoString), Go.toInterface(_l), Go.toInterface(_lower));
        };
    }
function testTrimSpace(_t:Ref<stdgo.testing.Testing.T>):Void {
        _runStringTests(_t, trimSpace, ("TrimSpace" : GoString), _trimSpaceTests);
    }
function testTrim(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in _trimTests) {
            var _name:GoString = _tc._f;
            var _f:(GoString, GoString) -> GoString = null;
            {
                final __value__ = _name;
                if (__value__ == (("Trim" : GoString))) {
                    _f = trim;
                } else if (__value__ == (("TrimLeft" : GoString))) {
                    _f = trimLeft;
                } else if (__value__ == (("TrimRight" : GoString))) {
                    _f = trimRight;
                } else if (__value__ == (("TrimPrefix" : GoString))) {
                    _f = trimPrefix;
                } else if (__value__ == (("TrimSuffix" : GoString))) {
                    _f = trimSuffix;
                } else {
                    _t.errorf(("Undefined trim function %s" : GoString), Go.toInterface(_name));
                };
            };
            var _actual:GoString = _f(_tc._in, _tc._arg);
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q, %q) = %q; want %q" : GoString), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
            };
        };
    }
function benchmarkTrim(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                for (_8 => _tc in _trimTests) {
                    var _name:GoString = _tc._f;
                    var _f:(GoString, GoString) -> GoString = null;
                    {
                        final __value__ = _name;
                        if (__value__ == (("Trim" : GoString))) {
                            _f = trim;
                        } else if (__value__ == (("TrimLeft" : GoString))) {
                            _f = trimLeft;
                        } else if (__value__ == (("TrimRight" : GoString))) {
                            _f = trimRight;
                        } else if (__value__ == (("TrimPrefix" : GoString))) {
                            _f = trimPrefix;
                        } else if (__value__ == (("TrimSuffix" : GoString))) {
                            _f = trimSuffix;
                        } else {
                            _b.errorf(("Undefined trim function %s" : GoString), Go.toInterface(_name));
                        };
                    };
                    var _actual:GoString = _f(_tc._in, _tc._arg);
                    if (_actual != (_tc._out)) {
                        _b.errorf(("%s(%q, %q) = %q; want %q" : GoString), Go.toInterface(_name), Go.toInterface(_tc._in), Go.toInterface(_tc._arg), Go.toInterface(_actual), Go.toInterface(_tc._out));
                    };
                };
            });
        };
    }
function benchmarkToValidUTF8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new Slice<T__struct_13>(0, 0, ({ _name : ("Valid" : GoString), _input : ("typical" : GoString) } : T__struct_13), ({ _name : ("InvalidASCII" : GoString), _input : Go.str("foo", 255, "bar") } : T__struct_13), ({ _name : ("InvalidNonASCII" : GoString), _input : Go.str("日本語", 255, "日本語") } : T__struct_13)) : Slice<T__struct_13>);
        var _replacement:GoString = ("�" : GoString);
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
private function _not(_p:T_predicate):T_predicate {
        return (new T_predicate(function(_r:GoRune):Bool {
            return !_p._f(_r);
        }, ("not " : GoString) + _p._name) : T_predicate);
    }
function testTrimFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in _trimFuncTests) {
            var _trimmers = (new Slice<T__struct_15>(0, 0, ({ _name : ("TrimFunc" : GoString), _trim : trimFunc, _out : _tc._trimOut } : T__struct_15), ({ _name : ("TrimLeftFunc" : GoString), _trim : trimLeftFunc, _out : _tc._leftOut } : T__struct_15), ({ _name : ("TrimRightFunc" : GoString), _trim : trimRightFunc, _out : _tc._rightOut } : T__struct_15)) : Slice<T__struct_15>);
            for (_1 => _trimmer in _trimmers) {
                var _actual:GoString = _trimmer._trim(_tc._in, _tc._f._f);
                if (_actual != (_trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : GoString), Go.toInterface(_trimmer._name), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_actual), Go.toInterface(_trimmer._out));
                };
            };
        };
    }
function testIndexFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in _indexFuncTests) {
            var _first:GoInt = indexFunc(_tc._in, _tc._f._f);
            if (_first != (_tc._first)) {
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_first), Go.toInterface(_tc._first));
            };
            var _last:GoInt = lastIndexFunc(_tc._in, _tc._f._f);
            if (_last != (_tc._last)) {
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : GoString), Go.toInterface(_tc._in), Go.toInterface(_tc._f._name), Go.toInterface(_last), Go.toInterface(_tc._last));
            };
        };
    }
private function _equal(_m:GoString, _s1:GoString, _s2:GoString, _t:Ref<stdgo.testing.Testing.T>):Bool {
        if (_s1 == (_s2)) {
            return true;
        };
        var _e1 = split(_s1, Go.str());
        var _e2 = split(_s2, Go.str());
        for (_i => _c1 in _e1) {
            if (_i >= (_e2.length)) {
                break;
            };
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_c1), _r1:GoInt32 = __tmp__._0, _0:GoInt = __tmp__._1;
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_e2[(_i : GoInt)]), _r2:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1;
            if (_r1 != (_r2)) {
                _t.errorf(("%s diff at %d: U+%04X U+%04X" : GoString), Go.toInterface(_m), Go.toInterface(_i), Go.toInterface(_r1), Go.toInterface(_r2));
            };
        };
        return false;
    }
function testCaseConsistency(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _numRunes:GoInt = (1114112 : GoInt);
        if (stdgo.testing.Testing.short()) {
            _numRunes = (1000 : GoInt);
        };
        var _a = new Slice<GoInt32>((_numRunes : GoInt).toBasic(), 0, ...[for (i in 0 ... (_numRunes : GoInt).toBasic()) (0 : GoInt32)]);
        for (_i in 0 ... _a.length.toBasic()) {
            _a[(_i : GoInt)] = (_i : GoRune);
        };
        var _s:GoString = (_a : GoString);
        var _upper:GoString = toUpper(_s);
        var _lower:GoString = toLower(_s);
        {
            var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_upper);
            if (_n != (_numRunes)) {
                _t.error(Go.toInterface(("rune count wrong in upper:" : GoString)), Go.toInterface(_n));
            };
        };
        {
            var _n:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_lower);
            if (_n != (_numRunes)) {
                _t.error(Go.toInterface(("rune count wrong in lower:" : GoString)), Go.toInterface(_n));
            };
        };
        if (!_equal(("ToUpper(upper)" : GoString), toUpper(_upper), _upper, _t)) {
            _t.error(Go.toInterface(("ToUpper(upper) consistency fail" : GoString)));
        };
        if (!_equal(("ToLower(lower)" : GoString), toLower(_lower), _lower, _t)) {
            _t.error(Go.toInterface(("ToLower(lower) consistency fail" : GoString)));
        };
    }
function testRepeat(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in repeatTests) {
            var _a:GoString = repeat(_tt._in, _tt._count);
            if (!_equal(("Repeat(s)" : GoString), _a, _tt._out, _t)) {
                _t.errorf(("Repeat(%v, %d) = %v; want %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._count), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
        };
    }
private function _repeat(_s:GoString, _count:GoInt):Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err:Error = (null : Error);
        try {
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
                                    var _v:AnyInterface = __type__.__underlying__();
                                    _err = stdgo.fmt.Fmt.errorf(("%s" : GoString), _v);
                                };
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
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
            var s:GoArray<T__struct_18> = new GoArray<T__struct_18>(...[for (i in 0 ... 7) ({ _s : ("" : GoString), _count : (0 : GoInt), _errStr : ("" : GoString) } : T__struct_18)]);
            s[0] = ({ _s : ("--" : GoString), _count : (-2147483647 : GoInt), _errStr : ("negative" : GoString) } : T__struct_18);
            s[1] = ({ _s : Go.str(), _count : ((("2147483647" : GoUInt) : GoUInt) : GoInt), _errStr : Go.str() } : T__struct_18);
            s[2] = ({ _s : ("-" : GoString), _count : (10 : GoInt), _errStr : Go.str() } : T__struct_18);
            s[3] = ({ _s : ("gopher" : GoString), _count : (0 : GoInt), _errStr : Go.str() } : T__struct_18);
            s[4] = ({ _s : ("-" : GoString), _count : (-1 : GoInt), _errStr : ("negative" : GoString) } : T__struct_18);
            s[5] = ({ _s : ("--" : GoString), _count : (-102 : GoInt), _errStr : ("negative" : GoString) } : T__struct_18);
            s[6] = ({ _s : (new Slice<GoUInt8>((255 : GoInt).toBasic(), 0, ...[for (i in 0 ... (255 : GoInt).toBasic()) (0 : GoUInt8)]) : GoString), _count : ((("16843010" : GoUInt) : GoUInt) : GoInt), _errStr : ("overflow" : GoString) } : T__struct_18);
            s;
        };
        for (_i => _tt in _tests) {
            var _err:Error = _repeat(_tt._s, _tt._count);
            if (_tt._errStr == (Go.str())) {
                if (_err != null) {
                    _t.errorf(("#%d panicked %v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                };
                continue;
            };
            if ((_err == null) || !contains(_err.error(), _tt._errStr)) {
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
            var _a = (_tt._in : Slice<GoRune>);
            if (!_runesEqual(_a, _tt._out)) {
                _t.errorf(("[]rune(%q) = %v; want %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(_a), Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s:GoString = (_a : GoString);
                if (_s != (_tt._in)) {
                    _t.errorf(("string([]rune(%q)) = %x; want %x" : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._in));
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
                    _t.errorf(("Unreading %q at beginning: expected error" : GoString), Go.toInterface(_s));
                };
            };
            var _res:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            while (true) {
                var __tmp__ = _reader.readByte(), _b:GoUInt8 = __tmp__._0, _e:Error = __tmp__._1;
                if (Go.toInterface(_e) == (Go.toInterface(stdgo.io.Io.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : GoString), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                _res.writeByte(_b);
                _e = _reader.unreadByte();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : GoString), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readByte(), _b1:GoUInt8 = __tmp__._0, _e:Error = __tmp__._1;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : GoString), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                if (_b1 != (_b)) {
                    _t.errorf(("Reading %q after unreading: want byte %q, got %q" : GoString), Go.toInterface(_s), Go.toInterface(_b), Go.toInterface(_b1));
                    break;
                };
            };
            if ((_res.string() : GoString) != (_s)) {
                _t.errorf(("Reader(%q).ReadByte() produced %q" : GoString), Go.toInterface(_s), Go.toInterface((_res.string() : GoString)));
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
                    _t.errorf(("Unreading %q at beginning: expected error" : GoString), Go.toInterface(_s));
                };
            };
            var _res:GoString = Go.str();
            while (true) {
                var __tmp__ = _reader.readRune(), _r:GoInt32 = __tmp__._0, _z:GoInt = __tmp__._1, _e:Error = __tmp__._2;
                if (Go.toInterface(_e) == (Go.toInterface(stdgo.io.Io.eof))) {
                    break;
                };
                if (_e != null) {
                    _t.errorf(("Reading %q: %s" : GoString), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                _res = _res + ((_r : GoString));
                _e = _reader.unreadRune();
                if (_e != null) {
                    _t.errorf(("Unreading %q: %s" : GoString), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                var __tmp__ = _reader.readRune(), _r1:GoInt32 = __tmp__._0, _z1:GoInt = __tmp__._1, _e:Error = __tmp__._2;
                if (_e != null) {
                    _t.errorf(("Reading %q after unreading: %s" : GoString), Go.toInterface(_s), Go.toInterface(_e));
                    break;
                };
                if (_r1 != (_r)) {
                    _t.errorf(("Reading %q after unreading: want rune %q, got %q" : GoString), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_r1));
                    break;
                };
                if (_z1 != (_z)) {
                    _t.errorf(("Reading %q after unreading: want size %d, got %d" : GoString), Go.toInterface(_s), Go.toInterface(_z), Go.toInterface(_z1));
                    break;
                };
            };
            if (_res != (_s)) {
                _t.errorf(("Reader(%q).ReadRune() produced %q" : GoString), Go.toInterface(_s), Go.toInterface(_res));
            };
        };
    }
function testUnreadRuneError(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in unreadRuneErrorTests) {
            var _reader = newReader(("0123456789" : GoString));
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
function testReplace(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in replaceTests) {
            {
                var _s:GoString = replace(_tt._in, _tt._old, _tt._new, _tt._n);
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_tt._n), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
            if (_tt._n == ((-1 : GoInt))) {
                var _s:GoString = replaceAll(_tt._in, _tt._old, _tt._new);
                if (_s != (_tt._out)) {
                    _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_tt._old), Go.toInterface(_tt._new), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testTitle(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in titleTests) {
            {
                var _s:GoString = title(_tt._in);
                if (_s != (_tt._out)) {
                    _t.errorf(("Title(%q) = %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testContains(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _ct in containsTests) {
            if (contains(_ct._str, _ct._substr) != (_ct._expected)) {
                _t.errorf(("Contains(%s, %s) = %v, want %v" : GoString), Go.toInterface(_ct._str), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsAny(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _ct in containsAnyTests) {
            if (containsAny(_ct._str, _ct._substr) != (_ct._expected)) {
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : GoString), Go.toInterface(_ct._str), Go.toInterface(_ct._substr), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testContainsRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _ct in containsRuneTests) {
            if (containsRune(_ct._str, _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : GoString), Go.toInterface(_ct._str), Go.toInterface(_ct._r), Go.toInterface(!_ct._expected), Go.toInterface(_ct._expected));
            };
        };
    }
function testEqualFold(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in equalFoldTests) {
            {
                var _out:Bool = equalFold(_tt._s, _tt._t);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._t), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
            {
                var _out:Bool = equalFold(_tt._t, _tt._s);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : GoString), Go.toInterface(_tt._t), Go.toInterface(_tt._s), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
        };
    }
function benchmarkEqualFold(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("Tests" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    for (_8 => _tt in equalFoldTests) {
                        {
                            var _out:Bool = equalFold(_tt._s, _tt._t);
                            if (_out != (_tt._out)) {
                                _b.fatal(Go.toInterface(("wrong result" : GoString)));
                            };
                        };
                    };
                });
            };
        });
        {};
        {};
        _b.run(("ASCII" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    equalFold(("abcdefghijKz" : GoString), ("abcDefGhijKz" : GoString));
                });
            };
        });
        _b.run(("UnicodePrefix" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    equalFold(("αβδabcdefghijKz" : GoString), ("ΑΒΔabcDefGhijKz" : GoString));
                });
            };
        });
        _b.run(("UnicodeSuffix" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    equalFold(("abcdefghijKzαβδ" : GoString), ("abcDefGhijKzΑΒΔ" : GoString));
                });
            };
        });
    }
function testCount(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in countTests) {
            {
                var _num:GoInt = count(_tt._s, _tt._sep);
                if (_num != (_tt._num)) {
                    _t.errorf(("Count(%q, %q) = %d, want %d" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_num), Go.toInterface(_tt._num));
                };
            };
        };
    }
function testCut(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _cutTests) {
            {
                var __tmp__ = cut(_tt._s, _tt._sep), _before:GoString = __tmp__._0, _after:GoString = __tmp__._1, _found:Bool = __tmp__._2;
                if (((_before != _tt._before) || (_after != _tt._after)) || (_found != _tt._found)) {
                    _t.errorf(("Cut(%q, %q) = %q, %q, %v, want %q, %q, %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._before), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutPrefix(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _cutPrefixTests) {
            {
                var __tmp__ = cutPrefix(_tt._s, _tt._sep), _after:GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if ((_after != _tt._after) || (_found != _tt._found)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
function testCutSuffix(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _cutSuffixTests) {
            {
                var __tmp__ = cutSuffix(_tt._s, _tt._sep), _after:GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if ((_after != _tt._after) || (_found != _tt._found)) {
                    _t.errorf(("CutSuffix(%q, %q) = %q, %v, want %q, %v" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._sep), Go.toInterface(_after), Go.toInterface(_found), Go.toInterface(_tt._after), Go.toInterface(_tt._found));
                };
            };
        };
    }
private function _makeBenchInputHard():GoString return "";
private function _benchmarkIndexHard(_b:Ref<stdgo.testing.Testing.B>, _sep:GoString):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                index(_benchInputHard, _sep);
            });
        };
    }
private function _benchmarkLastIndexHard(_b:Ref<stdgo.testing.Testing.B>, _sep:GoString):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                lastIndex(_benchInputHard, _sep);
            });
        };
    }
private function _benchmarkCountHard(_b:Ref<stdgo.testing.Testing.B>, _sep:GoString):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                count(_benchInputHard, _sep);
            });
        };
    }
function benchmarkIndexHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<>" : GoString));
    }
function benchmarkIndexHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("</pre>" : GoString));
    }
function benchmarkIndexHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<b>hello world</b>" : GoString));
    }
function benchmarkIndexHard4(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkIndexHard(_b, ("<pre><b>hello</b><strong>world</strong></pre>" : GoString));
    }
function benchmarkLastIndexHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("<>" : GoString));
    }
function benchmarkLastIndexHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("</pre>" : GoString));
    }
function benchmarkLastIndexHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkLastIndexHard(_b, ("<b>hello world</b>" : GoString));
    }
function benchmarkCountHard1(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("<>" : GoString));
    }
function benchmarkCountHard2(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("</pre>" : GoString));
    }
function benchmarkCountHard3(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCountHard(_b, ("<b>hello world</b>" : GoString));
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
        var a:GoString = repeat(("ABC" : GoString), (1048576 : GoInt));
        var b:GoString = repeat(("ABC" : GoString), (1024 : GoInt));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                count(a, b);
            });
        };
    }
function benchmarkCountByte(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _indexSizes = (new Slice<GoInt>(0, 0, (10 : GoInt), (32 : GoInt), (4096 : GoInt), (4194304 : GoInt), (67108864 : GoInt)) : Slice<GoInt>);
        var _benchStr:GoString = repeat(("some_text=some☺value" : GoString), ((_indexSizes[((_indexSizes.length) - (1 : GoInt) : GoInt)] + ("some_text=some☺value" : GoString).length) - (1 : GoInt)) / (("some_text=some☺value" : GoString).length));
        var _benchFunc = function(_b:Ref<stdgo.testing.Testing.B>, _benchStr:GoString):Void {
            _b.setBytes((_benchStr.length : GoInt64));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    count(_benchStr, ("=" : GoString));
                });
            };
        };
        for (_0 => _size in _indexSizes) {
            _b.run(stdgo.fmt.Fmt.sprintf(("%d" : GoString), Go.toInterface(_size)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : GoString), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d" : GoString), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
                split(_benchInputHard, ("/" : GoString));
            });
        };
    }
function benchmarkSplitMultiByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                split(_benchInputHard, ("hello" : GoString));
            });
        };
    }
function benchmarkSplitNSingleByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, ("/" : GoString), (10 : GoInt));
            });
        };
    }
function benchmarkSplitNMultiByteSeparator(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                splitN(_benchInputHard, ("hello" : GoString), (10 : GoInt));
            });
        };
    }
function benchmarkRepeat(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoString = ("0123456789" : GoString);
        for (_0 => _n in (new Slice<GoInt>(0, 0, (5 : GoInt), (10 : GoInt)) : Slice<GoInt>)) {
            for (_1 => _c in (new Slice<GoInt>(0, 0, (0 : GoInt), (1 : GoInt), (2 : GoInt), (6 : GoInt)) : Slice<GoInt>)) {
                _b.run(stdgo.fmt.Fmt.sprintf(("%dx%d" : GoString), Go.toInterface(_n), Go.toInterface(_c)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
function benchmarkRepeatLarge(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoString = repeat(("@" : GoString), (8192 : GoInt));
        {
            var _j:GoInt = (8 : GoInt);
            Go.cfor(_j <= (30 : GoInt), _j++, {
                for (_0 => _k in (new Slice<GoInt>(0, 0, (1 : GoInt), (16 : GoInt), (4097 : GoInt)) : Slice<GoInt>)) {
                    var _s:GoString = (_s.__slice__(0, _k) : GoString);
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
function benchmarkIndexAnyASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _x:GoString = repeat(("#" : GoString), (2048 : GoInt));
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
        var _x:GoString = repeat(("#" : GoString), (2048 : GoInt));
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
        var _x:GoString = repeat(("#" : GoString), (2048 : GoInt));
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
        var _x:GoString = repeat(("#" : GoString), (2048 : GoInt));
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
        var _cs:GoString = ("0123456789abcdef" : GoString);
        {
            var _k:GoInt = (1 : GoInt);
            Go.cfor(_k <= (4096 : GoInt), _k = _k << (("4" : GoUInt64)), {
                {
                    var _j:GoInt = (1 : GoInt);
                    Go.cfor(_j <= (16 : GoInt), _j = _j << (("1" : GoUInt64)), {
                        _b.run(stdgo.fmt.Fmt.sprintf(("%d:%d" : GoString), Go.toInterface(_k), Go.toInterface(_j)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
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
        var _x:GoString = ("  the quick brown fox   " : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                trim(_x, (" " : GoString));
            });
        };
    }
function benchmarkIndexPeriodic(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _key:GoString = ("aa" : GoString);
        for (_0 => _skip in (new GoArray<GoInt>((2 : GoInt), (4 : GoInt), (8 : GoInt), (16 : GoInt), (32 : GoInt), (64 : GoInt)) : GoArray<GoInt>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("IndexPeriodic%d" : GoString), Go.toInterface(_skip)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                var _s:GoString = repeat(("a" : GoString) + repeat((" " : GoString), _skip - (1 : GoInt)), (65536 : GoInt) / _skip);
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
        var _vals = (new Slice<GoString>(0, 0, ("red" : GoString), ("yellow" : GoString), ("pink" : GoString), ("green" : GoString), ("purple" : GoString), ("orange" : GoString), ("blue" : GoString)) : Slice<GoString>);
        {
            var _l:GoInt = (0 : GoInt);
            Go.cfor(_l <= (_vals.length), _l++, {
                _b.run(stdgo.strconv.Strconv.itoa(_l), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                    _b.reportAllocs();
                    var _vals = (_vals.__slice__(0, _l) : Slice<GoString>);
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _b.n, _i++, {
                            join(_vals, (" and " : GoString));
                        });
                    };
                });
            });
        };
    }
function benchmarkTrimSpace(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _tests = (new Slice<T__struct_13>(0, 0, ({ _name : ("NoTrim" : GoString), _input : ("typical" : GoString) } : T__struct_13), ({ _name : ("ASCII" : GoString), _input : ("  foo bar  " : GoString) } : T__struct_13), ({ _name : ("SomeNonASCII" : GoString), _input : ("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : GoString) } : T__struct_13), ({ _name : ("JustNonASCII" : GoString), _input : ("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : GoString) } : T__struct_13)) : Slice<T__struct_13>);
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
                _stringSink = replaceAll(("banana" : GoString), ("a" : GoString), ("<>" : GoString));
            });
        };
    }
class T_errWriter_asInterface {
    @:keep
    public dynamic function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_errWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings_test.Strings_test.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _:T_errWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        return { _0 : (0 : GoInt), _1 : stdgo.fmt.Fmt.errorf(("unwritable" : GoString)) };
    }
}
