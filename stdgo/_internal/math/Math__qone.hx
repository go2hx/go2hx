package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _qone(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var __0:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.GoFloat64>(6, 6).__setNumber32__(), __1:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.GoFloat64>(6, 6).__setNumber32__();
var _q = __1, _p = __0;
        if ((_x >= (8 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q1R8._q1R8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q1S8._q1S8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (4.5454 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q1R5._q1R5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q1S5._q1S5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2.8571 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q1R3._q1R3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q1S3._q1S3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q1R2._q1R2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q1S2._q1S2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        };
        var _z = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _r = (_p[(0 : stdgo.GoInt)] + (_z * ((_p[(1 : stdgo.GoInt)] + (_z * ((_p[(2 : stdgo.GoInt)] + (_z * ((_p[(3 : stdgo.GoInt)] + (_z * ((_p[(4 : stdgo.GoInt)] + (_z * _p[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * ((_q[(0 : stdgo.GoInt)] + (_z * ((_q[(1 : stdgo.GoInt)] + (_z * ((_q[(2 : stdgo.GoInt)] + (_z * ((_q[(3 : stdgo.GoInt)] + (_z * ((_q[(4 : stdgo.GoInt)] + (_z * _q[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((((0.375 : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64)) / _x : stdgo.GoFloat64);
    }
