package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testPickAlgorithm(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testPickAlgorithm" + " skip function");
        return;
        for (_i => _tc in _internal.strings_test.Strings_test__algorithmTestCases._algorithmTestCases) {
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), _tc._r.replacer())?.__copy__() : stdgo.GoString);
            if (_got != (_tc._want)) {
                _t.errorf(("%d. algorithm = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
            };
        };
    }
