package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function isGraphic(_r:stdgo.GoInt32):Bool {
        if (stdgo._internal.strconv.Strconv_isPrint.isPrint(_r)) {
            return true;
        };
        return stdgo._internal.strconv.Strconv__isInGraphicList._isInGraphicList(_r);
    }
