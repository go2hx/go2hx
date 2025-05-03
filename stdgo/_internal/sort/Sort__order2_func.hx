package stdgo._internal.sort;
function _order2_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L299"
        if (_data.less(_b, _a)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L300"
            _swaps.value++;
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L301"
            return { _0 : _b, _1 : _a };
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L303"
        return { _0 : _a, _1 : _b };
    }
