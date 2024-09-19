package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testLastIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.strings_test.Strings_test_IndexTest.IndexTest>(6, 6, ...[(new _internal.strings_test.Strings_test_IndexTest.IndexTest(stdgo.Go.str()?.__copy__(), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest), (new _internal.strings_test.Strings_test_IndexTest.IndexTest(("abcdef" : stdgo.GoString), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest), (new _internal.strings_test.Strings_test_IndexTest.IndexTest(("abcdefabcdef" : stdgo.GoString), ("a" : stdgo.GoString), (("abcdef" : stdgo.GoString).length)) : _internal.strings_test.Strings_test_IndexTest.IndexTest), (new _internal.strings_test.Strings_test_IndexTest.IndexTest(("abcdefabcdef" : stdgo.GoString), ("f" : stdgo.GoString), (("abcdefabcde" : stdgo.GoString).length)) : _internal.strings_test.Strings_test_IndexTest.IndexTest), (new _internal.strings_test.Strings_test_IndexTest.IndexTest(("zabcdefabcdef" : stdgo.GoString), ("z" : stdgo.GoString), (0 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest), (new _internal.strings_test.Strings_test_IndexTest.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("b" : stdgo.GoString), (("a☺" : stdgo.GoString).length)) : _internal.strings_test.Strings_test_IndexTest.IndexTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : _internal.strings_test.Strings_test_IndexTest.IndexTest)])) : stdgo.Slice<_internal.strings_test.Strings_test_IndexTest.IndexTest>);
        for (__0 => _test in _testCases) {
            var _actual = (stdgo._internal.strings.Strings_lastIndexByte.lastIndexByte(_test._s?.__copy__(), _test._sep[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            if (_actual != (_test._out)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._sep[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._out));
            };
        };
    }
