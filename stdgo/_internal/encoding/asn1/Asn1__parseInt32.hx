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
function _parseInt32(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        {
            var _err = (stdgo._internal.encoding.asn1.Asn1__checkInteger._checkInteger(_bytes) : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt32), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseInt64._parseInt64(_bytes), _ret64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt32), _1 : _err };
        };
        if (_ret64 != (((_ret64 : stdgo.GoInt32) : stdgo.GoInt64))) {
            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        return { _0 : (_ret64 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
    }
