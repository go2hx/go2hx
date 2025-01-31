package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _appendLength(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _n = (stdgo._internal.encoding.asn1.Asn1__lengthLength._lengthLength(_i) : stdgo.GoInt);
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__(((_i >> ((((_n - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoUInt8)));
            _n--;
        };
        return _dst;
    }
