package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _trim(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>):Void {
        while ((((@:checkr _a ?? throw "null pointer dereference")._nd > (0 : stdgo.GoInt) : Bool) && ((@:checkr _a ?? throw "null pointer dereference")._d[((@:checkr _a ?? throw "null pointer dereference")._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _a ?? throw "null pointer dereference")._nd--;
        };
        if ((@:checkr _a ?? throw "null pointer dereference")._nd == ((0 : stdgo.GoInt))) {
            (@:checkr _a ?? throw "null pointer dereference")._dp = (0 : stdgo.GoInt);
        };
    }
