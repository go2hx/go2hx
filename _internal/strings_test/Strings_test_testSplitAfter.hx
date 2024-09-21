package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testSplitAfter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test__splitaftertests._splitaftertests) {
            var _a = stdgo._internal.strings.Strings_splitAfterN.splitAfterN(_tt._s?.__copy__(), _tt._sep?.__copy__(), _tt._n);
            if (!_internal.strings_test.Strings_test__eq._eq(_a, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            var _s = (stdgo._internal.strings.Strings_join.join(_a, stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
            if (_s != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if ((_tt._n < (0 : stdgo.GoInt) : Bool)) {
                var _b = stdgo._internal.strings.Strings_splitAfter.splitAfter(_tt._s?.__copy__(), _tt._sep?.__copy__());
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("SplitAfter disagrees with SplitAfterN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
        };
    }
