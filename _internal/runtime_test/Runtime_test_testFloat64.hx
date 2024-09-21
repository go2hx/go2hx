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
function testFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _base = (new stdgo.Slice<stdgo.GoFloat64>(42, 42, ...[
(0 : stdgo.GoFloat64),
stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
(-1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
stdgo._internal.math.Math_naN.naN(),
stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)),
stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)),
(0.1 : stdgo.GoFloat64),
(1.5 : stdgo.GoFloat64),
(1.9999999999999998 : stdgo.GoFloat64),
(1.3333333333333333 : stdgo.GoFloat64),
(1.1428571428571428 : stdgo.GoFloat64),
(1.112536929253601e-308 : stdgo.GoFloat64),
(2 : stdgo.GoFloat64),
(4 : stdgo.GoFloat64),
(8 : stdgo.GoFloat64),
(16 : stdgo.GoFloat64),
(32 : stdgo.GoFloat64),
(64 : stdgo.GoFloat64),
(128 : stdgo.GoFloat64),
(256 : stdgo.GoFloat64),
(3 : stdgo.GoFloat64),
(12 : stdgo.GoFloat64),
(1234 : stdgo.GoFloat64),
(123456 : stdgo.GoFloat64),
(-0.1 : stdgo.GoFloat64),
(-1.5 : stdgo.GoFloat64),
(-1.9999999999999998 : stdgo.GoFloat64),
(-1.3333333333333333 : stdgo.GoFloat64),
(-1.1428571428571428 : stdgo.GoFloat64),
(-2 : stdgo.GoFloat64),
(-3 : stdgo.GoFloat64),
(1e-200 : stdgo.GoFloat64),
(1e-300 : stdgo.GoFloat64),
(1e-310 : stdgo.GoFloat64),
(5e-324 : stdgo.GoFloat64),
(1e-105 : stdgo.GoFloat64),
(1e-305 : stdgo.GoFloat64),
(1e+200 : stdgo.GoFloat64),
(1e+306 : stdgo.GoFloat64),
(1e+307 : stdgo.GoFloat64),
(1e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _all = (new stdgo.Slice<stdgo.GoFloat64>((200 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo.Go.copySlice(_all, _base);
        {
            var _i = (_base.length : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_all.length) : Bool), _i++, {
                _all[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_normFloat64.normFloat64();
            });
        };
        _internal.runtime_test.Runtime_test__test._test(_t, ("+" : stdgo.GoString), _internal.runtime_test.Runtime_test__add._add, _internal.runtime_test.Runtime_test__fop._fop(stdgo._internal.runtime.Runtime_fadd64.fadd64), _all);
        _internal.runtime_test.Runtime_test__test._test(_t, ("-" : stdgo.GoString), _internal.runtime_test.Runtime_test__sub._sub, _internal.runtime_test.Runtime_test__fop._fop(stdgo._internal.runtime.Runtime_fsub64.fsub64), _all);
        if (true) {
            _internal.runtime_test.Runtime_test__test._test(_t, ("*" : stdgo.GoString), _internal.runtime_test.Runtime_test__mul._mul, _internal.runtime_test.Runtime_test__fop._fop(stdgo._internal.runtime.Runtime_fmul64.fmul64), _all);
            _internal.runtime_test.Runtime_test__test._test(_t, ("/" : stdgo.GoString), _internal.runtime_test.Runtime_test__div._div, _internal.runtime_test.Runtime_test__fop._fop(stdgo._internal.runtime.Runtime_fdiv64.fdiv64), _all);
        };
    }
