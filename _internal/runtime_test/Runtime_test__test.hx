package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _test(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _op:stdgo.GoString, _hw:(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64, _sw:(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64, _all:stdgo.Slice<stdgo.GoFloat64>):Void {
        for (__6 => _f in _all) {
            for (__7 => _g in _all) {
                var _h = (_hw(_f, _g) : stdgo.GoFloat64);
                var _s = (_sw(_f, _g) : stdgo.GoFloat64);
                if (!_internal.runtime_test.Runtime_test__same._same(_h, _s)) {
                    _internal.runtime_test.Runtime_test__err._err(_t, ("%g %s %g = sw %g, hw %g\n" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_h));
                };
                _internal.runtime_test.Runtime_test__testu._testu(_t, ("to32" : stdgo.GoString), _internal.runtime_test.Runtime_test__trunc32._trunc32, _internal.runtime_test.Runtime_test__to32sw._to32sw, _h);
                _internal.runtime_test.Runtime_test__testu._testu(_t, ("to64" : stdgo.GoString), _internal.runtime_test.Runtime_test__trunc32._trunc32, _internal.runtime_test.Runtime_test__to64sw._to64sw, _h);
                _internal.runtime_test.Runtime_test__testu._testu(_t, ("toint64" : stdgo.GoString), _internal.runtime_test.Runtime_test__hwint64._hwint64, _internal.runtime_test.Runtime_test__toint64sw._toint64sw, _h);
                _internal.runtime_test.Runtime_test__testu._testu(_t, ("fromint64" : stdgo.GoString), _internal.runtime_test.Runtime_test__hwint64._hwint64, _internal.runtime_test.Runtime_test__fromint64sw._fromint64sw, _h);
                _internal.runtime_test.Runtime_test__testcmp._testcmp(_t, _f, _h);
                _internal.runtime_test.Runtime_test__testcmp._testcmp(_t, _h, _f);
                _internal.runtime_test.Runtime_test__testcmp._testcmp(_t, _g, _h);
                _internal.runtime_test.Runtime_test__testcmp._testcmp(_t, _h, _g);
            };
        };
    }
