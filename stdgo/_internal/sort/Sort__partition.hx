package stdgo._internal.sort;
function _partition(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
            _i++;
        };
        while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
            _j--;
        };
        if ((_i > _j : Bool)) {
            _data.swap(_j, _a);
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : true };
                _newpivot = __tmp__._0;
                _alreadyPartitioned = __tmp__._1;
                __tmp__;
            };
        };
        _data.swap(_i, _j);
        _i++;
        _j--;
        while (true) {
            while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
                _i++;
            };
            while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
                _j--;
            };
            if ((_i > _j : Bool)) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        _data.swap(_j, _a);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _j, _1 : false };
            _newpivot = __tmp__._0;
            _alreadyPartitioned = __tmp__._1;
            __tmp__;
        };
    }
