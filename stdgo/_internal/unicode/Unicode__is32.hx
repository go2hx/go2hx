package stdgo._internal.unicode;
function _is32(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32>, _r:stdgo.GoUInt32):Bool {
        if (((_ranges.length) <= (18 : stdgo.GoInt) : Bool)) {
            for (_i => _ in _ranges) {
                var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_range32.Range32>);
                if ((_r < (@:checkr _range_ ?? throw "null pointer dereference").lo : Bool)) {
                    return false;
                };
                if ((_r <= (@:checkr _range_ ?? throw "null pointer dereference").hi : Bool)) {
                    return (((@:checkr _range_ ?? throw "null pointer dereference").stride == (1u32 : stdgo.GoUInt32)) || ((((_r - (@:checkr _range_ ?? throw "null pointer dereference").lo : stdgo.GoUInt32)) % (@:checkr _range_ ?? throw "null pointer dereference").stride : stdgo.GoUInt32) == (0u32 : stdgo.GoUInt32)) : Bool);
                };
            };
            return false;
        };
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_ranges.length : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = (_ranges[(_m : stdgo.GoInt)] : stdgo._internal.unicode.Unicode_range32.Range32);
            if (((_range_.lo <= _r : Bool) && (_r <= _range_.hi : Bool) : Bool)) {
                return ((_range_.stride == (1u32 : stdgo.GoUInt32)) || ((((_r - _range_.lo : stdgo.GoUInt32)) % _range_.stride : stdgo.GoUInt32) == (0u32 : stdgo.GoUInt32)) : Bool);
            };
            if ((_r < _range_.lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return false;
    }
