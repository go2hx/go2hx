package stdgo._internal.sort;
function _stable_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        while ((_b <= _n : Bool)) {
            stdgo._internal.sort.Sort__insertionsort_func._insertionSort_func(_data?.__copy__(), _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        stdgo._internal.sort.Sort__insertionsort_func._insertionSort_func(_data?.__copy__(), _a, _n);
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while ((_b <= _n : Bool)) {
                stdgo._internal.sort.Sort__symmerge_func._symMerge_func(_data?.__copy__(), _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    stdgo._internal.sort.Sort__symmerge_func._symMerge_func(_data?.__copy__(), _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
