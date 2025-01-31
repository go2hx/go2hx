package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_T_decimal.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        @:check2r _d.assign(_i);
        return _d;
    }
