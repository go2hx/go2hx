package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString {
        return (stdgo._internal.strconv.Strconv__genericFtoa._genericFtoa((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), stdgo._internal.strconv.Strconv__max._max((_prec + (4 : stdgo.GoInt) : stdgo.GoInt), (24 : stdgo.GoInt))).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _f, _fmt, _prec, _bitSize) : stdgo.GoString)?.__copy__();
    }
