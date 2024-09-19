package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test__compareTests._compareTests) {
            var _cmp = (stdgo._internal.strings.Strings_compare.compare(_tt._a?.__copy__(), _tt._b?.__copy__()) : stdgo.GoInt);
            if (_cmp != (_tt._i)) {
                _t.errorf(("Compare(%q, %q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_cmp));
            };
        };
    }
