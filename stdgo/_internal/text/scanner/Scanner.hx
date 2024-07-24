package stdgo._internal.text.scanner;
private var __go2hxdoc__package : Bool;
final scanIdents : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final scanInts : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final scanFloats : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final scanChars : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final scanStrings : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
final scanRawStrings : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final scanComments : stdgo.GoUInt64 = (256i64 : stdgo.GoUInt64);
final skipComments : stdgo.GoUInt64 = (512i64 : stdgo.GoUInt64);
final goTokens : stdgo.GoUInt64 = (1012i64 : stdgo.GoUInt64);
final eof : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final ident = (0i64 : stdgo.GoUInt64);
final int_ = (0i64 : stdgo.GoUInt64);
final float_ = (0i64 : stdgo.GoUInt64);
final char = (0i64 : stdgo.GoUInt64);
final string = (0i64 : stdgo.GoUInt64);
final rawString = (0i64 : stdgo.GoUInt64);
final comment = (0i64 : stdgo.GoUInt64);
final _skipComment = (0i64 : stdgo.GoUInt64);
final goWhitespace : stdgo.GoUInt64 = (4294977024i64 : stdgo.GoUInt64);
final _bufLen : stdgo.GoUInt64 = (1024i64 : stdgo.GoUInt64);
var _tokenString : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set((-1 : stdgo.GoInt32), ("EOF" : stdgo.GoString));
x.set((-2 : stdgo.GoInt32), ("Ident" : stdgo.GoString));
x.set((-3 : stdgo.GoInt32), ("Int" : stdgo.GoString));
x.set((-4 : stdgo.GoInt32), ("Float" : stdgo.GoString));
x.set((-5 : stdgo.GoInt32), ("Char" : stdgo.GoString));
x.set((-6 : stdgo.GoInt32), ("String" : stdgo.GoString));
x.set((-7 : stdgo.GoInt32), ("RawString" : stdgo.GoString));
x.set((-8 : stdgo.GoInt32), ("Comment" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>);
var _segmentList : stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>(8, 8, ...[(new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("日" : stdgo.GoString), ("本語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("日" : stdgo.GoString), ("本" : stdgo.GoString), ("語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("日" : stdgo.GoString), (" " : stdgo.GoString), ("本" : stdgo.GoString), ("語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str(230)?.__copy__(), stdgo.Go.str(151, 165, 230)?.__copy__(), stdgo.Go.str(156, 172, "語")?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("Hello" : stdgo.GoString), (", " : stdgo.GoString), ("World" : stdgo.GoString), ("!" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("Hello" : stdgo.GoString), (", " : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("World" : stdgo.GoString), ("!" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
var _f100 : stdgo.GoString = ("ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff" : stdgo.GoString);
var _tokenList : stdgo.Slice<stdgo._internal.text.scanner.Scanner.T_token> = (new stdgo.Slice<stdgo._internal.text.scanner.Scanner.T_token>(141, 141, ...[
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// line comments" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("//" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("////" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// comment" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// /* comment */" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// // comment //" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), (("//" : stdgo.GoString) + _f100?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// general comments" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("/**/" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("/***/" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("/* comment */" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("/* // comment */" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("/* /* comment */" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("/*\n comment\n*/" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ((("/*" : stdgo.GoString) + _f100?.__copy__() : stdgo.GoString) + ("*/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// identifiers" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("a" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("a0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("foobar" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("abc123" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("LGTM" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("_" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("_abc123" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("abc123_" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("_abc_123_" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("_äöü" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("_本" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("äöü" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("本" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("a۰۱۸" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("foo६४" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), ("bar９８７６" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-2 : stdgo.GoInt32), _f100?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// decimal ints" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("1" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("9" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("42" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("1234567890" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// octal ints" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("00" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("01" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("07" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("042" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("01234567" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// hexadecimal ints" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0x0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0x1" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0xf" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0x42" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0x123456789abcDEF" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), (("0x" : stdgo.GoString) + _f100?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0X0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0X1" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0XF" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0X42" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), ("0X123456789abcDEF" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-3 : stdgo.GoInt32), (("0X" : stdgo.GoString) + _f100?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// floats" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("0." : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("1." : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("42." : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("01234567890." : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), (".0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), (".1" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), (".42" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), (".0123456789" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("0.0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("1.0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("42.0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("01234567890.0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("0e0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("1e0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("42e0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("01234567890e0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("0E0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("1E0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("42E0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("01234567890E0" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("0e+10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("1e-10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("42e+10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("01234567890e-10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("0E+10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("1E-10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("42E+10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-4 : stdgo.GoInt32), ("01234567890E-10" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// chars" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\' \'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'a\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'本\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\a\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\b\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\f\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\n\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\r\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\t\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\v\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\\'\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\000\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\777\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\x00\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\xff\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\u0000\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\ufA16\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\U00000000\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-5 : stdgo.GoInt32), ("\'\\U0000ffAB\'" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// strings" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\" \"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"a\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"本\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\a\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\b\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\f\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\n\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\r\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\t\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\v\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\\"\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\000\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\777\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\x00\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\xff\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\u0000\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\ufA16\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\U00000000\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ("\"\\U0000ffAB\"" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-6 : stdgo.GoInt32), ((("\"" : stdgo.GoString) + _f100?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// raw strings" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-7 : stdgo.GoInt32), ("``" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-7 : stdgo.GoInt32), ("`\\`" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-7 : stdgo.GoInt32), ("`\n\n/* foobar */\n\n`" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-7 : stdgo.GoInt32), ((("`" : stdgo.GoString) + _f100?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((-8 : stdgo.GoInt32), ("// individual characters" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((1 : stdgo.GoInt32), stdgo.Go.str(1)?.__copy__()) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((31 : stdgo.GoInt32), ((31 : stdgo.GoInt32) : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((43 : stdgo.GoInt32), ("+" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((47 : stdgo.GoInt32), ("/" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((46 : stdgo.GoInt32), ("." : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((126 : stdgo.GoInt32), ("~" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token),
(new stdgo._internal.text.scanner.Scanner.T_token((40 : stdgo.GoInt32), ("(" : stdgo.GoString)) : stdgo._internal.text.scanner.Scanner.T_token)].concat([for (i in 141 ... (141 > 141 ? 141 : 141 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.scanner.Scanner.T_token)])) : stdgo.Slice<stdgo._internal.text.scanner.Scanner.T_token>);
@:structInit @:using(stdgo._internal.text.scanner.Scanner.Position_static_extension) class Position {
    public var filename : stdgo.GoString = "";
    public var offset : stdgo.GoInt = 0;
    public var line : stdgo.GoInt = 0;
    public var column : stdgo.GoInt = 0;
    public function new(?filename:stdgo.GoString, ?offset:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt) {
        if (filename != null) this.filename = filename;
        if (offset != null) this.offset = offset;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Position(filename, offset, line, column);
    }
}
@:structInit @:using(stdgo._internal.text.scanner.Scanner.Scanner_static_extension) class Scanner {
    public var _src : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _srcBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1025, 1025, ...[for (i in 0 ... 1025) (0 : stdgo.GoUInt8)]);
    public var _srcPos : stdgo.GoInt = 0;
    public var _srcEnd : stdgo.GoInt = 0;
    public var _srcBufOffset : stdgo.GoInt = 0;
    public var _line : stdgo.GoInt = 0;
    public var _column : stdgo.GoInt = 0;
    public var _lastLineLen : stdgo.GoInt = 0;
    public var _lastCharLen : stdgo.GoInt = 0;
    public var _tokBuf : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
    public var _tokPos : stdgo.GoInt = 0;
    public var _tokEnd : stdgo.GoInt = 0;
    public var _ch : stdgo.GoInt32 = 0;
    public var error : (stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void = null;
    public var errorCount : stdgo.GoInt = 0;
    public var mode : stdgo.GoUInt = 0;
    public var whitespace : stdgo.GoUInt64 = 0;
    public var isIdentRune : (stdgo.GoInt32, stdgo.GoInt) -> Bool = null;
    @:embedded
    public var position : stdgo._internal.text.scanner.Scanner.Position = ({} : stdgo._internal.text.scanner.Scanner.Position);
    public function new(?_src:stdgo._internal.io.Io.Reader, ?_srcBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_srcPos:stdgo.GoInt, ?_srcEnd:stdgo.GoInt, ?_srcBufOffset:stdgo.GoInt, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt, ?_lastLineLen:stdgo.GoInt, ?_lastCharLen:stdgo.GoInt, ?_tokBuf:stdgo._internal.bytes.Bytes.Buffer, ?_tokPos:stdgo.GoInt, ?_tokEnd:stdgo.GoInt, ?_ch:stdgo.GoInt32, ?error:(stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void, ?errorCount:stdgo.GoInt, ?mode:stdgo.GoUInt, ?whitespace:stdgo.GoUInt64, ?isIdentRune:(stdgo.GoInt32, stdgo.GoInt) -> Bool, ?position:stdgo._internal.text.scanner.Scanner.Position) {
        if (_src != null) this._src = _src;
        if (_srcBuf != null) this._srcBuf = _srcBuf;
        if (_srcPos != null) this._srcPos = _srcPos;
        if (_srcEnd != null) this._srcEnd = _srcEnd;
        if (_srcBufOffset != null) this._srcBufOffset = _srcBufOffset;
        if (_line != null) this._line = _line;
        if (_column != null) this._column = _column;
        if (_lastLineLen != null) this._lastLineLen = _lastLineLen;
        if (_lastCharLen != null) this._lastCharLen = _lastCharLen;
        if (_tokBuf != null) this._tokBuf = _tokBuf;
        if (_tokPos != null) this._tokPos = _tokPos;
        if (_tokEnd != null) this._tokEnd = _tokEnd;
        if (_ch != null) this._ch = _ch;
        if (error != null) this.error = error;
        if (errorCount != null) this.errorCount = errorCount;
        if (mode != null) this.mode = mode;
        if (whitespace != null) this.whitespace = whitespace;
        if (isIdentRune != null) this.isIdentRune = isIdentRune;
        if (position != null) this.position = position;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function isValid():Bool return position.isValid();
    @:embedded
    public function string():stdgo.GoString return position.string();
    public function __copy__() {
        return new Scanner(
_src,
_srcBuf,
_srcPos,
_srcEnd,
_srcBufOffset,
_line,
_column,
_lastLineLen,
_lastCharLen,
_tokBuf,
_tokPos,
_tokEnd,
_ch,
error,
errorCount,
mode,
whitespace,
isIdentRune,
position);
    }
}
@:structInit @:using(stdgo._internal.text.scanner.Scanner.StringReader_static_extension) class StringReader {
    public var _data : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _step : stdgo.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.GoString>, ?_step:stdgo.GoInt) {
        if (_data != null) this._data = _data;
        if (_step != null) this._step = _step;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringReader(_data, _step);
    }
}
@:structInit @:private class T_token {
    public var _tok : stdgo.GoInt32 = 0;
    public var _text : stdgo.GoString = "";
    public function new(?_tok:stdgo.GoInt32, ?_text:stdgo.GoString) {
        if (_tok != null) this._tok = _tok;
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_token(_tok, _text);
    }
}
@:structInit @:private @:using(stdgo._internal.text.scanner.Scanner.T_errReader_static_extension) class T_errReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errReader();
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
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.text.scanner.Scanner.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _tok : stdgo.GoInt32;
    public var _src : stdgo.GoString;
    public var _tokens : stdgo.GoString;
    public var _err : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.text.scanner.Scanner.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _in : stdgo.GoString;
    public var _want : stdgo.GoString;
    public var _mode : stdgo.GoUInt;
};
@:named @:using(stdgo._internal.text.scanner.Scanner.T_countReader_static_extension) typedef T_countReader = stdgo.GoInt;
function tokenString(_tok:stdgo.GoRune):stdgo.GoString {
        {
            var __tmp__ = (_tokenString != null && _tokenString.exists(_tok) ? { _0 : _tokenString[_tok], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                return _s?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface((_tok : stdgo.GoString)))?.__copy__();
    }
function _lower(_ch:stdgo.GoRune):stdgo.GoRune {
        return ((32 : stdgo.GoInt32) | _ch : stdgo.GoInt32);
    }
function _isDecimal(_ch:stdgo.GoRune):Bool {
        return (((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool);
    }
function _isHex(_ch:stdgo.GoRune):Bool {
        return ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= _lower(_ch) : Bool) && (_lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
function _litname(_prefix:stdgo.GoRune):stdgo.GoString {
        {
            final __value__ = _prefix;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                return ("hexadecimal literal" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((48 : stdgo.GoInt32))) {
                return ("octal literal" : stdgo.GoString);
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                return ("binary literal" : stdgo.GoString);
            } else {
                return ("decimal literal" : stdgo.GoString);
            };
        };
    }
function _invalidSep(_x:stdgo.GoString):stdgo.GoInt {
        var _x1 = (32 : stdgo.GoInt32);
        var _d = (46 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        if ((((_x.length) >= (2 : stdgo.GoInt) : Bool) && (_x[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _x1 = _lower((_x[(1 : stdgo.GoInt)] : stdgo.GoRune));
            if (((_x1 == ((120 : stdgo.GoInt32)) || _x1 == ((111 : stdgo.GoInt32)) : Bool) || (_x1 == (98 : stdgo.GoInt32)) : Bool)) {
                _d = (48 : stdgo.GoInt32);
                _i = (2 : stdgo.GoInt);
            };
        };
        stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
            var _p = _d;
            _d = (_x[(_i : stdgo.GoInt)] : stdgo.GoRune);
            if (_d == ((95 : stdgo.GoInt32))) {
                if (_p != ((48 : stdgo.GoInt32))) {
                    return _i;
                };
            } else if ((_isDecimal(_d) || (_x1 == ((120 : stdgo.GoInt32)) && _isHex(_d) : Bool) : Bool)) {
                _d = (48 : stdgo.GoInt32);
            } else {
                if (_p == ((95 : stdgo.GoInt32))) {
                    return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _d = (46 : stdgo.GoInt32);
            };
        });
        if (_d == ((95 : stdgo.GoInt32))) {
            return ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
function _digitVal(_ch:stdgo.GoRune):stdgo.GoInt {
        if ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        } else if ((((97 : stdgo.GoInt32) <= _lower(_ch) : Bool) && (_lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            return (((_lower(_ch) - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        };
        return (16 : stdgo.GoInt);
    }
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void {
        var _got = stdgo.Go.str()?.__copy__();
        var _want = stdgo._internal.strings.Strings.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__();
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : stdgo._internal.text.scanner.Scanner.StringReader)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.StringReader>)));
        while (true) {
            var _ch = _s.next();
            if (_ch == ((-1 : stdgo.GoInt32))) {
                break;
            };
            _got = (_got + ((_ch : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_got != (_want)) {
            _t.errorf(("segments=%v got=%s want=%s" : stdgo.GoString), stdgo.Go.toInterface(_segments), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testNext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _s in _segmentList) {
            _readRuneSegments(_t, _s);
        };
    }
function _makeSource(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer> {
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        for (__0 => _k in _tokenList) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _pattern?.__copy__(), stdgo.Go.toInterface(_k._text));
        };
        return (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
    }
function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void {
        if (_got != (_want)) {
            _t.fatalf(("tok = %s, want %s for %q" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_got)), stdgo.Go.toInterface(tokenString(_want)), stdgo.Go.toInterface(_text));
        };
        if (_s.position.line != (_line)) {
            _t.errorf(("line = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.position.line), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_text));
        };
        var _stext = _s.tokenText()?.__copy__();
        if (_stext != (_text)) {
            _t.errorf(("text = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_stext), stdgo.Go.toInterface(_text));
        } else {
            _stext = _s.tokenText()?.__copy__();
            if (_stext != (_text)) {
                _t.errorf(("text = %q, want %q (idempotency check)" : stdgo.GoString), stdgo.Go.toInterface(_stext), stdgo.Go.toInterface(_text));
            };
        };
    }
function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void {
        var _prevCount = _s.errorCount;
        _checkTok(_t, _s, _line, _s.scan(), _want, _text?.__copy__());
        if (_s.errorCount != ((_prevCount + (1 : stdgo.GoInt) : stdgo.GoInt))) {
            _t.fatalf(("want error for %q" : stdgo.GoString), stdgo.Go.toInterface(_text));
        };
    }
function _countNewlines(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (__0 => _ch in _s) {
            if (_ch == ((10 : stdgo.GoInt32))) {
                _n++;
            };
        };
        return _n;
    }
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _mode:stdgo.GoUInt):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(_makeSource((" \t%s\n" : stdgo.GoString))));
        _s.mode = _mode;
        var _tok = _s.scan();
        var _line = (1 : stdgo.GoInt);
        for (__0 => _k in _tokenList) {
            if ((((_mode & (512u32 : stdgo.GoUInt) : stdgo.GoUInt) == (0u32 : stdgo.GoUInt)) || (_k._tok != (-8 : stdgo.GoInt32)) : Bool)) {
                _checkTok(_t, _s, _line, _tok, _k._tok, _k._text?.__copy__());
                _tok = _s.scan();
            };
            _line = (_line + ((_countNewlines(_k._text?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        _checkTok(_t, _s, _line, _tok, (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
    }
function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testScan(_t, (1012u32 : stdgo.GoUInt));
        _testScan(_t, (500u32 : stdgo.GoUInt));
    }
function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("1.5e 1.5E 1e+ 1e- 1.5z" : stdgo.GoString))));
        _s.error = function(_s:stdgo.Ref<Scanner>, _msg:stdgo.GoString):Void {
            {};
            if (_msg != (("exponent has no digits" : stdgo.GoString))) {
                _t.errorf(("%s: got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s.tokenText()), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(("exponent has no digits" : stdgo.GoString)));
            };
        };
        _checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5e" : stdgo.GoString));
        _checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5E" : stdgo.GoString));
        _checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e+" : stdgo.GoString));
        _checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e-" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-4 : stdgo.GoInt32), ("1.5" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("z" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        if (_s.errorCount != ((4 : stdgo.GoInt))) {
            _t.errorf(("%d errors, want 4" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
function testPosition(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _src = _makeSource(("\t\t\t\t%s\n" : stdgo.GoString));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        _s.mode = (500u32 : stdgo.GoUInt);
        _s.scan();
        var _pos = (new stdgo._internal.text.scanner.Scanner.Position(stdgo.Go.str()?.__copy__(), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.text.scanner.Scanner.Position);
        for (__0 => _k in _tokenList) {
            if (_s.position.offset != (_pos.offset)) {
                _t.errorf(("offset = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.position.offset), stdgo.Go.toInterface(_pos.offset), stdgo.Go.toInterface(_k._text));
            };
            if (_s.position.line != (_pos.line)) {
                _t.errorf(("line = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.position.line), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_k._text));
            };
            if (_s.position.column != (_pos.column)) {
                _t.errorf(("column = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.position.column), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_k._text));
            };
            _pos.offset = (_pos.offset + ((((4 : stdgo.GoInt) + (_k._text.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _pos.line = (_pos.line + ((_countNewlines(_k._text?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _s.scan();
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _src = _makeSource(("%s\n" : stdgo.GoString));
        var _str = (_src.string() : stdgo.GoString)?.__copy__();
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        _s.mode = (0u32 : stdgo.GoUInt);
        _s.whitespace = (0i64 : stdgo.GoUInt64);
        var _tok = _s.scan();
        for (_i => _ch in _str) {
            if (_tok != (_ch)) {
                _t.fatalf(("%d. tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(tokenString(_tok)), stdgo.Go.toInterface(tokenString(_ch)));
            };
            _tok = _s.scan();
        };
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.fatalf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_tok)));
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoRune):Void {
        var _src = _makeSource(("%s\n" : stdgo.GoString));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        _s.mode = _mode;
        var _tok = _s.scan();
        while (_tok != ((-1 : stdgo.GoInt32))) {
            if (((_tok < (0 : stdgo.GoInt32) : Bool) && (_tok != _class) : Bool)) {
                _t.fatalf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_tok)), stdgo.Go.toInterface(tokenString(_class)));
            };
            _tok = _s.scan();
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
function testScanSelectedMask(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testScanSelectedMode(_t, (0u32 : stdgo.GoUInt), (0 : stdgo.GoInt32));
        _testScanSelectedMode(_t, (4u32 : stdgo.GoUInt), (-2 : stdgo.GoInt32));
        _testScanSelectedMode(_t, (32u32 : stdgo.GoUInt), (-5 : stdgo.GoInt32));
        _testScanSelectedMode(_t, (64u32 : stdgo.GoUInt), (-6 : stdgo.GoInt32));
        _testScanSelectedMode(_t, (512u32 : stdgo.GoUInt), (0 : stdgo.GoInt32));
        _testScanSelectedMode(_t, (256u32 : stdgo.GoUInt), (-8 : stdgo.GoInt32));
    }
function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("faab12345 a12b123 a12 3b" : stdgo.GoString))));
        _s.isIdentRune = function(_ch:stdgo.GoRune, _i:stdgo.GoInt):Bool {
            return ((_i == ((0 : stdgo.GoInt)) && (((_ch == (97 : stdgo.GoInt32)) || (_ch == (98 : stdgo.GoInt32)) : Bool)) : Bool) || (((((0 : stdgo.GoInt) < _i : Bool) && (_i < (4 : stdgo.GoInt) : Bool) : Bool) && ((48 : stdgo.GoInt32) <= _ch : Bool) : Bool) && (_ch <= (51 : stdgo.GoInt32) : Bool) : Bool) : Bool);
        };
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (102 : stdgo.GoInt32), ("f" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b123" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-3 : stdgo.GoInt32), ("45" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a12" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b123" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a12" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-3 : stdgo.GoInt32), ("3" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
    }
function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var boms = ((65279 : stdgo.GoInt32) : stdgo.GoString);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader((((((boms + ("if a == bcd /* com" : stdgo.GoString)?.__copy__() : stdgo.GoString) + boms?.__copy__() : stdgo.GoString) + ("ment */ {\n\ta += c\n}" : stdgo.GoString)?.__copy__() : stdgo.GoString) + boms?.__copy__() : stdgo.GoString) + ("// line comment ending in eof" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("if" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (61 : stdgo.GoInt32), ("=" : stdgo.GoString));
        _checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (61 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        _checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (32 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        _checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (98 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("cd" : stdgo.GoString));
        _checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (123 : stdgo.GoInt32), ("{" : stdgo.GoString));
        _checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        _checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (43 : stdgo.GoInt32), ("+" : stdgo.GoString));
        _checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (61 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        _checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("c" : stdgo.GoString));
        _checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (125 : stdgo.GoInt32), ("}" : stdgo.GoString));
        _checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (65279 : stdgo.GoInt32), boms?.__copy__());
        _checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _ws:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _ch = ((1 : stdgo.GoUInt8) : stdgo.GoByte);
            stdgo.Go.cfor((_ch < (32 : stdgo.GoUInt8) : Bool), _ch++, {
                _buf.writeByte(_ch);
                _ws = (_ws | (((1i64 : stdgo.GoUInt64) << _ch : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
        {};
        _buf.writeByte((120 : stdgo.GoUInt8));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        _s.mode = (0u32 : stdgo.GoUInt);
        _s.whitespace = _ws;
        var _tok = _s.scan();
        if (_tok != ((120 : stdgo.GoInt32))) {
            _t.errorf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_tok)), stdgo.Go.toInterface(tokenString((120 : stdgo.GoInt32))));
        };
    }
function _testError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoRune):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_src?.__copy__())));
        var _errorCalled = false;
        _s.error = function(_s:stdgo.Ref<Scanner>, _m:stdgo.GoString):Void {
            if (!_errorCalled) {
                {
                    var _p = (_s.pos().string() : stdgo.GoString)?.__copy__();
                    if (_p != (_pos)) {
                        _t.errorf(("pos = %q, want %q for %q" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_src));
                    };
                };
                if (_m != (_msg)) {
                    _t.errorf(("msg = %q, want %q for %q" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_src));
                };
                _errorCalled = true;
            };
        };
        var _tk = _s.scan();
        if (_tk != (_tok)) {
            _t.errorf(("tok = %s, want %s for %q" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_tk)), stdgo.Go.toInterface(tokenString(_tok)), stdgo.Go.toInterface(_src));
        };
        if (!_errorCalled) {
            _t.errorf(("error handler not called for %q" : stdgo.GoString), stdgo.Go.toInterface(_src));
        };
        if (_s.errorCount == ((0 : stdgo.GoInt))) {
            _t.errorf(("count = %d, want > 0 for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount), stdgo.Go.toInterface(_src));
        };
    }
function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testError(_t, stdgo.Go.str(0)?.__copy__(), ("<input>:1:1" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (0 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str(128)?.__copy__(), ("<input>:1:1" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (65533 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str(255)?.__copy__(), ("<input>:1:1" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (65533 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("a", 0)?.__copy__(), ("<input>:1:2" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (-2 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("ab", 128)?.__copy__(), ("<input>:1:3" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-2 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("abc", 255)?.__copy__(), ("<input>:1:4" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-2 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("\"a", 0)?.__copy__(), ("<input>:1:3" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (-6 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("\"ab", 128)?.__copy__(), ("<input>:1:4" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-6 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("\"abc", 255)?.__copy__(), ("<input>:1:5" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-6 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("`a", 0)?.__copy__(), ("<input>:1:3" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (-7 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("`ab", 128)?.__copy__(), ("<input>:1:4" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-7 : stdgo.GoInt32));
        _testError(_t, stdgo.Go.str("`abc", 255)?.__copy__(), ("<input>:1:5" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-7 : stdgo.GoInt32));
        _testError(_t, ("\'\\\"\'" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("invalid char escape" : stdgo.GoString), (-5 : stdgo.GoInt32));
        _testError(_t, ("\"\\\'\"" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("invalid char escape" : stdgo.GoString), (-6 : stdgo.GoInt32));
        _testError(_t, ("01238" : stdgo.GoString), ("<input>:1:6" : stdgo.GoString), ("invalid digit \'8\' in octal literal" : stdgo.GoString), (-3 : stdgo.GoInt32));
        _testError(_t, ("01238123" : stdgo.GoString), ("<input>:1:9" : stdgo.GoString), ("invalid digit \'8\' in octal literal" : stdgo.GoString), (-3 : stdgo.GoInt32));
        _testError(_t, ("0x" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("hexadecimal literal has no digits" : stdgo.GoString), (-3 : stdgo.GoInt32));
        _testError(_t, ("0xg" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("hexadecimal literal has no digits" : stdgo.GoString), (-3 : stdgo.GoInt32));
        _testError(_t, ("\'aa\'" : stdgo.GoString), ("<input>:1:4" : stdgo.GoString), ("invalid char literal" : stdgo.GoString), (-5 : stdgo.GoInt32));
        _testError(_t, ("1.5e" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        _testError(_t, ("1.5E" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        _testError(_t, ("1.5e+" : stdgo.GoString), ("<input>:1:6" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        _testError(_t, ("1.5e-" : stdgo.GoString), ("<input>:1:6" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        _testError(_t, ("\'" : stdgo.GoString), ("<input>:1:2" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-5 : stdgo.GoInt32));
        _testError(_t, ("\'\n" : stdgo.GoString), ("<input>:1:2" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-5 : stdgo.GoInt32));
        _testError(_t, ("\"abc" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-6 : stdgo.GoInt32));
        _testError(_t, ("\"abc\n" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-6 : stdgo.GoInt32));
        _testError(_t, ("`abc\n" : stdgo.GoString), ("<input>:2:1" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-7 : stdgo.GoInt32));
        _testError(_t, ("/*/" : stdgo.GoString), ("<input>:1:4" : stdgo.GoString), ("comment not terminated" : stdgo.GoString), (-1 : stdgo.GoInt32));
    }
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface((new stdgo._internal.text.scanner.Scanner.T_errReader() : stdgo._internal.text.scanner.Scanner.T_errReader)));
        var _errorCalled = false;
        _s.error = function(_s:stdgo.Ref<Scanner>, _msg:stdgo.GoString):Void {
            if (!_errorCalled) {
                {
                    var _want = stdgo._internal.io.Io.errNoProgress.error()?.__copy__();
                    if (_msg != (_want)) {
                        _t.errorf(("msg = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_want));
                    };
                };
                _errorCalled = true;
            };
        };
        var _tok = _s.scan();
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.errorf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_tok)));
        };
        if (!_errorCalled) {
            _t.errorf(("error handler not called" : stdgo.GoString));
        };
    }
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _got:Position, _want:Position):Void {
        if (((_got.offset != (_want.offset) || _got.line != (_want.line) : Bool) || (_got.column != _want.column) : Bool)) {
            _t.errorf(("got offset, line, column = %d, %d, %d; want %d, %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_got.offset), stdgo.Go.toInterface(_got.line), stdgo.Go.toInterface(_got.column), stdgo.Go.toInterface(_want.offset), stdgo.Go.toInterface(_want.line), stdgo.Go.toInterface(_want.column));
        };
    }
function _checkNextPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void {
        {
            var _ch = _s.next();
            if (_ch != (_char)) {
                _t.errorf(("ch = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_ch)), stdgo.Go.toInterface(tokenString(_char)));
            };
        };
        var _want = ({ offset : _offset, line : _line, column : _column } : stdgo._internal.text.scanner.Scanner.Position);
        _checkPos(_t, _s.pos()?.__copy__(), _want?.__copy__());
    }
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void {
        var _want = ({ offset : _offset, line : _line, column : _column } : stdgo._internal.text.scanner.Scanner.Position);
        _checkPos(_t, _s.pos()?.__copy__(), _want?.__copy__());
        {
            var _ch = _s.scan();
            if (_ch != (_char)) {
                _t.errorf(("ch = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(tokenString(_ch)), stdgo.Go.toInterface(tokenString(_char)));
                if ((_ch : stdgo.GoString) != (_s.tokenText())) {
                    _t.errorf(("tok = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s.tokenText()), stdgo.Go.toInterface((_ch : stdgo.GoString)));
                };
            };
        };
        _checkPos(_t, _s.position?.__copy__(), _want?.__copy__());
    }
function testPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo.Go.str()?.__copy__())));
        _checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner.Position));
        _s.peek();
        _checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner.Position));
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n" : stdgo.GoString))));
        _checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner.Position));
        _checkNextPos(_t, _s, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                _checkScanPos(_t, _s, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt32));
            });
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("本" : stdgo.GoString))));
        _checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner.Position));
        _checkNextPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                _checkScanPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt32));
            });
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("  foo६४  \n\n本語\n" : stdgo.GoString))));
        _checkNextPos(_t, _s, (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (32 : stdgo.GoInt32));
        _s.peek();
        _checkNextPos(_t, _s, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (32 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (102 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (111 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (5 : stdgo.GoInt), (1 : stdgo.GoInt), (6 : stdgo.GoInt), (111 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (8 : stdgo.GoInt), (1 : stdgo.GoInt), (7 : stdgo.GoInt), (2412 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (11 : stdgo.GoInt), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (2410 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (12 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoInt), (32 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (13 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt), (32 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (14 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (15 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (18 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (21 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (35486 : stdgo.GoInt32));
        _checkNextPos(_t, _s, (22 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                _checkScanPos(_t, _s, (22 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt32));
            });
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abc\n本語\n\nx" : stdgo.GoString))));
        _s.mode = (0u32 : stdgo.GoUInt);
        _s.whitespace = (0i64 : stdgo.GoUInt64);
        _checkScanPos(_t, _s, (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (97 : stdgo.GoInt32));
        _s.peek();
        _checkScanPos(_t, _s, (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (98 : stdgo.GoInt32));
        _checkScanPos(_t, _s, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (99 : stdgo.GoInt32));
        _checkScanPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (10 : stdgo.GoInt32));
        _checkScanPos(_t, _s, (4 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        _checkScanPos(_t, _s, (7 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (35486 : stdgo.GoInt32));
        _checkScanPos(_t, _s, (10 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (10 : stdgo.GoInt32));
        _checkScanPos(_t, _s, (11 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        _checkScanPos(_t, _s, (12 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (120 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                _checkScanPos(_t, _s, (13 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt32));
            });
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
function testNextEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r:T_countReader = ((0 : stdgo.GoInt) : stdgo._internal.text.scanner.Scanner.T_countReader);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo.Go.pointer(_r)));
        var _tok = _s.next();
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.error(stdgo.Go.toInterface(("1) EOF not reported" : stdgo.GoString)));
        };
        _tok = _s.peek();
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.error(stdgo.Go.toInterface(("2) EOF not reported" : stdgo.GoString)));
        };
        if (_r != ((1 : stdgo._internal.text.scanner.Scanner.T_countReader))) {
            _t.errorf(("scanner called Read %d times, not once" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
    }
function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r:T_countReader = ((0 : stdgo.GoInt) : stdgo._internal.text.scanner.Scanner.T_countReader);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo.Go.pointer(_r)));
        var _tok = _s.scan();
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.error(stdgo.Go.toInterface(("1) EOF not reported" : stdgo.GoString)));
        };
        _tok = _s.peek();
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.error(stdgo.Go.toInterface(("2) EOF not reported" : stdgo.GoString)));
        };
        if (_r != ((1 : stdgo._internal.text.scanner.Scanner.T_countReader))) {
            _t.errorf(("scanner called Read %d times, not once" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
    }
function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("x \"" : stdgo.GoString))));
        _s.error = function(_s:stdgo.Ref<Scanner>, __0:stdgo.GoString):Void {
            var _got = _s.tokenText()?.__copy__();
            {};
            if (_got != (("\"" : stdgo.GoString))) {
                _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("\"" : stdgo.GoString)));
            };
        };
        {
            var _r = _s.scan();
            stdgo.Go.cfor(_r != ((-1 : stdgo.GoInt32)), _r = _s.scan(), {});
        };
    }
function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_0>(95, 95, ...[
({ _tok : (-3 : stdgo.GoInt32), _src : ("0b0" : stdgo.GoString), _tokens : ("0b0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0b1010" : stdgo.GoString), _tokens : ("0b1010" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0B1110" : stdgo.GoString), _tokens : ("0B1110" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0b" : stdgo.GoString), _tokens : ("0b" : stdgo.GoString), _err : ("binary literal has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0b0190" : stdgo.GoString), _tokens : ("0b0190" : stdgo.GoString), _err : ("invalid digit \'9\' in binary literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0b01a0" : stdgo.GoString), _tokens : ("0b01 a0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0b." : stdgo.GoString), _tokens : ("0b." : stdgo.GoString), _err : ("invalid radix point in binary literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0b.1" : stdgo.GoString), _tokens : ("0b.1" : stdgo.GoString), _err : ("invalid radix point in binary literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0b1.0" : stdgo.GoString), _tokens : ("0b1.0" : stdgo.GoString), _err : ("invalid radix point in binary literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0b1e10" : stdgo.GoString), _tokens : ("0b1e10" : stdgo.GoString), _err : ("\'e\' exponent requires decimal mantissa" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0b1P-1" : stdgo.GoString), _tokens : ("0b1P-1" : stdgo.GoString), _err : ("\'P\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o0" : stdgo.GoString), _tokens : ("0o0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o1234" : stdgo.GoString), _tokens : ("0o1234" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0O1234" : stdgo.GoString), _tokens : ("0O1234" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o" : stdgo.GoString), _tokens : ("0o" : stdgo.GoString), _err : ("octal literal has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o8123" : stdgo.GoString), _tokens : ("0o8123" : stdgo.GoString), _err : ("invalid digit \'8\' in octal literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o1293" : stdgo.GoString), _tokens : ("0o1293" : stdgo.GoString), _err : ("invalid digit \'9\' in octal literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o12a3" : stdgo.GoString), _tokens : ("0o12 a3" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0o." : stdgo.GoString), _tokens : ("0o." : stdgo.GoString), _err : ("invalid radix point in octal literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0o.2" : stdgo.GoString), _tokens : ("0o.2" : stdgo.GoString), _err : ("invalid radix point in octal literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0o1.2" : stdgo.GoString), _tokens : ("0o1.2" : stdgo.GoString), _err : ("invalid radix point in octal literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0o1E+2" : stdgo.GoString), _tokens : ("0o1E+2" : stdgo.GoString), _err : ("\'E\' exponent requires decimal mantissa" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0o1p10" : stdgo.GoString), _tokens : ("0o1p10" : stdgo.GoString), _err : ("\'p\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0" : stdgo.GoString), _tokens : ("0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0123" : stdgo.GoString), _tokens : ("0123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("08123" : stdgo.GoString), _tokens : ("08123" : stdgo.GoString), _err : ("invalid digit \'8\' in octal literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("01293" : stdgo.GoString), _tokens : ("01293" : stdgo.GoString), _err : ("invalid digit \'9\' in octal literal" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0F." : stdgo.GoString), _tokens : ("0 F ." : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0123F." : stdgo.GoString), _tokens : ("0123 F ." : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0123456x" : stdgo.GoString), _tokens : ("0123456 x" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("1" : stdgo.GoString), _tokens : ("1" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("1234" : stdgo.GoString), _tokens : ("1234" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("1f" : stdgo.GoString), _tokens : ("1 f" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0." : stdgo.GoString), _tokens : ("0." : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("123." : stdgo.GoString), _tokens : ("123." : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0123." : stdgo.GoString), _tokens : ("0123." : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : (".0" : stdgo.GoString), _tokens : (".0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : (".123" : stdgo.GoString), _tokens : (".123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : (".0123" : stdgo.GoString), _tokens : (".0123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0.0" : stdgo.GoString), _tokens : ("0.0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("123.123" : stdgo.GoString), _tokens : ("123.123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0123.0123" : stdgo.GoString), _tokens : ("0123.0123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0e0" : stdgo.GoString), _tokens : ("0e0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("123e+0" : stdgo.GoString), _tokens : ("123e+0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0123E-1" : stdgo.GoString), _tokens : ("0123E-1" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0.e+1" : stdgo.GoString), _tokens : ("0.e+1" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("123.E-10" : stdgo.GoString), _tokens : ("123.E-10" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0123.e123" : stdgo.GoString), _tokens : ("0123.e123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : (".0e-1" : stdgo.GoString), _tokens : (".0e-1" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : (".123E+10" : stdgo.GoString), _tokens : (".123E+10" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : (".0123E123" : stdgo.GoString), _tokens : (".0123E123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0.0e1" : stdgo.GoString), _tokens : ("0.0e1" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("123.123E-10" : stdgo.GoString), _tokens : ("123.123E-10" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0123.0123e+456" : stdgo.GoString), _tokens : ("0123.0123e+456" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0e" : stdgo.GoString), _tokens : ("0e" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0E+" : stdgo.GoString), _tokens : ("0E+" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("1e+f" : stdgo.GoString), _tokens : ("1e+ f" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0p0" : stdgo.GoString), _tokens : ("0p0" : stdgo.GoString), _err : ("\'p\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("1.0P-1" : stdgo.GoString), _tokens : ("1.0P-1" : stdgo.GoString), _err : ("\'P\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0x0" : stdgo.GoString), _tokens : ("0x0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0x1234" : stdgo.GoString), _tokens : ("0x1234" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0xcafef00d" : stdgo.GoString), _tokens : ("0xcafef00d" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0XCAFEF00D" : stdgo.GoString), _tokens : ("0XCAFEF00D" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0x" : stdgo.GoString), _tokens : ("0x" : stdgo.GoString), _err : ("hexadecimal literal has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0x1g" : stdgo.GoString), _tokens : ("0x1 g" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x0p0" : stdgo.GoString), _tokens : ("0x0p0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x12efp-123" : stdgo.GoString), _tokens : ("0x12efp-123" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0xABCD.p+0" : stdgo.GoString), _tokens : ("0xABCD.p+0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x.0189P-0" : stdgo.GoString), _tokens : ("0x.0189P-0" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x1.ffffp+1023" : stdgo.GoString), _tokens : ("0x1.ffffp+1023" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x." : stdgo.GoString), _tokens : ("0x." : stdgo.GoString), _err : ("hexadecimal literal has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x0." : stdgo.GoString), _tokens : ("0x0." : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x.0" : stdgo.GoString), _tokens : ("0x.0" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x1.1" : stdgo.GoString), _tokens : ("0x1.1" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x1.1e0" : stdgo.GoString), _tokens : ("0x1.1e0" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x1.2gp1a" : stdgo.GoString), _tokens : ("0x1.2 gp1a" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x0p" : stdgo.GoString), _tokens : ("0x0p" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0xeP-" : stdgo.GoString), _tokens : ("0xeP-" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x1234PAB" : stdgo.GoString), _tokens : ("0x1234P AB" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x1.2p1a" : stdgo.GoString), _tokens : ("0x1.2p1 a" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0b_1000_0001" : stdgo.GoString), _tokens : ("0b_1000_0001" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o_600" : stdgo.GoString), _tokens : ("0o_600" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0_466" : stdgo.GoString), _tokens : ("0_466" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("1_000" : stdgo.GoString), _tokens : ("1_000" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("1_000.000_1" : stdgo.GoString), _tokens : ("1_000.000_1" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0x_f00d" : stdgo.GoString), _tokens : ("0x_f00d" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x_f00d.0p1_2" : stdgo.GoString), _tokens : ("0x_f00d.0p1_2" : stdgo.GoString), _err : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0b__1000" : stdgo.GoString), _tokens : ("0b__1000" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0o60___0" : stdgo.GoString), _tokens : ("0o60___0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0466_" : stdgo.GoString), _tokens : ("0466_" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("1_." : stdgo.GoString), _tokens : ("1_." : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0._1" : stdgo.GoString), _tokens : ("0._1" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("2.7_e0" : stdgo.GoString), _tokens : ("2.7_e0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-3 : stdgo.GoInt32), _src : ("0x___0" : stdgo.GoString), _tokens : ("0x___0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0),
({ _tok : (-4 : stdgo.GoInt32), _src : ("0x1.0_p0" : stdgo.GoString), _tokens : ("0x1.0_p0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : T__struct_0)].concat([for (i in 95 ... (95 > 95 ? 95 : 95 : stdgo.GoInt).toBasic()) ({ _tok : (0 : stdgo.GoInt32), _src : ("" : stdgo.GoString), _tokens : ("" : stdgo.GoString), _err : ("" : stdgo.GoString) } : T__struct_0)])) : stdgo.Slice<T__struct_0>)) {
            var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_test._src?.__copy__())));
            var _err:stdgo.GoString = ("" : stdgo.GoString);
            _s.error = function(_s:stdgo.Ref<Scanner>, _msg:stdgo.GoString):Void {
                if (_err == (stdgo.Go.str())) {
                    _err = _msg?.__copy__();
                };
            };
            for (_i => _want in stdgo._internal.strings.Strings.split(_test._tokens?.__copy__(), (" " : stdgo.GoString))) {
                _err = stdgo.Go.str()?.__copy__();
                var _tok = _s.scan();
                var _lit = _s.tokenText()?.__copy__();
                if (_i == ((0 : stdgo.GoInt))) {
                    if (_tok != (_test._tok)) {
                        _t.errorf(("%q: got token %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(tokenString(_tok)), stdgo.Go.toInterface(tokenString(_test._tok)));
                    };
                    if (_err != (_test._err)) {
                        _t.errorf(("%q: got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err));
                    };
                };
                if (_lit != (_want)) {
                    _t.errorf(("%q: got literal %q (%s); want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(tokenString(_tok)), stdgo.Go.toInterface(_want));
                };
            };
            {
                var _tok = _s.scan();
                if (_tok != ((-1 : stdgo.GoInt32))) {
                    _t.errorf(("%q: got %s; want EOF" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(tokenString(_tok)));
                };
            };
        };
    }
function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_1>(6, 6, ...[({ _in : ("foo01.bar31.xx-0-1-1-0" : stdgo.GoString), _want : ("01 31 0 1 1 0" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : T__struct_1), ({ _in : ("foo0/12/0/5.67" : stdgo.GoString), _want : ("0 12 0 5 67" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : T__struct_1), ({ _in : ("xxx1e0yyy" : stdgo.GoString), _want : ("1 0" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : T__struct_1), ({ _in : ("1_2" : stdgo.GoString), _want : ("1_2" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : T__struct_1), ({ _in : ("xxx1.0yyy2e3ee" : stdgo.GoString), _want : ("1 0 2 3" : stdgo.GoString), _mode : (8u32 : stdgo.GoUInt) } : T__struct_1), ({ _in : ("xxx1.0yyy2e3ee" : stdgo.GoString), _want : ("1.0 2e3" : stdgo.GoString), _mode : (16u32 : stdgo.GoUInt) } : T__struct_1)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _mode : (0 : stdgo.GoUInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>)) {
            var _got = _extractInts(_test._in?.__copy__(), _test._mode)?.__copy__();
            if (_got != (_test._want)) {
                _t.errorf(("%q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):stdgo.GoString {
        var _res = ("" : stdgo.GoString);
        var _s:Scanner = ({} : stdgo._internal.text.scanner.Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_t?.__copy__())));
        _s.mode = _mode;
        while (true) {
            {
                var _tok = _s.scan();
                {
                    final __value__ = _tok;
                    if (__value__ == ((-3 : stdgo.GoInt32)) || __value__ == ((-4 : stdgo.GoInt32))) {
                        if (((_res.length) > (0 : stdgo.GoInt) : Bool)) {
                            _res = (_res + ((" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _res = (_res + (_s.tokenText())?.__copy__() : stdgo.GoString);
                    } else if (__value__ == ((-1 : stdgo.GoInt32))) {
                        return _res;
                    };
                };
            };
        };
    }
function testIssue50909(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s:Scanner = ({} : stdgo._internal.text.scanner.Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("hello \n\nworld\n!\n" : stdgo.GoString))));
        _s.isIdentRune = function(_ch:stdgo.GoRune, __0:stdgo.GoInt):Bool {
            return _ch != ((10 : stdgo.GoInt32));
        };
        var _r = stdgo.Go.str()?.__copy__();
        var _n = (0 : stdgo.GoInt);
        while (((_s.scan() != (-1 : stdgo.GoInt32)) && (_n < (10 : stdgo.GoInt) : Bool) : Bool)) {
            _r = (_r + (_s.tokenText())?.__copy__() : stdgo.GoString);
            _n++;
        };
        {};
        {};
        if (((_r != ("hello world!" : stdgo.GoString)) || (_n != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("got %q (n = %d); want %q (n = %d)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(("hello world!" : stdgo.GoString)), stdgo.Go.toInterface((3 : stdgo.GoInt)));
        };
    }
class Position_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Position>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.scanner.Scanner.Position_asInterface) class Position_static_extension {
    @:keep
    static public function string( _pos:Position):stdgo.GoString {
        @:recv var _pos:Position = _pos?.__copy__();
        var _s = _pos.filename?.__copy__();
        if (_s == (stdgo.Go.str())) {
            _s = ("<input>" : stdgo.GoString);
        };
        if (_pos.isValid()) {
            _s = (_s + (stdgo._internal.fmt.Fmt.sprintf((":%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_pos.column)))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:keep
    static public function isValid( _pos:stdgo.Ref<Position>):Bool {
        @:recv var _pos:stdgo.Ref<Position> = _pos;
        return (_pos.line > (0 : stdgo.GoInt) : Bool);
    }
}
class Scanner_asInterface {
    @:keep
    public dynamic function tokenText():stdgo.GoString return __self__.value.tokenText();
    @:keep
    public dynamic function pos():Position return __self__.value.pos();
    @:keep
    public dynamic function scan():stdgo.GoRune return __self__.value.scan();
    @:keep
    public dynamic function _scanComment(_ch:stdgo.GoRune):stdgo.GoRune return __self__.value._scanComment(_ch);
    @:keep
    public dynamic function _scanChar():Void __self__.value._scanChar();
    @:keep
    public dynamic function _scanRawString():Void __self__.value._scanRawString();
    @:keep
    public dynamic function _scanString(_quote:stdgo.GoRune):stdgo.GoInt return __self__.value._scanString(_quote);
    @:keep
    public dynamic function _scanEscape(_quote:stdgo.GoRune):stdgo.GoRune return __self__.value._scanEscape(_quote);
    @:keep
    public dynamic function _scanDigits(_ch:stdgo.GoRune, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoRune return __self__.value._scanDigits(_ch, _base, _n);
    @:keep
    public dynamic function _scanNumber(_ch:stdgo.GoRune, _seenDot:Bool):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoRune; } return __self__.value._scanNumber(_ch, _seenDot);
    @:keep
    public dynamic function _digits(_ch0:stdgo.GoRune, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoRune>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } return __self__.value._digits(_ch0, _base, _invalid);
    @:keep
    public dynamic function _scanIdentifier():stdgo.GoRune return __self__.value._scanIdentifier();
    @:keep
    public dynamic function _isIdentRune(_ch:stdgo.GoRune, _i:stdgo.GoInt):Bool return __self__.value._isIdentRune(_ch, _i);
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:keep
    public dynamic function _error(_msg:stdgo.GoString):Void __self__.value._error(_msg);
    @:keep
    public dynamic function peek():stdgo.GoRune return __self__.value.peek();
    @:keep
    public dynamic function next():stdgo.GoRune return __self__.value.next();
    @:keep
    public dynamic function _next():stdgo.GoRune return __self__.value._next();
    @:keep
    public dynamic function init(_src:stdgo._internal.io.Io.Reader):stdgo.Ref<Scanner> return __self__.value.init(_src);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Scanner>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.scanner.Scanner.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    static public function tokenText( _s:stdgo.Ref<Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if ((_s._tokPos < (0 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        if ((_s._tokEnd < _s._tokPos : Bool)) {
            _s._tokEnd = _s._tokPos;
        };
        if (_s._tokBuf.len() == ((0 : stdgo.GoInt))) {
            return ((_s._srcBuf.__slice__(_s._tokPos, _s._tokEnd) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        };
        _s._tokBuf.write((_s._srcBuf.__slice__(_s._tokPos, _s._tokEnd) : stdgo.Slice<stdgo.GoUInt8>));
        _s._tokPos = _s._tokEnd;
        return (_s._tokBuf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<Scanner>):Position {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _pos = ({} : stdgo._internal.text.scanner.Scanner.Position);
        _pos.filename = _s.position.filename?.__copy__();
        _pos.offset = ((_s._srcBufOffset + _s._srcPos : stdgo.GoInt) - _s._lastCharLen : stdgo.GoInt);
        if ((_s._column > (0 : stdgo.GoInt) : Bool)) {
            _pos.line = _s._line;
            _pos.column = _s._column;
        } else if ((_s._lastLineLen > (0 : stdgo.GoInt) : Bool)) {
            _pos.line = (_s._line - (1 : stdgo.GoInt) : stdgo.GoInt);
            _pos.column = _s._lastLineLen;
        } else {
            _pos.line = (1 : stdgo.GoInt);
            _pos.column = (1 : stdgo.GoInt);
        };
        return _pos;
    }
    @:keep
    static public function scan( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _s:stdgo.Ref<Scanner> = _s;
            var _ch = _s.peek();
            _s._tokPos = (-1 : stdgo.GoInt);
            _s.position.line = (0 : stdgo.GoInt);
            @:label("redo") while ((_s.whitespace & (((1i64 : stdgo.GoUInt64) << (_ch : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                _ch = _s._next();
            };
            _s._tokBuf.reset();
            _s._tokPos = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
            _s.position.offset = (_s._srcBufOffset + _s._tokPos : stdgo.GoInt);
            if ((_s._column > (0 : stdgo.GoInt) : Bool)) {
                _s.position.line = _s._line;
                _s.position.column = _s._column;
            } else {
                _s.position.line = (_s._line - (1 : stdgo.GoInt) : stdgo.GoInt);
                _s.position.column = _s._lastLineLen;
            };
            var _tok = _ch;
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (_s._isIdentRune(_ch, (0 : stdgo.GoInt))) {
                        if ((_s.mode & (4u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                            _tok = (-2 : stdgo.GoInt32);
                            _ch = _s._scanIdentifier();
                        } else {
                            _ch = _s._next();
                        };
                        break;
                    } else if (_isDecimal(_ch)) {
                        if ((_s.mode & (24u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                            {
                                var __tmp__ = _s._scanNumber(_ch, false);
                                _tok = __tmp__._0;
                                _ch = __tmp__._1;
                            };
                        } else {
                            _ch = _s._next();
                        };
                        break;
                    } else {
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                {
                                    final __value__ = _ch;
                                    if (__value__ == ((-1 : stdgo.GoInt32))) {
                                        break;
                                        break;
                                    } else if (__value__ == ((34 : stdgo.GoInt32))) {
                                        if ((_s.mode & (64u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                            _s._scanString((34 : stdgo.GoInt32));
                                            _tok = (-6 : stdgo.GoInt32);
                                        };
                                        _ch = _s._next();
                                        break;
                                    } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                        if ((_s.mode & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                            _s._scanChar();
                                            _tok = (-5 : stdgo.GoInt32);
                                        };
                                        _ch = _s._next();
                                        break;
                                    } else if (__value__ == ((46 : stdgo.GoInt32))) {
                                        _ch = _s._next();
                                        if ((_isDecimal(_ch) && ((_s.mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                                            {
                                                var __tmp__ = _s._scanNumber(_ch, true);
                                                _tok = __tmp__._0;
                                                _ch = __tmp__._1;
                                            };
                                        };
                                        break;
                                    } else if (__value__ == ((47 : stdgo.GoInt32))) {
                                        _ch = _s._next();
                                        if (((((_ch == (47 : stdgo.GoInt32)) || (_ch == (42 : stdgo.GoInt32)) : Bool)) && ((_s.mode & (256u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                                            if ((_s.mode & (512u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                                _s._tokPos = (-1 : stdgo.GoInt);
                                                _ch = _s._scanComment(_ch);
                                                @:goto "redo";
                                            };
                                            _ch = _s._scanComment(_ch);
                                            _tok = (-8 : stdgo.GoInt32);
                                        };
                                        break;
                                    } else if (__value__ == ((96 : stdgo.GoInt32))) {
                                        if ((_s.mode & (128u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                            _s._scanRawString();
                                            _tok = (-7 : stdgo.GoInt32);
                                        };
                                        _ch = _s._next();
                                        break;
                                    } else {
                                        _ch = _s._next();
                                    };
                                };
                                break;
                            };
                        };
                    };
                    break;
                };
            };
            _s._tokEnd = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
            _s._ch = _ch;
            return _tok;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _scanComment( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_ch == ((47 : stdgo.GoInt32))) {
            _ch = _s._next();
            while (((_ch != (10 : stdgo.GoInt32)) && (_ch >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                _ch = _s._next();
            };
            return _ch;
        };
        _ch = _s._next();
        while (true) {
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                _s._error(("comment not terminated" : stdgo.GoString));
                break;
            };
            var _ch0 = _ch;
            _ch = _s._next();
            if (((_ch0 == (42 : stdgo.GoInt32)) && (_ch == (47 : stdgo.GoInt32)) : Bool)) {
                _ch = _s._next();
                break;
            };
        };
        return _ch;
    }
    @:keep
    static public function _scanChar( _s:stdgo.Ref<Scanner>):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s._scanString((39 : stdgo.GoInt32)) != ((1 : stdgo.GoInt))) {
            _s._error(("invalid char literal" : stdgo.GoString));
        };
    }
    @:keep
    static public function _scanRawString( _s:stdgo.Ref<Scanner>):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = _s._next();
        while (_ch != ((96 : stdgo.GoInt32))) {
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                _s._error(("literal not terminated" : stdgo.GoString));
                return;
            };
            _ch = _s._next();
        };
    }
    @:keep
    static public function _scanString( _s:stdgo.Ref<Scanner>, _quote:stdgo.GoRune):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _n = (0 : stdgo.GoInt);
        var _ch = _s._next();
        while (_ch != (_quote)) {
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                _s._error(("literal not terminated" : stdgo.GoString));
                return _n;
            };
            if (_ch == ((92 : stdgo.GoInt32))) {
                _ch = _s._scanEscape(_quote);
            } else {
                _ch = _s._next();
            };
            _n++;
        };
        return _n;
    }
    @:keep
    static public function _scanEscape( _s:stdgo.Ref<Scanner>, _quote:stdgo.GoRune):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = _s._next();
        {
            final __value__ = _ch;
            if (__value__ == ((97 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((110 : stdgo.GoInt32)) || __value__ == ((114 : stdgo.GoInt32)) || __value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == (_quote)) {
                _ch = _s._next();
            } else if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_ch, (8 : stdgo.GoInt), (3 : stdgo.GoInt));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (2 : stdgo.GoInt));
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (4 : stdgo.GoInt));
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (8 : stdgo.GoInt));
            } else {
                _s._error(("invalid char escape" : stdgo.GoString));
            };
        };
        return _ch;
    }
    @:keep
    static public function _scanDigits( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        while (((_n > (0 : stdgo.GoInt) : Bool) && (_digitVal(_ch) < _base : Bool) : Bool)) {
            _ch = _s._next();
            _n--;
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _s._error(("invalid char escape" : stdgo.GoString));
        };
        return _ch;
    }
    @:keep
    static public function _scanNumber( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune, _seenDot:Bool):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoRune; } {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _base = (10 : stdgo.GoInt);
        var _prefix = ((0 : stdgo.GoInt32) : stdgo.GoRune);
        var _digsep = (0 : stdgo.GoInt);
        var _invalid = ((0 : stdgo.GoInt32) : stdgo.GoRune);
        var _tok:stdgo.GoRune = (0 : stdgo.GoInt32);
        var _ds:stdgo.GoInt = (0 : stdgo.GoInt);
        if (!_seenDot) {
            _tok = (-3 : stdgo.GoInt32);
            if (_ch == ((48 : stdgo.GoInt32))) {
                _ch = _s._next();
                {
                    final __value__ = _lower(_ch);
                    if (__value__ == ((120 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (16 : stdgo.GoInt);
                            final __tmp__1 = (120 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (__value__ == ((111 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (111 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (__value__ == ((98 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (2 : stdgo.GoInt);
                            final __tmp__1 = (98 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else {
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (48 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                        _digsep = (1 : stdgo.GoInt);
                    };
                };
            };
            {
                var __tmp__ = _s._digits(_ch, _base, stdgo.Go.pointer(_invalid));
                _ch = __tmp__._0;
                _ds = __tmp__._1;
            };
            _digsep = (_digsep | (_ds) : stdgo.GoInt);
            if (((_ch == (46 : stdgo.GoInt32)) && ((_s.mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                _ch = _s._next();
                _seenDot = true;
            };
        };
        if (_seenDot) {
            _tok = (-4 : stdgo.GoInt32);
            if (((_prefix == (111 : stdgo.GoInt32)) || (_prefix == (98 : stdgo.GoInt32)) : Bool)) {
                _s._error((("invalid radix point in " : stdgo.GoString) + _litname(_prefix)?.__copy__() : stdgo.GoString)?.__copy__());
            };
            {
                var __tmp__ = _s._digits(_ch, _base, stdgo.Go.pointer(_invalid));
                _ch = __tmp__._0;
                _ds = __tmp__._1;
            };
            _digsep = (_digsep | (_ds) : stdgo.GoInt);
        };
        if ((_digsep & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            _s._error((_litname(_prefix) + (" has no digits" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        {
            var _e = _lower(_ch);
            if (((((_e == (101 : stdgo.GoInt32)) || (_e == (112 : stdgo.GoInt32)) : Bool)) && ((_s.mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                if (((_e == ((101 : stdgo.GoInt32)) && _prefix != ((0 : stdgo.GoInt32)) : Bool) && (_prefix != (48 : stdgo.GoInt32)) : Bool)) {
                    _s._errorf(("%q exponent requires decimal mantissa" : stdgo.GoString), stdgo.Go.toInterface(_ch));
                } else if (((_e == (112 : stdgo.GoInt32)) && (_prefix != (120 : stdgo.GoInt32)) : Bool)) {
                    _s._errorf(("%q exponent requires hexadecimal mantissa" : stdgo.GoString), stdgo.Go.toInterface(_ch));
                };
                _ch = _s._next();
                _tok = (-4 : stdgo.GoInt32);
                if (((_ch == (43 : stdgo.GoInt32)) || (_ch == (45 : stdgo.GoInt32)) : Bool)) {
                    _ch = _s._next();
                };
                {
                    var __tmp__ = _s._digits(_ch, (10 : stdgo.GoInt), (null : stdgo.Pointer<stdgo.GoInt32>));
                    _ch = __tmp__._0;
                    _ds = __tmp__._1;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                if ((_ds & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _s._error(("exponent has no digits" : stdgo.GoString));
                };
            } else if (((_prefix == (120 : stdgo.GoInt32)) && (_tok == (-4 : stdgo.GoInt32)) : Bool)) {
                _s._error(("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString));
            };
        };
        if (((_tok == (-3 : stdgo.GoInt32)) && (_invalid != (0 : stdgo.GoInt32)) : Bool)) {
            _s._errorf(("invalid digit %q in %s" : stdgo.GoString), stdgo.Go.toInterface(_invalid), stdgo.Go.toInterface(_litname(_prefix)));
        };
        if ((_digsep & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            _s._tokEnd = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
            {
                var _i = _invalidSep(_s.tokenText()?.__copy__());
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _s._error(("\'_\' must separate successive digits" : stdgo.GoString));
                };
            };
        };
        return { _0 : _tok, _1 : _ch };
    }
    @:keep
    static public function _digits( _s:stdgo.Ref<Scanner>, _ch0:stdgo.GoRune, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoRune>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = (0 : stdgo.GoInt32), _digsep = (0 : stdgo.GoInt);
        _ch = _ch0;
        if ((_base <= (10 : stdgo.GoInt) : Bool)) {
            var _max = (((48 : stdgo.GoInt) + _base : stdgo.GoInt) : stdgo.GoRune);
            while ((_isDecimal(_ch) || (_ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if (_ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                } else if (((_ch >= _max : Bool) && (_invalid.value == (0 : stdgo.GoInt32)) : Bool)) {
                    _invalid.value = _ch;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                _ch = _s._next();
            };
        } else {
            while ((_isHex(_ch) || (_ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if (_ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                _ch = _s._next();
            };
        };
        return { _0 : _ch, _1 : _digsep };
    }
    @:keep
    static public function _scanIdentifier( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = _s._next();
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor(_s._isIdentRune(_ch, _i), _i++, {
                _ch = _s._next();
            });
        };
        return _ch;
    }
    @:keep
    static public function _isIdentRune( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune, _i:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s.isIdentRune != null) {
            return ((_ch != (-1 : stdgo.GoInt32)) && _s.isIdentRune(_ch, _i) : Bool);
        };
        return ((_ch == ((95 : stdgo.GoInt32)) || stdgo._internal.unicode.Unicode.isLetter(_ch) : Bool) || (stdgo._internal.unicode.Unicode.isDigit(_ch) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) : Bool);
    }
    @:keep
    static public function _errorf( _s:stdgo.Ref<Scanner>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._error(stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    static public function _error( _s:stdgo.Ref<Scanner>, _msg:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._tokEnd = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
        _s.errorCount++;
        if (_s.error != null) {
            _s.error(_s, _msg?.__copy__());
            return;
        };
        var _pos = _s.position?.__copy__();
        if (!_pos.isValid()) {
            _pos = _s.pos()?.__copy__();
        };
        stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(_msg));
    }
    @:keep
    static public function peek( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s._ch == ((-2 : stdgo.GoInt32))) {
            _s._ch = _s._next();
            if (_s._ch == ((65279 : stdgo.GoInt32))) {
                _s._ch = _s._next();
            };
        };
        return _s._ch;
    }
    @:keep
    static public function next( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._tokPos = (-1 : stdgo.GoInt);
        _s.position.line = (0 : stdgo.GoInt);
        var _ch = _s.peek();
        if (_ch != ((-1 : stdgo.GoInt32))) {
            _s._ch = _s._next();
        };
        return _ch;
    }
    @:keep
    static public function _next( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var __0 = (_s._srcBuf[(_s._srcPos : stdgo.GoInt)] : stdgo.GoRune), __1 = (1 : stdgo.GoInt);
var _width = __1, _ch = __0;
        if ((_ch >= (128 : stdgo.GoInt32) : Bool)) {
            while ((((_s._srcPos + (4 : stdgo.GoInt) : stdgo.GoInt) > _s._srcEnd : Bool) && !stdgo._internal.unicode.utf8.Utf8.fullRune((_s._srcBuf.__slice__(_s._srcPos, _s._srcEnd) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                if ((_s._tokPos >= (0 : stdgo.GoInt) : Bool)) {
                    _s._tokBuf.write((_s._srcBuf.__slice__(_s._tokPos, _s._srcPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _s._tokPos = (0 : stdgo.GoInt);
                };
                stdgo.Go.copySlice((_s._srcBuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_s._srcBuf.__slice__(_s._srcPos, _s._srcEnd) : stdgo.Slice<stdgo.GoUInt8>));
                _s._srcBufOffset = (_s._srcBufOffset + (_s._srcPos) : stdgo.GoInt);
                var _i = (_s._srcEnd - _s._srcPos : stdgo.GoInt);
                var __tmp__ = _s._src.read((_s._srcBuf.__slice__(_i, (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _s._srcPos = (0 : stdgo.GoInt);
                _s._srcEnd = (_i + _n : stdgo.GoInt);
                _s._srcBuf[(_s._srcEnd : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                        _s._error(_err.error()?.__copy__());
                    };
                    if (_s._srcEnd == ((0 : stdgo.GoInt))) {
                        if ((_s._lastCharLen > (0 : stdgo.GoInt) : Bool)) {
                            _s._column++;
                        };
                        _s._lastCharLen = (0 : stdgo.GoInt);
                        return (-1 : stdgo.GoInt32);
                    };
                    break;
                };
            };
            _ch = (_s._srcBuf[(_s._srcPos : stdgo.GoInt)] : stdgo.GoRune);
            if ((_ch >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s._srcBuf.__slice__(_s._srcPos, _s._srcEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    _ch = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (((_ch == (65533 : stdgo.GoInt32)) && (_width == (1 : stdgo.GoInt)) : Bool)) {
                    _s._srcPos = (_s._srcPos + (_width) : stdgo.GoInt);
                    _s._lastCharLen = _width;
                    _s._column++;
                    _s._error(("invalid UTF-8 encoding" : stdgo.GoString));
                    return _ch;
                };
            };
        };
        _s._srcPos = (_s._srcPos + (_width) : stdgo.GoInt);
        _s._lastCharLen = _width;
        _s._column++;
        {
            final __value__ = _ch;
            if (__value__ == ((0 : stdgo.GoInt32))) {
                _s._error(("invalid character NUL" : stdgo.GoString));
            } else if (__value__ == ((10 : stdgo.GoInt32))) {
                _s._line++;
                _s._lastLineLen = _s._column;
                _s._column = (0 : stdgo.GoInt);
            };
        };
        return _ch;
    }
    @:keep
    static public function init( _s:stdgo.Ref<Scanner>, _src:stdgo._internal.io.Io.Reader):stdgo.Ref<Scanner> {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._src = _src;
        _s._srcBuf[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
        _s._srcPos = (0 : stdgo.GoInt);
        _s._srcEnd = (0 : stdgo.GoInt);
        _s._srcBufOffset = (0 : stdgo.GoInt);
        _s._line = (1 : stdgo.GoInt);
        _s._column = (0 : stdgo.GoInt);
        _s._lastLineLen = (0 : stdgo.GoInt);
        _s._lastCharLen = (0 : stdgo.GoInt);
        _s._tokPos = (-1 : stdgo.GoInt);
        _s._ch = (-2 : stdgo.GoInt32);
        _s.error = null;
        _s.errorCount = (0 : stdgo.GoInt);
        _s.mode = (1012u32 : stdgo.GoUInt);
        _s.whitespace = (4294977024i64 : stdgo.GoUInt64);
        _s.position.line = (0 : stdgo.GoInt);
        return _s;
    }
    @:embedded
    public static function string( __self__:Scanner):stdgo.GoString return __self__.string();
    @:embedded
    public static function isValid( __self__:Scanner):Bool return __self__.isValid();
}
class StringReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StringReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.scanner.Scanner.StringReader_asInterface) class StringReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<StringReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<StringReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_r._step < (_r._data.length) : Bool)) {
            var _s = _r._data[(_r._step : stdgo.GoInt)]?.__copy__();
            _n = stdgo.Go.copySlice(_p, _s);
            _r._step++;
        } else {
            _err = stdgo._internal.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_errReader_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T_errReader_asInterface) class T_errReader_static_extension {
    @:keep
    static public function read( _:T_errReader, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_errReader = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.errNoProgress };
    }
}
class T_countReader_asInterface {
    @:keep
    @:pointer
    public dynamic function read(_0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__self__, _0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_countReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.scanner.Scanner.T_countReader_asInterface) class T_countReader_static_extension {
    @:keep
    @:pointer
    static public function read(____:T_countReader,  _r:stdgo.Pointer<T_countReader>, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        _r.value++;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
    }
}
