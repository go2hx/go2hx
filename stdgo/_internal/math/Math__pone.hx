package stdgo._internal.math;
function _pone(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.GoFloat64>(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoFloat64)]);
        var _q:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.GoFloat64>(5, 5, ...[for (i in 0 ... 5) (0 : stdgo.GoFloat64)]);
        if ((_x >= (8 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__p1R8._p1R8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__p1S8._p1S8) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (4.5454 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__p1R5._p1R5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__p1S5._p1S5) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2.8571 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__p1R3._p1R3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__p1S3._p1S3) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__p1R2._p1R2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__p1S2._p1S2) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        };
        var _z = ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _r = (_p[(0 : stdgo.GoInt)] + (_z * ((_p[(1 : stdgo.GoInt)] + (_z * ((_p[(2 : stdgo.GoInt)] + (_z * ((_p[(3 : stdgo.GoInt)] + (_z * ((_p[(4 : stdgo.GoInt)] + (_z * _p[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * ((_q[(0 : stdgo.GoInt)] + (_z * ((_q[(1 : stdgo.GoInt)] + (_z * ((_q[(2 : stdgo.GoInt)] + (_z * ((_q[(3 : stdgo.GoInt)] + (_z * _q[(4 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        return ((1 : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
