package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function sliceStable(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Void {
        var _rv = (stdgo._internal.internal.reflectlite.Reflectlite_valueOf.valueOf(_x)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_Value.Value);
        var _swap = (stdgo._internal.internal.reflectlite.Reflectlite_swapper.swapper(_x) : (stdgo.GoInt, stdgo.GoInt) -> Void);
        stdgo._internal.sort.Sort__stable_func._stable_func((new stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap(_less, _swap) : stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap), _rv.len());
    }
