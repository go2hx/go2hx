package stdgo._internal.sort;
function _swapRange_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _data.swap((_a + _i : stdgo.GoInt), (_b + _i : stdgo.GoInt));
                _i++;
            };
        };
    }
