package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
var _unquotetests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest>(35, 35, ...[
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\"" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"a\"" : stdgo.GoString), ("a" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"abc\"" : stdgo.GoString), ("abc" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"☺\"" : stdgo.GoString), ("☺" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"hello world\"" : stdgo.GoString), ("hello world" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\\xFF\"" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\\377\"" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\\u1234\"" : stdgo.GoString), ("ሴ" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\\U00010111\"" : stdgo.GoString), ("𐄑" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\\U0001011111\"" : stdgo.GoString), ("𐄑11" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\\a\\b\\f\\n\\r\\t\\v\\\\\\\"\"" : stdgo.GoString), ("\x07\x08\x0C\n\r\t\x0B\\\"" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\"\'\"" : stdgo.GoString), ("\'" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'a\'" : stdgo.GoString), ("a" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'☹\'" : stdgo.GoString), ("☹" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\\a\'" : stdgo.GoString), ("\x07" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\\x10\'" : stdgo.GoString), stdgo.Go.str(16)?.__copy__()) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\\377\'" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\\u1234\'" : stdgo.GoString), ("ሴ" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\\U00010111\'" : stdgo.GoString), ("𐄑" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\\t\'" : stdgo.GoString), ("\t" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\' \'" : stdgo.GoString), (" " : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\\\'\'" : stdgo.GoString), ("\'" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("\'\"\'" : stdgo.GoString), ("\"" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("``" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`a`" : stdgo.GoString), ("a" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`abc`" : stdgo.GoString), ("abc" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`☺`" : stdgo.GoString), ("☺" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`hello world`" : stdgo.GoString), ("hello world" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`\\xFF`" : stdgo.GoString), ("\\xFF" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`\\377`" : stdgo.GoString), ("\\377" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`\\`" : stdgo.GoString), ("\\" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`\n`" : stdgo.GoString), ("\n" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`\t`" : stdgo.GoString), ("\t" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("` `" : stdgo.GoString), (" " : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest),
(new _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest(("`a\rb`" : stdgo.GoString), ("ab" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest)].concat([for (i in 35 ... (35 > 35 ? 35 : 35 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_unQuoteTest.T_unQuoteTest>);
