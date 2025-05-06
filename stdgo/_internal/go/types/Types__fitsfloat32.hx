package stdgo._internal.go.types;
function _fitsFloat32(_x:stdgo._internal.go.constant.Constant_value.Value):Bool {
        var __tmp__ = stdgo._internal.go.constant.Constant_float32val.float32Val(_x), _f32:stdgo.GoFloat32 = __tmp__._0, __0:Bool = __tmp__._1;
        var _f = (_f32 : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/go/types/const.go#L211"
        return !stdgo._internal.math.Math_isinf.isInf(_f, (0 : stdgo.GoInt));
    }
