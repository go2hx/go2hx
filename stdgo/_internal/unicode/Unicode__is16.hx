package stdgo._internal.unicode;
function _is16(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>, _r:stdgo.GoUInt16):Bool {
        if ((((_ranges.length) <= (18 : stdgo.GoInt) : Bool) || (_r <= (255 : stdgo.GoUInt16) : Bool) : Bool)) {
            for (_i => _ in _ranges) {
                var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_range16.Range16>);
                if ((_r < (@:checkr _range_ ?? throw "null pointer dereference").lo : Bool)) {
                    return false;
                };
                if ((_r <= (@:checkr _range_ ?? throw "null pointer dereference").hi : Bool)) {
                    return (((@:checkr _range_ ?? throw "null pointer dereference").stride == (1 : stdgo.GoUInt16)) || ((((_r - (@:checkr _range_ ?? throw "null pointer dereference").lo : stdgo.GoUInt16)) % (@:checkr _range_ ?? throw "null pointer dereference").stride : stdgo.GoUInt16) == (0 : stdgo.GoUInt16)) : Bool);
                };
            };
            return false;
        };
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_ranges.length : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = (stdgo.Go.setRef(_ranges[(_m : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_range16.Range16>);
            if ((((@:checkr _range_ ?? throw "null pointer dereference").lo <= _r : Bool) && (_r <= (@:checkr _range_ ?? throw "null pointer dereference").hi : Bool) : Bool)) {
                return (((@:checkr _range_ ?? throw "null pointer dereference").stride == (1 : stdgo.GoUInt16)) || ((((_r - (@:checkr _range_ ?? throw "null pointer dereference").lo : stdgo.GoUInt16)) % (@:checkr _range_ ?? throw "null pointer dereference").stride : stdgo.GoUInt16) == (0 : stdgo.GoUInt16)) : Bool);
            };
            if ((_r < (@:checkr _range_ ?? throw "null pointer dereference").lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return false;
    }
