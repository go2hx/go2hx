package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _runStringTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoString -> stdgo.GoString, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.strings_test.Strings_test_StringTest.StringTest>):Void {
        for (__0 => _tc in _testCases) {
            var _actual = (_f(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
