package stdgo._internal.math;
function nextafter32(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):stdgo.GoFloat32 {
        var _r = (0 : stdgo.GoFloat32);
        if ((stdgo._internal.math.Math_isnan.isNaN((_x : stdgo.GoFloat64)) || stdgo._internal.math.Math_isnan.isNaN((_y : stdgo.GoFloat64)) : Bool)) {
            _r = (stdgo._internal.math.Math_nan.naN() : stdgo.GoFloat32);
        } else if (_x == (_y)) {
            _r = _x;
        } else if (_x == (0 : stdgo.GoFloat64)) {
            _r = (stdgo._internal.math.Math_copysign.copysign((stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)) : stdgo.GoFloat64), (_y : stdgo.GoFloat64)) : stdgo.GoFloat32);
        } else if (((_y > _x : Bool)) == ((_x > (0 : stdgo.GoFloat64) : Bool))) {
            _r = stdgo._internal.math.Math_float32frombits.float32frombits((stdgo._internal.math.Math_float32bits.float32bits(_x) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        } else {
            _r = stdgo._internal.math.Math_float32frombits.float32frombits((stdgo._internal.math.Math_float32bits.float32bits(_x) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        };
        return _r;
    }
