package stdgo._internal.sort;
function _insertionSort_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L11"
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < _b : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L12"
                {
                    var _j = (_i : stdgo.GoInt);
                    while (((_j > _a : Bool) && _data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L13"
                        _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                        _j--;
                    };
                };
                _i++;
            };
        };
    }
