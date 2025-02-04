package stdgo._internal.sort;
function _reverseRange_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_a : stdgo.GoInt);
        var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i < _j : Bool)) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
