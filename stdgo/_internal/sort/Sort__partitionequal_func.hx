package stdgo._internal.sort;
function _partitionEqual_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L174"
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L177"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L178"
            while (((_i <= _j : Bool) && !_data.less(_a, _i) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L179"
                _i++;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L181"
            while (((_i <= _j : Bool) && _data.less(_a, _j) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L182"
                _j--;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L184"
            if ((_i > _j : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L185"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L187"
            _data.swap(_i, _j);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L188"
            _i++;
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L189"
            _j--;
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L191"
        return _newpivot = _i;
    }
