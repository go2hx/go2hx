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
function fuzzPIController(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        var _isNormal = (function(_x:stdgo.GoFloat64):Bool {
            return (!stdgo._internal.math.Math_isInf.isInf(_x, (0 : stdgo.GoInt)) && !stdgo._internal.math.Math_isNaN.isNaN(_x) : Bool);
        } : stdgo.GoFloat64 -> Bool);
        var _isPositive = (function(_x:stdgo.GoFloat64):Bool {
            return (_isNormal(_x) && (_x > (0 : stdgo.GoFloat64) : Bool) : Bool);
        } : stdgo.GoFloat64 -> Bool);
        _f.add(stdgo.Go.toInterface((0.3375 : stdgo.GoFloat64)), stdgo.Go.toInterface((3.2e+06 : stdgo.GoFloat64)), stdgo.Go.toInterface((1e+09 : stdgo.GoFloat64)), stdgo.Go.toInterface((0.001 : stdgo.GoFloat64)), stdgo.Go.toInterface((1000 : stdgo.GoFloat64)), stdgo.Go.toInterface((0.01 : stdgo.GoFloat64)));
        _f.add(stdgo.Go.toInterface((0.9 : stdgo.GoFloat64)), stdgo.Go.toInterface((4 : stdgo.GoFloat64)), stdgo.Go.toInterface((1000 : stdgo.GoFloat64)), stdgo.Go.toInterface((-1000 : stdgo.GoFloat64)), stdgo.Go.toInterface((1000 : stdgo.GoFloat64)), stdgo.Go.toInterface((0.84 : stdgo.GoFloat64)));
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _kp:stdgo.GoFloat64, _ti:stdgo.GoFloat64, _tt:stdgo.GoFloat64, _min:stdgo.GoFloat64, _max:stdgo.GoFloat64, _setPoint:stdgo.GoFloat64):Void {
            if (((!_isPositive(_kp) || !_isPositive(_ti) : Bool) || !_isPositive(_tt) : Bool)) {
                return;
            };
            if (((!_isNormal(_min) || !_isNormal(_max) : Bool) || (_min > _max : Bool) : Bool)) {
                return;
            };
            var _rs = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((800i64 : stdgo.GoInt64)));
            var _randFloat64 = (function():stdgo.GoFloat64 {
                return stdgo._internal.math.Math_float64frombits.float64frombits(_rs.uint64());
            } : () -> stdgo.GoFloat64);
            var _p = stdgo._internal.runtime.Runtime_newPIController.newPIController(_kp, _ti, _tt, _min, _max);
            var _state = (0 : stdgo.GoFloat64);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                    var _input = (_randFloat64() : stdgo.GoFloat64);
                    var _ok:Bool = false;
                    {
                        var __tmp__ = _p.next(_input, _setPoint, (1 : stdgo.GoFloat64));
                        _state = __tmp__._0;
                        _ok = __tmp__._1;
                    };
                    if (!_isNormal(_state)) {
                        _t.fatalf(("got NaN or Inf result from controller: %f %v" : stdgo.GoString), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_ok));
                    };
                });
            };
        }));
    }
