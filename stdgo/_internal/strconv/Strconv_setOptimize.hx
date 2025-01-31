package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function setOptimize(_b:Bool):Bool {
        var _old = (stdgo._internal.strconv.Strconv__optimize._optimize : Bool);
        stdgo._internal.strconv.Strconv__optimize._optimize = _b;
        return _old;
    }
