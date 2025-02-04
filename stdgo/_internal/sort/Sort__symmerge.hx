package stdgo._internal.sort;
function _symMerge(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                if (_data.less(_h, _a)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    _data.swap(_k, (_k + (1 : stdgo.GoInt) : stdgo.GoInt));
                    _k++;
                };
            };
            return;
        };
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                if (!_data.less(_m, _h)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    _data.swap(_k, (_k - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _k--;
                };
            };
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _r = __1, _start = __0;
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            if (!_data.less((_p - _c : stdgo.GoInt), _c)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            stdgo._internal.sort.Sort__rotate._rotate(_data, _start, _m, _end);
        };
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            stdgo._internal.sort.Sort__symmerge._symMerge(_data, _a, _start, _mid);
        };
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            stdgo._internal.sort.Sort__symmerge._symMerge(_data, _mid, _end, _b);
        };
    }
