package stdgo._internal.sort;
function _choosePivot(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1 = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __2 = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __3 = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _k = __3, _j = __2, _i = __1, _swaps = __0;
        var _swaps__pointer__ = stdgo.Go.pointer(_swaps);
        var _swaps__pointer__ = stdgo.Go.pointer(_swaps);
        var _swaps__pointer__ = stdgo.Go.pointer(_swaps);
        var _swaps__pointer__ = stdgo.Go.pointer(_swaps);
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = stdgo._internal.sort.Sort__medianadjacent._medianAdjacent(_data, _i, _swaps__pointer__);
                _j = stdgo._internal.sort.Sort__medianadjacent._medianAdjacent(_data, _j, _swaps__pointer__);
                _k = stdgo._internal.sort.Sort__medianadjacent._medianAdjacent(_data, _k, _swaps__pointer__);
            };
            _j = stdgo._internal.sort.Sort__median._median(_data, _i, _j, _k, _swaps__pointer__);
        };
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (2 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            } else {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint; } = { _0 : _j, _1 : (0 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint) };
                    _pivot = __tmp__._0;
                    _hint = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
