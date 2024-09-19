package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _runIndexTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:(stdgo.GoString, stdgo.GoString) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.strings_test.Strings_test_IndexTest.IndexTest>):Void {
        for (__0 => _test in _testCases) {
            var _actual = (_f(_test._s?.__copy__(), _test._sep?.__copy__()) : stdgo.GoInt);
            if (_actual != (_test._out)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._sep), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._out));
            };
        };
    }
