package stdgo._internal.math;
function pow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        #if (js || interp) {
            if (_x == 1 && std.Math.isNaN(_y.toBasic())) return 1;
            if ((_x == -1 || _x == 1) && stdgo._internal.math.Math_isinf.isInf(_y, 0)) return 1;
        } #else null #end;
        return std.Math.pow(_x.toBasic(), _y.toBasic());
    }
