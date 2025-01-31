package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Bool {
        var _rv = (stdgo._internal.internal.reflectlite.Reflectlite_valueOf.valueOf(_x)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_Value.Value);
        var _n = (_rv.len() : stdgo.GoInt);
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                if (_less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    return false;
                };
                _i--;
            };
        };
        return true;
    }
