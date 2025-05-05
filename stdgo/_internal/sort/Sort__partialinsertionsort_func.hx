package stdgo._internal.sort;
function _partialInsertionSort_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L201"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L202"
                while (((_i < _b : Bool) && !_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L203"
                    _i++;
                };
//"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L206"
                if (_i == (_b)) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L207"
                    return true;
                };
//"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L210"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L211"
                    return false;
                };
//"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L214"
                _data.swap(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L217"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L218"
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L219"
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L220"
                                break;
                            };
//"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L222"
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                            _j--;
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L226"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L227"
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L228"
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L229"
                                break;
                            };
//"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L231"
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                            _j++;
                        };
                    };
                };
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortfunc.go#L235"
        return false;
    }
