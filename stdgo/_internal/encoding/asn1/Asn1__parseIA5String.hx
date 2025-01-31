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
function _parseIA5String(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _ret = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        for (__0 => _b in _bytes) {
            if ((_b >= (128 : stdgo.GoUInt8) : Bool)) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("IA5String contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
                return { _0 : _ret, _1 : _err };
            };
        };
        _ret = (_bytes : stdgo.GoString)?.__copy__();
        return { _0 : _ret, _1 : _err };
    }
