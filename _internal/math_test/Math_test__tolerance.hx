package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool {
        if (_a == (_b)) {
            return true;
        };
        var _d = (_a - _b : stdgo.GoFloat64);
        if ((_d < (0 : stdgo.GoFloat64) : Bool)) {
            _d = -_d;
        };
        if (_b != (0 : stdgo.GoFloat64)) {
            _e = (_e * _b : stdgo.GoFloat64);
            if ((_e < (0 : stdgo.GoFloat64) : Bool)) {
                _e = -_e;
            };
        };
        return (_d < _e : Bool);
    }
