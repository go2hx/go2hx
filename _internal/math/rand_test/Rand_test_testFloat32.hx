package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testFloat32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _num = ((10000000 : stdgo.GoInt) : stdgo.GoInt);
        if ((stdgo._internal.testing.Testing_short.short() && (((stdgo._internal.internal.testenv.Testenv_builder.builder() == stdgo.Go.str()) || _internal.math.rand_test.Rand_test__hasSlowFloatingPoint._hasSlowFloatingPoint() : Bool)) : Bool)) {
            _num = (_num / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1i64 : stdgo.GoInt64)));
        {
            var _ct = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_ct < _num : Bool), _ct++, {
                var _f = (_r.float32() : stdgo.GoFloat32);
                if ((_f >= (1 : stdgo.GoFloat64) : Bool)) {
                    _t.fatal(stdgo.Go.toInterface(("Float32() should be in range [0,1). ct:" : stdgo.GoString)), stdgo.Go.toInterface(_ct), stdgo.Go.toInterface(("f:" : stdgo.GoString)), stdgo.Go.toInterface(_f));
                };
            });
        };
    }
