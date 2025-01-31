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
function _appendTwoDigits(_dst:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        return (_dst.__append__((((48 : stdgo.GoInt) + (((_v / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (((48 : stdgo.GoInt) + (_v % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)));
    }
