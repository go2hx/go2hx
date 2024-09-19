package stdgo._internal.unicode;
function _is16(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>, _r:stdgo.GoUInt16):Bool {
        if ((((_ranges.length) <= (18 : stdgo.GoInt) : Bool) || (_r <= (255 : stdgo.GoUInt16) : Bool) : Bool)) {
            for (_i => _ in _ranges) {
                var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_Range16.Range16>);
                if ((_r < _range_.lo : Bool)) {
                    return false;
                };
                if ((_r <= _range_.hi : Bool)) {
                    return ((_range_.stride == (1 : stdgo.GoUInt16)) || ((((_r - _range_.lo : stdgo.GoUInt16)) % _range_.stride : stdgo.GoUInt16) == (0 : stdgo.GoUInt16)) : Bool);
                };
            };
            return false;
        };
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_ranges.length : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = (stdgo.Go.setRef(_ranges[(_m : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_Range16.Range16>);
            if (((_range_.lo <= _r : Bool) && (_r <= _range_.hi : Bool) : Bool)) {
                return ((_range_.stride == (1 : stdgo.GoUInt16)) || ((((_r - _range_.lo : stdgo.GoUInt16)) % _range_.stride : stdgo.GoUInt16) == (0 : stdgo.GoUInt16)) : Bool);
            };
            if ((_r < _range_.lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return false;
    }
