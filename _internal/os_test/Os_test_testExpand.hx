package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testExpand(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.os_test.Os_test__expandTests._expandTests) {
            var _result = (stdgo._internal.os.Os_expand.expand(_test._in?.__copy__(), _internal.os_test.Os_test__testGetenv._testGetenv)?.__copy__() : stdgo.GoString);
            if (_result != (_test._out)) {
                _t.errorf(("Expand(%q)=%q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_test._out));
            };
        };
    }
