package stdgo._internal.strconv;
function _shouldRoundUp(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>, _nd:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L336"
        if (((_nd < (0 : stdgo.GoInt) : Bool) || (_nd >= (@:checkr _a ?? throw "null pointer dereference")._nd : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L337"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L339"
        if ((((@:checkr _a ?? throw "null pointer dereference")._d[(_nd : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) && ((_nd + (1 : stdgo.GoInt) : stdgo.GoInt) == (@:checkr _a ?? throw "null pointer dereference")._nd) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L341"
            if ((@:checkr _a ?? throw "null pointer dereference")._trunc) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L342"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L344"
            return ((_nd > (0 : stdgo.GoInt) : Bool) && (((((@:checkr _a ?? throw "null pointer dereference")._d[(_nd - (1 : stdgo.GoInt) : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) % (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L347"
        return ((@:checkr _a ?? throw "null pointer dereference")._d[(_nd : stdgo.GoInt)] >= (53 : stdgo.GoUInt8) : Bool);
    }
