package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _reverseRange_func(_data:stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_a : stdgo.GoInt);
        var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i < _j : Bool)) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
