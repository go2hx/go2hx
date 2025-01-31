package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString {
        if (((_bitSize != (64 : stdgo.GoInt)) && (_bitSize != (128 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("invalid bitSize" : stdgo.GoString));
        };
        _bitSize = (_bitSize >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        var _im = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat((_c : stdgo.GoComplex128).imag, _fmt, _prec, _bitSize)?.__copy__() : stdgo.GoString);
        if (((_im[(0 : stdgo.GoInt)] != (43 : stdgo.GoUInt8)) && (_im[(0 : stdgo.GoInt)] != (45 : stdgo.GoUInt8)) : Bool)) {
            _im = (("+" : stdgo.GoString) + _im?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (((("(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatFloat.formatFloat((_c : stdgo.GoComplex128).real, _fmt, _prec, _bitSize)?.__copy__() : stdgo.GoString) + _im?.__copy__() : stdgo.GoString) + ("i)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
