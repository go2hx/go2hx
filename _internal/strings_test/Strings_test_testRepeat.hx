package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testRepeat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test_repeatTests.repeatTests) {
            var _a = (stdgo._internal.strings.Strings_repeat.repeat(_tt._in?.__copy__(), _tt._count)?.__copy__() : stdgo.GoString);
            if (!_internal.strings_test.Strings_test__equal._equal(("Repeat(s)" : stdgo.GoString), _a?.__copy__(), _tt._out?.__copy__(), _t)) {
                _t.errorf(("Repeat(%v, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._count), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
        };
    }
