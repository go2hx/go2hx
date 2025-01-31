package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoUInt8, aSCIIonly:Bool, _graphicOnly:Bool):stdgo.GoString {
        return (stdgo._internal.strconv.Strconv__appendQuotedWith._appendQuotedWith((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((3 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), _quote, aSCIIonly, _graphicOnly) : stdgo.GoString)?.__copy__();
    }
