package stdgo._internal.strconv;
function _shouldRoundUp(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>, _nd:stdgo.GoInt):Bool {
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= _a._nd : Bool) : Bool)) {
            return false;
        };
        if (((_a._d[(_nd : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) && ((_nd + (1 : stdgo.GoInt) : stdgo.GoInt) == _a._nd) : Bool)) {
            if (_a._trunc) {
                return true;
            };
            return ((_nd > (0 : stdgo.GoInt) : Bool) && ((((_a._d[(_nd - (1 : stdgo.GoInt) : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) % (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
        };
        return (_a._d[(_nd : stdgo.GoInt)] >= (53 : stdgo.GoUInt8) : Bool);
    }
