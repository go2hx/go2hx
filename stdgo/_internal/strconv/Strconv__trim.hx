package stdgo._internal.strconv;
function _trim(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>):Void {
        while (((_a._nd > (0 : stdgo.GoInt) : Bool) && (_a._d[(_a._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _a._nd--;
        };
        if (_a._nd == ((0 : stdgo.GoInt))) {
            _a._dp = (0 : stdgo.GoInt);
        };
    }
