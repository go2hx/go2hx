package stdgo._internal.sort;
function slice(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Void {
        var _rv = (stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_x)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_value.Value);
        var _swap = (stdgo._internal.internal.reflectlite.Reflectlite_swapper.swapper(_x) : (stdgo.GoInt, stdgo.GoInt) -> Void);
        var _length = (_rv.len() : stdgo.GoInt);
        var _limit = (stdgo._internal.math.bits.Bits_len.len((_length : stdgo.GoUInt)) : stdgo.GoInt);
        stdgo._internal.sort.Sort__pdqsort_func._pdqsort_func((new stdgo._internal.sort.Sort_t_lessswap.T_lessSwap(_less, _swap) : stdgo._internal.sort.Sort_t_lessswap.T_lessSwap), (0 : stdgo.GoInt), _length, _limit);
    }
