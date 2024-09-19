package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        if ((_a < _b : Bool)) {
            return _a;
        };
        return _b;
    }
