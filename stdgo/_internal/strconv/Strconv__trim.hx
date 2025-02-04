package stdgo._internal.strconv;
function _trim(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>):Void {
        while ((((@:checkr _a ?? throw "null pointer dereference")._nd > (0 : stdgo.GoInt) : Bool) && ((@:checkr _a ?? throw "null pointer dereference")._d[((@:checkr _a ?? throw "null pointer dereference")._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _a ?? throw "null pointer dereference")._nd--;
        };
        if ((@:checkr _a ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {
            (@:checkr _a ?? throw "null pointer dereference")._dp = (0 : stdgo.GoInt);
        };
    }
