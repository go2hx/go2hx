package stdgo._internal.sort;
function _reverseRange_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_a : stdgo.GoInt);
        var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L322"
        while ((_i < _j : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L323"
            _data.swap(_i, _j);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L324"
            _i++;
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L325"
            _j--;
        };
    }
