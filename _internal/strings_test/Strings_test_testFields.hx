package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test__fieldstests._fieldstests) {
            var _a = stdgo._internal.strings.Strings_fields.fields(_tt._s?.__copy__());
            if (!_internal.strings_test.Strings_test__eq._eq(_a, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
    }
