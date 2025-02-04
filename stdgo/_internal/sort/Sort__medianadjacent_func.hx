package stdgo._internal.sort;
function _medianAdjacent_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        return stdgo._internal.sort.Sort__median_func._median_func(_data?.__copy__(), (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps);
    }
