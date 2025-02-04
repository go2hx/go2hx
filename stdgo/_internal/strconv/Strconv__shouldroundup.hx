package stdgo._internal.strconv;
function _shouldRoundUp(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Bool {
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            return false;
        };
        if ((((@:checkr _a ?? throw "null pointer dereference")._d[(_nd : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) && ((_nd + (1 : stdgo.GoInt) : stdgo.GoInt) == (@:checkr _a ?? throw "null pointer dereference")._nd) : Bool)) {
            if ((@:checkr _a ?? throw "null pointer dereference")._trunc) {
                return true;
            };
            return ((_nd > (0 : stdgo.GoInt) : Bool) && (((((@:checkr _a ?? throw "null pointer dereference")._d[(_nd - (1 : stdgo.GoInt) : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) % (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
        };
        return ((@:checkr _a ?? throw "null pointer dereference")._d[(_nd : stdgo.GoInt)] >= (53 : stdgo.GoUInt8) : Bool);
    }
