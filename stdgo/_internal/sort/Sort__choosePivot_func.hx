package stdgo._internal.sort;
function _choosePivot_func(_data:stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_T_sortedHint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.sort.Sort_T_sortedHint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1 = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __2 = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __3 = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _k = __3, _j = __2, _i = __1, _swaps = __0;
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = stdgo._internal.sort.Sort__medianAdjacent_func._medianAdjacent_func(_data?.__copy__(), _i, stdgo.Go.pointer(_swaps));
                _j = stdgo._internal.sort.Sort__medianAdjacent_func._medianAdjacent_func(_data?.__copy__(), _j, stdgo.Go.pointer(_swaps));
                _k = stdgo._internal.sort.Sort__medianAdjacent_func._medianAdjacent_func(_data?.__copy__(), _k, stdgo.Go.pointer(_swaps));
            };
            _j = stdgo._internal.sort.Sort__median_func._median_func(_data?.__copy__(), _i, _j, _k, stdgo.Go.pointer(_swaps));
        };
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (1 : stdgo._internal.sort.Sort_T_sortedHint.T_sortedHint) };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (2 : stdgo._internal.sort.Sort_T_sortedHint.T_sortedHint) };
            } else {
                return { _0 : _j, _1 : (0 : stdgo._internal.sort.Sort_T_sortedHint.T_sortedHint) };
            };
        };
    }
