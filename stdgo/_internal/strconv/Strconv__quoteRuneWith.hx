package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _quoteRuneWith(_r:stdgo.GoInt32, _quote:stdgo.GoUInt8, aSCIIonly:Bool, _graphicOnly:Bool):stdgo.GoString {
        return (stdgo._internal.strconv.Strconv__appendQuotedRuneWith._appendQuotedRuneWith((null : stdgo.Slice<stdgo.GoUInt8>), _r, _quote, aSCIIonly, _graphicOnly) : stdgo.GoString)?.__copy__();
    }
