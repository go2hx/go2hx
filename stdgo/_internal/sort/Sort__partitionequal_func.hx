package stdgo._internal.sort;
function _partitionEqual_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        while (true) {
            while (((_i <= _j : Bool) && !_data.less(_a, _i) : Bool)) {
                _i++;
            };
            while (((_i <= _j : Bool) && _data.less(_a, _j) : Bool)) {
                _j--;
            };
            if ((_i > _j : Bool)) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        return _newpivot = _i;
    }
