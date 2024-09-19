package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test_countTests.countTests) {
            {
                var _num = (stdgo._internal.strings.Strings_count.count(_tt._s?.__copy__(), _tt._sep?.__copy__()) : stdgo.GoInt);
                if (_num != (_tt._num)) {
                    _t.errorf(("Count(%q, %q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_num), stdgo.Go.toInterface(_tt._num));
                };
            };
        };
    }
